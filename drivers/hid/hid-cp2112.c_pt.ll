; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-cp2112.c_pt.bc'
source_filename = "../drivers/hid/hid-cp2112.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.hid_driver = type { ptr, ptr, %struct.list_head, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hid_device_id = type { i16, i16, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.cp2112_pstring_attribute = type { %struct.device_attribute, i8 }
%struct.cp2112_smbus_config_report = type <{ i8, i32, i8, i8, i16, i16, i8, i16 }>
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cp2112_device = type { %struct.i2c_adapter, ptr, %struct.wait_queue_head, [61 x i8], i8, i8, i32, %struct.atomic_t, %struct.atomic_t, %struct.gpio_chip, %struct.irq_chip, ptr, %struct.mutex, [8 x ptr], i8, %struct.delayed_work, i32, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.85, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.85 = type { ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.hid_ll_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cp2112_xfer_status_report = type <{ i8, i8, i8, i16, i16 }>
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.cp2112_read_req_report = type { i8, i8, i16 }
%struct.cp2112_write_req_report = type { i8, i8, i8, [61 x i8] }
%struct.cp2112_write_read_req_report = type <{ i8, i8, i16, i8, [16 x i8] }>
%struct.cp2112_force_read_report = type <{ i8, i16 }>
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.cp2112_usb_config_report = type <{ i8, i16, i16, i8, i8, i8, i8, i8 }>
%struct.cp2112_string_report = type { i8, %union.anon.87 }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type <{ i8, i8, i8, [30 x i16] }>

@__param_str_gpio_push_pull = internal constant [26 x i8] c"hid_cp2112.gpio_push_pull\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@gpio_push_pull = internal global { i32, [28 x i8] } { i32 255, [28 x i8] zeroinitializer }, align 32
@__param_gpio_push_pull = internal constant %struct.kernel_param { ptr @__param_str_gpio_push_pull, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @gpio_push_pull } }, section "__param", align 4
@__UNIQUE_ID_gpio_push_pulltype288 = internal constant [39 x i8] c"hid_cp2112.parmtype=gpio_push_pull:int\00", section ".modinfo", align 1
@__UNIQUE_ID_gpio_push_pull289 = internal constant [68 x i8] c"hid_cp2112.parm=gpio_push_pull:GPIO push-pull configuration bitmask\00", section ".modinfo", align 1
@__initcall__kmod_hid_cp2112__301_1480_cp2112_driver_init6 = internal global ptr @cp2112_driver_init, section ".initcall6.init", align 4
@cp2112_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @cp2112_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @cp2112_probe, ptr @cp2112_remove, ptr null, ptr @cp2112_raw_event, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cp2112_driver_exit = internal global ptr @cp2112_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description302 = internal constant [67 x i8] c"hid_cp2112.description=Silicon Labs HID USB to SMBus master bridge\00", section ".modinfo", align 1
@__UNIQUE_ID_author303 = internal constant [59 x i8] c"hid_cp2112.author=David Barksdale <dbarksdale@uplogix.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [39 x i8] c"hid_cp2112.file=drivers/hid/hid-cp2112\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [23 x i8] c"hid_cp2112.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hid_cp2112\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cp2112\00", [25 x i8] zeroinitializer }, align 32
@cp2112_devices = internal constant { [2 x %struct.hid_device_id], [32 x i8] } { [2 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 4292, i32 60048, i32 0 }, %struct.hid_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@cp2112_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->lock\00", [21 x i8] zeroinitializer }, align 32
@cp2112_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1247, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"parse failed\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cp2112_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/hid/hid-cp2112.c\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cp2112_probe._entry_ptr = internal global ptr @cp2112_probe._entry, section ".printk_index", align 4
@cp2112_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 1253, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hw start failed\0A\00", [47 x i8] zeroinitializer }, align 32
@cp2112_probe._entry_ptr.10 = internal global ptr @cp2112_probe._entry.8, section ".printk_index", align 4
@cp2112_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 1259, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hw open failed\0A\00", [16 x i8] zeroinitializer }, align 32
@cp2112_probe._entry_ptr.13 = internal global ptr @cp2112_probe._entry.11, section ".printk_index", align 4
@cp2112_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 1265, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"power management error: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@cp2112_probe._entry_ptr.16 = internal global ptr @cp2112_probe._entry.14, section ".printk_index", align 4
@cp2112_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 1272, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"error requesting version\0A\00", [38 x i8] zeroinitializer }, align 32
@cp2112_probe._entry_ptr.19 = internal global ptr @cp2112_probe._entry.17, section ".printk_index", align 4
@cp2112_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.4, ptr @.str.5, i32 1279, ptr @.str.22, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Part Number: 0x%02X Device Version: 0x%02X\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cp2112_probe._entry_ptr.23 = internal global ptr @cp2112_probe._entry.20, section ".printk_index", align 4
@cp2112_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.4, ptr @.str.5, i32 1284, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"error requesting SMBus config\0A\00", [33 x i8] zeroinitializer }, align 32
@cp2112_probe._entry_ptr.26 = internal global ptr @cp2112_probe._entry.24, section ".printk_index", align 4
@cp2112_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.4, ptr @.str.5, i32 1295, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"error setting SMBus config\0A\00", [36 x i8] zeroinitializer }, align 32
@cp2112_probe._entry_ptr.29 = internal global ptr @cp2112_probe._entry.27, section ".printk_index", align 4
@smbus_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @cp2112_i2c_xfer, ptr null, ptr @cp2112_xfer, ptr null, ptr @cp2112_functionality, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CP2112 SMBus Bridge on hidraw%d\00", [32 x i8] zeroinitializer }, align 32
@cp2112_probe.__key.31 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->wait\00", [21 x i8] zeroinitializer }, align 32
@cp2112_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.4, ptr @.str.5, i32 1319, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"error registering i2c adapter\0A\00", [33 x i8] zeroinitializer }, align 32
@cp2112_probe._entry_ptr.35 = internal global ptr @cp2112_probe._entry.33, section ".printk_index", align 4
@cp2112_probe.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.36, i8 1, i8 74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"adapter registered\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cp2112_gpio\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cp2112-gpio\00", [20 x i8] zeroinitializer }, align 32
@cp2112_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@cp2112_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@cp2112_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.4, ptr @.str.5, i32 1355, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"error registering gpio chip\0A\00", [35 x i8] zeroinitializer }, align 32
@cp2112_probe._entry_ptr.41 = internal global ptr @cp2112_probe._entry.39, section ".printk_index", align 4
@cp2112_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @.compoundliteral, ptr null }, [44 x i8] zeroinitializer }, align 32
@cp2112_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.4, ptr @.str.5, i32 1361, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"error creating sysfs attrs\0A\00", [36 x i8] zeroinitializer }, align 32
@cp2112_probe._entry_ptr.44 = internal global ptr @cp2112_probe._entry.42, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cp2112_i2c_xfer.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.5, ptr @.str.46, i8 0, i8 -123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cp2112_i2c_xfer\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"I2C %d messages\0A\00", [47 x i8] zeroinitializer }, align 32
@cp2112_i2c_xfer.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.5, ptr @.str.47, i8 0, i8 -122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"I2C read %#04x len %d\0A\00", [41 x i8] zeroinitializer }, align 32
@cp2112_i2c_xfer.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.5, ptr @.str.48, i8 0, i8 -121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"I2C write %#04x len %d\0A\00", [40 x i8] zeroinitializer }, align 32
@cp2112_i2c_xfer.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.5, ptr @.str.49, i8 0, i8 -118, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"I2C write-read %#04x wlen %d rlen %d\0A\00", [58 x i8] zeroinitializer }, align 32
@cp2112_i2c_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.45, ptr @.str.5, i32 563, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Multi-message I2C transactions not supported\0A\00", [50 x i8] zeroinitializer }, align 32
@cp2112_i2c_xfer._entry_ptr = internal global ptr @cp2112_i2c_xfer._entry, section ".printk_index", align 4
@cp2112_i2c_xfer._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.45, ptr @.str.5, i32 569, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@cp2112_i2c_xfer._entry_ptr.52 = internal global ptr @cp2112_i2c_xfer._entry.51, section ".printk_index", align 4
@cp2112_i2c_xfer._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.45, ptr @.str.5, i32 575, ptr @.str.55, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error starting transaction: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cp2112_i2c_xfer._entry_ptr.56 = internal global ptr @cp2112_i2c_xfer._entry.53, section ".printk_index", align 4
@cp2112_i2c_xfer._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.45, ptr @.str.5, i32 589, ptr @.str.55, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Transfer timed out, cancelling.\0A\00", [63 x i8] zeroinitializer }, align 32
@cp2112_i2c_xfer._entry_ptr.59 = internal global ptr @cp2112_i2c_xfer._entry.57, section ".printk_index", align 4
@cp2112_i2c_xfer._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.45, ptr @.str.5, i32 596, ptr @.str.55, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error cancelling transaction: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@cp2112_i2c_xfer._entry_ptr.62 = internal global ptr @cp2112_i2c_xfer._entry.60, section ".printk_index", align 4
@cp2112_i2c_xfer._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.45, ptr @.str.5, i32 607, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"read returned 0\0A\00", [47 x i8] zeroinitializer }, align 32
@cp2112_i2c_xfer._entry_ptr.65 = internal global ptr @cp2112_i2c_xfer._entry.63, section ".printk_index", align 4
@cp2112_i2c_xfer._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.45, ptr @.str.5, i32 622, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"long read: %d > %zd\0A\00", [43 x i8] zeroinitializer }, align 32
@cp2112_i2c_xfer._entry_ptr.68 = internal global ptr @cp2112_i2c_xfer._entry.66, section ".printk_index", align 4
@cp2112_i2c_xfer.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.5, ptr @.str.69, i8 0, i8 -98, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"I2C transfer finished: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@cp2112_xfer_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.5, i32 395, ptr @.str.55, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error requesting status: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cp2112_xfer_status\00", [45 x i8] zeroinitializer }, align 32
@cp2112_xfer_status._entry_ptr = internal global ptr @cp2112_xfer_status._entry, section ".printk_index", align 4
@cp2112_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.5, i32 422, ptr @.str.55, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error requesting data: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cp2112_read\00", [20 x i8] zeroinitializer }, align 32
@cp2112_read._entry_ptr = internal global ptr @cp2112_read._entry, section ".printk_index", align 4
@cp2112_read.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.5, ptr @.str.74, i8 0, i8 107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"read %d of %zd bytes requested\0A\00", [32 x i8] zeroinitializer }, align 32
@cp2112_xfer.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.5, ptr @.str.76, i8 0, i8 -93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cp2112_xfer\00", [20 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s addr 0x%x flags 0x%x cmd 0x%x size %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@cp2112_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.75, ptr @.str.5, i32 725, ptr @.str.55, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported transaction %d\0A\00", [36 x i8] zeroinitializer }, align 32
@cp2112_xfer._entry_ptr = internal global ptr @cp2112_xfer._entry, section ".printk_index", align 4
@cp2112_xfer._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.75, ptr @.str.5, i32 734, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@cp2112_xfer._entry_ptr.81 = internal global ptr @cp2112_xfer._entry.80, section ".printk_index", align 4
@cp2112_xfer._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.75, ptr @.str.5, i32 740, ptr @.str.55, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@cp2112_xfer._entry_ptr.83 = internal global ptr @cp2112_xfer._entry.82, section ".printk_index", align 4
@cp2112_xfer._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.75, ptr @.str.5, i32 754, ptr @.str.55, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@cp2112_xfer._entry_ptr.85 = internal global ptr @cp2112_xfer._entry.84, section ".printk_index", align 4
@cp2112_xfer._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.75, ptr @.str.5, i32 761, ptr @.str.55, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@cp2112_xfer._entry_ptr.87 = internal global ptr @cp2112_xfer._entry.86, section ".printk_index", align 4
@cp2112_xfer._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.75, ptr @.str.5, i32 779, ptr @.str.55, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"short read: %d < %zd\0A\00", [42 x i8] zeroinitializer }, align 32
@cp2112_xfer._entry_ptr.90 = internal global ptr @cp2112_xfer._entry.88, section ".printk_index", align 4
@cp2112_xfer.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.5, ptr @.str.91, i8 0, i8 -54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"transfer finished: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@hid_device_io_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.94, i32 963, ptr @.str.55, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"io already started\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hid_device_io_start\00", [44 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/hid.h\00", [44 x i8] zeroinitializer }, align 32
@hid_device_io_start._entry_ptr = internal global ptr @hid_device_io_start._entry, section ".printk_index", align 4
@hid_device_io_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.94, i32 983, ptr @.str.55, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"io already stopped\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hid_device_io_stop\00", [45 x i8] zeroinitializer }, align 32
@hid_device_io_stop._entry_ptr = internal global ptr @hid_device_io_stop._entry, section ".printk_index", align 4
@cp2112_gpio_direction_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.5, i32 194, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"error requesting GPIO config: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cp2112_gpio_direction_input\00", [36 x i8] zeroinitializer }, align 32
@cp2112_gpio_direction_input._entry_ptr = internal global ptr @cp2112_gpio_direction_input._entry, section ".printk_index", align 4
@cp2112_gpio_direction_input._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.98, ptr @.str.5, i32 207, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"error setting GPIO config: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@cp2112_gpio_direction_input._entry_ptr.101 = internal global ptr @cp2112_gpio_direction_input._entry.99, section ".printk_index", align 4
@cp2112_gpio_direction_output._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.102, ptr @.str.5, i32 293, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cp2112_gpio_direction_output\00", [35 x i8] zeroinitializer }, align 32
@cp2112_gpio_direction_output._entry_ptr = internal global ptr @cp2112_gpio_direction_output._entry, section ".printk_index", align 4
@cp2112_gpio_direction_output._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.102, ptr @.str.5, i32 304, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@cp2112_gpio_direction_output._entry_ptr.104 = internal global ptr @cp2112_gpio_direction_output._entry.103, section ".printk_index", align 4
@cp2112_gpio_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.5, i32 237, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"error setting GPIO values: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cp2112_gpio_set\00", [16 x i8] zeroinitializer }, align 32
@cp2112_gpio_set._entry_ptr = internal global ptr @cp2112_gpio_set._entry, section ".printk_index", align 4
@cp2112_gpio_get_all._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.5, i32 255, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"error requesting GPIO values: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cp2112_gpio_get_all\00", [44 x i8] zeroinitializer }, align 32
@cp2112_gpio_get_all._entry_ptr = internal global ptr @cp2112_gpio_get_all._entry, section ".printk_index", align 4
@cp2112_gpio_irq_startup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.109 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(work_completion)(&(&dev->gpio_poll_worker)->work)\00", [45 x i8] zeroinitializer }, align 32
@cp2112_gpio_irq_startup.__key.110 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.111 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&(&dev->gpio_poll_worker)->timer\00", [63 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@dev_attr_vendor_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.112, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @vendor_id_show, ptr @vendor_id_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_product_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.119, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @product_id_show, ptr @product_id_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_max_power = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.120, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max_power_show, ptr @max_power_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_power_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.123, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @power_mode_show, ptr @power_mode_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_release_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.126, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @release_version_show, ptr @release_version_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_manufacturer = internal global { %struct.cp2112_pstring_attribute, [32 x i8] } { %struct.cp2112_pstring_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.129, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pstr_show, ptr @pstr_store }, i8 34 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_product = internal global { %struct.cp2112_pstring_attribute, [32 x i8] } { %struct.cp2112_pstring_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.137, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pstr_show, ptr @pstr_store }, i8 35 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_serial = internal global { %struct.cp2112_pstring_attribute, [32 x i8] } { %struct.cp2112_pstring_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.138, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pstr_show, ptr @pstr_store }, i8 36 }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @dev_attr_vendor_id, ptr @dev_attr_product_id, ptr @dev_attr_max_power, ptr @dev_attr_power_mode, ptr @dev_attr_release_version, ptr @dev_attr_manufacturer, ptr @dev_attr_product, ptr @dev_attr_serial, ptr null], [60 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vendor_id\00", [22 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%04x\0A\00", [24 x i8] zeroinitializer }, align 32
@cp2112_get_usb_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.5, i32 838, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"error reading usb config: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cp2112_get_usb_config\00", [42 x i8] zeroinitializer }, align 32
@cp2112_get_usb_config._entry_ptr = internal global ptr @cp2112_get_usb_config._entry, section ".printk_index", align 4
@.str.116 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%hi\00", [28 x i8] zeroinitializer }, align 32
@cp2112_set_usb_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.5, i32 857, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"error writing usb config: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cp2112_set_usb_config\00", [42 x i8] zeroinitializer }, align 32
@cp2112_set_usb_config._entry_ptr = internal global ptr @cp2112_set_usb_config._entry, section ".printk_index", align 4
@.str.119 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"product_id\00", [21 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"max_power\00", [22 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%u mA\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%i\00", [29 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"power_mode\00", [21 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%hhi\00", [27 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"release_version\00", [16 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%u.%u\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%hhi.%hhi\00", [22 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"manufacturer\00", [19 x i8] zeroinitializer }, align 32
@pstr_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.131, ptr @.str.5, i32 995, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"error reading %s string: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pstr_show\00", [22 x i8] zeroinitializer }, align 32
@pstr_show._entry_ptr = internal global ptr @pstr_show._entry, section ".printk_index", align 4
@pstr_show._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.131, ptr @.str.5, i32 1003, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid %s string length: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@pstr_show._entry_ptr.134 = internal global ptr @pstr_show._entry.132, section ".printk_index", align 4
@pstr_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.5, i32 971, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"error writing %s string: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pstr_store\00", [21 x i8] zeroinitializer }, align 32
@pstr_store._entry_ptr = internal global ptr @pstr_store._entry, section ".printk_index", align 4
@.str.137 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"product\00", [24 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serial\00", [25 x i8] zeroinitializer }, align 32
@chmod_sysfs_attrs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.5, i32 1056, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"error reading lock byte: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"chmod_sysfs_attrs\00", [46 x i8] zeroinitializer }, align 32
@chmod_sysfs_attrs._entry_ptr = internal global ptr @chmod_sysfs_attrs._entry, section ".printk_index", align 4
@chmod_sysfs_attrs._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.140, ptr @.str.5, i32 1065, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"error chmoding sysfs file %s\0A\00", [34 x i8] zeroinitializer }, align 32
@chmod_sysfs_attrs._entry_ptr.143 = internal global ptr @chmod_sysfs_attrs._entry.141, section ".printk_index", align 4
@cp2112_raw_event.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.144, ptr @.str.5, ptr @.str.145, i8 1, i8 99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.144 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cp2112_raw_event\00", [47 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"xfer status: %02x %02x %04x %04x\0A\00", [62 x i8] zeroinitializer }, align 32
@cp2112_raw_event.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.144, ptr @.str.5, ptr @.str.146, i8 1, i8 107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.146 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"read response: %02x %02x\0A\00", [38 x i8] zeroinitializer }, align 32
@cp2112_raw_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.144, ptr @.str.5, i32 1463, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"unknown report\0A\00", [16 x i8] zeroinitializer }, align 32
@cp2112_raw_event._entry_ptr = internal global ptr @cp2112_raw_event._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 19, i64 22]
@__sancov_gen_cov_switch_values.148 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.149 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 7, i64 8]
@__sancov_gen_cov_switch_values.150 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 5, i64 8]
@__sancov_gen_cov_switch_values.151 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@___asan_gen_.152 = private unnamed_addr constant [15 x i8] c"gpio_push_pull\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 177, i32 12 }
@___asan_gen_.155 = private unnamed_addr constant [14 x i8] c"cp2112_driver\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1472, i32 26 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1480, i32 1 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1473, i32 11 }
@___asan_gen_.164 = private unnamed_addr constant [15 x i8] c"cp2112_devices\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 149, i32 35 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1243, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1247, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1253, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1259, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1265, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1272, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1278, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1284, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1295, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant [16 x i8] c"smbus_algorithm\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 824, i32 35 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1309, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1312, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1319, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1323, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1325, i32 20 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1335, i32 18 }
@___asan_gen_.263 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.266 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1353, i32 8 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1355, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant [18 x i8] c"cp2112_attr_group\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1027, i32 37 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1361, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 532, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 536, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 542, i32 4 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 553, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 562, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 569, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 575, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 589, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 595, i32 4 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 607, i32 4 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 621, i32 4 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 633, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 395, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 422, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 430, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 650, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 725, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 734, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 740, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 754, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 760, i32 4 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 779, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 808, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 963, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant [23 x i8] c"../include/linux/hid.h\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 983, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 194, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 207, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 293, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 304, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 237, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 255, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1157, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant [19 x i8] c"dev_attr_vendor_id\00", align 1
@___asan_gen_.482 = private unnamed_addr constant [20 x i8] c"dev_attr_product_id\00", align 1
@___asan_gen_.485 = private unnamed_addr constant [19 x i8] c"dev_attr_max_power\00", align 1
@___asan_gen_.488 = private unnamed_addr constant [20 x i8] c"dev_attr_power_mode\00", align 1
@___asan_gen_.491 = private unnamed_addr constant [25 x i8] c"dev_attr_release_version\00", align 1
@___asan_gen_.494 = private unnamed_addr constant [22 x i8] c"dev_attr_manufacturer\00", align 1
@___asan_gen_.497 = private unnamed_addr constant [17 x i8] c"dev_attr_product\00", align 1
@___asan_gen_.500 = private unnamed_addr constant [16 x i8] c"dev_attr_serial\00", align 1
@___asan_gen_.503 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 838, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 897, i32 1 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 857, i32 3 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 907, i32 1 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 917, i32 1 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 927, i32 1 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 934, i32 1 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1021, i32 1 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 994, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1002, i32 3 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 970, i32 3 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1022, i32 1 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1023, i32 1 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1056, i32 3 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1064, i32 4 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1420, i32 3 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1453, i32 3 }
@___asan_gen_.618 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.621 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.622 = private constant [28 x i8] c"../drivers/hid/hid-cp2112.c\00", align 1
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1463, i32 3 }
@llvm.compiler.used = appending global [210 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_gpio_push_pull289, ptr @__UNIQUE_ID_gpio_push_pulltype288, ptr @__UNIQUE_ID_license305, ptr @__exitcall_cp2112_driver_exit, ptr @__initcall__kmod_hid_cp2112__301_1480_cp2112_driver_init6, ptr @__param_gpio_push_pull, ptr @chmod_sysfs_attrs._entry, ptr @chmod_sysfs_attrs._entry.141, ptr @chmod_sysfs_attrs._entry_ptr, ptr @chmod_sysfs_attrs._entry_ptr.143, ptr @cp2112_driver_exit, ptr @cp2112_get_usb_config._entry, ptr @cp2112_get_usb_config._entry_ptr, ptr @cp2112_gpio_direction_input._entry, ptr @cp2112_gpio_direction_input._entry.99, ptr @cp2112_gpio_direction_input._entry_ptr, ptr @cp2112_gpio_direction_input._entry_ptr.101, ptr @cp2112_gpio_direction_output._entry, ptr @cp2112_gpio_direction_output._entry.103, ptr @cp2112_gpio_direction_output._entry_ptr, ptr @cp2112_gpio_direction_output._entry_ptr.104, ptr @cp2112_gpio_get_all._entry, ptr @cp2112_gpio_get_all._entry_ptr, ptr @cp2112_gpio_set._entry, ptr @cp2112_gpio_set._entry_ptr, ptr @cp2112_i2c_xfer._entry, ptr @cp2112_i2c_xfer._entry.51, ptr @cp2112_i2c_xfer._entry.53, ptr @cp2112_i2c_xfer._entry.57, ptr @cp2112_i2c_xfer._entry.60, ptr @cp2112_i2c_xfer._entry.63, ptr @cp2112_i2c_xfer._entry.66, ptr @cp2112_i2c_xfer._entry_ptr, ptr @cp2112_i2c_xfer._entry_ptr.52, ptr @cp2112_i2c_xfer._entry_ptr.56, ptr @cp2112_i2c_xfer._entry_ptr.59, ptr @cp2112_i2c_xfer._entry_ptr.62, ptr @cp2112_i2c_xfer._entry_ptr.65, ptr @cp2112_i2c_xfer._entry_ptr.68, ptr @cp2112_probe._entry, ptr @cp2112_probe._entry.11, ptr @cp2112_probe._entry.14, ptr @cp2112_probe._entry.17, ptr @cp2112_probe._entry.20, ptr @cp2112_probe._entry.24, ptr @cp2112_probe._entry.27, ptr @cp2112_probe._entry.33, ptr @cp2112_probe._entry.39, ptr @cp2112_probe._entry.42, ptr @cp2112_probe._entry.8, ptr @cp2112_probe._entry_ptr, ptr @cp2112_probe._entry_ptr.10, ptr @cp2112_probe._entry_ptr.13, ptr @cp2112_probe._entry_ptr.16, ptr @cp2112_probe._entry_ptr.19, ptr @cp2112_probe._entry_ptr.23, ptr @cp2112_probe._entry_ptr.26, ptr @cp2112_probe._entry_ptr.29, ptr @cp2112_probe._entry_ptr.35, ptr @cp2112_probe._entry_ptr.41, ptr @cp2112_probe._entry_ptr.44, ptr @cp2112_raw_event._entry, ptr @cp2112_raw_event._entry_ptr, ptr @cp2112_read._entry, ptr @cp2112_read._entry_ptr, ptr @cp2112_set_usb_config._entry, ptr @cp2112_set_usb_config._entry_ptr, ptr @cp2112_xfer._entry, ptr @cp2112_xfer._entry.80, ptr @cp2112_xfer._entry.82, ptr @cp2112_xfer._entry.84, ptr @cp2112_xfer._entry.86, ptr @cp2112_xfer._entry.88, ptr @cp2112_xfer._entry_ptr, ptr @cp2112_xfer._entry_ptr.81, ptr @cp2112_xfer._entry_ptr.83, ptr @cp2112_xfer._entry_ptr.85, ptr @cp2112_xfer._entry_ptr.87, ptr @cp2112_xfer._entry_ptr.90, ptr @cp2112_xfer_status._entry, ptr @cp2112_xfer_status._entry_ptr, ptr @hid_device_io_start._entry, ptr @hid_device_io_start._entry_ptr, ptr @hid_device_io_stop._entry, ptr @hid_device_io_stop._entry_ptr, ptr @pstr_show._entry, ptr @pstr_show._entry.132, ptr @pstr_show._entry_ptr, ptr @pstr_show._entry_ptr.134, ptr @pstr_store._entry, ptr @pstr_store._entry_ptr, ptr @gpio_push_pull, ptr @cp2112_driver, ptr @.str, ptr @.str.1, ptr @cp2112_devices, ptr @cp2112_probe.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @smbus_algorithm, ptr @.str.30, ptr @cp2112_probe.__key.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @cp2112_probe.lock_key, ptr @cp2112_probe.request_key, ptr @.str.40, ptr @cp2112_attr_group, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.54, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.89, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @.str.102, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @cp2112_gpio_irq_startup.__key, ptr @.str.109, ptr @cp2112_gpio_irq_startup.__key.110, ptr @.str.111, ptr @dev_attr_vendor_id, ptr @dev_attr_product_id, ptr @dev_attr_max_power, ptr @dev_attr_power_mode, ptr @dev_attr_release_version, ptr @dev_attr_manufacturer, ptr @dev_attr_product, ptr @dev_attr_serial, ptr @.compoundliteral, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.133, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.142, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147], section "llvm.metadata"
@0 = internal global [158 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_push_pull to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2112_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2112_devices to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2112_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2112_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2112_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2112_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2112_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2112_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2112_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2112_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2112_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbus_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2112_probe.__key.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2112_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2112_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2112_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2112_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2112_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2112_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2112_i2c_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2112_i2c_xfer._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2112_i2c_xfer._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2112_i2c_xfer._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2112_i2c_xfer._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2112_i2c_xfer._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2112_i2c_xfer._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2112_xfer_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2112_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2112_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2112_xfer._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2112_xfer._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2112_xfer._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2112_xfer._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2112_xfer._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_device_io_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_device_io_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2112_gpio_direction_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2112_gpio_direction_input._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2112_gpio_direction_output._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2112_gpio_direction_output._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2112_gpio_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2112_gpio_get_all._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2112_gpio_irq_startup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2112_gpio_irq_startup.__key.110 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vendor_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_product_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_max_power to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_power_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_release_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_manufacturer to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_product to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_serial to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2112_get_usb_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2112_set_usb_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pstr_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pstr_show._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pstr_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chmod_sysfs_attrs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chmod_sysfs_attrs._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp2112_raw_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cp2112_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @cp2112_driver, ptr noundef null, ptr noundef nonnull @.str) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cp2112_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @hid_unregister_driver(ptr noundef nonnull @cp2112_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cp2112_probe(ptr noundef %hdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  %config = alloca %struct.cp2112_smbus_config_report, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #11
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buf, align 1, !annotation !309
  %1 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !309
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !309
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %config) #11
  %5 = getelementptr inbounds %struct.cp2112_smbus_config_report, ptr %config, i32 0, i32 7
  %dev1 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %6 = call ptr @memset(ptr %config, i32 255, i32 14)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 2216, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i260 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 64, i32 noundef 3520) #11
  %in_out_buffer = getelementptr inbounds %struct.cp2112_device, ptr %call.i, i32 0, i32 11
  %7 = ptrtoint ptr %in_out_buffer to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i260, ptr %in_out_buffer, align 8
  %tobool5.not = icmp eq ptr %call.i260, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.cp2112_device, ptr %call.i, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @cp2112_probe.__key) #11
  %call.i261 = tail call i32 @hid_open_report(ptr noundef %hdev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i261)
  %tobool9.not = icmp eq i32 %call.i261, 0
  br i1 %tobool9.not, label %if.end15, label %do.end13

do.end13:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #14
  br label %cleanup

if.end15:                                         ; preds = %do.body
  %call16 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end23, label %do.end21

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #14
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  %call24 = tail call i32 @hid_hw_open(ptr noundef %hdev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end31, label %do.end29

do.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #14
  br label %err_hid_stop

if.end31:                                         ; preds = %if.end23
  %ll_driver.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 20
  %8 = ptrtoint ptr %ll_driver.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ll_driver.i, align 4
  %power.i = getelementptr inbounds %struct.hid_ll_driver, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %power.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %power.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end31.if.end38_crit_edge, label %hid_hw_power.exit

if.end31.if.end38_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

hid_hw_power.exit:                                ; preds = %if.end31
  %call.i262 = tail call i32 %11(ptr noundef %hdev, i32 noundef 32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i262)
  %cmp = icmp slt i32 %call.i262, 0
  br i1 %cmp, label %do.end36, label %hid_hw_power.exit.if.end38_crit_edge

hid_hw_power.exit.if.end38_crit_edge:             ; preds = %hid_hw_power.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

do.end36:                                         ; preds = %hid_hw_power.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %call.i262) #14
  br label %err_hid_close

if.end38:                                         ; preds = %hid_hw_power.exit.if.end38_crit_edge, %if.end31.if.end38_crit_edge
  %call39 = call fastcc i32 @cp2112_hid_get(ptr noundef %hdev, i8 noundef zeroext 5, ptr noundef nonnull %buf, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call39)
  %cmp40.not = icmp eq i32 %call39, 3
  br i1 %cmp40.not, label %do.end52, label %do.end44

do.end44:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call39)
  %cmp46 = icmp sgt i32 %call39, -1
  %spec.select = select i1 %cmp46, i32 -5, i32 %call39
  br label %err_power_normal

do.end52:                                         ; preds = %if.end38
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %1, align 1
  %conv = zext i8 %13 to i32
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %3, align 1
  %conv55 = zext i8 %15 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %conv, i32 noundef %conv55) #14
  %call56 = call fastcc i32 @cp2112_hid_get(ptr noundef %hdev, i8 noundef zeroext 6, ptr noundef nonnull %config, i32 noundef 14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %call56)
  %cmp57.not = icmp eq i32 %call56, 14
  br i1 %cmp57.not, label %if.end68, label %do.end62

do.end62:                                         ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call56)
  %cmp64 = icmp sgt i32 %call56, -1
  %spec.select258 = select i1 %cmp64, i32 -5, i32 %call56
  br label %err_power_normal

if.end68:                                         ; preds = %do.end52
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 1, ptr %5, align 1
  %call69 = call fastcc i32 @cp2112_hid_output(ptr noundef %hdev, ptr noundef nonnull %config, i32 noundef 14, i8 noundef zeroext 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %call69)
  %cmp70.not = icmp eq i32 %call69, 14
  br i1 %cmp70.not, label %if.end81, label %do.end75

do.end75:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.28) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call69)
  %cmp77 = icmp sgt i32 %call69, -1
  %spec.select259 = select i1 %cmp77, i32 -5, i32 %call69
  br label %err_power_normal

if.end81:                                         ; preds = %if.end68
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %hdev82 = getelementptr inbounds %struct.cp2112_device, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %hdev82 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %hdev, ptr %hdev82, align 8
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %call.i, align 8
  %class = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %class, align 4
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 2
  %21 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @smbus_algorithm, ptr %algo, align 8
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 3
  %22 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %algo_data, align 4
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 1
  %23 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dev1, ptr %parent, align 8
  %name = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 12
  %hidraw = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 38
  %24 = ptrtoint ptr %hidraw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hidraw, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %call91 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 48, ptr noundef nonnull @.str.30, i32 noundef %27)
  %hwversion = getelementptr inbounds %struct.cp2112_device, ptr %call.i, i32 0, i32 5
  %28 = ptrtoint ptr %hwversion to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %15, ptr %hwversion, align 2
  %wait = getelementptr inbounds %struct.cp2112_device, ptr %call.i, i32 0, i32 2
  call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.32, ptr noundef nonnull @cp2112_probe.__key.31) #11
  call fastcc void @hid_device_io_start(ptr noundef %hdev)
  %call97 = call i32 @i2c_add_adapter(ptr noundef nonnull %call.i) #11
  call fastcc void @hid_device_io_stop(ptr noundef %hdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %do.body105, label %do.end102

do.end102:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.34) #14
  br label %err_power_normal

do.body105:                                       ; preds = %if.end81
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cp2112_probe.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cp2112_probe, %if.then110)) #11
          to label %do.end114 [label %if.then110], !srcloc !310

if.then110:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cp2112_probe.__UNIQUE_ID_ddebug298, ptr noundef %dev1, ptr noundef nonnull @.str.36) #11
  br label %do.end114

do.end114:                                        ; preds = %if.then110, %do.body105
  %gc = getelementptr inbounds %struct.cp2112_device, ptr %call.i, i32 0, i32 9
  %29 = ptrtoint ptr %gc to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.37, ptr %gc, align 4
  %direction_input = getelementptr inbounds %struct.cp2112_device, ptr %call.i, i32 0, i32 9, i32 8
  %30 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @cp2112_gpio_direction_input, ptr %direction_input, align 4
  %direction_output = getelementptr inbounds %struct.cp2112_device, ptr %call.i, i32 0, i32 9, i32 9
  %31 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @cp2112_gpio_direction_output, ptr %direction_output, align 4
  %set = getelementptr inbounds %struct.cp2112_device, ptr %call.i, i32 0, i32 9, i32 12
  %32 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @cp2112_gpio_set, ptr %set, align 4
  %get = getelementptr inbounds %struct.cp2112_device, ptr %call.i, i32 0, i32 9, i32 10
  %33 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @cp2112_gpio_get, ptr %get, align 4
  %base = getelementptr inbounds %struct.cp2112_device, ptr %call.i, i32 0, i32 9, i32 19
  %34 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %base, align 4
  %ngpio = getelementptr inbounds %struct.cp2112_device, ptr %call.i, i32 0, i32 9, i32 20
  %35 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 8, ptr %ngpio, align 4
  %can_sleep = getelementptr inbounds %struct.cp2112_device, ptr %call.i, i32 0, i32 9, i32 23
  %36 = ptrtoint ptr %can_sleep to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %can_sleep, align 4
  %parent124 = getelementptr inbounds %struct.cp2112_device, ptr %call.i, i32 0, i32 9, i32 2
  %37 = ptrtoint ptr %parent124 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %dev1, ptr %parent124, align 4
  %irq = getelementptr inbounds %struct.cp2112_device, ptr %call.i, i32 0, i32 10
  %name125 = getelementptr inbounds %struct.cp2112_device, ptr %call.i, i32 0, i32 10, i32 1
  %38 = ptrtoint ptr %name125 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.38, ptr %name125, align 4
  %irq_startup = getelementptr inbounds %struct.cp2112_device, ptr %call.i, i32 0, i32 10, i32 2
  %39 = ptrtoint ptr %irq_startup to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @cp2112_gpio_irq_startup, ptr %irq_startup, align 8
  %irq_shutdown = getelementptr inbounds %struct.cp2112_device, ptr %call.i, i32 0, i32 10, i32 3
  %40 = ptrtoint ptr %irq_shutdown to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @cp2112_gpio_irq_shutdown, ptr %irq_shutdown, align 4
  %irq_ack = getelementptr inbounds %struct.cp2112_device, ptr %call.i, i32 0, i32 10, i32 6
  %41 = ptrtoint ptr %irq_ack to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @cp2112_gpio_irq_ack, ptr %irq_ack, align 8
  %irq_mask = getelementptr inbounds %struct.cp2112_device, ptr %call.i, i32 0, i32 10, i32 7
  %42 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @cp2112_gpio_irq_mask, ptr %irq_mask, align 4
  %irq_unmask = getelementptr inbounds %struct.cp2112_device, ptr %call.i, i32 0, i32 10, i32 9
  %43 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @cp2112_gpio_irq_unmask, ptr %irq_unmask, align 4
  %irq_set_type = getelementptr inbounds %struct.cp2112_device, ptr %call.i, i32 0, i32 10, i32 13
  %44 = ptrtoint ptr %irq_set_type to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @cp2112_gpio_irq_type, ptr %irq_set_type, align 4
  %flags = getelementptr inbounds %struct.cp2112_device, ptr %call.i, i32 0, i32 10, i32 33
  %45 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 4, ptr %flags, align 4
  %irq134 = getelementptr inbounds %struct.cp2112_device, ptr %call.i, i32 0, i32 9, i32 37
  %46 = ptrtoint ptr %irq134 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %irq, ptr %irq134, align 4
  %parent_handler = getelementptr inbounds %struct.cp2112_device, ptr %call.i, i32 0, i32 9, i32 37, i32 13
  %47 = ptrtoint ptr %parent_handler to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %parent_handler, align 4
  %num_parents = getelementptr inbounds %struct.cp2112_device, ptr %call.i, i32 0, i32 9, i32 37, i32 15
  %48 = ptrtoint ptr %num_parents to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %num_parents, align 4
  %parents = getelementptr inbounds %struct.cp2112_device, ptr %call.i, i32 0, i32 9, i32 37, i32 16
  %49 = ptrtoint ptr %parents to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %parents, align 4
  %default_type = getelementptr inbounds %struct.cp2112_device, ptr %call.i, i32 0, i32 9, i32 37, i32 10
  %50 = ptrtoint ptr %default_type to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %default_type, align 4
  %handler = getelementptr inbounds %struct.cp2112_device, ptr %call.i, i32 0, i32 9, i32 37, i32 9
  %51 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @handle_simple_irq, ptr %handler, align 4
  %call138 = call i32 @gpiochip_add_data_with_key(ptr noundef %gc, ptr noundef nonnull %call.i, ptr noundef nonnull @cp2112_probe.lock_key, ptr noundef nonnull @cp2112_probe.request_key) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %cmp139 = icmp slt i32 %call138, 0
  br i1 %cmp139, label %do.end144, label %if.end146

do.end144:                                        ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.40) #14
  br label %err_free_i2c

if.end146:                                        ; preds = %do.end114
  %call148 = call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef nonnull @cp2112_attr_group) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %cmp149 = icmp slt i32 %call148, 0
  br i1 %cmp149, label %do.end154, label %if.end156

do.end154:                                        ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.43) #14
  call void @gpiochip_remove(ptr noundef %gc) #11
  br label %err_free_i2c

if.end156:                                        ; preds = %if.end146
  call fastcc void @chmod_sysfs_attrs(ptr noundef %hdev)
  %52 = ptrtoint ptr %ll_driver.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ll_driver.i, align 4
  %power.i264 = getelementptr inbounds %struct.hid_ll_driver, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %power.i264 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %power.i264, align 4
  %tobool.not.i265 = icmp eq ptr %55, null
  br i1 %tobool.not.i265, label %if.end156.cleanup_crit_edge, label %cond.true.i267

if.end156.cleanup_crit_edge:                      ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cond.true.i267:                                   ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #13
  %call.i266 = call i32 %55(ptr noundef %hdev, i32 noundef 2) #11
  br label %cleanup

err_free_i2c:                                     ; preds = %do.end154, %do.end144
  %ret.0 = phi i32 [ %call138, %do.end144 ], [ %call148, %do.end154 ]
  call void @i2c_del_adapter(ptr noundef nonnull %call.i) #11
  br label %err_power_normal

err_power_normal:                                 ; preds = %err_free_i2c, %do.end102, %do.end75, %do.end62, %do.end44
  %ret.1 = phi i32 [ %call97, %do.end102 ], [ %ret.0, %err_free_i2c ], [ %spec.select, %do.end44 ], [ %spec.select258, %do.end62 ], [ %spec.select259, %do.end75 ]
  %56 = ptrtoint ptr %ll_driver.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ll_driver.i, align 4
  %power.i271 = getelementptr inbounds %struct.hid_ll_driver, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %power.i271 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %power.i271, align 4
  %tobool.not.i272 = icmp eq ptr %59, null
  br i1 %tobool.not.i272, label %err_power_normal.err_hid_close_crit_edge, label %cond.true.i274

err_power_normal.err_hid_close_crit_edge:         ; preds = %err_power_normal
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_hid_close

cond.true.i274:                                   ; preds = %err_power_normal
  call void @__sanitizer_cov_trace_pc() #13
  %call.i273 = call i32 %59(ptr noundef %hdev, i32 noundef 2) #11
  br label %err_hid_close

err_hid_close:                                    ; preds = %cond.true.i274, %err_power_normal.err_hid_close_crit_edge, %do.end36
  %ret.2 = phi i32 [ %call.i262, %do.end36 ], [ %ret.1, %err_power_normal.err_hid_close_crit_edge ], [ %ret.1, %cond.true.i274 ]
  call void @hid_hw_close(ptr noundef %hdev) #11
  br label %err_hid_stop

err_hid_stop:                                     ; preds = %err_hid_close, %do.end29
  %ret.3 = phi i32 [ %call24, %do.end29 ], [ %ret.2, %err_hid_close ]
  call void @hid_hw_stop(ptr noundef %hdev) #11
  br label %cleanup

cleanup:                                          ; preds = %err_hid_stop, %cond.true.i267, %if.end156.cleanup_crit_edge, %do.end21, %do.end13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i261, %do.end13 ], [ %call16, %do.end21 ], [ %ret.3, %err_hid_stop ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call148, %if.end156.cleanup_crit_edge ], [ %call148, %cond.true.i267 ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %config) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cp2112_remove(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef nonnull @cp2112_attr_group) #11
  tail call void @i2c_del_adapter(ptr noundef %1) #11
  %gpio_poll = getelementptr inbounds %struct.cp2112_device, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %gpio_poll to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %gpio_poll, align 8, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %gpio_poll to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %gpio_poll, align 8
  %gpio_poll_worker = getelementptr inbounds %struct.cp2112_device, ptr %1, i32 0, i32 15
  %call3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %gpio_poll_worker) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %gc = getelementptr inbounds %struct.cp2112_device, ptr %1, i32 0, i32 9
  tail call void @gpiochip_unlock_as_irq(ptr noundef %gc, i32 noundef 0) #11
  %arrayidx = getelementptr %struct.cp2112_device, ptr %1, i32 0, i32 13, i32 0
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  tail call void @gpiochip_free_own_desc(ptr noundef %6) #11
  tail call void @gpiochip_unlock_as_irq(ptr noundef %gc, i32 noundef 1) #11
  %arrayidx.1 = getelementptr %struct.cp2112_device, ptr %1, i32 0, i32 13, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.1, align 4
  tail call void @gpiochip_free_own_desc(ptr noundef %8) #11
  tail call void @gpiochip_unlock_as_irq(ptr noundef %gc, i32 noundef 2) #11
  %arrayidx.2 = getelementptr %struct.cp2112_device, ptr %1, i32 0, i32 13, i32 2
  %9 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.2, align 4
  tail call void @gpiochip_free_own_desc(ptr noundef %10) #11
  tail call void @gpiochip_unlock_as_irq(ptr noundef %gc, i32 noundef 3) #11
  %arrayidx.3 = getelementptr %struct.cp2112_device, ptr %1, i32 0, i32 13, i32 3
  %11 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.3, align 4
  tail call void @gpiochip_free_own_desc(ptr noundef %12) #11
  tail call void @gpiochip_unlock_as_irq(ptr noundef %gc, i32 noundef 4) #11
  %arrayidx.4 = getelementptr %struct.cp2112_device, ptr %1, i32 0, i32 13, i32 4
  %13 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.4, align 4
  tail call void @gpiochip_free_own_desc(ptr noundef %14) #11
  tail call void @gpiochip_unlock_as_irq(ptr noundef %gc, i32 noundef 5) #11
  %arrayidx.5 = getelementptr %struct.cp2112_device, ptr %1, i32 0, i32 13, i32 5
  %15 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.5, align 4
  tail call void @gpiochip_free_own_desc(ptr noundef %16) #11
  tail call void @gpiochip_unlock_as_irq(ptr noundef %gc, i32 noundef 6) #11
  %arrayidx.6 = getelementptr %struct.cp2112_device, ptr %1, i32 0, i32 13, i32 6
  %17 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.6, align 4
  tail call void @gpiochip_free_own_desc(ptr noundef %18) #11
  tail call void @gpiochip_unlock_as_irq(ptr noundef %gc, i32 noundef 7) #11
  %arrayidx.7 = getelementptr %struct.cp2112_device, ptr %1, i32 0, i32 13, i32 7
  %19 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.7, align 4
  tail call void @gpiochip_free_own_desc(ptr noundef %20) #11
  tail call void @gpiochip_remove(ptr noundef %gc) #11
  tail call void @hid_hw_close(ptr noundef %hdev) #11
  tail call void @hid_hw_stop(ptr noundef %hdev) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cp2112_raw_event(ptr noundef %hdev, ptr nocapture noundef readnone %report, ptr nocapture noundef readonly %data, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %do.end62 [
    i8 22, label %do.body
    i8 19, label %do.body28
  ]

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cp2112_raw_event.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cp2112_raw_event, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !310

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev4 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %status0 = getelementptr inbounds %struct.cp2112_xfer_status_report, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %status0 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %status0, align 1
  %conv5 = zext i8 %6 to i32
  %status1 = getelementptr inbounds %struct.cp2112_xfer_status_report, ptr %data, i32 0, i32 2
  %7 = ptrtoint ptr %status1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %status1, align 1
  %conv6 = zext i8 %8 to i32
  %retries = getelementptr inbounds %struct.cp2112_xfer_status_report, ptr %data, i32 0, i32 3
  %9 = ptrtoint ptr %retries to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %retries, align 1
  %conv7 = zext i16 %10 to i32
  %length = getelementptr inbounds %struct.cp2112_xfer_status_report, ptr %data, i32 0, i32 4
  %11 = ptrtoint ptr %length to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %length, align 1
  %conv8 = zext i16 %12 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cp2112_raw_event.__UNIQUE_ID_ddebug299, ptr noundef %dev4, ptr noundef nonnull @.str.145, i32 noundef %conv5, i32 noundef %conv6, i32 noundef %conv7, i32 noundef %conv8) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %status09 = getelementptr inbounds %struct.cp2112_xfer_status_report, ptr %data, i32 0, i32 1
  %13 = ptrtoint ptr %status09 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %status09, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.148)
  switch i8 %14, label %sw.default24 [
    i8 0, label %sw.bb11
    i8 1, label %sw.bb12
    i8 2, label %sw.bb14
    i8 3, label %sw.bb18
  ]

sw.bb11:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %xfer_status = getelementptr inbounds %struct.cp2112_device, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %xfer_status to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -11, ptr %xfer_status, align 8
  br label %sw.epilog26

sw.bb12:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %xfer_status13 = getelementptr inbounds %struct.cp2112_device, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %xfer_status13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -16, ptr %xfer_status13, align 8
  br label %sw.epilog26

sw.bb14:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %length15 = getelementptr inbounds %struct.cp2112_xfer_status_report, ptr %data, i32 0, i32 4
  %18 = ptrtoint ptr %length15 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %length15, align 1
  %conv16 = zext i16 %19 to i32
  %xfer_status17 = getelementptr inbounds %struct.cp2112_device, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %xfer_status17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv16, ptr %xfer_status17, align 8
  br label %sw.epilog26

sw.bb18:                                          ; preds = %do.end
  %status119 = getelementptr inbounds %struct.cp2112_xfer_status_report, ptr %data, i32 0, i32 2
  %21 = ptrtoint ptr %status119 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %status119, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %switch = icmp ult i8 %22, 2
  %xfer_status22 = getelementptr inbounds %struct.cp2112_device, ptr %1, i32 0, i32 6
  br i1 %switch, label %sw.bb21, label %sw.default

sw.bb21:                                          ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %xfer_status22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -110, ptr %xfer_status22, align 8
  br label %sw.epilog26

sw.default:                                       ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %xfer_status22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -5, ptr %xfer_status22, align 8
  br label %sw.epilog26

sw.default24:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %xfer_status25 = getelementptr inbounds %struct.cp2112_device, ptr %1, i32 0, i32 6
  %25 = ptrtoint ptr %xfer_status25 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -22, ptr %xfer_status25, align 8
  br label %sw.epilog26

sw.epilog26:                                      ; preds = %sw.default24, %sw.default, %sw.bb21, %sw.bb14, %sw.bb12, %sw.bb11
  %xfer_avail = getelementptr inbounds %struct.cp2112_device, ptr %1, i32 0, i32 8
  br label %sw.epilog64

do.body28:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cp2112_raw_event.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cp2112_raw_event, %if.then40)) #11
          to label %do.end48 [label %if.then40], !srcloc !310

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #13
  %dev41 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %arrayidx42 = getelementptr i8, ptr %data, i32 1
  %26 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %27 to i32
  %arrayidx44 = getelementptr i8, ptr %data, i32 2
  %28 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %29 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cp2112_raw_event.__UNIQUE_ID_ddebug300, ptr noundef %dev41, ptr noundef nonnull @.str.146, i32 noundef %conv43, i32 noundef %conv45) #11
  br label %do.end48

do.end48:                                         ; preds = %if.then40, %do.body28
  %arrayidx49 = getelementptr i8, ptr %data, i32 2
  %30 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx49, align 1
  %read_length = getelementptr inbounds %struct.cp2112_device, ptr %1, i32 0, i32 4
  %32 = tail call i8 @llvm.umin.i8(i8 %31, i8 61)
  %33 = ptrtoint ptr %read_length to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %read_length, align 1
  %read_data = getelementptr inbounds %struct.cp2112_device, ptr %1, i32 0, i32 3
  %arrayidx56 = getelementptr i8, ptr %data, i32 3
  %conv58 = zext i8 %32 to i32
  %34 = call ptr @memcpy(ptr %read_data, ptr %arrayidx56, i32 %conv58)
  %read_avail = getelementptr inbounds %struct.cp2112_device, ptr %1, i32 0, i32 7
  br label %sw.epilog64

do.end62:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev63 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev63, ptr noundef nonnull @.str.147) #14
  br label %cleanup

sw.epilog64:                                      ; preds = %do.end48, %sw.epilog26
  %read_avail.sink99 = phi ptr [ %read_avail, %do.end48 ], [ %xfer_avail, %sw.epilog26 ]
  %call.i.i96 = tail call zeroext i1 @__kasan_check_write(ptr noundef %read_avail.sink99, i32 noundef 4) #11
  %35 = ptrtoint ptr %read_avail.sink99 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 1, ptr %read_avail.sink99, align 4
  %wait = getelementptr inbounds %struct.cp2112_device, ptr %1, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog64, %do.end62
  %retval.0 = phi i32 [ 0, %do.end62 ], [ 1, %sw.epilog64 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cp2112_hid_get(ptr noundef %hdev, i8 noundef zeroext %report_number, ptr nocapture noundef writeonly %data, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %count, i32 noundef 3264) #15
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext %report_number, ptr noundef nonnull %call9.i, i32 noundef %count, i8 noundef zeroext 2, i32 noundef 1) #11
  %0 = call ptr @memcpy(ptr %data, ptr %call9.i, i32 %count)
  tail call void @kfree(ptr noundef nonnull %call9.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cp2112_hid_output(ptr noundef %hdev, ptr noundef %data, i32 noundef %count, i8 noundef zeroext %report_type) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmemdup(ptr noundef %data, i32 noundef %count, i32 noundef 3264) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %report_type)
  %cmp = icmp eq i8 %report_type, 1
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 @hid_hw_output_report(ptr noundef %hdev, ptr noundef nonnull %call, i32 noundef %count) #11
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %call, align 1
  %call4 = tail call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext %1, ptr noundef nonnull %call, i32 noundef %count, i8 noundef zeroext %report_type, i32 noundef 9) #11
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %ret.0 = phi i32 [ %call3, %if.then2 ], [ %call4, %if.else ]
  tail call void @kfree(ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end5 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hid_device_io_start(ptr noundef %hid) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %io_started = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 35
  %0 = ptrtoint ptr %io_started to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %io_started, align 4, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.92) #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %io_started to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %io_started, align 4
  %driver_input_lock = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 17
  tail call void @up(ptr noundef %driver_input_lock) #11
  br label %return

return:                                           ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hid_device_io_stop(ptr noundef %hid) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %io_started = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 35
  %0 = ptrtoint ptr %io_started to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %io_started, align 4, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.95) #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %io_started to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %io_started, align 4
  %driver_input_lock = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 17
  tail call void @down(ptr noundef %driver_input_lock) #11
  br label %return

return:                                           ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cp2112_gpio_direction_input(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #11
  %hdev1 = getelementptr inbounds %struct.cp2112_device, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 8
  %in_out_buffer = getelementptr inbounds %struct.cp2112_device, ptr %call, i32 0, i32 11
  %2 = ptrtoint ptr %in_out_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %in_out_buffer, align 8
  %lock = getelementptr inbounds %struct.cp2112_device, ptr %call, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %call2 = tail call i32 @hid_hw_raw_request(ptr noundef %1, i8 noundef zeroext 2, ptr noundef %3, i32 noundef 5, i8 noundef zeroext 2, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 5
  br i1 %cmp.not, label %if.end6, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev3 = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.97, i32 noundef %call2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2)
  %cmp4 = icmp sgt i32 %call2, -1
  %spec.store.select = select i1 %cmp4, i32 -5, i32 %call2
  br label %exit

if.end6:                                          ; preds = %entry
  %shl = shl nuw i32 1, %offset
  %arrayidx = getelementptr i8, ptr %3, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = trunc i32 %shl to i8
  %7 = xor i8 %6, -1
  %conv7 = and i8 %5, %7
  store i8 %conv7, ptr %arrayidx, align 1
  %8 = load i32, ptr @gpio_push_pull, align 4
  %conv8 = trunc i32 %8 to i8
  %arrayidx9 = getelementptr i8, ptr %3, i32 2
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv8, ptr %arrayidx9, align 1
  %call10 = tail call i32 @hid_hw_raw_request(ptr noundef %1, i8 noundef zeroext 2, ptr noundef %3, i32 noundef 5, i8 noundef zeroext 2, i32 noundef 9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call10)
  %cmp11.not = icmp eq i32 %call10, 5
  br i1 %cmp11.not, label %if.end6.exit_crit_edge, label %do.end16

if.end6.exit_crit_edge:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

do.end16:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %dev17 = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.100, i32 noundef %call10) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call10)
  %cmp18 = icmp sgt i32 %call10, -1
  %spec.store.select24 = select i1 %cmp18, i32 -5, i32 %call10
  br label %exit

exit:                                             ; preds = %do.end16, %if.end6.exit_crit_edge, %do.end
  %ret.0 = phi i32 [ %spec.store.select, %do.end ], [ %spec.store.select24, %do.end16 ], [ 0, %if.end6.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cp2112_gpio_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #11
  %hdev1 = getelementptr inbounds %struct.cp2112_device, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 8
  %in_out_buffer = getelementptr inbounds %struct.cp2112_device, ptr %call, i32 0, i32 11
  %2 = ptrtoint ptr %in_out_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %in_out_buffer, align 8
  %lock = getelementptr inbounds %struct.cp2112_device, ptr %call, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %call2 = tail call i32 @hid_hw_raw_request(ptr noundef %1, i8 noundef zeroext 2, ptr noundef %3, i32 noundef 5, i8 noundef zeroext 2, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 5
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev3 = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.97, i32 noundef %call2) #14
  br label %fail

if.end:                                           ; preds = %entry
  %shl = shl nuw i32 1, %offset
  %arrayidx = getelementptr i8, ptr %3, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = trunc i32 %shl to i8
  %conv4 = or i8 %5, %6
  store i8 %conv4, ptr %arrayidx, align 1
  %7 = load i32, ptr @gpio_push_pull, align 4
  %conv5 = trunc i32 %7 to i8
  %arrayidx6 = getelementptr i8, ptr %3, i32 2
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv5, ptr %arrayidx6, align 1
  %call7 = tail call i32 @hid_hw_raw_request(ptr noundef %1, i8 noundef zeroext 2, ptr noundef %3, i32 noundef 5, i8 noundef zeroext 2, i32 noundef 9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %do.end13, label %if.end15

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev14 = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.100, i32 noundef %call7) #14
  br label %fail

if.end15:                                         ; preds = %if.end
  tail call void @mutex_unlock(ptr noundef %lock) #11
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #11
  %hdev1.i = getelementptr inbounds %struct.cp2112_device, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hdev1.i, align 8
  %in_out_buffer.i = getelementptr inbounds %struct.cp2112_device, ptr %call.i, i32 0, i32 11
  %11 = ptrtoint ptr %in_out_buffer.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %in_out_buffer.i, align 8
  %lock.i = getelementptr inbounds %struct.cp2112_device, ptr %call.i, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #11
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 4, ptr %12, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp ne i32 %value, 0
  %conv.i = sext i1 %tobool.not.i to i8
  %arrayidx2.i = getelementptr i8, ptr %12, i32 1
  %14 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.i, ptr %arrayidx2.i, align 1
  %arrayidx4.i = getelementptr i8, ptr %12, i32 2
  %15 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %6, ptr %arrayidx4.i, align 1
  %call5.i = tail call i32 @hid_hw_raw_request(ptr noundef %10, i8 noundef zeroext 4, ptr noundef %12, i32 noundef 3, i8 noundef zeroext 2, i32 noundef 9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end15.cp2112_gpio_set.exit_crit_edge

if.end15.cp2112_gpio_set.exit_crit_edge:          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cp2112_gpio_set.exit

do.end.i:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %dev7.i = getelementptr inbounds %struct.hid_device, ptr %10, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i, ptr noundef nonnull @.str.105, i32 noundef %call5.i) #14
  br label %cp2112_gpio_set.exit

cp2112_gpio_set.exit:                             ; preds = %do.end.i, %if.end15.cp2112_gpio_set.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #11
  br label %cleanup

fail:                                             ; preds = %do.end13, %do.end
  %ret.0 = phi i32 [ %call2, %do.end ], [ %call7, %do.end13 ]
  tail call void @mutex_unlock(ptr noundef %lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp18 = icmp slt i32 %ret.0, 0
  %spec.select = select i1 %cmp18, i32 %ret.0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %fail, %cp2112_gpio_set.exit
  %retval.0 = phi i32 [ %spec.select, %fail ], [ 0, %cp2112_gpio_set.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cp2112_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #11
  %hdev1 = getelementptr inbounds %struct.cp2112_device, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 8
  %in_out_buffer = getelementptr inbounds %struct.cp2112_device, ptr %call, i32 0, i32 11
  %2 = ptrtoint ptr %in_out_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %in_out_buffer, align 8
  %lock = getelementptr inbounds %struct.cp2112_device, ptr %call, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp ne i32 %value, 0
  %conv = sext i1 %tobool.not to i8
  %arrayidx2 = getelementptr i8, ptr %3, i32 1
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %arrayidx2, align 1
  %shl = shl nuw i32 1, %offset
  %conv3 = trunc i32 %shl to i8
  %arrayidx4 = getelementptr i8, ptr %3, i32 2
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv3, ptr %arrayidx4, align 1
  %call5 = tail call i32 @hid_hw_raw_request(ptr noundef %1, i8 noundef zeroext 4, ptr noundef %3, i32 noundef 3, i8 noundef zeroext 2, i32 noundef 9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev7 = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.105, i32 noundef %call5) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cp2112_gpio_get(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #11
  %hdev1.i = getelementptr inbounds %struct.cp2112_device, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1.i, align 8
  %in_out_buffer.i = getelementptr inbounds %struct.cp2112_device, ptr %call.i, i32 0, i32 11
  %2 = ptrtoint ptr %in_out_buffer.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %in_out_buffer.i, align 8
  %lock.i = getelementptr inbounds %struct.cp2112_device, ptr %call.i, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #11
  %call2.i = tail call i32 @hid_hw_raw_request(ptr noundef %1, i8 noundef zeroext 3, ptr noundef %3, i32 noundef 2, i8 noundef zeroext 2, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call2.i)
  %cmp.not.i = icmp eq i32 %call2.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev3.i = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i, ptr noundef nonnull @.str.107, i32 noundef %call2.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp4.i = icmp slt i32 %call2.i, 0
  %spec.select.i = select i1 %cmp4.i, i32 %call2.i, i32 -5
  br label %cp2112_gpio_get_all.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr i8, ptr %3, i32 1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %5 to i32
  br label %cp2112_gpio_get_all.exit

cp2112_gpio_get_all.exit:                         ; preds = %if.end.i, %do.end.i
  %ret.0.i = phi i32 [ %spec.select.i, %do.end.i ], [ %conv.i, %if.end.i ]
  tail call void @mutex_unlock(ptr noundef %lock.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp = icmp slt i32 %ret.0.i, 0
  %shr3 = lshr i32 %ret.0.i, %offset
  %and = and i32 %shr3, 1
  %retval.0 = select i1 %cmp, i32 %ret.0.i, i32 %and
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cp2112_gpio_irq_startup(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #11
  %gpio_poll_worker = getelementptr inbounds %struct.cp2112_device, ptr %call1, i32 0, i32 15
  tail call void @__init_work(ptr noundef %gpio_poll_worker, i32 noundef 0) #11
  %2 = ptrtoint ptr %gpio_poll_worker to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %gpio_poll_worker, align 4
  %lockdep_map = getelementptr inbounds %struct.cp2112_device, ptr %call1, i32 0, i32 15, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.109, ptr noundef nonnull @cp2112_gpio_irq_startup.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry9 = getelementptr inbounds %struct.cp2112_device, ptr %call1, i32 0, i32 15, i32 0, i32 1
  %3 = ptrtoint ptr %entry9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry9, ptr %entry9, align 4
  %prev.i = getelementptr inbounds %struct.cp2112_device, ptr %call1, i32 0, i32 15, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry9, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.cp2112_device, ptr %call1, i32 0, i32 15, i32 0, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @cp2112_gpio_poll_callback, ptr %func, align 4
  %timer = getelementptr inbounds %struct.cp2112_device, ptr %call1, i32 0, i32 15, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.111, ptr noundef nonnull @cp2112_gpio_irq_startup.__key.110) #11
  %gpio_poll = getelementptr inbounds %struct.cp2112_device, ptr %call1, i32 0, i32 14
  %6 = ptrtoint ptr %gpio_poll to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %gpio_poll, align 8, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %gpio_poll to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %gpio_poll, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %gpio_poll_worker, i32 noundef 0) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip_data.i, align 4
  %call1.i = tail call ptr @gpiochip_get_data(ptr noundef %11) #11
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %12 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hwirq.i, align 4
  %irq_mask.i = getelementptr inbounds %struct.cp2112_device, ptr %call1.i, i32 0, i32 16
  %rem.i.i = and i32 %13, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %13, 5
  %add.ptr.i.i = getelementptr i32, ptr %irq_mask.i, i32 %div2.i.i
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %shl.i.i, %15
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cp2112_gpio_irq_shutdown(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #11
  %gpio_poll_worker = getelementptr inbounds %struct.cp2112_device, ptr %call1, i32 0, i32 15
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %gpio_poll_worker) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @cp2112_gpio_irq_ack(ptr nocapture noundef %d) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cp2112_gpio_irq_mask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #11
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %irq_mask = getelementptr inbounds %struct.cp2112_device, ptr %call1, i32 0, i32 16
  %rem.i = and i32 %3, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %3, 5
  %add.ptr.i = getelementptr i32, ptr %irq_mask, i32 %div2.i
  %neg.i = xor i32 %shl.i, -1
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %5, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cp2112_gpio_irq_unmask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #11
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %irq_mask = getelementptr inbounds %struct.cp2112_device, ptr %call1, i32 0, i32 16
  %rem.i = and i32 %3, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %3, 5
  %add.ptr.i = getelementptr i32, ptr %irq_mask, i32 %div2.i
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %shl.i, %5
  store i32 %or.i, ptr %add.ptr.i, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cp2112_gpio_irq_type(ptr nocapture noundef readnone %d, i32 noundef %type) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @chmod_sysfs_attrs(ptr noundef %hdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 2) #16
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %cp2112_hid_get.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

cp2112_hid_get.exit:                              ; preds = %entry
  %call1.i = tail call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext 32, ptr noundef nonnull %call7.i.i, i32 noundef 2, i8 noundef zeroext 2, i32 noundef 1) #11
  %buf.sroa.4.0.call7.i.i.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 1
  %1 = ptrtoint ptr %buf.sroa.4.0.call7.i.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %1)
  %buf.sroa.4.0.copyload = load i8, ptr %buf.sroa.4.0.call7.i.i.sroa_idx, align 1
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1.i)
  %cmp.not = icmp eq i32 %call1.i, 2
  br i1 %cmp.not, label %for.cond.preheader, label %cp2112_hid_get.exit.do.end_crit_edge

cp2112_hid_get.exit.do.end_crit_edge:             ; preds = %cp2112_hid_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

for.cond.preheader:                               ; preds = %cp2112_hid_get.exit
  %2 = load ptr, ptr @.compoundliteral, align 4
  %tobool.not31 = icmp eq ptr %2, null
  br i1 %tobool.not31, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dev3 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  br label %for.body

do.end:                                           ; preds = %cp2112_hid_get.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %retval.0.i30 = phi i32 [ %call1.i, %cp2112_hid_get.exit.do.end_crit_edge ], [ -12, %entry.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.139, i32 noundef %retval.0.i30) #14
  br label %cleanup

for.body:                                         ; preds = %if.end12.for.body_crit_edge, %for.body.lr.ph
  %3 = phi ptr [ %2, %for.body.lr.ph ], [ %11, %if.end12.for.body_crit_edge ]
  %attr.033 = phi ptr [ @.compoundliteral, %for.body.lr.ph ], [ %incdec.ptr, %if.end12.for.body_crit_edge ]
  %buf.sroa.4.132 = phi i8 [ %buf.sroa.4.0.copyload, %for.body.lr.ph ], [ %9, %if.end12.for.body_crit_edge ]
  %4 = and i8 %buf.sroa.4.132, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  %conv2 = select i1 %tobool1.not, i16 292, i16 420
  %call4 = tail call i32 @sysfs_chmod_file(ptr noundef %dev3, ptr noundef nonnull %3, i16 noundef zeroext %conv2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.end10, label %for.body.if.end12_crit_edge

for.body.if.end12_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

do.end10:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %attr.033 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %attr.033, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.142, ptr noundef %8) #14
  br label %if.end12

if.end12:                                         ; preds = %do.end10, %for.body.if.end12_crit_edge
  %9 = lshr i8 %buf.sroa.4.132, 1
  %incdec.ptr = getelementptr ptr, ptr %attr.033, i32 1
  %10 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %incdec.ptr, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end12.cleanup_crit_edge, label %if.end12.for.body_crit_edge

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end12.cleanup_crit_edge, %do.end, %for.cond.preheader.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_raw_request(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_output_report(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cp2112_i2c_xfer(ptr nocapture noundef readonly %adap, ptr noundef readonly %msgs, i32 noundef %num) #2 align 64 {
entry:
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %hdev1 = getelementptr inbounds %struct.cp2112_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev1, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #11
  %4 = call ptr @memset(ptr %buf, i32 255, i32 64)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cp2112_i2c_xfer.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cp2112_i2c_xfer, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !310

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev4 = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cp2112_i2c_xfer.__UNIQUE_ID_ddebug291, ptr noundef %dev4, ptr noundef nonnull @.str.46, i32 noundef %num) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num)
  %cmp = icmp eq i32 %num, 1
  br i1 %cmp, label %if.then5, label %if.else67

if.then5:                                         ; preds = %do.end
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flags, align 2
  %7 = and i16 %6, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool6.not = icmp eq i16 %7, 0
  br i1 %tobool6.not, label %do.body34, label %do.body8

do.body8:                                         ; preds = %if.then5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cp2112_i2c_xfer.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cp2112_i2c_xfer, %if.then20)) #11
          to label %do.end26 [label %if.then20], !srcloc !310

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  %dev21 = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 18
  %8 = ptrtoint ptr %msgs to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %msgs, align 4
  %conv22 = zext i16 %9 to i32
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %len, align 4
  %conv23 = zext i16 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cp2112_i2c_xfer.__UNIQUE_ID_ddebug292, ptr noundef %dev21, ptr noundef nonnull @.str.47, i32 noundef %conv22, i32 noundef %conv23) #11
  br label %do.end26

do.end26:                                         ; preds = %if.then20, %do.body8
  %len27 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %12 = ptrtoint ptr %len27 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %len27, align 4
  %14 = add i16 %13, -513
  call void @__sanitizer_cov_trace_const_cmp2(i16 -512, i16 %14)
  %15 = icmp ult i16 %14, -512
  br i1 %15, label %do.end26.cleanup_crit_edge, label %if.end.i

do.end26.cleanup_crit_edge:                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %msgs to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %msgs, align 4
  %conv31 = trunc i16 %17 to i8
  %buf29 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %18 = ptrtoint ptr %buf29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buf29, align 4
  %conv28 = zext i16 %13 to i32
  %20 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 16, ptr %buf, align 1
  %shl.i = shl i8 %conv31, 1
  %slave_address8.i = getelementptr inbounds %struct.cp2112_read_req_report, ptr %buf, i32 0, i32 1
  %21 = ptrtoint ptr %slave_address8.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %shl.i, ptr %slave_address8.i, align 1
  %length9.i = getelementptr inbounds %struct.cp2112_read_req_report, ptr %buf, i32 0, i32 2
  %22 = ptrtoint ptr %length9.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 %13, ptr %length9.i, align 1
  br label %if.end148

do.body34:                                        ; preds = %if.then5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cp2112_i2c_xfer.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cp2112_i2c_xfer, %if.then46)) #11
          to label %do.end54 [label %if.then46], !srcloc !310

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #13
  %dev47 = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 18
  %23 = ptrtoint ptr %msgs to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %msgs, align 4
  %conv49 = zext i16 %24 to i32
  %len50 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %25 = ptrtoint ptr %len50 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %len50, align 4
  %conv51 = zext i16 %26 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cp2112_i2c_xfer.__UNIQUE_ID_ddebug293, ptr noundef %dev47, ptr noundef nonnull @.str.48, i32 noundef %conv49, i32 noundef %conv51) #11
  br label %do.end54

do.end54:                                         ; preds = %if.then46, %do.body34
  %len59 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %27 = ptrtoint ptr %len59 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %len59, align 4
  %conv60 = trunc i16 %28 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 61, i8 %conv60)
  %cmp.i = icmp ugt i8 %conv60, 61
  br i1 %cmp.i, label %do.end54.cleanup_crit_edge, label %if.end.i341

do.end54.cleanup_crit_edge:                       ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i341:                                      ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #13
  %buf58 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %29 = ptrtoint ptr %buf58 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %buf58, align 4
  %31 = ptrtoint ptr %msgs to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %msgs, align 4
  %conv57 = trunc i16 %32 to i8
  %conv60.mask = and i16 %28, 255
  %conv.i = zext i16 %conv60.mask to i32
  %33 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 20, ptr %buf, align 1
  %shl.i340 = shl i8 %conv57, 1
  %slave_address5.i = getelementptr inbounds %struct.cp2112_write_req_report, ptr %buf, i32 0, i32 1
  %34 = ptrtoint ptr %slave_address5.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %shl.i340, ptr %slave_address5.i, align 1
  %length.i = getelementptr inbounds %struct.cp2112_write_req_report, ptr %buf, i32 0, i32 2
  %35 = ptrtoint ptr %length.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv60, ptr %length.i, align 1
  %data6.i = getelementptr inbounds %struct.cp2112_write_req_report, ptr %buf, i32 0, i32 3
  %36 = call ptr @memcpy(ptr %data6.i, ptr %30, i32 %conv.i)
  %add.i = add nuw nsw i32 %conv.i, 3
  br label %if.end148

if.else67:                                        ; preds = %do.end
  %hwversion = getelementptr inbounds %struct.cp2112_device, ptr %1, i32 0, i32 5
  %37 = ptrtoint ptr %hwversion to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %hwversion, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %38)
  %cmp69 = icmp ugt i8 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %num)
  %cmp71 = icmp eq i32 %num, 2
  %or.cond = and i1 %cmp71, %cmp69
  br i1 %or.cond, label %land.lhs.true73, label %if.else67.do.end145_crit_edge

if.else67.do.end145_crit_edge:                    ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end145

land.lhs.true73:                                  ; preds = %if.else67
  %39 = ptrtoint ptr %msgs to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %msgs, align 4
  %arrayidx76 = getelementptr %struct.i2c_msg, ptr %msgs, i32 1
  %41 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx76, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %40, i16 %42)
  %cmp79 = icmp eq i16 %40, %42
  br i1 %cmp79, label %land.lhs.true81, label %land.lhs.true73.do.end145_crit_edge

land.lhs.true73.do.end145_crit_edge:              ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end145

land.lhs.true81:                                  ; preds = %land.lhs.true73
  %flags83 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %43 = ptrtoint ptr %flags83 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %flags83, align 2
  %45 = and i16 %44, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool86.not = icmp eq i16 %45, 0
  br i1 %tobool86.not, label %land.lhs.true87, label %land.lhs.true81.do.end145_crit_edge

land.lhs.true81.do.end145_crit_edge:              ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end145

land.lhs.true87:                                  ; preds = %land.lhs.true81
  %flags89 = getelementptr %struct.i2c_msg, ptr %msgs, i32 1, i32 1
  %46 = ptrtoint ptr %flags89 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %flags89, align 2
  %48 = and i16 %47, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool92.not = icmp eq i16 %48, 0
  br i1 %tobool92.not, label %land.lhs.true87.do.end145_crit_edge, label %do.body94

land.lhs.true87.do.end145_crit_edge:              ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end145

do.body94:                                        ; preds = %land.lhs.true87
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cp2112_i2c_xfer.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cp2112_i2c_xfer, %if.then106)) #11
          to label %do.end119 [label %if.then106], !srcloc !310

if.then106:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #13
  %dev107 = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 18
  %49 = ptrtoint ptr %msgs to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %msgs, align 4
  %conv110 = zext i16 %50 to i32
  %len112 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %51 = ptrtoint ptr %len112 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %len112, align 4
  %conv113 = zext i16 %52 to i32
  %len115 = getelementptr %struct.i2c_msg, ptr %msgs, i32 1, i32 2
  %53 = ptrtoint ptr %len115 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %len115, align 4
  %conv116 = zext i16 %54 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cp2112_i2c_xfer.__UNIQUE_ID_ddebug294, ptr noundef %dev107, ptr noundef nonnull @.str.49, i32 noundef %conv110, i32 noundef %conv113, i32 noundef %conv116) #11
  br label %do.end119

do.end119:                                        ; preds = %if.then106, %do.body94
  %len121 = getelementptr %struct.i2c_msg, ptr %msgs, i32 1, i32 2
  %55 = ptrtoint ptr %len121 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %len121, align 4
  %conv122 = zext i16 %56 to i32
  %len132 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %57 = ptrtoint ptr %len132 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %len132, align 4
  %59 = add nsw i32 %conv122, -513
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %59)
  %60 = icmp ult i32 %59, -512
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %58)
  %cmp3.i = icmp ugt i16 %58, 16
  %or.cond18.i = or i1 %cmp3.i, %60
  br i1 %or.cond18.i, label %do.end119.cleanup_crit_edge, label %cp2112_i2c_write_read_req.exit

do.end119.cleanup_crit_edge:                      ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cp2112_i2c_write_read_req.exit:                   ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #13
  %conv133 = zext i16 %58 to i32
  %buf130 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %61 = ptrtoint ptr %buf130 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %buf130, align 4
  %63 = ptrtoint ptr %msgs to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %msgs, align 4
  %conv128 = trunc i16 %64 to i8
  %buf124 = getelementptr %struct.i2c_msg, ptr %msgs, i32 1, i32 3
  %65 = ptrtoint ptr %buf124 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %buf124, align 4
  %67 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 17, ptr %buf, align 1
  %shl.i343 = shl i8 %conv128, 1
  %slave_address6.i = getelementptr inbounds %struct.cp2112_write_read_req_report, ptr %buf, i32 0, i32 1
  %68 = ptrtoint ptr %slave_address6.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %shl.i343, ptr %slave_address6.i, align 1
  %length.i344 = getelementptr inbounds %struct.cp2112_write_read_req_report, ptr %buf, i32 0, i32 2
  %69 = ptrtoint ptr %length.i344 to i32
  call void @__asan_storeN_noabort(i32 %69, i32 2)
  store i16 %56, ptr %length.i344, align 1
  %conv8.i = trunc i16 %58 to i8
  %target_address_length.i = getelementptr inbounds %struct.cp2112_write_read_req_report, ptr %buf, i32 0, i32 3
  %70 = ptrtoint ptr %target_address_length.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv8.i, ptr %target_address_length.i, align 1
  %target_address.i = getelementptr inbounds %struct.cp2112_write_read_req_report, ptr %buf, i32 0, i32 4
  %71 = call ptr @memcpy(ptr %target_address.i, ptr %62, i32 %conv133)
  %add.i345 = add nuw nsw i32 %conv133, 5
  br label %if.end148

do.end145:                                        ; preds = %land.lhs.true87.do.end145_crit_edge, %land.lhs.true81.do.end145_crit_edge, %land.lhs.true73.do.end145_crit_edge, %if.else67.do.end145_crit_edge
  %dev146 = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev146, ptr noundef nonnull @.str.50) #14
  br label %cleanup

if.end148:                                        ; preds = %cp2112_i2c_write_read_req.exit, %if.end.i341, %if.end.i
  %read_buf.1 = phi ptr [ %66, %cp2112_i2c_write_read_req.exit ], [ %19, %if.end.i ], [ null, %if.end.i341 ]
  %read_length.1 = phi i32 [ %conv122, %cp2112_i2c_write_read_req.exit ], [ %conv28, %if.end.i ], [ 0, %if.end.i341 ]
  %count.1 = phi i32 [ %add.i345, %cp2112_i2c_write_read_req.exit ], [ 4, %if.end.i ], [ %add.i, %if.end.i341 ]
  %ll_driver.i = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 20
  %72 = ptrtoint ptr %ll_driver.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ll_driver.i, align 4
  %power.i = getelementptr inbounds %struct.hid_ll_driver, ptr %73, i32 0, i32 4
  %74 = ptrtoint ptr %power.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %power.i, align 4
  %tobool.not.i = icmp eq ptr %75, null
  br i1 %tobool.not.i, label %if.end148.if.end157_crit_edge, label %hid_hw_power.exit

if.end148.if.end157_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end157

hid_hw_power.exit:                                ; preds = %if.end148
  %call.i = tail call i32 %75(ptr noundef %3, i32 noundef 32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp150 = icmp slt i32 %call.i, 0
  br i1 %cmp150, label %do.end155, label %hid_hw_power.exit.if.end157_crit_edge

hid_hw_power.exit.if.end157_crit_edge:            ; preds = %hid_hw_power.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end157

do.end155:                                        ; preds = %hid_hw_power.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dev156 = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev156, ptr noundef nonnull @.str.15, i32 noundef %call.i) #14
  br label %cleanup

if.end157:                                        ; preds = %hid_hw_power.exit.if.end157_crit_edge, %if.end148.if.end157_crit_edge
  %call.i348 = call ptr @kmemdup(ptr noundef nonnull %buf, i32 noundef %count.1, i32 noundef 3264) #11
  %tobool.not.i349 = icmp eq ptr %call.i348, null
  br i1 %tobool.not.i349, label %if.end157.do.end165_crit_edge, label %cp2112_hid_output.exit

if.end157.do.end165_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end165

cp2112_hid_output.exit:                           ; preds = %if.end157
  %call3.i = call i32 @hid_hw_output_report(ptr noundef %3, ptr noundef nonnull %call.i348, i32 noundef %count.1) #11
  call void @kfree(ptr noundef nonnull %call.i348) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp160 = icmp slt i32 %call3.i, 0
  br i1 %cmp160, label %cp2112_hid_output.exit.do.end165_crit_edge, label %for.body.preheader

cp2112_hid_output.exit.do.end165_crit_edge:       ; preds = %cp2112_hid_output.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end165

for.body.preheader:                               ; preds = %cp2112_hid_output.exit
  %call170 = call fastcc i32 @cp2112_xfer_status(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call170)
  %cmp171 = icmp eq i32 %call170, -16
  br i1 %cmp171, label %for.cond, label %for.body.preheader.if.end174_crit_edge

for.body.preheader.if.end174_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end174

do.end165:                                        ; preds = %cp2112_hid_output.exit.do.end165_crit_edge, %if.end157.do.end165_crit_edge
  %retval.0.i351379 = phi i32 [ %call3.i, %cp2112_hid_output.exit.do.end165_crit_edge ], [ -12, %if.end157.do.end165_crit_edge ]
  %dev166 = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev166, ptr noundef nonnull @.str.54, i32 noundef %retval.0.i351379) #14
  br label %power_normal

for.cond:                                         ; preds = %for.body.preheader
  %call170.1 = call fastcc i32 @cp2112_xfer_status(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call170.1)
  %cmp171.1 = icmp eq i32 %call170.1, -16
  br i1 %cmp171.1, label %for.cond.1, label %for.cond.if.end174_crit_edge

for.cond.if.end174_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end174

for.cond.1:                                       ; preds = %for.cond
  %call170.2 = call fastcc i32 @cp2112_xfer_status(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call170.2)
  %cmp171.2 = icmp eq i32 %call170.2, -16
  br i1 %cmp171.2, label %for.cond.2, label %for.cond.1.if.end174_crit_edge

for.cond.1.if.end174_crit_edge:                   ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end174

for.cond.2:                                       ; preds = %for.cond.1
  %call170.3 = call fastcc i32 @cp2112_xfer_status(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call170.3)
  %cmp171.3 = icmp eq i32 %call170.3, -16
  br i1 %cmp171.3, label %for.cond.3, label %for.cond.2.if.end174_crit_edge

for.cond.2.if.end174_crit_edge:                   ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end174

for.cond.3:                                       ; preds = %for.cond.2
  %call170.4 = call fastcc i32 @cp2112_xfer_status(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call170.4)
  %cmp171.4 = icmp eq i32 %call170.4, -16
  br i1 %cmp171.4, label %for.cond.4, label %for.cond.3.if.end174_crit_edge

for.cond.3.if.end174_crit_edge:                   ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end174

for.cond.4:                                       ; preds = %for.cond.3
  %call170.5 = call fastcc i32 @cp2112_xfer_status(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call170.5)
  %cmp171.5 = icmp eq i32 %call170.5, -16
  br i1 %cmp171.5, label %for.cond.5, label %for.cond.4.if.end174_crit_edge

for.cond.4.if.end174_crit_edge:                   ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end174

for.cond.5:                                       ; preds = %for.cond.4
  %call170.6 = call fastcc i32 @cp2112_xfer_status(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call170.6)
  %cmp171.6 = icmp eq i32 %call170.6, -16
  br i1 %cmp171.6, label %for.cond.6, label %for.cond.5.if.end174_crit_edge

for.cond.5.if.end174_crit_edge:                   ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end174

for.cond.6:                                       ; preds = %for.cond.5
  %call170.7 = call fastcc i32 @cp2112_xfer_status(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call170.7)
  %cmp171.7 = icmp eq i32 %call170.7, -16
  br i1 %cmp171.7, label %for.cond.7, label %for.cond.6.if.end174_crit_edge

for.cond.6.if.end174_crit_edge:                   ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end174

for.cond.7:                                       ; preds = %for.cond.6
  %call170.8 = call fastcc i32 @cp2112_xfer_status(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call170.8)
  %cmp171.8 = icmp eq i32 %call170.8, -16
  br i1 %cmp171.8, label %for.cond.8, label %for.cond.7.if.end174_crit_edge

for.cond.7.if.end174_crit_edge:                   ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end174

for.cond.8:                                       ; preds = %for.cond.7
  %call170.9 = call fastcc i32 @cp2112_xfer_status(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call170.9)
  %cmp171.9 = icmp eq i32 %call170.9, -16
  br i1 %cmp171.9, label %for.cond.9, label %for.cond.8.if.end174_crit_edge

for.cond.8.if.end174_crit_edge:                   ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end174

for.cond.9:                                       ; preds = %for.cond.8
  %dev185 = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev185, ptr noundef nonnull @.str.58) #14
  %76 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 23, ptr %buf, align 1
  %arrayidx187 = getelementptr inbounds [64 x i8], ptr %buf, i32 0, i32 1
  %77 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %arrayidx187, align 1
  %call.i352 = call ptr @kmemdup(ptr noundef nonnull %buf, i32 noundef 2, i32 noundef 3264) #11
  %tobool.not.i353 = icmp eq ptr %call.i352, null
  br i1 %tobool.not.i353, label %for.cond.9.do.end195_crit_edge, label %cp2112_hid_output.exit357

for.cond.9.do.end195_crit_edge:                   ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end195

if.end174:                                        ; preds = %for.cond.8.if.end174_crit_edge, %for.cond.7.if.end174_crit_edge, %for.cond.6.if.end174_crit_edge, %for.cond.5.if.end174_crit_edge, %for.cond.4.if.end174_crit_edge, %for.cond.3.if.end174_crit_edge, %for.cond.2.if.end174_crit_edge, %for.cond.1.if.end174_crit_edge, %for.cond.if.end174_crit_edge, %for.body.preheader.if.end174_crit_edge
  %call170.lcssa = phi i32 [ %call170, %for.body.preheader.if.end174_crit_edge ], [ %call170.1, %for.cond.if.end174_crit_edge ], [ %call170.2, %for.cond.1.if.end174_crit_edge ], [ %call170.3, %for.cond.2.if.end174_crit_edge ], [ %call170.4, %for.cond.3.if.end174_crit_edge ], [ %call170.5, %for.cond.4.if.end174_crit_edge ], [ %call170.6, %for.cond.5.if.end174_crit_edge ], [ %call170.7, %for.cond.6.if.end174_crit_edge ], [ %call170.8, %for.cond.7.if.end174_crit_edge ], [ %call170.9, %for.cond.8.if.end174_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170.lcssa)
  %cmp175 = icmp slt i32 %call170.lcssa, 0
  br i1 %cmp175, label %if.end174.power_normal_crit_edge, label %if.end174.for.cond199_crit_edge

if.end174.for.cond199_crit_edge:                  ; preds = %if.end174
  br label %for.cond199

if.end174.power_normal_crit_edge:                 ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #13
  br label %power_normal

cp2112_hid_output.exit357:                        ; preds = %for.cond.9
  %call3.i355 = call i32 @hid_hw_output_report(ptr noundef %3, ptr noundef nonnull %call.i352, i32 noundef 2) #11
  call void @kfree(ptr noundef nonnull %call.i352) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i355)
  %cmp190 = icmp slt i32 %call3.i355, 0
  br i1 %cmp190, label %cp2112_hid_output.exit357.do.end195_crit_edge, label %cp2112_hid_output.exit357.power_normal_crit_edge

cp2112_hid_output.exit357.power_normal_crit_edge: ; preds = %cp2112_hid_output.exit357
  call void @__sanitizer_cov_trace_pc() #13
  br label %power_normal

cp2112_hid_output.exit357.do.end195_crit_edge:    ; preds = %cp2112_hid_output.exit357
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end195

do.end195:                                        ; preds = %cp2112_hid_output.exit357.do.end195_crit_edge, %for.cond.9.do.end195_crit_edge
  %retval.0.i356383 = phi i32 [ %call3.i355, %cp2112_hid_output.exit357.do.end195_crit_edge ], [ -12, %for.cond.9.do.end195_crit_edge ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev185, ptr noundef nonnull @.str.61, i32 noundef %retval.0.i356383) #14
  br label %power_normal

for.cond199:                                      ; preds = %if.end215.for.cond199_crit_edge, %if.end174.for.cond199_crit_edge
  %count.2 = phi i32 [ %add, %if.end215.for.cond199_crit_edge ], [ 0, %if.end174.for.cond199_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %read_length.1, i32 %count.2)
  %cmp200 = icmp sgt i32 %read_length.1, %count.2
  br i1 %cmp200, label %for.body202, label %for.cond199.power_normal_crit_edge

for.cond199.power_normal_crit_edge:               ; preds = %for.cond199
  call void @__sanitizer_cov_trace_pc() #13
  br label %power_normal

for.body202:                                      ; preds = %for.cond199
  %add.ptr = getelementptr i8, ptr %read_buf.1, i32 %count.2
  %sub = sub i32 %read_length.1, %count.2
  %call203 = call fastcc i32 @cp2112_read(ptr noundef %1, ptr noundef %add.ptr, i32 noundef %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call203)
  %cmp204 = icmp slt i32 %call203, 0
  br i1 %cmp204, label %for.body202.power_normal_crit_edge, label %if.end207

for.body202.power_normal_crit_edge:               ; preds = %for.body202
  call void @__sanitizer_cov_trace_pc() #13
  br label %power_normal

if.end207:                                        ; preds = %for.body202
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call203)
  %cmp208 = icmp eq i32 %call203, 0
  br i1 %cmp208, label %do.end213, label %if.end215

do.end213:                                        ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #13
  %dev214 = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev214, ptr noundef nonnull @.str.64) #14
  br label %power_normal

if.end215:                                        ; preds = %if.end207
  %add = add i32 %call203, %count.2
  %cmp216 = icmp slt i32 %read_length.1, %add
  br i1 %cmp216, label %do.end221, label %if.end215.for.cond199_crit_edge

if.end215.for.cond199_crit_edge:                  ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond199

do.end221:                                        ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #13
  %dev222 = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 18
  %sub223 = add i32 %call203, %read_length.1
  %add224 = sub i32 %sub223, %add
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev222, ptr noundef nonnull @.str.67, i32 noundef %call203, i32 noundef %add224) #14
  br label %power_normal

power_normal:                                     ; preds = %do.end221, %do.end213, %for.body202.power_normal_crit_edge, %for.cond199.power_normal_crit_edge, %do.end195, %cp2112_hid_output.exit357.power_normal_crit_edge, %if.end174.power_normal_crit_edge, %do.end165
  %ret.0 = phi i32 [ %retval.0.i351379, %do.end165 ], [ %call170.lcssa, %if.end174.power_normal_crit_edge ], [ -5, %do.end213 ], [ -5, %do.end221 ], [ -110, %do.end195 ], [ -110, %cp2112_hid_output.exit357.power_normal_crit_edge ], [ %num, %for.cond199.power_normal_crit_edge ], [ %call203, %for.body202.power_normal_crit_edge ]
  %78 = ptrtoint ptr %ll_driver.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ll_driver.i, align 4
  %power.i359 = getelementptr inbounds %struct.hid_ll_driver, ptr %79, i32 0, i32 4
  %80 = ptrtoint ptr %power.i359 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %power.i359, align 4
  %tobool.not.i360 = icmp eq ptr %81, null
  br i1 %tobool.not.i360, label %power_normal.hid_hw_power.exit364_crit_edge, label %cond.true.i362

power_normal.hid_hw_power.exit364_crit_edge:      ; preds = %power_normal
  call void @__sanitizer_cov_trace_pc() #13
  br label %hid_hw_power.exit364

cond.true.i362:                                   ; preds = %power_normal
  call void @__sanitizer_cov_trace_pc() #13
  %call.i361 = call i32 %81(ptr noundef %3, i32 noundef 2) #11
  br label %hid_hw_power.exit364

hid_hw_power.exit364:                             ; preds = %cond.true.i362, %power_normal.hid_hw_power.exit364_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cp2112_i2c_xfer.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cp2112_i2c_xfer, %if.then240)) #11
          to label %cleanup [label %if.then240], !srcloc !310

if.then240:                                       ; preds = %hid_hw_power.exit364
  call void @__sanitizer_cov_trace_pc() #13
  %dev241 = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cp2112_i2c_xfer.__UNIQUE_ID_ddebug295, ptr noundef %dev241, ptr noundef nonnull @.str.69, i32 noundef %ret.0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then240, %hid_hw_power.exit364, %do.end155, %do.end145, %do.end119.cleanup_crit_edge, %do.end54.cleanup_crit_edge, %do.end26.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end155 ], [ -95, %do.end145 ], [ %ret.0, %if.then240 ], [ %ret.0, %hid_hw_power.exit364 ], [ -22, %do.end26.cleanup_crit_edge ], [ -22, %do.end54.cleanup_crit_edge ], [ -22, %do.end119.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cp2112_xfer(ptr nocapture noundef readonly %adap, i16 noundef zeroext %addr, i16 noundef zeroext %flags, i8 noundef zeroext %read_write, i8 noundef zeroext %command, i32 noundef %size, ptr nocapture noundef %data) #2 align 64 {
entry:
  %buf = alloca [64 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %hdev1 = getelementptr inbounds %struct.cp2112_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev1, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #11
  %4 = call ptr @memset(ptr %buf, i32 255, i32 64)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cp2112_xfer.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cp2112_xfer, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !310

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev4 = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp = icmp eq i8 %read_write, 0
  %cond = select i1 %cmp, ptr @.str.77, ptr @.str.78
  %conv6 = zext i16 %addr to i32
  %conv7 = zext i16 %flags to i32
  %conv8 = zext i8 %command to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cp2112_xfer.__UNIQUE_ID_ddebug296, ptr noundef %dev4, ptr noundef nonnull @.str.76, ptr noundef nonnull %cond, i32 noundef %conv6, i32 noundef %conv7, i32 noundef %conv8, i32 noundef %size) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %5 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %size, label %do.end98 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb20
    i32 3, label %sw.bb34
    i32 4, label %sw.bb48
    i32 8, label %sw.bb53
    i32 5, label %sw.bb70
    i32 7, label %sw.bb87
  ]

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %read_write)
  %cmp10 = icmp eq i8 %read_write, 1
  %conv13 = trunc i16 %addr to i8
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 16, ptr %buf, align 2
  %shl.i = shl i8 %conv13, 1
  %slave_address8.i = getelementptr inbounds %struct.cp2112_read_req_report, ptr %buf, i32 0, i32 1
  %7 = ptrtoint ptr %slave_address8.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %shl.i, ptr %slave_address8.i, align 1
  %length9.i = getelementptr inbounds %struct.cp2112_read_req_report, ptr %buf, i32 0, i32 2
  %8 = ptrtoint ptr %length9.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %length9.i, align 2
  br label %if.end103

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 20, ptr %buf, align 2
  %shl.i310 = shl i8 %conv13, 1
  %slave_address5.i = getelementptr inbounds %struct.cp2112_write_req_report, ptr %buf, i32 0, i32 1
  %10 = ptrtoint ptr %slave_address5.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %shl.i310, ptr %slave_address5.i, align 1
  %length.i = getelementptr inbounds %struct.cp2112_write_req_report, ptr %buf, i32 0, i32 2
  %11 = ptrtoint ptr %length.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %length.i, align 2
  %data8.i = getelementptr inbounds %struct.cp2112_write_req_report, ptr %buf, i32 0, i32 3
  %12 = ptrtoint ptr %data8.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %command, ptr %data8.i, align 1
  br label %if.end103

sw.bb20:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %read_write)
  %cmp22 = icmp eq i8 %read_write, 1
  %conv26 = trunc i16 %addr to i8
  br i1 %cmp22, label %if.then24, label %if.else29

if.then24:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 17, ptr %buf, align 2
  %shl.i312 = shl i8 %conv26, 1
  %slave_address12.i = getelementptr inbounds %struct.cp2112_write_read_req_report, ptr %buf, i32 0, i32 1
  %14 = ptrtoint ptr %slave_address12.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %shl.i312, ptr %slave_address12.i, align 1
  %length13.i = getelementptr inbounds %struct.cp2112_write_read_req_report, ptr %buf, i32 0, i32 2
  %15 = ptrtoint ptr %length13.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %length13.i, align 2
  %target_address_length.i = getelementptr inbounds %struct.cp2112_write_read_req_report, ptr %buf, i32 0, i32 3
  %16 = ptrtoint ptr %target_address_length.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %target_address_length.i, align 2
  %target_address.i = getelementptr inbounds %struct.cp2112_write_read_req_report, ptr %buf, i32 0, i32 4
  %17 = ptrtoint ptr %target_address.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %command, ptr %target_address.i, align 1
  br label %if.end103

if.else29:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 20, ptr %buf, align 2
  %shl.i314 = shl i8 %conv26, 1
  %slave_address5.i315 = getelementptr inbounds %struct.cp2112_write_req_report, ptr %buf, i32 0, i32 1
  %19 = ptrtoint ptr %slave_address5.i315 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %shl.i314, ptr %slave_address5.i315, align 1
  %length.i316 = getelementptr inbounds %struct.cp2112_write_req_report, ptr %buf, i32 0, i32 2
  %20 = ptrtoint ptr %length.i316 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %length.i316, align 2
  %data8.i317 = getelementptr inbounds %struct.cp2112_write_req_report, ptr %buf, i32 0, i32 3
  %21 = ptrtoint ptr %data8.i317 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %command, ptr %data8.i317, align 1
  %arrayidx10.i318 = getelementptr inbounds %struct.cp2112_write_req_report, ptr %buf, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %data, align 1
  %24 = ptrtoint ptr %arrayidx10.i318 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx10.i318, align 2
  br label %if.end103

sw.bb34:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %read_write)
  %cmp36 = icmp eq i8 %read_write, 1
  br i1 %cmp36, label %if.then38, label %if.else43

if.then38:                                        ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #13
  %conv40 = trunc i16 %addr to i8
  %25 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 17, ptr %buf, align 2
  %shl.i320 = shl i8 %conv40, 1
  %slave_address12.i321 = getelementptr inbounds %struct.cp2112_write_read_req_report, ptr %buf, i32 0, i32 1
  %26 = ptrtoint ptr %slave_address12.i321 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %shl.i320, ptr %slave_address12.i321, align 1
  %length13.i322 = getelementptr inbounds %struct.cp2112_write_read_req_report, ptr %buf, i32 0, i32 2
  %27 = ptrtoint ptr %length13.i322 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 2, ptr %length13.i322, align 2
  %target_address_length.i323 = getelementptr inbounds %struct.cp2112_write_read_req_report, ptr %buf, i32 0, i32 3
  %28 = ptrtoint ptr %target_address_length.i323 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %target_address_length.i323, align 2
  %target_address.i324 = getelementptr inbounds %struct.cp2112_write_read_req_report, ptr %buf, i32 0, i32 4
  %29 = ptrtoint ptr %target_address.i324 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %command, ptr %target_address.i324, align 1
  br label %if.end103

if.else43:                                        ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %data, align 2
  %32 = tail call i16 @llvm.bswap.i16(i16 %31)
  %conv45 = trunc i16 %addr to i8
  %33 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 20, ptr %buf, align 2
  %shl.i327 = shl i8 %conv45, 1
  %slave_address5.i328 = getelementptr inbounds %struct.cp2112_write_req_report, ptr %buf, i32 0, i32 1
  %34 = ptrtoint ptr %slave_address5.i328 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %shl.i327, ptr %slave_address5.i328, align 1
  %length.i329 = getelementptr inbounds %struct.cp2112_write_req_report, ptr %buf, i32 0, i32 2
  %35 = ptrtoint ptr %length.i329 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 3, ptr %length.i329, align 2
  %data8.i330 = getelementptr inbounds %struct.cp2112_write_req_report, ptr %buf, i32 0, i32 3
  %36 = ptrtoint ptr %data8.i330 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %command, ptr %data8.i330, align 1
  %arrayidx10.i331 = getelementptr inbounds %struct.cp2112_write_req_report, ptr %buf, i32 0, i32 3, i32 1
  %37 = ptrtoint ptr %arrayidx10.i331 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %32, ptr %arrayidx10.i331, align 2
  br label %if.end103

sw.bb48:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %data, align 2
  %40 = tail call i16 @llvm.bswap.i16(i16 %39)
  %conv50 = trunc i16 %addr to i8
  %41 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 17, ptr %buf, align 2
  %shl.i333 = shl i8 %conv50, 1
  %slave_address12.i334 = getelementptr inbounds %struct.cp2112_write_read_req_report, ptr %buf, i32 0, i32 1
  %42 = ptrtoint ptr %slave_address12.i334 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %shl.i333, ptr %slave_address12.i334, align 1
  %length13.i335 = getelementptr inbounds %struct.cp2112_write_read_req_report, ptr %buf, i32 0, i32 2
  %43 = ptrtoint ptr %length13.i335 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 2, ptr %length13.i335, align 2
  %target_address_length.i336 = getelementptr inbounds %struct.cp2112_write_read_req_report, ptr %buf, i32 0, i32 3
  %44 = ptrtoint ptr %target_address_length.i336 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 3, ptr %target_address_length.i336, align 2
  %target_address.i337 = getelementptr inbounds %struct.cp2112_write_read_req_report, ptr %buf, i32 0, i32 4
  %45 = ptrtoint ptr %target_address.i337 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %command, ptr %target_address.i337, align 1
  %arrayidx17.i338 = getelementptr inbounds %struct.cp2112_write_read_req_report, ptr %buf, i32 0, i32 4, i32 1
  %46 = ptrtoint ptr %arrayidx17.i338 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %40, ptr %arrayidx17.i338, align 2
  br label %if.end103

sw.bb53:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %read_write)
  %cmp55 = icmp eq i8 %read_write, 1
  %47 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %data, align 2
  br i1 %cmp55, label %if.then57, label %if.else63

if.then57:                                        ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp.i = icmp eq i8 %48, 0
  br i1 %cmp.i, label %if.then57.cleanup_crit_edge, label %if.end.i

if.then57.cleanup_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #13
  %conv61 = zext i8 %48 to i16
  %conv60 = trunc i16 %addr to i8
  %conv58 = zext i8 %48 to i32
  %49 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 17, ptr %buf, align 2
  %shl.i340 = shl i8 %conv60, 1
  %slave_address12.i341 = getelementptr inbounds %struct.cp2112_write_read_req_report, ptr %buf, i32 0, i32 1
  %50 = ptrtoint ptr %slave_address12.i341 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %shl.i340, ptr %slave_address12.i341, align 1
  %length13.i342 = getelementptr inbounds %struct.cp2112_write_read_req_report, ptr %buf, i32 0, i32 2
  %51 = ptrtoint ptr %length13.i342 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv61, ptr %length13.i342, align 2
  %target_address_length.i343 = getelementptr inbounds %struct.cp2112_write_read_req_report, ptr %buf, i32 0, i32 3
  %52 = ptrtoint ptr %target_address_length.i343 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %target_address_length.i343, align 2
  %target_address.i344 = getelementptr inbounds %struct.cp2112_write_read_req_report, ptr %buf, i32 0, i32 4
  %53 = ptrtoint ptr %target_address.i344 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %command, ptr %target_address.i344, align 1
  br label %if.end103

if.else63:                                        ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_const_cmp1(i8 60, i8 %48)
  %cmp.i347 = icmp ugt i8 %48, 60
  br i1 %cmp.i347, label %if.else63.cleanup_crit_edge, label %if.end.i353

if.else63.cleanup_crit_edge:                      ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i353:                                      ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %data, i32 1
  %conv65 = trunc i16 %addr to i8
  %conv.i = zext i8 %48 to i32
  %54 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 20, ptr %buf, align 2
  %shl.i348 = shl i8 %conv65, 1
  %slave_address5.i349 = getelementptr inbounds %struct.cp2112_write_req_report, ptr %buf, i32 0, i32 1
  %55 = ptrtoint ptr %slave_address5.i349 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %shl.i348, ptr %slave_address5.i349, align 1
  %add.i = add nuw nsw i8 %48, 1
  %length.i350 = getelementptr inbounds %struct.cp2112_write_req_report, ptr %buf, i32 0, i32 2
  %56 = ptrtoint ptr %length.i350 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %add.i, ptr %length.i350, align 2
  %data8.i351 = getelementptr inbounds %struct.cp2112_write_req_report, ptr %buf, i32 0, i32 3
  %57 = ptrtoint ptr %data8.i351 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %command, ptr %data8.i351, align 1
  %arrayidx10.i352 = getelementptr inbounds %struct.cp2112_write_req_report, ptr %buf, i32 0, i32 3, i32 1
  %58 = call ptr @memcpy(ptr %arrayidx10.i352, ptr %add.ptr, i32 %conv.i)
  %add13.i = add nuw nsw i32 %conv.i, 4
  br label %if.end103

sw.bb70:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %read_write)
  %cmp72 = icmp eq i8 %read_write, 1
  br i1 %cmp72, label %if.then74, label %if.else78

if.then74:                                        ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #13
  %conv76 = trunc i16 %addr to i8
  %59 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 17, ptr %buf, align 2
  %shl.i355 = shl i8 %conv76, 1
  %slave_address12.i356 = getelementptr inbounds %struct.cp2112_write_read_req_report, ptr %buf, i32 0, i32 1
  %60 = ptrtoint ptr %slave_address12.i356 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %shl.i355, ptr %slave_address12.i356, align 1
  %length13.i357 = getelementptr inbounds %struct.cp2112_write_read_req_report, ptr %buf, i32 0, i32 2
  %61 = ptrtoint ptr %length13.i357 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 32, ptr %length13.i357, align 2
  %target_address_length.i358 = getelementptr inbounds %struct.cp2112_write_read_req_report, ptr %buf, i32 0, i32 3
  %62 = ptrtoint ptr %target_address_length.i358 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %target_address_length.i358, align 2
  %target_address.i359 = getelementptr inbounds %struct.cp2112_write_read_req_report, ptr %buf, i32 0, i32 4
  %63 = ptrtoint ptr %target_address.i359 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %command, ptr %target_address.i359, align 1
  br label %if.end103

if.else78:                                        ; preds = %sw.bb70
  %64 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %data, align 2
  %add = add i8 %65, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 60, i8 %add)
  %cmp.i363 = icmp ugt i8 %add, 60
  br i1 %cmp.i363, label %if.else78.cleanup_crit_edge, label %if.end.i372

if.else78.cleanup_crit_edge:                      ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i372:                                      ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #13
  %conv80 = trunc i16 %addr to i8
  %conv.i364 = zext i8 %add to i32
  %66 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 20, ptr %buf, align 2
  %shl.i365 = shl i8 %conv80, 1
  %slave_address5.i366 = getelementptr inbounds %struct.cp2112_write_req_report, ptr %buf, i32 0, i32 1
  %67 = ptrtoint ptr %slave_address5.i366 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %shl.i365, ptr %slave_address5.i366, align 1
  %add.i367 = add nsw i8 %65, 2
  %length.i368 = getelementptr inbounds %struct.cp2112_write_req_report, ptr %buf, i32 0, i32 2
  %68 = ptrtoint ptr %length.i368 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %add.i367, ptr %length.i368, align 2
  %data8.i369 = getelementptr inbounds %struct.cp2112_write_req_report, ptr %buf, i32 0, i32 3
  %69 = ptrtoint ptr %data8.i369 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %command, ptr %data8.i369, align 1
  %arrayidx10.i370 = getelementptr inbounds %struct.cp2112_write_req_report, ptr %buf, i32 0, i32 3, i32 1
  %70 = call ptr @memcpy(ptr %arrayidx10.i370, ptr %data, i32 %conv.i364)
  %add13.i371 = add nuw nsw i32 %conv.i364, 4
  br label %if.end103

sw.bb87:                                          ; preds = %do.end
  %71 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %data, align 2
  %add93 = add i8 %72, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %add93)
  %cmp7.i = icmp ugt i8 %add93, 15
  br i1 %cmp7.i, label %sw.bb87.cleanup_crit_edge, label %if.end.i382

sw.bb87.cleanup_crit_edge:                        ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i382:                                      ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #13
  %conv89 = trunc i16 %addr to i8
  %conv6.i = zext i8 %add93 to i32
  %73 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 17, ptr %buf, align 2
  %shl.i375 = shl i8 %conv89, 1
  %slave_address12.i376 = getelementptr inbounds %struct.cp2112_write_read_req_report, ptr %buf, i32 0, i32 1
  %74 = ptrtoint ptr %slave_address12.i376 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %shl.i375, ptr %slave_address12.i376, align 1
  %length13.i377 = getelementptr inbounds %struct.cp2112_write_read_req_report, ptr %buf, i32 0, i32 2
  %75 = ptrtoint ptr %length13.i377 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 32, ptr %length13.i377, align 2
  %add.i378 = add nsw i8 %72, 2
  %target_address_length.i379 = getelementptr inbounds %struct.cp2112_write_read_req_report, ptr %buf, i32 0, i32 3
  %76 = ptrtoint ptr %target_address_length.i379 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %add.i378, ptr %target_address_length.i379, align 2
  %target_address.i380 = getelementptr inbounds %struct.cp2112_write_read_req_report, ptr %buf, i32 0, i32 4
  %77 = ptrtoint ptr %target_address.i380 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %command, ptr %target_address.i380, align 1
  %arrayidx17.i381 = getelementptr inbounds %struct.cp2112_write_read_req_report, ptr %buf, i32 0, i32 4, i32 1
  %78 = call ptr @memcpy(ptr %arrayidx17.i381, ptr %data, i32 %conv6.i)
  %add20.i = add nuw nsw i32 %conv6.i, 6
  br label %if.end103

do.end98:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev99 = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev99, ptr noundef nonnull @.str.79, i32 noundef %size) #14
  br label %cleanup

if.end103:                                        ; preds = %if.end.i382, %if.end.i372, %if.then74, %if.end.i353, %if.end.i, %sw.bb48, %if.else43, %if.then38, %if.else29, %if.then24, %if.else, %if.then12
  %count.0.ph = phi i32 [ %add20.i, %if.end.i382 ], [ %add13.i371, %if.end.i372 ], [ %add13.i, %if.end.i353 ], [ 6, %if.end.i ], [ 4, %if.else ], [ 4, %if.then12 ], [ 5, %if.else29 ], [ 6, %if.then24 ], [ 6, %if.else43 ], [ 6, %if.then38 ], [ 8, %sw.bb48 ], [ 6, %if.then74 ]
  %read_length.0.ph = phi i32 [ 0, %if.end.i382 ], [ 0, %if.end.i372 ], [ 0, %if.end.i353 ], [ %conv58, %if.end.i ], [ 1, %if.else ], [ 1, %if.then12 ], [ 1, %if.else29 ], [ 1, %if.then24 ], [ 2, %if.else43 ], [ 2, %if.then38 ], [ 2, %sw.bb48 ], [ 0, %if.then74 ]
  %cmp159.ph = phi i1 [ true, %if.end.i382 ], [ true, %if.end.i372 ], [ false, %if.end.i353 ], [ false, %if.end.i ], [ false, %if.else ], [ false, %if.then12 ], [ false, %if.else29 ], [ false, %if.then24 ], [ false, %if.else43 ], [ false, %if.then38 ], [ false, %sw.bb48 ], [ true, %if.then74 ]
  %size.addr.0.ph = phi i32 [ 5, %if.end.i382 ], [ 5, %if.end.i372 ], [ 8, %if.end.i353 ], [ 8, %if.end.i ], [ 1, %if.else ], [ 1, %if.then12 ], [ 2, %if.else29 ], [ 2, %if.then24 ], [ 3, %if.else43 ], [ 3, %if.then38 ], [ 3, %sw.bb48 ], [ 5, %if.then74 ]
  %read_write.addr.0.ph = phi i8 [ 1, %if.end.i382 ], [ %read_write, %if.end.i372 ], [ %read_write, %if.end.i353 ], [ 1, %if.end.i ], [ %read_write, %if.else ], [ 1, %if.then12 ], [ %read_write, %if.else29 ], [ 1, %if.then24 ], [ %read_write, %if.else43 ], [ 1, %if.then38 ], [ 1, %sw.bb48 ], [ 1, %if.then74 ]
  %ll_driver.i = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 20
  %79 = ptrtoint ptr %ll_driver.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ll_driver.i, align 4
  %power.i = getelementptr inbounds %struct.hid_ll_driver, ptr %80, i32 0, i32 4
  %81 = ptrtoint ptr %power.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %power.i, align 4
  %tobool.not.i = icmp eq ptr %82, null
  br i1 %tobool.not.i, label %if.end103.if.end112_crit_edge, label %hid_hw_power.exit

if.end103.if.end112_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end112

hid_hw_power.exit:                                ; preds = %if.end103
  %call.i = tail call i32 %82(ptr noundef %3, i32 noundef 32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp105 = icmp slt i32 %call.i, 0
  br i1 %cmp105, label %do.end110, label %hid_hw_power.exit.if.end112_crit_edge

hid_hw_power.exit.if.end112_crit_edge:            ; preds = %hid_hw_power.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end112

do.end110:                                        ; preds = %hid_hw_power.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dev111 = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev111, ptr noundef nonnull @.str.15, i32 noundef %call.i) #14
  br label %cleanup

if.end112:                                        ; preds = %hid_hw_power.exit.if.end112_crit_edge, %if.end103.if.end112_crit_edge
  %call.i385 = call ptr @kmemdup(ptr noundef nonnull %buf, i32 noundef %count.0.ph, i32 noundef 3264) #11
  %tobool.not.i386 = icmp eq ptr %call.i385, null
  br i1 %tobool.not.i386, label %if.end112.do.end120_crit_edge, label %cp2112_hid_output.exit

if.end112.do.end120_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end120

cp2112_hid_output.exit:                           ; preds = %if.end112
  %call3.i = call i32 @hid_hw_output_report(ptr noundef %3, ptr noundef nonnull %call.i385, i32 noundef %count.0.ph) #11
  call void @kfree(ptr noundef nonnull %call.i385) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp115 = icmp slt i32 %call3.i, 0
  br i1 %cmp115, label %cp2112_hid_output.exit.do.end120_crit_edge, label %for.body.preheader

cp2112_hid_output.exit.do.end120_crit_edge:       ; preds = %cp2112_hid_output.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end120

for.body.preheader:                               ; preds = %cp2112_hid_output.exit
  %call125 = call fastcc i32 @cp2112_xfer_status(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call125)
  %cmp126 = icmp eq i32 %call125, -16
  br i1 %cmp126, label %for.cond, label %for.body.preheader.if.end129_crit_edge

for.body.preheader.if.end129_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end129

do.end120:                                        ; preds = %cp2112_hid_output.exit.do.end120_crit_edge, %if.end112.do.end120_crit_edge
  %retval.0.i388419 = phi i32 [ %call3.i, %cp2112_hid_output.exit.do.end120_crit_edge ], [ -12, %if.end112.do.end120_crit_edge ]
  %dev121 = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev121, ptr noundef nonnull @.str.54, i32 noundef %retval.0.i388419) #14
  br label %power_normal

for.cond:                                         ; preds = %for.body.preheader
  %call125.1 = call fastcc i32 @cp2112_xfer_status(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call125.1)
  %cmp126.1 = icmp eq i32 %call125.1, -16
  br i1 %cmp126.1, label %for.cond.1, label %for.cond.if.end129_crit_edge

for.cond.if.end129_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end129

for.cond.1:                                       ; preds = %for.cond
  %call125.2 = call fastcc i32 @cp2112_xfer_status(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call125.2)
  %cmp126.2 = icmp eq i32 %call125.2, -16
  br i1 %cmp126.2, label %for.cond.2, label %for.cond.1.if.end129_crit_edge

for.cond.1.if.end129_crit_edge:                   ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end129

for.cond.2:                                       ; preds = %for.cond.1
  %call125.3 = call fastcc i32 @cp2112_xfer_status(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call125.3)
  %cmp126.3 = icmp eq i32 %call125.3, -16
  br i1 %cmp126.3, label %for.cond.3, label %for.cond.2.if.end129_crit_edge

for.cond.2.if.end129_crit_edge:                   ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end129

for.cond.3:                                       ; preds = %for.cond.2
  %call125.4 = call fastcc i32 @cp2112_xfer_status(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call125.4)
  %cmp126.4 = icmp eq i32 %call125.4, -16
  br i1 %cmp126.4, label %for.cond.4, label %for.cond.3.if.end129_crit_edge

for.cond.3.if.end129_crit_edge:                   ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end129

for.cond.4:                                       ; preds = %for.cond.3
  %call125.5 = call fastcc i32 @cp2112_xfer_status(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call125.5)
  %cmp126.5 = icmp eq i32 %call125.5, -16
  br i1 %cmp126.5, label %for.cond.5, label %for.cond.4.if.end129_crit_edge

for.cond.4.if.end129_crit_edge:                   ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end129

for.cond.5:                                       ; preds = %for.cond.4
  %call125.6 = call fastcc i32 @cp2112_xfer_status(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call125.6)
  %cmp126.6 = icmp eq i32 %call125.6, -16
  br i1 %cmp126.6, label %for.cond.6, label %for.cond.5.if.end129_crit_edge

for.cond.5.if.end129_crit_edge:                   ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end129

for.cond.6:                                       ; preds = %for.cond.5
  %call125.7 = call fastcc i32 @cp2112_xfer_status(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call125.7)
  %cmp126.7 = icmp eq i32 %call125.7, -16
  br i1 %cmp126.7, label %for.cond.7, label %for.cond.6.if.end129_crit_edge

for.cond.6.if.end129_crit_edge:                   ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end129

for.cond.7:                                       ; preds = %for.cond.6
  %call125.8 = call fastcc i32 @cp2112_xfer_status(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call125.8)
  %cmp126.8 = icmp eq i32 %call125.8, -16
  br i1 %cmp126.8, label %for.cond.8, label %for.cond.7.if.end129_crit_edge

for.cond.7.if.end129_crit_edge:                   ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end129

for.cond.8:                                       ; preds = %for.cond.7
  %call125.9 = call fastcc i32 @cp2112_xfer_status(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call125.9)
  %cmp126.9 = icmp eq i32 %call125.9, -16
  br i1 %cmp126.9, label %for.cond.9, label %for.cond.8.if.end129_crit_edge

for.cond.8.if.end129_crit_edge:                   ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end129

for.cond.9:                                       ; preds = %for.cond.8
  %dev140 = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev140, ptr noundef nonnull @.str.58) #14
  %83 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 23, ptr %buf, align 2
  %arrayidx142 = getelementptr inbounds [64 x i8], ptr %buf, i32 0, i32 1
  %84 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %arrayidx142, align 1
  %call.i389 = call ptr @kmemdup(ptr noundef nonnull %buf, i32 noundef 2, i32 noundef 3264) #11
  %tobool.not.i390 = icmp eq ptr %call.i389, null
  br i1 %tobool.not.i390, label %for.cond.9.do.end150_crit_edge, label %cp2112_hid_output.exit394

for.cond.9.do.end150_crit_edge:                   ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end150

if.end129:                                        ; preds = %for.cond.8.if.end129_crit_edge, %for.cond.7.if.end129_crit_edge, %for.cond.6.if.end129_crit_edge, %for.cond.5.if.end129_crit_edge, %for.cond.4.if.end129_crit_edge, %for.cond.3.if.end129_crit_edge, %for.cond.2.if.end129_crit_edge, %for.cond.1.if.end129_crit_edge, %for.cond.if.end129_crit_edge, %for.body.preheader.if.end129_crit_edge
  %call125.lcssa = phi i32 [ %call125, %for.body.preheader.if.end129_crit_edge ], [ %call125.1, %for.cond.if.end129_crit_edge ], [ %call125.2, %for.cond.1.if.end129_crit_edge ], [ %call125.3, %for.cond.2.if.end129_crit_edge ], [ %call125.4, %for.cond.3.if.end129_crit_edge ], [ %call125.5, %for.cond.4.if.end129_crit_edge ], [ %call125.6, %for.cond.5.if.end129_crit_edge ], [ %call125.7, %for.cond.6.if.end129_crit_edge ], [ %call125.8, %for.cond.7.if.end129_crit_edge ], [ %call125.9, %for.cond.8.if.end129_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125.lcssa)
  %cmp130 = icmp slt i32 %call125.lcssa, 0
  br i1 %cmp130, label %if.end129.power_normal_crit_edge, label %if.end153

if.end129.power_normal_crit_edge:                 ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #13
  br label %power_normal

cp2112_hid_output.exit394:                        ; preds = %for.cond.9
  %call3.i392 = call i32 @hid_hw_output_report(ptr noundef %3, ptr noundef nonnull %call.i389, i32 noundef 2) #11
  call void @kfree(ptr noundef nonnull %call.i389) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i392)
  %cmp145 = icmp slt i32 %call3.i392, 0
  br i1 %cmp145, label %cp2112_hid_output.exit394.do.end150_crit_edge, label %cp2112_hid_output.exit394.power_normal_crit_edge

cp2112_hid_output.exit394.power_normal_crit_edge: ; preds = %cp2112_hid_output.exit394
  call void @__sanitizer_cov_trace_pc() #13
  br label %power_normal

cp2112_hid_output.exit394.do.end150_crit_edge:    ; preds = %cp2112_hid_output.exit394
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end150

do.end150:                                        ; preds = %cp2112_hid_output.exit394.do.end150_crit_edge, %for.cond.9.do.end150_crit_edge
  %retval.0.i393424 = phi i32 [ %call3.i392, %cp2112_hid_output.exit394.do.end150_crit_edge ], [ -12, %for.cond.9.do.end150_crit_edge ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev140, ptr noundef nonnull @.str.61, i32 noundef %retval.0.i393424) #14
  br label %power_normal

if.end153:                                        ; preds = %if.end129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write.addr.0.ph)
  %cmp155 = icmp eq i8 %read_write.addr.0.ph, 0
  br i1 %cmp155, label %if.end153.power_normal_crit_edge, label %if.end158

if.end153.power_normal_crit_edge:                 ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #13
  br label %power_normal

if.end158:                                        ; preds = %if.end153
  %spec.select = select i1 %cmp159.ph, i32 %call125.lcssa, i32 %read_length.0.ph
  %call164 = call fastcc i32 @cp2112_read(ptr noundef %1, ptr noundef nonnull %buf, i32 noundef %spec.select)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %cmp165 = icmp slt i32 %call164, 0
  br i1 %cmp165, label %if.end158.power_normal_crit_edge, label %if.end168

if.end158.power_normal_crit_edge:                 ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #13
  br label %power_normal

if.end168:                                        ; preds = %if.end158
  call void @__sanitizer_cov_trace_cmp4(i32 %call164, i32 %spec.select)
  %cmp169.not = icmp eq i32 %call164, %spec.select
  br i1 %cmp169.not, label %if.end176, label %do.end174

do.end174:                                        ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #13
  %dev175 = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev175, ptr noundef nonnull @.str.89, i32 noundef %call164, i32 noundef %spec.select) #14
  br label %power_normal

if.end176:                                        ; preds = %if.end168
  %85 = zext i32 %size.addr.0.ph to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %size.addr.0.ph, label %if.end176.power_normal_crit_edge [
    i32 1, label %if.end176.sw.bb177_crit_edge
    i32 2, label %if.end176.sw.bb177_crit_edge428
    i32 3, label %sw.bb179
    i32 8, label %sw.bb182
    i32 5, label %sw.bb186
  ]

if.end176.sw.bb177_crit_edge428:                  ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb177

if.end176.sw.bb177_crit_edge:                     ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb177

if.end176.power_normal_crit_edge:                 ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #13
  br label %power_normal

sw.bb177:                                         ; preds = %if.end176.sw.bb177_crit_edge, %if.end176.sw.bb177_crit_edge428
  %86 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %buf, align 2
  %88 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %data, align 2
  br label %power_normal

sw.bb179:                                         ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #13
  %89 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %buf, align 2
  %91 = call i16 @llvm.bswap.i16(i16 %90) #11
  %92 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %91, ptr %data, align 2
  br label %power_normal

sw.bb182:                                         ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr184 = getelementptr i8, ptr %data, i32 1
  %93 = call ptr @memcpy(ptr %add.ptr184, ptr %buf, i32 %spec.select)
  br label %power_normal

sw.bb186:                                         ; preds = %if.end176
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %spec.select)
  %cmp187 = icmp ugt i32 %spec.select, 32
  br i1 %cmp187, label %sw.bb186.power_normal_crit_edge, label %if.end190

sw.bb186.power_normal_crit_edge:                  ; preds = %sw.bb186
  call void @__sanitizer_cov_trace_pc() #13
  br label %power_normal

if.end190:                                        ; preds = %sw.bb186
  call void @__sanitizer_cov_trace_pc() #13
  %94 = call ptr @memcpy(ptr %data, ptr %buf, i32 %spec.select)
  br label %power_normal

power_normal:                                     ; preds = %if.end190, %sw.bb186.power_normal_crit_edge, %sw.bb182, %sw.bb179, %sw.bb177, %if.end176.power_normal_crit_edge, %do.end174, %if.end158.power_normal_crit_edge, %if.end153.power_normal_crit_edge, %do.end150, %cp2112_hid_output.exit394.power_normal_crit_edge, %if.end129.power_normal_crit_edge, %do.end120
  %ret.2 = phi i32 [ %retval.0.i388419, %do.end120 ], [ %call125.lcssa, %if.end129.power_normal_crit_edge ], [ %call164, %if.end158.power_normal_crit_edge ], [ -5, %do.end174 ], [ -110, %do.end150 ], [ -110, %cp2112_hid_output.exit394.power_normal_crit_edge ], [ 0, %if.end153.power_normal_crit_edge ], [ -71, %sw.bb186.power_normal_crit_edge ], [ 0, %if.end176.power_normal_crit_edge ], [ 0, %if.end190 ], [ 0, %sw.bb182 ], [ 0, %sw.bb179 ], [ 0, %sw.bb177 ]
  %95 = ptrtoint ptr %ll_driver.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ll_driver.i, align 4
  %power.i396 = getelementptr inbounds %struct.hid_ll_driver, ptr %96, i32 0, i32 4
  %97 = ptrtoint ptr %power.i396 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %power.i396, align 4
  %tobool.not.i397 = icmp eq ptr %98, null
  br i1 %tobool.not.i397, label %power_normal.hid_hw_power.exit401_crit_edge, label %cond.true.i399

power_normal.hid_hw_power.exit401_crit_edge:      ; preds = %power_normal
  call void @__sanitizer_cov_trace_pc() #13
  br label %hid_hw_power.exit401

cond.true.i399:                                   ; preds = %power_normal
  call void @__sanitizer_cov_trace_pc() #13
  %call.i398 = call i32 %98(ptr noundef %3, i32 noundef 2) #11
  br label %hid_hw_power.exit401

hid_hw_power.exit401:                             ; preds = %cond.true.i399, %power_normal.hid_hw_power.exit401_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cp2112_xfer.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cp2112_xfer, %if.then207)) #11
          to label %cleanup [label %if.then207], !srcloc !310

if.then207:                                       ; preds = %hid_hw_power.exit401
  call void @__sanitizer_cov_trace_pc() #13
  %dev208 = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cp2112_xfer.__UNIQUE_ID_ddebug297, ptr noundef %dev208, ptr noundef nonnull @.str.91, i32 noundef %ret.2) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then207, %hid_hw_power.exit401, %do.end110, %do.end98, %sw.bb87.cleanup_crit_edge, %if.else78.cleanup_crit_edge, %if.else63.cleanup_crit_edge, %if.then57.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %do.end98 ], [ %call.i, %do.end110 ], [ %ret.2, %if.then207 ], [ -22, %if.then57.cleanup_crit_edge ], [ -22, %if.else63.cleanup_crit_edge ], [ -22, %if.else78.cleanup_crit_edge ], [ -22, %sw.bb87.cleanup_crit_edge ], [ %ret.2, %hid_hw_power.exit401 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cp2112_functionality(ptr nocapture noundef readnone %adap) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 268337153
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cp2112_xfer_status(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.cp2112_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #11
  %2 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 21, ptr %buf, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %2, align 1
  %xfer_avail = getelementptr inbounds %struct.cp2112_device, ptr %dev, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %xfer_avail, i32 noundef 4) #11
  %5 = ptrtoint ptr %xfer_avail to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 0, ptr %xfer_avail, align 4
  %call.i = call ptr @kmemdup(ptr noundef nonnull %buf, i32 noundef 2, i32 noundef 3264) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %cp2112_hid_output.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

cp2112_hid_output.exit:                           ; preds = %entry
  %call3.i = call i32 @hid_hw_output_report(ptr noundef %1, ptr noundef nonnull %call.i, i32 noundef 2) #11
  call void @kfree(ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp = icmp slt i32 %call3.i, 0
  br i1 %cmp, label %cp2112_hid_output.exit.do.end_crit_edge, label %if.end

cp2112_hid_output.exit.do.end_crit_edge:          ; preds = %cp2112_hid_output.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %cp2112_hid_output.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %retval.0.i21 = phi i32 [ %call3.i, %cp2112_hid_output.exit.do.end_crit_edge ], [ -12, %entry.do.end_crit_edge ]
  %dev3 = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev3, ptr noundef nonnull @.str.70, i32 noundef %retval.0.i21) #14
  br label %cleanup

if.end:                                           ; preds = %cp2112_hid_output.exit
  %call5 = call fastcc i32 @cp2112_wait(ptr noundef %dev, ptr noundef %xfer_avail)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %xfer_status = getelementptr inbounds %struct.cp2112_device, ptr %dev, i32 0, i32 6
  %6 = ptrtoint ptr %xfer_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xfer_status, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i21, %do.end ], [ %7, %if.end7 ], [ %call5, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cp2112_read(ptr noundef %dev, ptr nocapture noundef writeonly %data, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  %report = alloca %struct.cp2112_force_read_report, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.cp2112_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %report) #11
  %2 = getelementptr inbounds %struct.cp2112_force_read_report, ptr %report, i32 0, i32 1
  %3 = tail call i32 @llvm.umin.i32(i32 %size, i32 61)
  %4 = ptrtoint ptr %report to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 18, ptr %report, align 1
  %conv = trunc i32 %3 to i16
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %conv, ptr %2, align 1
  %read_avail = getelementptr inbounds %struct.cp2112_device, ptr %dev, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %read_avail, i32 noundef 4) #11
  %6 = ptrtoint ptr %read_avail to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %read_avail, align 4
  %call.i = call ptr @kmemdup(ptr noundef nonnull %report, i32 noundef 3, i32 noundef 3264) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %cp2112_hid_output.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

cp2112_hid_output.exit:                           ; preds = %entry
  %call3.i = call i32 @hid_hw_output_report(ptr noundef %1, ptr noundef nonnull %call.i, i32 noundef 3) #11
  call void @kfree(ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4 = icmp slt i32 %call3.i, 0
  br i1 %cmp4, label %cp2112_hid_output.exit.do.end_crit_edge, label %if.end8

cp2112_hid_output.exit.do.end_crit_edge:          ; preds = %cp2112_hid_output.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %cp2112_hid_output.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %retval.0.i5457 = phi i32 [ %call3.i, %cp2112_hid_output.exit.do.end_crit_edge ], [ -12, %entry.do.end_crit_edge ]
  %dev7 = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev7, ptr noundef nonnull @.str.72, i32 noundef %retval.0.i5457) #14
  br label %cleanup

if.end8:                                          ; preds = %cp2112_hid_output.exit
  %call10 = call fastcc i32 @cp2112_wait(ptr noundef %dev, ptr noundef %read_avail)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %do.body13, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body13:                                        ; preds = %if.end8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cp2112_read.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cp2112_read, %if.then18)) #11
          to label %do.end23 [label %if.then18], !srcloc !310

if.then18:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  %dev19 = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  %read_length = getelementptr inbounds %struct.cp2112_device, ptr %dev, i32 0, i32 4
  %7 = ptrtoint ptr %read_length to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %read_length, align 1
  %conv20 = zext i8 %8 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cp2112_read.__UNIQUE_ID_ddebug290, ptr noundef %dev19, ptr noundef nonnull @.str.74, i32 noundef %conv20, i32 noundef %3) #11
  br label %do.end23

do.end23:                                         ; preds = %if.then18, %do.body13
  %read_length24 = getelementptr inbounds %struct.cp2112_device, ptr %dev, i32 0, i32 4
  %9 = ptrtoint ptr %read_length24 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %read_length24, align 1
  %conv25 = zext i8 %10 to i32
  %11 = call i32 @llvm.umin.i32(i32 %3, i32 %conv25)
  %read_data = getelementptr inbounds %struct.cp2112_device, ptr %dev, i32 0, i32 3
  %12 = call ptr @memcpy(ptr %data, ptr %read_data, i32 %11)
  %13 = ptrtoint ptr %read_length24 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %read_length24, align 1
  %conv33 = zext i8 %14 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %if.end8.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i5457, %do.end ], [ %conv33, %do.end23 ], [ %call10, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %report) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cp2112_wait(ptr noundef %dev, ptr noundef %avail) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 373) #11
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %avail, i32 noundef 4) #11
  %0 = ptrtoint ptr %avail to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %avail, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then10, label %entry.if.end45_crit_edge

entry.if.end45_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then10:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %2 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %wait = getelementptr inbounds %struct.cp2112_device, ptr %dev, i32 0, i32 2
  %call1374 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %call.i.i6175 = call zeroext i1 @__kasan_check_read(ptr noundef %avail, i32 noundef 4) #11
  %3 = ptrtoint ptr %avail to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %avail, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool16.not76.not = icmp eq i32 %4, 0
  br i1 %tobool16.not76.not, label %if.then10.if.end32_crit_edge, label %if.then10.for.end_crit_edge

if.then10.for.end_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.then10.if.end32_crit_edge:                     ; preds = %if.then10
  br label %if.end32

if.end32:                                         ; preds = %cleanup.if.end32_crit_edge, %if.then10.if.end32_crit_edge
  %__ret11.179 = phi i32 [ %__ret11.1, %cleanup.if.end32_crit_edge ], [ 5, %if.then10.if.end32_crit_edge ]
  %call1378 = phi i32 [ %call13, %cleanup.if.end32_crit_edge ], [ %call1374, %if.then10.if.end32_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1378)
  %tobool33.not = icmp eq i32 %call1378, 0
  br i1 %tobool33.not, label %cleanup, label %if.end32.if.end39_crit_edge

if.end32.if.end39_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

cleanup:                                          ; preds = %if.end32
  %call36 = call i32 @schedule_timeout(i32 noundef %__ret11.179) #11
  %call13 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %call.i.i61 = call zeroext i1 @__kasan_check_read(ptr noundef %avail, i32 noundef 4) #11
  %5 = ptrtoint ptr %avail to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %avail, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool16.not = icmp eq i32 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool20.not = icmp eq i32 %call36, 0
  %spec.store.select47 = select i1 %tobool20.not, i32 1, i32 %call36
  %__ret11.1 = select i1 %tobool16.not, i32 %call36, i32 %spec.store.select47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret11.1)
  %tobool26.not = icmp eq i32 %__ret11.1, 0
  %not.tobool16.not = xor i1 %tobool16.not, true
  %7 = select i1 %not.tobool16.not, i1 true, i1 %tobool26.not
  br i1 %7, label %cleanup.for.end_crit_edge, label %cleanup.if.end32_crit_edge

cleanup.if.end32_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then10.for.end_crit_edge
  %__ret11.1.lcssa = phi i32 [ 5, %if.then10.for.end_crit_edge ], [ %__ret11.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #11
  br label %if.end39

if.end39:                                         ; preds = %for.end, %if.end32.if.end39_crit_edge
  %__ret11.265 = phi i32 [ %__ret11.1.lcssa, %for.end ], [ %call1378, %if.end32.if.end39_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  %8 = zext i32 %__ret11.265 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %__ret11.265, label %if.end39.if.end45_crit_edge [
    i32 -512, label %if.end39.cleanup46_crit_edge
    i32 0, label %if.then44
  ]

if.end39.cleanup46_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup46

if.end39.if.end45_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup46

if.end45:                                         ; preds = %if.end39.if.end45_crit_edge, %entry.if.end45_crit_edge
  %call.i.i62 = call zeroext i1 @__kasan_check_write(ptr noundef %avail, i32 noundef 4) #11
  %9 = ptrtoint ptr %avail to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 0, ptr %avail, align 4
  br label %cleanup46

cleanup46:                                        ; preds = %if.end45, %if.then44, %if.end39.cleanup46_crit_edge
  %retval.0 = phi i32 [ 0, %if.end45 ], [ -110, %if.then44 ], [ %__ret11.265, %if.end39.cleanup46_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cp2112_gpio_poll_callback(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_mask = getelementptr i8, ptr %work, i32 100
  %0 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_mask, align 8
  %gc = getelementptr i8, ptr %work, i32 -616
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %gc) #11
  %hdev1.i = getelementptr inbounds %struct.cp2112_device, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev1.i, align 8
  %in_out_buffer.i = getelementptr inbounds %struct.cp2112_device, ptr %call.i, i32 0, i32 11
  %4 = ptrtoint ptr %in_out_buffer.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %in_out_buffer.i, align 8
  %lock.i = getelementptr inbounds %struct.cp2112_device, ptr %call.i, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #11
  %call2.i = tail call i32 @hid_hw_raw_request(ptr noundef %3, i8 noundef zeroext 3, ptr noundef %5, i32 noundef 2, i8 noundef zeroext 2, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call2.i)
  %cmp.not.i = icmp eq i32 %call2.i, 2
  br i1 %cmp.not.i, label %if.end, label %do.end.i

do.end.i:                                         ; preds = %entry
  %dev3.i = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i, ptr noundef nonnull @.str.107, i32 noundef %call2.i) #14
  tail call void @mutex_unlock(ptr noundef %lock.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call2.i)
  %cmp = icmp eq i32 %call2.i, -19
  br i1 %cmp, label %do.end.i.cleanup_crit_edge, label %do.end.i.exit_crit_edge

do.end.i.exit_crit_edge:                          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.i = getelementptr i8, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %7 to i32
  tail call void @mutex_unlock(ptr noundef %lock.i) #11
  %virqs.0101 = trunc i32 %1 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %virqs.0101)
  %tobool.not102 = icmp eq i8 %virqs.0101, 0
  br i1 %tobool.not102, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %to_irq = getelementptr i8, ptr %work, i32 -556
  %gpio_prev_state = getelementptr i8, ptr %work, i32 104
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %virqs.0.in103 = phi i32 [ %1, %while.body.lr.ph ], [ %and, %while.cond.backedge.while.body_crit_edge ]
  %conv7 = and i32 %virqs.0.in103, 255
  %8 = tail call i32 @llvm.cttz.i32(i32 %conv7, i1 true), !range !312
  %shl = shl nuw i32 1, %8
  %neg = xor i32 %shl, -1
  %and = and i32 %conv7, %neg
  %9 = ptrtoint ptr %to_irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %to_irq, align 4
  %tobool11.not = icmp eq ptr %10, null
  br i1 %tobool11.not, label %while.body.while.end_crit_edge, label %if.end13

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end13:                                         ; preds = %while.body
  %call17 = tail call i32 %10(ptr noundef %gc, i32 noundef %8) #11
  %call18 = tail call ptr @irq_get_irq_data(i32 noundef %call17) #11
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end13.while.cond.backedge_crit_edge, label %if.end21

if.end13.while.cond.backedge_crit_edge:           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

if.end21:                                         ; preds = %if.end13
  %common.i = getelementptr inbounds %struct.irq_data, ptr %call18, i32 0, i32 3
  %11 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %common.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %and25 = and i32 %shl, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %if.end21
  %and28 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.then27.if.end31_crit_edge, label %if.then30

if.then27.if.end31_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then30:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @handle_nested_irq(i32 noundef %call17) #11
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.then27.if.end31_crit_edge
  %and32 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end31.while.cond.backedge_crit_edge, label %land.lhs.true

if.end31.while.cond.backedge_crit_edge:           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

land.lhs.true:                                    ; preds = %if.end31
  %15 = ptrtoint ptr %gpio_prev_state to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %gpio_prev_state, align 4
  %conv34 = zext i8 %16 to i32
  %and36 = and i32 %shl, %conv34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %land.lhs.true.while.cond.backedge.sink.split_crit_edge, label %land.lhs.true.while.cond.backedge_crit_edge

land.lhs.true.while.cond.backedge_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

land.lhs.true.while.cond.backedge.sink.split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge.sink.split

if.else:                                          ; preds = %if.end21
  %and40 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.else.if.end43_crit_edge, label %if.then42

if.else.if.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then42:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @handle_nested_irq(i32 noundef %call17) #11
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.else.if.end43_crit_edge
  %and44 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end43.while.cond.backedge_crit_edge, label %land.lhs.true46

if.end43.while.cond.backedge_crit_edge:           ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

land.lhs.true46:                                  ; preds = %if.end43
  %17 = ptrtoint ptr %gpio_prev_state to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %gpio_prev_state, align 4
  %conv48 = zext i8 %18 to i32
  %and50 = and i32 %shl, %conv48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %land.lhs.true46.while.cond.backedge_crit_edge, label %land.lhs.true46.while.cond.backedge.sink.split_crit_edge

land.lhs.true46.while.cond.backedge.sink.split_crit_edge: ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge.sink.split

land.lhs.true46.while.cond.backedge_crit_edge:    ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

while.cond.backedge.sink.split:                   ; preds = %land.lhs.true46.while.cond.backedge.sink.split_crit_edge, %land.lhs.true.while.cond.backedge.sink.split_crit_edge
  tail call void @handle_nested_irq(i32 noundef %call17) #11
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %while.cond.backedge.sink.split, %land.lhs.true46.while.cond.backedge_crit_edge, %if.end43.while.cond.backedge_crit_edge, %land.lhs.true.while.cond.backedge_crit_edge, %if.end31.while.cond.backedge_crit_edge, %if.end13.while.cond.backedge_crit_edge
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  %gpio_prev_state55 = getelementptr i8, ptr %work, i32 104
  %19 = ptrtoint ptr %gpio_prev_state55 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %7, ptr %gpio_prev_state55, align 4
  br label %exit

exit:                                             ; preds = %while.end, %do.end.i.exit_crit_edge
  %gpio_poll = getelementptr i8, ptr %work, i32 -4
  %20 = ptrtoint ptr %gpio_poll to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %gpio_poll, align 8, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool56.not = icmp eq i8 %21, 0
  br i1 %tobool56.not, label %exit.cleanup_crit_edge, label %if.then57

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then57:                                        ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %22 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %work, i32 noundef 10) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then57, %exit.cleanup_crit_edge, %do.end.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vendor_id_show(ptr noundef %kdev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %cfg = alloca %struct.cp2112_usb_config_report, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kdev, i32 -3264
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %cfg) #11
  %0 = call ptr @memset(ptr %cfg, i32 255, i32 10)
  %call = call fastcc i32 @cp2112_get_usb_config(ptr noundef %add.ptr, ptr noundef nonnull %cfg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = getelementptr inbounds %struct.cp2112_usb_config_report, ptr %cfg, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %1, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv = zext i16 %4 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.113, i32 noundef %conv) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %cfg) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vendor_id_store(ptr noundef %kdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  %cfg = alloca %struct.cp2112_usb_config_report, align 1
  %vid = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kdev, i32 -3264
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %cfg) #11
  %0 = getelementptr inbounds %struct.cp2112_usb_config_report, ptr %cfg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cp2112_usb_config_report, ptr %cfg, i32 0, i32 7
  %2 = call ptr @memset(ptr %cfg, i32 255, i32 9)
  %call = call fastcc i32 @cp2112_get_usb_config(ptr noundef %add.ptr, ptr noundef nonnull %cfg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup10_crit_edge

entry.cleanup10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup10

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vid) #11
  %3 = ptrtoint ptr %vid to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %vid, align 2, !annotation !309
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.116, ptr noundef nonnull %vid)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 1
  br i1 %cmp.not, label %if.end3, label %cleanup10.critedge

if.end3:                                          ; preds = %if.end
  %4 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vid, align 2
  %6 = call i16 @llvm.bswap.i16(i16 %5)
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %6, ptr %0, align 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %1, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vid) #11
  %call6 = call fastcc i32 @cp2112_set_usb_config(ptr noundef %add.ptr, ptr noundef nonnull %cfg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end3.cleanup10_crit_edge

if.end3.cleanup10_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup10

if.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @chmod_sysfs_attrs(ptr noundef %add.ptr)
  br label %cleanup10

cleanup10.critedge:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vid) #11
  br label %cleanup10

cleanup10:                                        ; preds = %cleanup10.critedge, %if.end9, %if.end3.cleanup10_crit_edge, %entry.cleanup10_crit_edge
  %retval.1 = phi i32 [ %count, %if.end9 ], [ %call, %entry.cleanup10_crit_edge ], [ -22, %cleanup10.critedge ], [ %call6, %if.end3.cleanup10_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %cfg) #11
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cp2112_get_usb_config(ptr noundef %hdev, ptr nocapture noundef writeonly %cfg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 10) #16
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %do.end.thread, label %cp2112_hid_get.exit

do.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev12 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.114, i32 noundef -12) #14
  br label %2

cp2112_hid_get.exit:                              ; preds = %entry
  %call1.i = tail call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext 33, ptr noundef nonnull %call7.i.i, i32 noundef 10, i8 noundef zeroext 2, i32 noundef 1) #11
  %1 = call ptr @memcpy(ptr %cfg, ptr %call7.i.i, i32 10)
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call1.i)
  %cmp.not = icmp eq i32 %call1.i, 10
  br i1 %cmp.not, label %cp2112_hid_get.exit.cleanup_crit_edge, label %do.end

cp2112_hid_get.exit.cleanup_crit_edge:            ; preds = %cp2112_hid_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %cp2112_hid_get.exit
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.114, i32 noundef %call1.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp1 = icmp slt i32 %call1.i, 0
  br i1 %cmp1, label %do.end._crit_edge, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end._crit_edge:                                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %2

2:                                                ; preds = %do.end._crit_edge, %do.end.thread
  %retval.0.i1014 = phi i32 [ -12, %do.end.thread ], [ %call1.i, %do.end._crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %2, %do.end.cleanup_crit_edge, %cp2112_hid_get.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cp2112_hid_get.exit.cleanup_crit_edge ], [ %retval.0.i1014, %2 ], [ -5, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cp2112_set_usb_config(ptr noundef %hdev, ptr noundef %cfg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cfg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %1)
  %cmp.not = icmp eq i8 %1, 33
  br i1 %cmp.not, label %do.end8, label %do.body3, !prof !313

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/hid/hid-cp2112.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 852, 0\0A.popsection", ""() #11, !srcloc !314
  unreachable

do.end8:                                          ; preds = %entry
  %call.i = tail call ptr @kmemdup(ptr noundef %cfg, i32 noundef 10, i32 noundef 3264) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end14.thread, label %cp2112_hid_output.exit

do.end14.thread:                                  ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  %dev29 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29, ptr noundef nonnull @.str.117, i32 noundef -12) #14
  br label %4

cp2112_hid_output.exit:                           ; preds = %do.end8
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %call.i, align 1
  %call4.i = tail call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext %3, ptr noundef nonnull %call.i, i32 noundef 10, i8 noundef zeroext 2, i32 noundef 9) #11
  tail call void @kfree(ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call4.i)
  %cmp9.not = icmp eq i32 %call4.i, 10
  br i1 %cmp9.not, label %cp2112_hid_output.exit.cleanup_crit_edge, label %do.end14

cp2112_hid_output.exit.cleanup_crit_edge:         ; preds = %cp2112_hid_output.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end14:                                         ; preds = %cp2112_hid_output.exit
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.117, i32 noundef %call4.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp15 = icmp slt i32 %call4.i, 0
  br i1 %cmp15, label %do.end14._crit_edge, label %do.end14.cleanup_crit_edge

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end14._crit_edge:                              ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %4

4:                                                ; preds = %do.end14._crit_edge, %do.end14.thread
  %retval.0.i2731 = phi i32 [ -12, %do.end14.thread ], [ %call4.i, %do.end14._crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %4, %do.end14.cleanup_crit_edge, %cp2112_hid_output.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cp2112_hid_output.exit.cleanup_crit_edge ], [ %retval.0.i2731, %4 ], [ -5, %do.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @product_id_show(ptr noundef %kdev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %cfg = alloca %struct.cp2112_usb_config_report, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kdev, i32 -3264
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %cfg) #11
  %0 = call ptr @memset(ptr %cfg, i32 255, i32 10)
  %call = call fastcc i32 @cp2112_get_usb_config(ptr noundef %add.ptr, ptr noundef nonnull %cfg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = getelementptr inbounds %struct.cp2112_usb_config_report, ptr %cfg, i32 0, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %1, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv = zext i16 %4 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.113, i32 noundef %conv) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %cfg) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @product_id_store(ptr noundef %kdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  %cfg = alloca %struct.cp2112_usb_config_report, align 1
  %pid = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kdev, i32 -3264
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %cfg) #11
  %0 = getelementptr inbounds %struct.cp2112_usb_config_report, ptr %cfg, i32 0, i32 2
  %1 = getelementptr inbounds %struct.cp2112_usb_config_report, ptr %cfg, i32 0, i32 7
  %2 = call ptr @memset(ptr %cfg, i32 255, i32 9)
  %call = call fastcc i32 @cp2112_get_usb_config(ptr noundef %add.ptr, ptr noundef nonnull %cfg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup10_crit_edge

entry.cleanup10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup10

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pid) #11
  %3 = ptrtoint ptr %pid to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %pid, align 2, !annotation !309
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.116, ptr noundef nonnull %pid)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 1
  br i1 %cmp.not, label %if.end3, label %cleanup10.critedge

if.end3:                                          ; preds = %if.end
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pid, align 2
  %6 = call i16 @llvm.bswap.i16(i16 %5)
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %6, ptr %0, align 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %1, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pid) #11
  %call6 = call fastcc i32 @cp2112_set_usb_config(ptr noundef %add.ptr, ptr noundef nonnull %cfg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end3.cleanup10_crit_edge

if.end3.cleanup10_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup10

if.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @chmod_sysfs_attrs(ptr noundef %add.ptr)
  br label %cleanup10

cleanup10.critedge:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pid) #11
  br label %cleanup10

cleanup10:                                        ; preds = %cleanup10.critedge, %if.end9, %if.end3.cleanup10_crit_edge, %entry.cleanup10_crit_edge
  %retval.1 = phi i32 [ %count, %if.end9 ], [ %call, %entry.cleanup10_crit_edge ], [ -22, %cleanup10.critedge ], [ %call6, %if.end3.cleanup10_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %cfg) #11
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_power_show(ptr noundef %kdev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %cfg = alloca %struct.cp2112_usb_config_report, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kdev, i32 -3264
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %cfg) #11
  %0 = call ptr @memset(ptr %cfg, i32 255, i32 10)
  %call = call fastcc i32 @cp2112_get_usb_config(ptr noundef %add.ptr, ptr noundef nonnull %cfg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = getelementptr inbounds %struct.cp2112_usb_config_report, ptr %cfg, i32 0, i32 3
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %conv = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 1
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.121, i32 noundef %mul) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %cfg) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_power_store(ptr noundef %kdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  %cfg = alloca %struct.cp2112_usb_config_report, align 1
  %mA = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kdev, i32 -3264
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %cfg) #11
  %0 = getelementptr inbounds %struct.cp2112_usb_config_report, ptr %cfg, i32 0, i32 3
  %1 = getelementptr inbounds %struct.cp2112_usb_config_report, ptr %cfg, i32 0, i32 7
  %2 = call ptr @memset(ptr %cfg, i32 255, i32 9)
  %call = call fastcc i32 @cp2112_get_usb_config(ptr noundef %add.ptr, ptr noundef nonnull %cfg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup9_crit_edge

entry.cleanup9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup9

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mA) #11
  %3 = ptrtoint ptr %mA to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %mA, align 4, !annotation !309
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.122, ptr noundef nonnull %mA)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 1
  br i1 %cmp.not, label %if.end3, label %cleanup9.critedge

if.end3:                                          ; preds = %if.end
  %4 = ptrtoint ptr %mA to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mA, align 4
  %add = add i32 %5, 1
  %div = sdiv i32 %add, 2
  %conv = trunc i32 %div to i8
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %0, align 1
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 4, ptr %1, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mA) #11
  %call5 = call fastcc i32 @cp2112_set_usb_config(ptr noundef %add.ptr, ptr noundef nonnull %cfg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end3.cleanup9_crit_edge

if.end3.cleanup9_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup9

if.end8:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @chmod_sysfs_attrs(ptr noundef %add.ptr)
  br label %cleanup9

cleanup9.critedge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mA) #11
  br label %cleanup9

cleanup9:                                         ; preds = %cleanup9.critedge, %if.end8, %if.end3.cleanup9_crit_edge, %entry.cleanup9_crit_edge
  %retval.1 = phi i32 [ %count, %if.end8 ], [ %call, %entry.cleanup9_crit_edge ], [ -22, %cleanup9.critedge ], [ %call5, %if.end3.cleanup9_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %cfg) #11
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @power_mode_show(ptr noundef %kdev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %cfg = alloca %struct.cp2112_usb_config_report, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kdev, i32 -3264
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %cfg) #11
  %0 = call ptr @memset(ptr %cfg, i32 255, i32 10)
  %call = call fastcc i32 @cp2112_get_usb_config(ptr noundef %add.ptr, ptr noundef nonnull %cfg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = getelementptr inbounds %struct.cp2112_usb_config_report, ptr %cfg, i32 0, i32 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.124, i32 noundef %conv) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %cfg) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @power_mode_store(ptr noundef %kdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  %cfg = alloca %struct.cp2112_usb_config_report, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kdev, i32 -3264
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %cfg) #11
  %0 = getelementptr inbounds %struct.cp2112_usb_config_report, ptr %cfg, i32 0, i32 7
  %1 = call ptr @memset(ptr %cfg, i32 255, i32 10)
  %call = call fastcc i32 @cp2112_get_usb_config(ptr noundef %add.ptr, ptr noundef nonnull %cfg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.cp2112_usb_config_report, ptr %cfg, i32 0, i32 4
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.125, ptr noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 1
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 8, ptr %0, align 1
  %call5 = call fastcc i32 @cp2112_set_usb_config(ptr noundef %add.ptr, ptr noundef nonnull %cfg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @chmod_sysfs_attrs(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end8 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call5, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %cfg) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @release_version_show(ptr noundef %kdev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %cfg = alloca %struct.cp2112_usb_config_report, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kdev, i32 -3264
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %cfg) #11
  %0 = call ptr @memset(ptr %cfg, i32 255, i32 10)
  %call = call fastcc i32 @cp2112_get_usb_config(ptr noundef %add.ptr, ptr noundef nonnull %cfg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = getelementptr inbounds %struct.cp2112_usb_config_report, ptr %cfg, i32 0, i32 6
  %2 = getelementptr inbounds %struct.cp2112_usb_config_report, ptr %cfg, i32 0, i32 5
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  %conv = zext i8 %4 to i32
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %1, align 1
  %conv1 = zext i8 %6 to i32
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.127, i32 noundef %conv, i32 noundef %conv1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %cfg) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @release_version_store(ptr noundef %kdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  %cfg = alloca %struct.cp2112_usb_config_report, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kdev, i32 -3264
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %cfg) #11
  %0 = getelementptr inbounds %struct.cp2112_usb_config_report, ptr %cfg, i32 0, i32 7
  %1 = call ptr @memset(ptr %cfg, i32 255, i32 10)
  %call = call fastcc i32 @cp2112_get_usb_config(ptr noundef %add.ptr, ptr noundef nonnull %cfg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.cp2112_usb_config_report, ptr %cfg, i32 0, i32 6
  %3 = getelementptr inbounds %struct.cp2112_usb_config_report, ptr %cfg, i32 0, i32 5
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.128, ptr noundef %3, ptr noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 2
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 16, ptr %0, align 1
  %call5 = call fastcc i32 @cp2112_set_usb_config(ptr noundef %add.ptr, ptr noundef nonnull %cfg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @chmod_sysfs_attrs(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end8 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call5, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %cfg) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pstr_show(ptr noundef %kdev, ptr nocapture noundef readonly %kattr, ptr noundef %buf) #2 align 64 {
entry:
  %report = alloca %struct.cp2112_string_report, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %report) #11
  %0 = ptrtoint ptr %report to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %report, align 1, !annotation !309
  %report4 = getelementptr inbounds %struct.cp2112_pstring_attribute, ptr %kattr, i32 0, i32 1
  %1 = ptrtoint ptr %report4 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %report4, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 63) #16
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %do.end.thread, label %cp2112_hid_get.exit

do.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %kattr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kattr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %kdev, ptr noundef nonnull @.str.130, ptr noundef %5, i32 noundef -12) #14
  br label %10

cp2112_hid_get.exit:                              ; preds = %entry
  %6 = getelementptr inbounds %struct.cp2112_string_report, ptr %report, i32 0, i32 1
  %add.ptr = getelementptr i8, ptr %kdev, i32 -3264
  %call1.i = tail call i32 @hid_hw_raw_request(ptr noundef %add.ptr, i8 noundef zeroext %2, ptr noundef nonnull %call7.i.i, i32 noundef 63, i8 noundef zeroext 2, i32 noundef 1) #11
  %7 = call ptr @memcpy(ptr %6, ptr %call7.i.i, i32 63)
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 3
  br i1 %cmp, label %do.end, label %if.end8

do.end:                                           ; preds = %cp2112_hid_get.exit
  %8 = ptrtoint ptr %kattr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %kattr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %kdev, ptr noundef nonnull @.str.130, ptr noundef %9, i32 noundef %call1.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp6 = icmp slt i32 %call1.i, 0
  br i1 %cmp6, label %do.end._crit_edge, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end._crit_edge:                                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %10

10:                                               ; preds = %do.end._crit_edge, %do.end.thread
  %retval.0.i5558 = phi i32 [ -12, %do.end.thread ], [ %call1.i, %do.end._crit_edge ]
  br label %cleanup

if.end8:                                          ; preds = %cp2112_hid_get.exit
  %length9 = getelementptr inbounds %struct.cp2112_string_report, ptr %report, i32 0, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %length9 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %length9, align 1
  %conv = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %cmp10 = icmp ult i8 %12, 2
  br i1 %cmp10, label %do.end15, label %if.end21

do.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %kattr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %kattr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %kdev, ptr noundef nonnull @.str.133, ptr noundef %14, i32 noundef %conv) #14
  br label %cleanup

if.end21:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %sub = add nsw i32 %call1.i, -1
  %15 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %conv)
  %sub31 = add nuw nsw i32 %15, 510
  %div52 = lshr i32 %sub31, 1
  %string = getelementptr inbounds %struct.cp2112_string_report, ptr %report, i32 0, i32 1, i32 0, i32 3
  %conv33 = and i32 %div52, 255
  %call34 = call i32 @utf16s_to_utf8s(ptr noundef %string, i32 noundef %conv33, i32 noundef 1, ptr noundef %buf, i32 noundef 4095) #11
  %inc = add i32 %call34, 1
  %arrayidx = getelementptr i8, ptr %buf, i32 %call34
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 10, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end15, %10, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end15 ], [ %inc, %if.end21 ], [ %retval.0.i5558, %10 ], [ -5, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %report) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pstr_store(ptr noundef %kdev, ptr nocapture noundef readonly %kattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %report = alloca %struct.cp2112_string_report, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kdev, i32 -3264
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %report) #11
  %0 = call ptr @memset(ptr %report, i32 0, i32 64)
  %1 = getelementptr inbounds %struct.cp2112_string_report, ptr %report, i32 0, i32 1
  %string = getelementptr inbounds %struct.cp2112_string_report, ptr %report, i32 0, i32 1, i32 0, i32 3
  %call = call i32 @utf8s_to_utf16s(ptr noundef %buf, i32 noundef %count, i32 noundef 1, ptr noundef %string, i32 noundef 30) #11
  %report4 = getelementptr inbounds %struct.cp2112_pstring_attribute, ptr %kattr, i32 0, i32 1
  %2 = ptrtoint ptr %report4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %report4, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %1, align 1
  %call.tr = trunc i32 %call to i8
  %5 = shl i8 %call.tr, 1
  %conv = add i8 %5, 2
  %length = getelementptr inbounds %struct.cp2112_string_report, ptr %report, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %length, align 1
  %type = getelementptr inbounds %struct.cp2112_string_report, ptr %report, i32 0, i32 1, i32 0, i32 2
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 3, ptr %type, align 1
  %8 = or i8 %conv, 1
  %add9 = zext i8 %8 to i32
  %call.i = call ptr @kmemdup(ptr noundef %1, i32 noundef %add9, i32 noundef 3264) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.thread, label %cp2112_hid_output.exit

do.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %kattr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %kattr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %kdev, ptr noundef nonnull @.str.135, ptr noundef %10, i32 noundef -12) #14
  br label %17

cp2112_hid_output.exit:                           ; preds = %entry
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %call.i, align 1
  %call4.i = call i32 @hid_hw_raw_request(ptr noundef %add.ptr, i8 noundef zeroext %12, ptr noundef nonnull %call.i, i32 noundef %add9, i8 noundef zeroext 2, i32 noundef 9) #11
  call void @kfree(ptr noundef nonnull %call.i) #11
  %13 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %length, align 1
  %conv12 = zext i8 %14 to i32
  %add13 = add nuw nsw i32 %conv12, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call4.i, i32 %add13)
  %cmp.not = icmp eq i32 %call4.i, %add13
  br i1 %cmp.not, label %if.end19, label %do.end

do.end:                                           ; preds = %cp2112_hid_output.exit
  %15 = ptrtoint ptr %kattr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %kattr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %kdev, ptr noundef nonnull @.str.135, ptr noundef %16, i32 noundef %call4.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp16 = icmp slt i32 %call4.i, 0
  br i1 %cmp16, label %do.end._crit_edge, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end._crit_edge:                                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %17

17:                                               ; preds = %do.end._crit_edge, %do.end.thread
  %retval.0.i3538 = phi i32 [ -12, %do.end.thread ], [ %call4.i, %do.end._crit_edge ]
  br label %cleanup

if.end19:                                         ; preds = %cp2112_hid_output.exit
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @chmod_sysfs_attrs(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %17, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end19 ], [ %retval.0.i3538, %17 ], [ -5, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %report) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @utf16s_to_utf8s(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @utf8s_to_utf16s(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_chmod_file(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_unlock_as_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_free_own_desc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 158)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 158)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !18, !19, !21, !23, !25, !27, !28, !30, !31, !32, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !69, !70, !72, !73, !74, !76, !77, !79, !81, !83, !84, !86, !87, !88, !90, !91, !92, !94, !96, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !111, !113, !114, !116, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !140, !141, !142, !143, !145, !146, !147, !148, !150, !151, !153, !154, !155, !156, !157, !159, !160, !161, !163, !164, !166, !167, !169, !170, !172, !173, !175, !176, !177, !179, !180, !182, !183, !184, !185, !186, !188, !189, !190, !191, !193, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !209, !210, !211, !212, !214, !215, !216, !217, !219, !220, !221, !222, !224, !226, !227, !228, !230, !231, !232, !233, !234, !236, !237, !238, !239, !241, !242, !244, !245, !246, !247, !249, !250, !251, !252, !254, !255, !256, !257, !259, !260, !262, !263, !264, !265, !267, !268, !269, !271, !272, !273, !274, !276, !277, !279, !280, !282, !283, !284, !285, !287, !288, !289, !291, !292, !293, !295, !296, !298, !299}
!llvm.module.flags = !{!300, !301, !302, !303, !304, !305, !306, !307}
!llvm.ident = !{!308}

!0 = !{ptr @__param_gpio_push_pull, !1, !"__param_gpio_push_pull", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-cp2112.c", i32 178, i32 1}
!2 = !{ptr @__UNIQUE_ID_gpio_push_pulltype288, !1, !"__UNIQUE_ID_gpio_push_pulltype288", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_gpio_push_pull289, !4, !"__UNIQUE_ID_gpio_push_pull289", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-cp2112.c", i32 179, i32 1}
!5 = !{ptr @__initcall__kmod_hid_cp2112__301_1480_cp2112_driver_init6, !6, !"__initcall__kmod_hid_cp2112__301_1480_cp2112_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/hid/hid-cp2112.c", i32 1480, i32 1}
!7 = !{ptr @__exitcall_cp2112_driver_exit, !6, !"__exitcall_cp2112_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description302, !9, !"__UNIQUE_ID_description302", i1 false, i1 false}
!9 = !{!"../drivers/hid/hid-cp2112.c", i32 1481, i32 1}
!10 = !{ptr @__UNIQUE_ID_author303, !11, !"__UNIQUE_ID_author303", i1 false, i1 false}
!11 = !{!"../drivers/hid/hid-cp2112.c", i32 1482, i32 1}
!12 = !{ptr @__UNIQUE_ID_file304, !13, !"__UNIQUE_ID_file304", i1 false, i1 false}
!13 = !{!"../drivers/hid/hid-cp2112.c", i32 1483, i32 1}
!14 = !{ptr @__UNIQUE_ID_license305, !13, !"__UNIQUE_ID_license305", i1 false, i1 false}
!15 = !{ptr @__param_str_gpio_push_pull, !1, !"__param_str_gpio_push_pull", i1 false, i1 false}
!16 = !{ptr @gpio_push_pull, !17, !"gpio_push_pull", i1 false, i1 false}
!17 = !{!"../drivers/hid/hid-cp2112.c", i32 177, i32 12}
!18 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/hid/hid-cp2112.c", i32 1473, i32 11}
!21 = !{ptr @cp2112_driver, !22, !"cp2112_driver", i1 false, i1 false}
!22 = !{!"../drivers/hid/hid-cp2112.c", i32 1472, i32 26}
!23 = !{ptr @cp2112_devices, !24, !"cp2112_devices", i1 false, i1 false}
!24 = !{!"../drivers/hid/hid-cp2112.c", i32 149, i32 35}
!25 = !{ptr @cp2112_probe.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/hid/hid-cp2112.c", i32 1243, i32 2}
!27 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/hid/hid-cp2112.c", i32 1247, i32 3}
!30 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @cp2112_probe._entry, !29, !"_entry", i1 false, i1 false}
!35 = !{ptr @cp2112_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hid/hid-cp2112.c", i32 1253, i32 3}
!38 = !{ptr @cp2112_probe._entry.8, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @cp2112_probe._entry_ptr.10, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/hid/hid-cp2112.c", i32 1259, i32 3}
!42 = !{ptr @cp2112_probe._entry.11, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @cp2112_probe._entry_ptr.13, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hid/hid-cp2112.c", i32 1265, i32 3}
!46 = !{ptr @cp2112_probe._entry.14, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @cp2112_probe._entry_ptr.16, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/hid/hid-cp2112.c", i32 1272, i32 3}
!50 = !{ptr @cp2112_probe._entry.17, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @cp2112_probe._entry_ptr.19, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/hid/hid-cp2112.c", i32 1278, i32 2}
!54 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @cp2112_probe._entry.20, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @cp2112_probe._entry_ptr.23, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/hid/hid-cp2112.c", i32 1284, i32 3}
!59 = !{ptr @cp2112_probe._entry.24, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @cp2112_probe._entry_ptr.26, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/hid/hid-cp2112.c", i32 1295, i32 3}
!63 = !{ptr @cp2112_probe._entry.27, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @cp2112_probe._entry_ptr.29, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/hid/hid-cp2112.c", i32 1309, i32 4}
!67 = !{ptr @cp2112_probe.__key.31, !68, !"__key", i1 false, i1 false}
!68 = !{!"../drivers/hid/hid-cp2112.c", i32 1312, i32 2}
!69 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/hid/hid-cp2112.c", i32 1319, i32 3}
!72 = !{ptr @cp2112_probe._entry.33, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @cp2112_probe._entry_ptr.35, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hid/hid-cp2112.c", i32 1323, i32 2}
!76 = !{ptr @cp2112_probe.__UNIQUE_ID_ddebug298, !75, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/hid/hid-cp2112.c", i32 1325, i32 20}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/hid/hid-cp2112.c", i32 1335, i32 18}
!81 = !{ptr @cp2112_probe.lock_key, !82, !"lock_key", i1 false, i1 false}
!82 = !{!"../drivers/hid/hid-cp2112.c", i32 1353, i32 8}
!83 = !{ptr @cp2112_probe.request_key, !82, !"request_key", i1 false, i1 false}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/hid/hid-cp2112.c", i32 1355, i32 3}
!86 = !{ptr @cp2112_probe._entry.39, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @cp2112_probe._entry_ptr.41, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/hid/hid-cp2112.c", i32 1361, i32 3}
!90 = !{ptr @cp2112_probe._entry.42, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @cp2112_probe._entry_ptr.44, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @smbus_algorithm, !93, !"smbus_algorithm", i1 false, i1 false}
!93 = !{!"../drivers/hid/hid-cp2112.c", i32 824, i32 35}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/hid/hid-cp2112.c", i32 532, i32 2}
!96 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @cp2112_i2c_xfer.__UNIQUE_ID_ddebug291, !95, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/hid/hid-cp2112.c", i32 536, i32 4}
!100 = !{ptr @cp2112_i2c_xfer.__UNIQUE_ID_ddebug292, !99, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!101 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/hid/hid-cp2112.c", i32 542, i32 4}
!103 = !{ptr @cp2112_i2c_xfer.__UNIQUE_ID_ddebug293, !102, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/hid/hid-cp2112.c", i32 553, i32 3}
!106 = !{ptr @cp2112_i2c_xfer.__UNIQUE_ID_ddebug294, !105, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!107 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/hid/hid-cp2112.c", i32 562, i32 3}
!109 = !{ptr @cp2112_i2c_xfer._entry, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @cp2112_i2c_xfer._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @cp2112_i2c_xfer._entry.51, !112, !"_entry", i1 false, i1 false}
!112 = !{!"../drivers/hid/hid-cp2112.c", i32 569, i32 3}
!113 = !{ptr @cp2112_i2c_xfer._entry_ptr.52, !112, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/hid/hid-cp2112.c", i32 575, i32 3}
!116 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @cp2112_i2c_xfer._entry.53, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @cp2112_i2c_xfer._entry_ptr.56, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/hid/hid-cp2112.c", i32 589, i32 3}
!121 = !{ptr @cp2112_i2c_xfer._entry.57, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @cp2112_i2c_xfer._entry_ptr.59, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.61, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/hid/hid-cp2112.c", i32 595, i32 4}
!125 = !{ptr @cp2112_i2c_xfer._entry.60, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @cp2112_i2c_xfer._entry_ptr.62, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.64, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/hid/hid-cp2112.c", i32 607, i32 4}
!129 = !{ptr @cp2112_i2c_xfer._entry.63, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @cp2112_i2c_xfer._entry_ptr.65, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.67, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/hid/hid-cp2112.c", i32 621, i32 4}
!133 = !{ptr @cp2112_i2c_xfer._entry.66, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @cp2112_i2c_xfer._entry_ptr.68, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.69, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/hid/hid-cp2112.c", i32 633, i32 2}
!137 = !{ptr @cp2112_i2c_xfer.__UNIQUE_ID_ddebug295, !136, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!138 = !{ptr @.str.70, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/hid/hid-cp2112.c", i32 395, i32 3}
!140 = !{ptr @.str.71, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @cp2112_xfer_status._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @cp2112_xfer_status._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.72, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/hid/hid-cp2112.c", i32 422, i32 3}
!145 = !{ptr @.str.73, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @cp2112_read._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @cp2112_read._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.74, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/hid/hid-cp2112.c", i32 430, i32 2}
!150 = !{ptr @cp2112_read.__UNIQUE_ID_ddebug290, !149, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!151 = !{ptr @.str.75, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/hid/hid-cp2112.c", i32 650, i32 2}
!153 = !{ptr @.str.76, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @cp2112_xfer.__UNIQUE_ID_ddebug296, !152, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!155 = !{ptr @.str.77, !152, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.78, !152, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.79, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/hid/hid-cp2112.c", i32 725, i32 3}
!159 = !{ptr @cp2112_xfer._entry, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @cp2112_xfer._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @cp2112_xfer._entry.80, !162, !"_entry", i1 false, i1 false}
!162 = !{!"../drivers/hid/hid-cp2112.c", i32 734, i32 3}
!163 = !{ptr @cp2112_xfer._entry_ptr.81, !162, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @cp2112_xfer._entry.82, !165, !"_entry", i1 false, i1 false}
!165 = !{!"../drivers/hid/hid-cp2112.c", i32 740, i32 3}
!166 = !{ptr @cp2112_xfer._entry_ptr.83, !165, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @cp2112_xfer._entry.84, !168, !"_entry", i1 false, i1 false}
!168 = !{!"../drivers/hid/hid-cp2112.c", i32 754, i32 3}
!169 = !{ptr @cp2112_xfer._entry_ptr.85, !168, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @cp2112_xfer._entry.86, !171, !"_entry", i1 false, i1 false}
!171 = !{!"../drivers/hid/hid-cp2112.c", i32 760, i32 4}
!172 = !{ptr @cp2112_xfer._entry_ptr.87, !171, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.89, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/hid/hid-cp2112.c", i32 779, i32 3}
!175 = !{ptr @cp2112_xfer._entry.88, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @cp2112_xfer._entry_ptr.90, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.91, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/hid/hid-cp2112.c", i32 808, i32 2}
!179 = !{ptr @cp2112_xfer.__UNIQUE_ID_ddebug297, !178, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!180 = !{ptr @.str.92, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../include/linux/hid.h", i32 963, i32 3}
!182 = !{ptr @.str.93, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.94, !181, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @hid_device_io_start._entry, !181, !"_entry", i1 false, i1 false}
!185 = !{ptr @hid_device_io_start._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.95, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../include/linux/hid.h", i32 983, i32 3}
!188 = !{ptr @.str.96, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @hid_device_io_stop._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @hid_device_io_stop._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.97, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/hid/hid-cp2112.c", i32 194, i32 3}
!193 = !{ptr @.str.98, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @cp2112_gpio_direction_input._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @cp2112_gpio_direction_input._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.100, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/hid/hid-cp2112.c", i32 207, i32 3}
!198 = !{ptr @cp2112_gpio_direction_input._entry.99, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @cp2112_gpio_direction_input._entry_ptr.101, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.102, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/hid/hid-cp2112.c", i32 293, i32 3}
!202 = !{ptr @cp2112_gpio_direction_output._entry, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @cp2112_gpio_direction_output._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @cp2112_gpio_direction_output._entry.103, !205, !"_entry", i1 false, i1 false}
!205 = !{!"../drivers/hid/hid-cp2112.c", i32 304, i32 3}
!206 = !{ptr @cp2112_gpio_direction_output._entry_ptr.104, !205, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.105, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/hid/hid-cp2112.c", i32 237, i32 3}
!209 = !{ptr @.str.106, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @cp2112_gpio_set._entry, !208, !"_entry", i1 false, i1 false}
!211 = !{ptr @cp2112_gpio_set._entry_ptr, !208, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.107, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/hid/hid-cp2112.c", i32 255, i32 3}
!214 = !{ptr @.str.108, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @cp2112_gpio_get_all._entry, !213, !"_entry", i1 false, i1 false}
!216 = !{ptr @cp2112_gpio_get_all._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @cp2112_gpio_irq_startup.__key, !218, !"__key", i1 false, i1 false}
!218 = !{!"../drivers/hid/hid-cp2112.c", i32 1157, i32 2}
!219 = !{ptr @.str.109, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @cp2112_gpio_irq_startup.__key.110, !218, !"__key", i1 false, i1 false}
!221 = !{ptr @.str.111, !218, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @cp2112_attr_group, !223, !"cp2112_attr_group", i1 false, i1 false}
!223 = !{!"../drivers/hid/hid-cp2112.c", i32 1027, i32 37}
!224 = !{ptr @.str.112, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/hid/hid-cp2112.c", i32 897, i32 1}
!226 = !{ptr @dev_attr_vendor_id, !225, !"dev_attr_vendor_id", i1 false, i1 false}
!227 = !{ptr @.str.113, !225, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @.str.114, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/hid/hid-cp2112.c", i32 838, i32 3}
!230 = !{ptr @.str.115, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @cp2112_get_usb_config._entry, !229, !"_entry", i1 false, i1 false}
!232 = !{ptr @cp2112_get_usb_config._entry_ptr, !229, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.116, !225, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @.str.117, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/hid/hid-cp2112.c", i32 857, i32 3}
!236 = !{ptr @.str.118, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @cp2112_set_usb_config._entry, !235, !"_entry", i1 false, i1 false}
!238 = !{ptr @cp2112_set_usb_config._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.119, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/hid/hid-cp2112.c", i32 907, i32 1}
!241 = !{ptr @dev_attr_product_id, !240, !"dev_attr_product_id", i1 false, i1 false}
!242 = !{ptr @.str.120, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/hid/hid-cp2112.c", i32 917, i32 1}
!244 = !{ptr @dev_attr_max_power, !243, !"dev_attr_max_power", i1 false, i1 false}
!245 = !{ptr @.str.121, !243, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @.str.122, !243, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @.str.123, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/hid/hid-cp2112.c", i32 927, i32 1}
!249 = !{ptr @dev_attr_power_mode, !248, !"dev_attr_power_mode", i1 false, i1 false}
!250 = !{ptr @.str.124, !248, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @.str.125, !248, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @.str.126, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/hid/hid-cp2112.c", i32 934, i32 1}
!254 = !{ptr @dev_attr_release_version, !253, !"dev_attr_release_version", i1 false, i1 false}
!255 = !{ptr @.str.127, !253, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @.str.128, !253, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @.str.129, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/hid/hid-cp2112.c", i32 1021, i32 1}
!259 = !{ptr @dev_attr_manufacturer, !258, !"dev_attr_manufacturer", i1 false, i1 false}
!260 = !{ptr @.str.130, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/hid/hid-cp2112.c", i32 994, i32 3}
!262 = !{ptr @.str.131, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @pstr_show._entry, !261, !"_entry", i1 false, i1 false}
!264 = !{ptr @pstr_show._entry_ptr, !261, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.133, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/hid/hid-cp2112.c", i32 1002, i32 3}
!267 = !{ptr @pstr_show._entry.132, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @pstr_show._entry_ptr.134, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.135, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/hid/hid-cp2112.c", i32 970, i32 3}
!271 = !{ptr @.str.136, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @pstr_store._entry, !270, !"_entry", i1 false, i1 false}
!273 = !{ptr @pstr_store._entry_ptr, !270, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.137, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/hid/hid-cp2112.c", i32 1022, i32 1}
!276 = !{ptr @dev_attr_product, !275, !"dev_attr_product", i1 false, i1 false}
!277 = !{ptr @.str.138, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/hid/hid-cp2112.c", i32 1023, i32 1}
!279 = !{ptr @dev_attr_serial, !278, !"dev_attr_serial", i1 false, i1 false}
!280 = !{ptr @.str.139, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/hid/hid-cp2112.c", i32 1056, i32 3}
!282 = !{ptr @.str.140, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @chmod_sysfs_attrs._entry, !281, !"_entry", i1 false, i1 false}
!284 = !{ptr @chmod_sysfs_attrs._entry_ptr, !281, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.142, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/hid/hid-cp2112.c", i32 1064, i32 4}
!287 = !{ptr @chmod_sysfs_attrs._entry.141, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @chmod_sysfs_attrs._entry_ptr.143, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.144, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/hid/hid-cp2112.c", i32 1420, i32 3}
!291 = !{ptr @.str.145, !290, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @cp2112_raw_event.__UNIQUE_ID_ddebug299, !290, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!293 = !{ptr @.str.146, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/hid/hid-cp2112.c", i32 1453, i32 3}
!295 = !{ptr @cp2112_raw_event.__UNIQUE_ID_ddebug300, !294, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!296 = !{ptr @.str.147, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/hid/hid-cp2112.c", i32 1463, i32 3}
!298 = !{ptr @cp2112_raw_event._entry, !297, !"_entry", i1 false, i1 false}
!299 = !{ptr @cp2112_raw_event._entry_ptr, !297, !"_entry_ptr", i1 false, i1 false}
!300 = !{i32 1, !"wchar_size", i32 2}
!301 = !{i32 1, !"min_enum_size", i32 4}
!302 = !{i32 8, !"branch-target-enforcement", i32 0}
!303 = !{i32 8, !"sign-return-address", i32 0}
!304 = !{i32 8, !"sign-return-address-all", i32 0}
!305 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!306 = !{i32 7, !"uwtable", i32 1}
!307 = !{i32 7, !"frame-pointer", i32 2}
!308 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!309 = !{!"auto-init"}
!310 = !{i64 2148202914, i64 2148202919, i64 2148202932, i64 2148202976, i64 2148203010, i64 2148203031}
!311 = !{i8 0, i8 2}
!312 = !{i32 0, i32 33}
!313 = !{!"branch_weights", i32 2000, i32 1}
!314 = !{i64 2155989364, i64 2155989853, i64 2155989401, i64 2155989457, i64 2155989491, i64 2155989515, i64 2155989556, i64 2155989577, i64 2155989605, i64 2155989639}
