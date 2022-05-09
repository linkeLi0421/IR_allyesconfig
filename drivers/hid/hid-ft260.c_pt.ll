; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-ft260.c_pt.bc'
source_filename = "../drivers/hid/hid-ft260.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.hid_ll_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.ft260_get_chip_version_report = type { i8, [4 x i8], [8 x i8] }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
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
%struct.ft260_device = type { %struct.i2c_adapter, ptr, %struct.completion, %struct.mutex, [64 x i8], ptr, i16, i16, i16 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.ft260_i2c_input_report = type { i8, i8, [2 x i8] }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ft260_set_i2c_reset_report = type { i8, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.ft260_i2c_read_request_report = type <{ i8, i8, i8, i16 }>
%struct.ft260_set_i2c_mode_report = type { i8, i8, i8 }
%struct.ft260_set_uart_mode_report = type { i8, i8, i8 }
%struct.ft260_set_system_clock_report = type { i8, i8, i8 }
%struct.ft260_set_i2c_speed_report = type { i8, i8, i16 }

@__param_str_debug = internal constant [16 x i8] c"hid_ft260.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@ft260_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 384, i8 -1, i8 0, %union.anon.76 { ptr @ft260_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype293 = internal constant [29 x i8] c"hid_ft260.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug294 = internal constant [53 x i8] c"hid_ft260.parm=debug:Toggle FT260 debugging messages\00", section ".modinfo", align 1
@__initcall__kmod_hid_ft260__295_1047_ft260_driver_init6 = internal global ptr @ft260_driver_init, section ".initcall6.init", align 4
@ft260_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @ft260_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @ft260_probe, ptr @ft260_remove, ptr null, ptr @ft260_raw_event, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ft260_driver_exit = internal global ptr @ft260_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description296 = internal constant [60 x i8] c"hid_ft260.description=FTDI FT260 USB HID to I2C host bridge\00", section ".modinfo", align 1
@__UNIQUE_ID_author297 = internal constant [61 x i8] c"hid_ft260.author=Michael Zaidman <michael.zaidman@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [37 x i8] c"hid_ft260.file=drivers/hid/hid-ft260\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [25 x i8] c"hid_ft260.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hid_ft260\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ft260\00", [26 x i8] zeroinitializer }, align 32
@ft260_devices = internal constant { [2 x %struct.hid_device_id], [32 x i8] } { [2 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 1027, i32 24624, i32 0 }, %struct.hid_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ft260_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 927, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to parse HID\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ft260_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hid/hid-ft260.c\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ft260_probe._entry_ptr = internal global ptr @ft260_probe._entry, section ".printk_index", align 4
@ft260_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 933, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to start HID HW\0A\00", [40 x i8] zeroinitializer }, align 32
@ft260_probe._entry_ptr.9 = internal global ptr @ft260_probe._entry.7, section ".printk_index", align 4
@ft260_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 939, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to open HID HW\0A\00", [41 x i8] zeroinitializer }, align 32
@ft260_probe._entry_ptr.12 = internal global ptr @ft260_probe._entry.10, section ".printk_index", align 4
@ft260_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 946, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to retrieve chip version\0A\00", [63 x i8] zeroinitializer }, align 32
@ft260_probe._entry_ptr.15 = internal global ptr @ft260_probe._entry.13, section ".printk_index", align 4
@ft260_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 952, ptr @.str.18, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"chip code: %02x%02x %02x%02x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ft260_probe._entry_ptr.19 = internal global ptr @ft260_probe._entry.16, section ".printk_index", align 4
@ft260_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @ft260_i2c_xfer, ptr null, ptr @ft260_smbus_xfer, ptr null, ptr @ft260_functionality, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ft260_i2c_quirks = internal constant { %struct.i2c_adapter_quirks, [40 x i8] } { %struct.i2c_adapter_quirks { i64 15, i32 0, i16 0, i16 0, i16 2, i16 0 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"FT260 usb-i2c bridge on hidraw%d\00", [63 x i8] zeroinitializer }, align 32
@ft260_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->lock\00", [21 x i8] zeroinitializer }, align 32
@ft260_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 979, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to add i2c adapter\0A\00", [37 x i8] zeroinitializer }, align 32
@ft260_probe._entry_ptr.24 = internal global ptr @ft260_probe._entry.22, section ".printk_index", align 4
@ft260_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @.compoundliteral, ptr null }, [44 x i8] zeroinitializer }, align 32
@ft260_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 985, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to create sysfs attrs\0A\00", [34 x i8] zeroinitializer }, align 32
@ft260_probe._entry_ptr.27 = internal global ptr @ft260_probe._entry.25, section ".printk_index", align 4
@usb_hid_driver = external dso_local global %struct.hid_ll_driver, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ft260_is_interface_enabled._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 748, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s: interface:  0x%02x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ft260_is_interface_enabled\00", [37 x i8] zeroinitializer }, align 32
@ft260_is_interface_enabled._entry_ptr = internal global ptr @ft260_is_interface_enabled._entry, section ".printk_index", align 4
@ft260_is_interface_enabled._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.4, i32 749, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s: chip mode:  0x%02x\0A\00", [38 x i8] zeroinitializer }, align 32
@ft260_is_interface_enabled._entry_ptr.32 = internal global ptr @ft260_is_interface_enabled._entry.30, section ".printk_index", align 4
@ft260_is_interface_enabled._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.4, i32 750, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s: clock_ctl:  0x%02x\0A\00", [38 x i8] zeroinitializer }, align 32
@ft260_is_interface_enabled._entry_ptr.35 = internal global ptr @ft260_is_interface_enabled._entry.33, section ".printk_index", align 4
@ft260_is_interface_enabled._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.29, ptr @.str.4, i32 751, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s: i2c_enable: 0x%02x\0A\00", [38 x i8] zeroinitializer }, align 32
@ft260_is_interface_enabled._entry_ptr.38 = internal global ptr @ft260_is_interface_enabled._entry.36, section ".printk_index", align 4
@ft260_is_interface_enabled._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.29, ptr @.str.4, i32 752, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s: uart_mode:  0x%02x\0A\00", [38 x i8] zeroinitializer }, align 32
@ft260_is_interface_enabled._entry_ptr.41 = internal global ptr @ft260_is_interface_enabled._entry.39, section ".printk_index", align 4
@ft260_is_interface_enabled._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.29, ptr @.str.4, i32 758, ptr @.str.18, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"uart interface is not supported\0A\00", [63 x i8] zeroinitializer }, align 32
@ft260_is_interface_enabled._entry_ptr.44 = internal global ptr @ft260_is_interface_enabled._entry.42, section ".printk_index", align 4
@ft260_is_interface_enabled._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.29, ptr @.str.4, i32 763, ptr @.str.18, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ft260_is_interface_enabled._entry_ptr.46 = internal global ptr @ft260_is_interface_enabled._entry.45, section ".printk_index", align 4
@ft260_get_system_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.4, i32 731, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to retrieve system status\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ft260_get_system_config\00", [40 x i8] zeroinitializer }, align 32
@ft260_get_system_config._entry_ptr = internal global ptr @ft260_get_system_config._entry, section ".printk_index", align 4
@ft260_i2c_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.4, i32 567, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to enter FULLON power mode: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ft260_i2c_xfer\00", [17 x i8] zeroinitializer }, align 32
@ft260_i2c_xfer._entry_ptr = internal global ptr @ft260_i2c_xfer._entry, section ".printk_index", align 4
@ft260_i2c_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.4, i32 466, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: unsupported rd len: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ft260_i2c_read\00", [17 x i8] zeroinitializer }, align 32
@ft260_i2c_read._entry_ptr = internal global ptr @ft260_i2c_read._entry, section ".printk_index", align 4
@ft260_i2c_read._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.4, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s: rep %#02x addr %#02x len %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ft260_i2c_read._entry_ptr.55 = internal global ptr @ft260_i2c_read._entry.53, section ".printk_index", align 4
@ft260_i2c_read._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.52, ptr @.str.4, i32 487, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: failed to start transaction, ret %d\0A\00", [55 x i8] zeroinitializer }, align 32
@ft260_i2c_read._entry_ptr.58 = internal global ptr @ft260_i2c_read._entry.56, section ".printk_index", align 4
@ft260_i2c_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.4, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016%s: rep %#02x addr %#02x off %d len %d d[0] %#02x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ft260_i2c_write\00", [16 x i8] zeroinitializer }, align 32
@ft260_i2c_write._entry_ptr = internal global ptr @ft260_i2c_write._entry, section ".printk_index", align 4
@ft260_i2c_write._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.4, i32 414, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: failed to start transfer, ret %d\0A\00", [58 x i8] zeroinitializer }, align 32
@ft260_i2c_write._entry_ptr.63 = internal global ptr @ft260_i2c_write._entry.61, section ".printk_index", align 4
@ft260_hid_output_report_check_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.64, ptr @.str.4, i32 364, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ft260_hid_output_report_check_status\00", [59 x i8] zeroinitializer }, align 32
@ft260_hid_output_report_check_status._entry_ptr = internal global ptr @ft260_hid_output_report_check_status._entry, section ".printk_index", align 4
@ft260_hid_output_report_check_status._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.4, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s: wait %d usec, len %d\0A\00", [36 x i8] zeroinitializer }, align 32
@ft260_hid_output_report_check_status._entry_ptr.67 = internal global ptr @ft260_hid_output_report_check_status._entry.65, section ".printk_index", align 4
@ft260_i2c_write_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.4, i32 522, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: unsupported wr len: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ft260_i2c_write_read\00", [43 x i8] zeroinitializer }, align 32
@ft260_i2c_write_read._entry_ptr = internal global ptr @ft260_i2c_write_read._entry, section ".printk_index", align 4
@ft260_i2c_write_read._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.4, i32 535, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s: read_off %#x left_len %d len %d\0A\00", [57 x i8] zeroinitializer }, align 32
@ft260_i2c_write_read._entry_ptr.72 = internal global ptr @ft260_i2c_write_read._entry.70, section ".printk_index", align 4
@ft260_smbus_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.4, i32 604, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016%s: smbus size %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ft260_smbus_xfer\00", [47 x i8] zeroinitializer }, align 32
@ft260_smbus_xfer._entry_ptr = internal global ptr @ft260_smbus_xfer._entry, section ".printk_index", align 4
@ft260_smbus_xfer._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.4, i32 610, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"power management error: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@ft260_smbus_xfer._entry_ptr.77 = internal global ptr @ft260_smbus_xfer._entry.75, section ".printk_index", align 4
@ft260_smbus_xfer._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.74, ptr @.str.4, i32 694, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"unsupported smbus transaction size %d\0A\00", [57 x i8] zeroinitializer }, align 32
@ft260_smbus_xfer._entry_ptr.80 = internal global ptr @ft260_smbus_xfer._entry.78, section ".printk_index", align 4
@ft260_smbus_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.4, i32 450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016%s: rep %#02x addr %#02x cmd %#02x datlen %d replen %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ft260_smbus_write\00", [46 x i8] zeroinitializer }, align 32
@ft260_smbus_write._entry_ptr = internal global ptr @ft260_smbus_write._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.83 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@ft260_xfer_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.4, i32 305, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to retrieve status: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ft260_xfer_status\00", [46 x i8] zeroinitializer }, align 32
@ft260_xfer_status._entry_ptr = internal global ptr @ft260_xfer_status._entry, section ".printk_index", align 4
@ft260_xfer_status._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.4, i32 311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s: bus_status %#02x, clock %u\0A\00", [62 x i8] zeroinitializer }, align 32
@ft260_xfer_status._entry_ptr.88 = internal global ptr @ft260_xfer_status._entry.86, section ".printk_index", align 4
@ft260_xfer_status._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.85, ptr @.str.4, i32 325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s: unacknowledged address\0A\00", [34 x i8] zeroinitializer }, align 32
@ft260_xfer_status._entry_ptr.91 = internal global ptr @ft260_xfer_status._entry.89, section ".printk_index", align 4
@ft260_xfer_status._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.85, ptr @.str.4, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: unacknowledged data\0A\00", [37 x i8] zeroinitializer }, align 32
@ft260_xfer_status._entry_ptr.94 = internal global ptr @ft260_xfer_status._entry.92, section ".printk_index", align 4
@ft260_xfer_status._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.85, ptr @.str.4, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s: arbitration loss\0A\00", [40 x i8] zeroinitializer }, align 32
@ft260_xfer_status._entry_ptr.97 = internal global ptr @ft260_xfer_status._entry.95, section ".printk_index", align 4
@ft260_i2c_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.4, i32 288, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to reset I2C controller: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ft260_i2c_reset\00", [16 x i8] zeroinitializer }, align 32
@ft260_i2c_reset._entry_ptr = internal global ptr @ft260_i2c_reset._entry, section ".printk_index", align 4
@ft260_i2c_reset._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.4, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\016%s: done\0A\00", [20 x i8] zeroinitializer }, align 32
@ft260_i2c_reset._entry_ptr.102 = internal global ptr @ft260_i2c_reset._entry.100, section ".printk_index", align 4
@dev_attr_chip_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.103, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @chip_mode_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pwren_status = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.105, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwren_status_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_suspend_status = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.106, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @suspend_status_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hid_over_i2c_en = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.107, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hid_over_i2c_en_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_power_saving_en = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.108, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @power_saving_en_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_i2c_enable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.109, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @i2c_enable_show, ptr @i2c_enable_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_uart_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.110, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @uart_mode_show, ptr @uart_mode_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_clock_ctl = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.111, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @clock_ctl_show, ptr @clock_ctl_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_i2c_reset = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.112, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @i2c_reset_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_clock = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.113, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @clock_show, ptr @clock_store }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @dev_attr_chip_mode, ptr @dev_attr_pwren_status, ptr @dev_attr_suspend_status, ptr @dev_attr_hid_over_i2c_en, ptr @dev_attr_power_saving_en, ptr @dev_attr_i2c_enable, ptr @dev_attr_uart_mode, ptr @dev_attr_clock_ctl, ptr @dev_attr_i2c_reset, ptr @dev_attr_clock, ptr null], [52 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"chip_mode\00", [22 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pwren_status\00", [19 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"suspend_status\00", [17 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hid_over_i2c_en\00", [16 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"power_saving_en\00", [16 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2c_enable\00", [21 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart_mode\00", [22 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clock_ctl\00", [22 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2c_reset\00", [22 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clock\00", [26 x i8] zeroinitializer }, align 32
@ft260_raw_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.4, i32 1023, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s: i2c resp: rep %#02x len %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ft260_raw_event\00", [16 x i8] zeroinitializer }, align 32
@ft260_raw_event._entry_ptr = internal global ptr @ft260_raw_event._entry, section ".printk_index", align 4
@ft260_raw_event._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.115, ptr @.str.4, i32 1033, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unknown report: %#02x\0A\00", [41 x i8] zeroinitializer }, align 32
@ft260_raw_event._entry_ptr.118 = internal global ptr @ft260_raw_event._entry.116, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.119 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5, i64 8]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@___asan_gen_.121 = private unnamed_addr constant [12 x i8] c"ft260_debug\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 20, i32 12 }
@___asan_gen_.124 = private unnamed_addr constant [13 x i8] c"ft260_driver\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1039, i32 26 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1047, i32 1 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1040, i32 11 }
@___asan_gen_.133 = private unnamed_addr constant [14 x i8] c"ft260_devices\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 220, i32 35 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 927, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 933, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 939, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 946, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 950, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant [15 x i8] c"ft260_i2c_algo\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 716, i32 35 }
@___asan_gen_.184 = private unnamed_addr constant [17 x i8] c"ft260_i2c_quirks\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 711, i32 40 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 966, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 969, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 979, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant [17 x i8] c"ft260_attr_group\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 896, i32 37 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 985, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 748, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 749, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 750, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 751, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 752, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 758, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 763, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 731, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 567, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 466, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 479, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 486, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 407, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 413, i32 4 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 363, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 372, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 521, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 534, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 604, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 610, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 694, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 449, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.368 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 87, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 305, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 310, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 325, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 328, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 331, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 288, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 292, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant [19 x i8] c"dev_attr_chip_mode\00", align 1
@___asan_gen_.421 = private unnamed_addr constant [22 x i8] c"dev_attr_pwren_status\00", align 1
@___asan_gen_.424 = private unnamed_addr constant [24 x i8] c"dev_attr_suspend_status\00", align 1
@___asan_gen_.427 = private unnamed_addr constant [25 x i8] c"dev_attr_hid_over_i2c_en\00", align 1
@___asan_gen_.430 = private unnamed_addr constant [25 x i8] c"dev_attr_power_saving_en\00", align 1
@___asan_gen_.433 = private unnamed_addr constant [20 x i8] c"dev_attr_i2c_enable\00", align 1
@___asan_gen_.436 = private unnamed_addr constant [19 x i8] c"dev_attr_uart_mode\00", align 1
@___asan_gen_.439 = private unnamed_addr constant [19 x i8] c"dev_attr_clock_ctl\00", align 1
@___asan_gen_.442 = private unnamed_addr constant [19 x i8] c"dev_attr_i2c_reset\00", align 1
@___asan_gen_.445 = private unnamed_addr constant [15 x i8] c"dev_attr_clock\00", align 1
@___asan_gen_.448 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 849, i32 8 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 781, i32 35 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 852, i32 8 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 855, i32 8 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 858, i32 8 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 861, i32 8 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 866, i32 8 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 871, i32 8 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 876, i32 8 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 894, i32 8 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 881, i32 8 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1022, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.494 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.495 = private constant [27 x i8] c"../drivers/hid/hid-ft260.c\00", align 1
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1033, i32 3 }
@llvm.compiler.used = appending global [174 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_debug294, ptr @__UNIQUE_ID_debugtype293, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__exitcall_ft260_driver_exit, ptr @__initcall__kmod_hid_ft260__295_1047_ft260_driver_init6, ptr @__param_debug, ptr @ft260_driver_exit, ptr @ft260_get_system_config._entry, ptr @ft260_get_system_config._entry_ptr, ptr @ft260_hid_output_report_check_status._entry, ptr @ft260_hid_output_report_check_status._entry.65, ptr @ft260_hid_output_report_check_status._entry_ptr, ptr @ft260_hid_output_report_check_status._entry_ptr.67, ptr @ft260_i2c_read._entry, ptr @ft260_i2c_read._entry.53, ptr @ft260_i2c_read._entry.56, ptr @ft260_i2c_read._entry_ptr, ptr @ft260_i2c_read._entry_ptr.55, ptr @ft260_i2c_read._entry_ptr.58, ptr @ft260_i2c_reset._entry, ptr @ft260_i2c_reset._entry.100, ptr @ft260_i2c_reset._entry_ptr, ptr @ft260_i2c_reset._entry_ptr.102, ptr @ft260_i2c_write._entry, ptr @ft260_i2c_write._entry.61, ptr @ft260_i2c_write._entry_ptr, ptr @ft260_i2c_write._entry_ptr.63, ptr @ft260_i2c_write_read._entry, ptr @ft260_i2c_write_read._entry.70, ptr @ft260_i2c_write_read._entry_ptr, ptr @ft260_i2c_write_read._entry_ptr.72, ptr @ft260_i2c_xfer._entry, ptr @ft260_i2c_xfer._entry_ptr, ptr @ft260_is_interface_enabled._entry, ptr @ft260_is_interface_enabled._entry.30, ptr @ft260_is_interface_enabled._entry.33, ptr @ft260_is_interface_enabled._entry.36, ptr @ft260_is_interface_enabled._entry.39, ptr @ft260_is_interface_enabled._entry.42, ptr @ft260_is_interface_enabled._entry.45, ptr @ft260_is_interface_enabled._entry_ptr, ptr @ft260_is_interface_enabled._entry_ptr.32, ptr @ft260_is_interface_enabled._entry_ptr.35, ptr @ft260_is_interface_enabled._entry_ptr.38, ptr @ft260_is_interface_enabled._entry_ptr.41, ptr @ft260_is_interface_enabled._entry_ptr.44, ptr @ft260_is_interface_enabled._entry_ptr.46, ptr @ft260_probe._entry, ptr @ft260_probe._entry.10, ptr @ft260_probe._entry.13, ptr @ft260_probe._entry.16, ptr @ft260_probe._entry.22, ptr @ft260_probe._entry.25, ptr @ft260_probe._entry.7, ptr @ft260_probe._entry_ptr, ptr @ft260_probe._entry_ptr.12, ptr @ft260_probe._entry_ptr.15, ptr @ft260_probe._entry_ptr.19, ptr @ft260_probe._entry_ptr.24, ptr @ft260_probe._entry_ptr.27, ptr @ft260_probe._entry_ptr.9, ptr @ft260_raw_event._entry, ptr @ft260_raw_event._entry.116, ptr @ft260_raw_event._entry_ptr, ptr @ft260_raw_event._entry_ptr.118, ptr @ft260_smbus_write._entry, ptr @ft260_smbus_write._entry_ptr, ptr @ft260_smbus_xfer._entry, ptr @ft260_smbus_xfer._entry.75, ptr @ft260_smbus_xfer._entry.78, ptr @ft260_smbus_xfer._entry_ptr, ptr @ft260_smbus_xfer._entry_ptr.77, ptr @ft260_smbus_xfer._entry_ptr.80, ptr @ft260_xfer_status._entry, ptr @ft260_xfer_status._entry.86, ptr @ft260_xfer_status._entry.89, ptr @ft260_xfer_status._entry.92, ptr @ft260_xfer_status._entry.95, ptr @ft260_xfer_status._entry_ptr, ptr @ft260_xfer_status._entry_ptr.88, ptr @ft260_xfer_status._entry_ptr.91, ptr @ft260_xfer_status._entry_ptr.94, ptr @ft260_xfer_status._entry_ptr.97, ptr @ft260_debug, ptr @ft260_driver, ptr @.str, ptr @.str.1, ptr @ft260_devices, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @ft260_i2c_algo, ptr @ft260_i2c_quirks, ptr @.str.20, ptr @ft260_probe.__key, ptr @.str.21, ptr @.str.23, ptr @ft260_attr_group, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @init_completion.__key, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @dev_attr_chip_mode, ptr @dev_attr_pwren_status, ptr @dev_attr_suspend_status, ptr @dev_attr_hid_over_i2c_en, ptr @dev_attr_power_saving_en, ptr @dev_attr_i2c_enable, ptr @dev_attr_uart_mode, ptr @dev_attr_clock_ctl, ptr @dev_attr_i2c_reset, ptr @dev_attr_clock, ptr @.compoundliteral, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.117], section "llvm.metadata"
@0 = internal global [126 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft260_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft260_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft260_devices to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft260_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft260_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft260_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft260_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft260_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft260_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft260_i2c_quirks to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft260_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft260_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft260_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft260_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft260_is_interface_enabled._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft260_is_interface_enabled._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft260_is_interface_enabled._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft260_is_interface_enabled._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft260_is_interface_enabled._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft260_is_interface_enabled._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft260_is_interface_enabled._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft260_get_system_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft260_i2c_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft260_i2c_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft260_i2c_read._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft260_i2c_read._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft260_i2c_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft260_i2c_write._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft260_hid_output_report_check_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft260_hid_output_report_check_status._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft260_i2c_write_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft260_i2c_write_read._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft260_smbus_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft260_smbus_xfer._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft260_smbus_xfer._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft260_smbus_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft260_xfer_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft260_xfer_status._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft260_xfer_status._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft260_xfer_status._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft260_xfer_status._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft260_i2c_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft260_i2c_reset._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_chip_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pwren_status to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_suspend_status to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hid_over_i2c_en to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_power_saving_en to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_i2c_enable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_uart_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_clock_ctl to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_i2c_reset to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_clock to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft260_raw_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft260_raw_event._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ft260_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @ft260_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ft260_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @hid_unregister_driver(ptr noundef nonnull @ft260_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ft260_probe(ptr noundef %hdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %version = alloca %struct.ft260_get_chip_version_report, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %version) #10
  %0 = getelementptr inbounds %struct.ft260_get_chip_version_report, ptr %version, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ft260_get_chip_version_report, ptr %version, i32 0, i32 1, i32 1
  %2 = getelementptr inbounds %struct.ft260_get_chip_version_report, ptr %version, i32 0, i32 1, i32 2
  %3 = getelementptr inbounds %struct.ft260_get_chip_version_report, ptr %version, i32 0, i32 1, i32 3
  %ll_driver.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 20
  %4 = call ptr @memset(ptr %version, i32 255, i32 13)
  %5 = ptrtoint ptr %ll_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ll_driver.i.i, align 4
  %cmp.i.i = icmp eq ptr %6, @usb_hid_driver
  br i1 %cmp.i.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1592, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call.i137 = tail call i32 @hid_open_report(ptr noundef %hdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137)
  %tobool6.not = icmp eq i32 %call.i137, 0
  br i1 %tobool6.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #13
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %call10 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end17, label %do.end15

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #13
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %call18 = tail call i32 @hid_hw_open(ptr noundef %hdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end25, label %do.end23

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #13
  br label %err_hid_stop

if.end25:                                         ; preds = %if.end17
  %call26 = call fastcc i32 @ft260_hid_feature_report_get(ptr noundef %hdev, i8 noundef zeroext -96, ptr noundef nonnull %version, i32 noundef 13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp = icmp slt i32 %call26, 0
  br i1 %cmp, label %do.end30, label %do.end35

do.end30:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #13
  br label %err_hid_close

do.end35:                                         ; preds = %if.end25
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %0, align 1
  %conv = zext i8 %8 to i32
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %1, align 1
  %conv39 = zext i8 %10 to i32
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %2, align 1
  %conv42 = zext i8 %12 to i32
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %3, align 1
  %conv45 = zext i8 %14 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %conv, i32 noundef %conv39, i32 noundef %conv42, i32 noundef %conv45) #13
  %call46 = tail call fastcc i32 @ft260_is_interface_enabled(ptr noundef %hdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 1
  br i1 %cmp47, label %do.end35.err_hid_close_crit_edge, label %if.end50

do.end35.err_hid_close_crit_edge:                 ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_hid_close

if.end50:                                         ; preds = %do.end35
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %hdev51 = getelementptr inbounds %struct.ft260_device, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %hdev51 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %hdev, ptr %hdev51, align 8
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %call.i, align 8
  %class = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %class, align 4
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 2
  %19 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @ft260_i2c_algo, ptr %algo, align 8
  %quirks = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 17
  %20 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @ft260_i2c_quirks, ptr %quirks, align 8
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 1
  %21 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dev1, ptr %parent, align 8
  %name = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 12
  %hidraw = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 38
  %22 = ptrtoint ptr %hidraw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hidraw, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %call59 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 48, ptr noundef nonnull @.str.20, i32 noundef %25)
  %lock = getelementptr inbounds %struct.ft260_device, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.21, ptr noundef nonnull @ft260_probe.__key) #10
  %wait = getelementptr inbounds %struct.ft260_device, ptr %call.i, i32 0, i32 2
  %26 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %wait, align 4
  %wait.i = getelementptr inbounds %struct.ft260_device, ptr %call.i, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.83, ptr noundef nonnull @init_completion.__key) #10
  %call63 = tail call fastcc i32 @ft260_xfer_status(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end50.if.end67_crit_edge, label %if.then65

if.end50.if.end67_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.then65:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  %call66 = tail call fastcc i32 @ft260_i2c_reset(ptr noundef %hdev)
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %if.end50.if.end67_crit_edge
  %driver_data.i.i138 = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 8
  %27 = ptrtoint ptr %driver_data.i.i138 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %driver_data.i.i138, align 4
  %call70 = tail call i32 @i2c_add_adapter(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end77, label %do.end75

do.end75:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23) #13
  br label %err_hid_close

if.end77:                                         ; preds = %if.end67
  %call79 = tail call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef nonnull @ft260_attr_group) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80 = icmp slt i32 %call79, 0
  br i1 %cmp80, label %do.end85, label %if.end77.cleanup_crit_edge

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end85:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26) #13
  tail call void @i2c_del_adapter(ptr noundef nonnull %call.i) #10
  br label %err_hid_close

err_hid_close:                                    ; preds = %do.end85, %do.end75, %do.end35.err_hid_close_crit_edge, %do.end30
  %ret.0 = phi i32 [ %call26, %do.end30 ], [ %call46, %do.end35.err_hid_close_crit_edge ], [ %call70, %do.end75 ], [ %call79, %do.end85 ]
  tail call void @hid_hw_close(ptr noundef %hdev) #10
  br label %err_hid_stop

err_hid_stop:                                     ; preds = %err_hid_close, %do.end23
  %ret.1 = phi i32 [ %call18, %do.end23 ], [ %ret.0, %err_hid_close ]
  tail call void @hid_hw_stop(ptr noundef %hdev) #10
  br label %cleanup

cleanup:                                          ; preds = %err_hid_stop, %if.end77.cleanup_crit_edge, %do.end15, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i137, %do.end ], [ %call10, %do.end15 ], [ %ret.1, %err_hid_stop ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end77.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %version) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ft260_remove(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev1 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef nonnull @ft260_attr_group) #10
  tail call void @i2c_del_adapter(ptr noundef nonnull %1) #10
  tail call void @hid_hw_close(ptr noundef %hdev) #10
  tail call void @hid_hw_stop(ptr noundef %hdev) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ft260_raw_event(ptr noundef %hdev, ptr nocapture noundef readnone %report, ptr nocapture noundef readonly %data, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data, align 1
  %conv = zext i8 %3 to i32
  %4 = add i8 %3, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %4)
  %5 = icmp ult i8 %4, 15
  br i1 %5, label %do.body, label %do.end32

do.body:                                          ; preds = %entry
  %6 = load i32, ptr @ft260_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %do.body.do.end14_crit_edge, label %do.end

do.body.do.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %length = getelementptr inbounds %struct.ft260_i2c_input_report, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %length, align 1
  %conv11 = zext i8 %8 to i32
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.115, i32 noundef %conv, i32 noundef %conv11) #13
  br label %do.end14

do.end14:                                         ; preds = %do.end, %do.body.do.end14_crit_edge
  %read_buf = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %read_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read_buf, align 8
  %read_idx = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %read_idx to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %read_idx, align 4
  %idxprom = zext i16 %12 to i32
  %arrayidx = getelementptr i8, ptr %10, i32 %idxprom
  %data15 = getelementptr inbounds %struct.ft260_i2c_input_report, ptr %data, i32 0, i32 2
  %length16 = getelementptr inbounds %struct.ft260_i2c_input_report, ptr %data, i32 0, i32 1
  %13 = ptrtoint ptr %length16 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %length16, align 1
  %conv17 = zext i8 %14 to i32
  %15 = call ptr @memcpy(ptr %arrayidx, ptr %data15, i32 %conv17)
  %16 = load i8, ptr %length16, align 1
  %conv19 = zext i8 %16 to i16
  %17 = load i16, ptr %read_idx, align 4
  %add = add i16 %17, %conv19
  store i16 %add, ptr %read_idx, align 4
  %read_len = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %read_len to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %read_len, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %add, i16 %19)
  %cmp26 = icmp eq i16 %add, %19
  br i1 %cmp26, label %if.then28, label %do.end14.cleanup_crit_edge

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then28:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #12
  %wait = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 2
  tail call void @complete(ptr noundef %wait) #10
  br label %cleanup

do.end32:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev33 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33, ptr noundef nonnull @.str.117, i32 noundef %conv) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end32, %if.then28, %do.end14.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end32 ], [ 1, %do.end14.cleanup_crit_edge ], [ 1, %if.then28 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ft260_hid_feature_report_get(ptr noundef %hdev, i8 noundef zeroext %report_id, ptr nocapture noundef writeonly %data, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %len, i32 noundef 3264) #14
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext %report_id, ptr noundef nonnull %call9.i, i32 noundef %len, i8 noundef zeroext 2, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %len)
  %cmp = icmp eq i32 %call1, %len
  br i1 %cmp, label %if.then4, label %if.else, !prof !247

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %0 = call ptr @memcpy(ptr %data, ptr %call9.i, i32 %len)
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp5 = icmp sgt i32 %call1, -1
  %spec.store.select = select i1 %cmp5, i32 -5, i32 %call1
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then4
  %ret.0 = phi i32 [ %len, %if.then4 ], [ %spec.store.select, %if.else ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end8 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ft260_is_interface_enabled(ptr noundef %hdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %parent = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %cur_altsetting = getelementptr i8, ptr %1, i32 -28
  %2 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bInterfaceNumber, align 2
  %conv = zext i8 %5 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 25) #15
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %entry.ft260_get_system_config.exit.thread_crit_edge, label %if.end.i.i

entry.ft260_get_system_config.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ft260_get_system_config.exit.thread

if.end.i.i:                                       ; preds = %entry
  %call1.i.i = tail call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext -95, ptr noundef nonnull %call7.i.i.i, i32 noundef 25, i8 noundef zeroext 2, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %call1.i.i)
  %cmp.i.i = icmp eq i32 %call1.i.i, 25
  br i1 %cmp.i.i, label %do.body, label %if.else.i.i, !prof !247

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i)
  %cmp5.i.i = icmp sgt i32 %call1.i.i, -1
  %spec.select.i = select i1 %cmp5.i.i, i32 -5, i32 %call1.i.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %ft260_get_system_config.exit.thread

ft260_get_system_config.exit.thread:              ; preds = %if.else.i.i, %entry.ft260_get_system_config.exit.thread_crit_edge
  %retval.0.i6.i = phi i32 [ %spec.select.i, %if.else.i.i ], [ -12, %entry.ft260_get_system_config.exit.thread_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47) #13
  br label %cleanup

do.body:                                          ; preds = %if.end.i.i
  %cfg.sroa.4.0.call7.i.i.i.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i.i, i32 1
  %7 = ptrtoint ptr %cfg.sroa.4.0.call7.i.i.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %7)
  %cfg.sroa.4.0.copyload = load i8, ptr %cfg.sroa.4.0.call7.i.i.i.sroa_idx, align 1
  %cfg.sroa.7.0.call7.i.i.i.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i.i, i32 2
  %8 = ptrtoint ptr %cfg.sroa.7.0.call7.i.i.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %cfg.sroa.7.0.copyload = load i8, ptr %cfg.sroa.7.0.call7.i.i.i.sroa_idx, align 2
  %cfg.sroa.11.0.call7.i.i.i.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i.i, i32 5
  %9 = ptrtoint ptr %cfg.sroa.11.0.call7.i.i.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %9)
  %cfg.sroa.11.0.copyload = load i8, ptr %cfg.sroa.11.0.call7.i.i.i.sroa_idx, align 1
  %cfg.sroa.13.0.call7.i.i.i.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i.i, i32 6
  %10 = ptrtoint ptr %cfg.sroa.13.0.call7.i.i.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %10)
  %cfg.sroa.13.0.copyload = load i8, ptr %cfg.sroa.13.0.call7.i.i.i.sroa_idx, align 2
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  %11 = load i32, ptr @ft260_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %do.body.do.end56_crit_edge, label %do.body9

do.body.do.end56_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end56

do.body9:                                         ; preds = %do.body
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef %conv) #13
  %.pr = load i32, ptr @ft260_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool10.not = icmp eq i32 %.pr, 0
  br i1 %tobool10.not, label %do.body9.do.end56_crit_edge, label %do.body21

do.body9.do.end56_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end56

do.body21:                                        ; preds = %do.body9
  %conv16 = zext i8 %cfg.sroa.4.0.copyload to i32
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.29, i32 noundef %conv16) #13
  %.pr90 = load i32, ptr @ft260_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr90)
  %tobool22.not = icmp eq i32 %.pr90, 0
  br i1 %tobool22.not, label %do.body21.do.end56_crit_edge, label %do.body33

do.body21.do.end56_crit_edge:                     ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end56

do.body33:                                        ; preds = %do.body21
  %conv28 = zext i8 %cfg.sroa.7.0.copyload to i32
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.29, i32 noundef %conv28) #13
  %.pr92.pr = load i32, ptr @ft260_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr92.pr)
  %tobool34.not = icmp eq i32 %.pr92.pr, 0
  br i1 %tobool34.not, label %do.body33.do.end56_crit_edge, label %do.body45

do.body33.do.end56_crit_edge:                     ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end56

do.body45:                                        ; preds = %do.body33
  %conv40 = zext i8 %cfg.sroa.11.0.copyload to i32
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.29, i32 noundef %conv40) #13
  %.pr94 = load i32, ptr @ft260_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr94)
  %tobool46.not = icmp eq i32 %.pr94, 0
  br i1 %tobool46.not, label %do.body45.do.end56_crit_edge, label %do.end50

do.body45.do.end56_crit_edge:                     ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end56

do.end50:                                         ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #12
  %conv52 = zext i8 %cfg.sroa.13.0.copyload to i32
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.29, i32 noundef %conv52) #13
  br label %do.end56

do.end56:                                         ; preds = %do.end50, %do.body45.do.end56_crit_edge, %do.body33.do.end56_crit_edge, %do.body21.do.end56_crit_edge, %do.body9.do.end56_crit_edge, %do.body.do.end56_crit_edge
  %12 = zext i8 %cfg.sroa.4.0.copyload to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i8 %cfg.sroa.4.0.copyload, label %do.end56.cleanup_crit_edge [
    i8 0, label %do.end56.sw.bb_crit_edge
    i8 3, label %do.end56.sw.bb_crit_edge99
    i8 2, label %do.end70
    i8 1, label %sw.bb72
  ]

do.end56.sw.bb_crit_edge99:                       ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end56.sw.bb_crit_edge:                         ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end56.cleanup_crit_edge:                       ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %do.end56.sw.bb_crit_edge, %do.end56.sw.bb_crit_edge99
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp59 = icmp eq i8 %5, 1
  br i1 %cmp59, label %do.end64, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end64:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.43) #13
  br label %cleanup

do.end70:                                         ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.43) #13
  br label %cleanup

sw.bb72:                                          ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %sw.bb72, %do.end70, %do.end64, %sw.bb.cleanup_crit_edge, %do.end56.cleanup_crit_edge, %ft260_get_system_config.exit.thread
  %retval.0 = phi i32 [ 0, %do.end56.cleanup_crit_edge ], [ 1, %sw.bb72 ], [ 0, %do.end70 ], [ 0, %do.end64 ], [ 1, %sw.bb.cleanup_crit_edge ], [ %retval.0.i6.i, %ft260_get_system_config.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ft260_xfer_status(ptr nocapture noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.ft260_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 5) #15
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %if.end.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @hid_hw_raw_request(ptr noundef %1, i8 noundef zeroext -64, ptr noundef nonnull %call7.i.i, i32 noundef 5, i8 noundef zeroext 2, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, 5
  br i1 %cmp.i, label %if.end, label %if.else.i, !prof !247

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp5.i = icmp sgt i32 %call1.i, -1
  %spec.select114 = select i1 %cmp5.i, i32 -5, i32 %call1.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %do.end

do.end:                                           ; preds = %if.else.i, %entry.do.end_crit_edge
  %retval.0.i107 = phi i32 [ %spec.select114, %if.else.i ], [ -12, %entry.do.end_crit_edge ]
  %dev3 = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.84, i32 noundef %retval.0.i107) #13
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %report.sroa.4.0.call7.i.i.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 1
  %3 = ptrtoint ptr %report.sroa.4.0.call7.i.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %3)
  %report.sroa.4.0.copyload = load i8, ptr %report.sroa.4.0.call7.i.i.sroa_idx, align 1
  %report.sroa.10.0.call7.i.i.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 2
  %4 = ptrtoint ptr %report.sroa.10.0.call7.i.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %4)
  %report.sroa.10.0.copyload = load i16, ptr %report.sroa.10.0.call7.i.i.sroa_idx, align 2
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  %5 = tail call i16 @llvm.bswap.i16(i16 %report.sroa.10.0.copyload)
  %clock4 = getelementptr inbounds %struct.ft260_device, ptr %dev, i32 0, i32 8
  %6 = ptrtoint ptr %clock4 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %clock4, align 8
  %7 = load i32, ptr @ft260_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  %.pre = zext i8 %report.sroa.4.0.copyload to i32
  br i1 %tobool6.not, label %if.end.do.end16_crit_edge, label %do.end10

if.end.do.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end16

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv12 = zext i16 %5 to i32
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.85, i32 noundef %.pre, i32 noundef %conv12) #13
  br label %do.end16

do.end16:                                         ; preds = %do.end10, %if.end.do.end16_crit_edge
  %and = and i32 %.pre, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.end21, label %do.end16.cleanup_crit_edge

do.end16.cleanup_crit_edge:                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21:                                         ; preds = %do.end16
  %and24 = and i32 %.pre, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end27:                                         ; preds = %if.end21
  %and30 = and i32 %.pre, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end33:                                         ; preds = %if.end27
  %and36 = and i32 %.pre, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end33.if.end50_crit_edge, label %do.body39

if.end33.if.end50_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

do.body39:                                        ; preds = %if.end33
  %8 = load i32, ptr @ft260_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool40.not = icmp eq i32 %8, 0
  br i1 %tobool40.not, label %do.body39.if.end50_crit_edge, label %do.end44

do.body39.if.end50_crit_edge:                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

do.end44:                                         ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #12
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.85) #13
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %do.body39.if.end50_crit_edge, %if.end33.if.end50_crit_edge
  %9 = and i8 %report.sroa.4.0.copyload, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool54.not = icmp eq i8 %9, 0
  br i1 %tobool54.not, label %if.end50.if.end67_crit_edge, label %do.body56

if.end50.if.end67_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

do.body56:                                        ; preds = %if.end50
  %10 = load i32, ptr @ft260_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool57.not = icmp eq i32 %10, 0
  br i1 %tobool57.not, label %do.body56.if.end67_crit_edge, label %do.end61

do.body56.if.end67_crit_edge:                     ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

do.end61:                                         ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #12
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.85) #13
  br label %if.end67

if.end67:                                         ; preds = %do.end61, %do.body56.if.end67_crit_edge, %if.end50.if.end67_crit_edge
  %11 = and i8 %report.sroa.4.0.copyload, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool71.not = icmp eq i8 %11, 0
  br i1 %tobool71.not, label %if.end67.if.end84_crit_edge, label %do.body73

if.end67.if.end84_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

do.body73:                                        ; preds = %if.end67
  %12 = load i32, ptr @ft260_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool74.not = icmp eq i32 %12, 0
  br i1 %tobool74.not, label %do.body73.if.end84_crit_edge, label %do.end78

do.body73.if.end84_crit_edge:                     ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

do.end78:                                         ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #12
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.85) #13
  br label %if.end84

if.end84:                                         ; preds = %do.end78, %do.body73.if.end84_crit_edge, %if.end67.if.end84_crit_edge
  %13 = and i8 %report.sroa.4.0.copyload, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool88.not = icmp eq i8 %13, 0
  %spec.select = select i1 %tobool88.not, i32 -5, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %if.end27.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %do.end16.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i107, %do.end ], [ %spec.select, %if.end84 ], [ -11, %do.end16.cleanup_crit_edge ], [ -16, %if.end21.cleanup_crit_edge ], [ -5, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ft260_i2c_reset(ptr noundef %hdev) unnamed_addr #2 align 64 {
entry:
  %report = alloca %struct.ft260_set_i2c_reset_report, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %report) #10
  %0 = ptrtoint ptr %report to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %report, align 1, !annotation !248
  %1 = getelementptr inbounds %struct.ft260_set_i2c_reset_report, ptr %report, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 32, ptr %1, align 1
  %call.i = call ptr @kmemdup(ptr noundef nonnull %report, i32 noundef 2, i32 noundef 3264) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %ft260_hid_feature_report_set.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

ft260_hid_feature_report_set.exit:                ; preds = %entry
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -95, ptr %call.i, align 1
  %call2.i = call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext -95, ptr noundef nonnull %call.i, i32 noundef 2, i8 noundef zeroext 2, i32 noundef 9) #10
  call void @kfree(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %ft260_hid_feature_report_set.exit.do.end_crit_edge, label %do.body1

ft260_hid_feature_report_set.exit.do.end_crit_edge: ; preds = %ft260_hid_feature_report_set.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %ft260_hid_feature_report_set.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %retval.0.i17 = phi i32 [ %call2.i, %ft260_hid_feature_report_set.exit.do.end_crit_edge ], [ -12, %entry.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.98, i32 noundef %retval.0.i17) #13
  br label %cleanup

do.body1:                                         ; preds = %ft260_hid_feature_report_set.exit
  %4 = load i32, ptr @ft260_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.body1.cleanup_crit_edge, label %do.end5

do.body1.cleanup_crit_edge:                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end5:                                          ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.99) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end5, %do.body1.cleanup_crit_edge, %do.end
  %retval.0.i18 = phi i32 [ %call2.i, %do.body1.cleanup_crit_edge ], [ %call2.i, %do.end5 ], [ %retval.0.i17, %do.end ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %report) #10
  ret i32 %retval.0.i18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_raw_request(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ft260_i2c_xfer(ptr nocapture noundef readonly %adapter, ptr nocapture noundef readonly %msgs, i32 noundef %num) #2 align 64 {
entry:
  %read_off.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hdev1 = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev1, align 8
  %lock = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %ll_driver.i = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %ll_driver.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ll_driver.i, align 4
  %power.i = getelementptr inbounds %struct.hid_ll_driver, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %power.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %power.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %hid_hw_power.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

hid_hw_power.exit:                                ; preds = %entry
  %call.i = tail call i32 %7(ptr noundef %3, i32 noundef 32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %hid_hw_power.exit.if.end_crit_edge

hid_hw_power.exit.if.end_crit_edge:               ; preds = %hid_hw_power.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %hid_hw_power.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dev3 = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.49, i32 noundef %call.i) #13
  br label %cleanup

if.end:                                           ; preds = %hid_hw_power.exit.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num)
  %cmp5 = icmp eq i32 %num, 1
  br i1 %cmp5, label %if.then6, label %if.else21

if.then6:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags, align 2
  %10 = and i16 %9, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not = icmp eq i16 %10, 0
  %11 = ptrtoint ptr %msgs to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %msgs, align 4
  %conv11 = trunc i16 %12 to i8
  %buf12 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %13 = ptrtoint ptr %buf12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buf12, align 4
  %len13 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %15 = ptrtoint ptr %len13 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %len13, align 4
  br i1 %tobool.not, label %if.else, label %if.end16

if.else:                                          ; preds = %if.then6
  %conv14 = zext i16 %16 to i32
  %17 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hdev1, align 8
  %write_buf.i = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4
  %address.i = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4, i32 1
  %length.i = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4, i32 3
  %flag3.i = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4, i32 2
  %data4.i = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4, i32 4
  %conv11.mask = and i16 %12, 255
  %conv11.i = zext i16 %conv11.mask to i32
  br label %do.body.i

do.body.i:                                        ; preds = %if.end26.i.do.body.i_crit_edge, %if.else
  %data_len.addr.0.i = phi i32 [ %conv14, %if.else ], [ %sub27.i, %if.end26.i.do.body.i_crit_edge ]
  %idx.0.i = phi i32 [ 0, %if.else ], [ %add28.i, %if.end26.i.do.body.i_crit_edge ]
  %19 = tail call i32 @llvm.smin.i32(i32 %data_len.addr.0.i, i32 60) #10
  %20 = trunc i32 %19 to i8
  %div.i.lhs.trunc = add nsw i8 %20, -1
  %div.i76 = sdiv i8 %div.i.lhs.trunc, 4
  %conv.i = add nuw nsw i8 %div.i76, -48
  %21 = ptrtoint ptr %write_buf.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv.i, ptr %write_buf.i, align 1
  %22 = ptrtoint ptr %address.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv11, ptr %address.i, align 1
  %23 = ptrtoint ptr %length.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %20, ptr %length.i, align 1
  %24 = ptrtoint ptr %flag3.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 6, ptr %flag3.i, align 1
  %arrayidx.i = getelementptr i8, ptr %14, i32 %idx.0.i
  %25 = call ptr @memcpy(ptr %data4.i, ptr %arrayidx.i, i32 %19)
  %26 = load i32, ptr @ft260_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i53 = icmp eq i32 %26, 0
  br i1 %tobool.not.i53, label %do.body.i.do.end16.i_crit_edge, label %do.end.i

do.body.i.do.end16.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end16.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv10.i = zext i8 %conv.i to i32
  %27 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %14, align 1
  %conv13.i = zext i8 %28 to i32
  %call.i54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, i32 noundef %conv10.i, i32 noundef %conv11.i, i32 noundef %idx.0.i, i32 noundef %19, i32 noundef %conv13.i) #13
  br label %do.end16.i

do.end16.i:                                       ; preds = %do.end.i, %do.body.i.do.end16.i_crit_edge
  %add17.i = add nuw nsw i32 %19, 4
  %call18.i = tail call fastcc i32 @ft260_hid_output_report_check_status(ptr noundef %1, ptr noundef %write_buf.i, i32 noundef %add17.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %if.end16.thread, label %if.end26.i

if.end16.thread:                                  ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev25.i = getelementptr inbounds %struct.hid_device, ptr %18, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25.i, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.60, i32 noundef %call18.i) #13
  br label %i2c_exit

if.end26.i:                                       ; preds = %do.end16.i
  %sub27.i = sub nsw i32 %data_len.addr.0.i, %19
  %add28.i = add i32 %idx.0.i, %19
  %cmp30.i = icmp sgt i32 %sub27.i, 0
  br i1 %cmp30.i, label %if.end26.i.do.body.i_crit_edge, label %if.end26.i.if.end27_crit_edge

if.end26.i.if.end27_crit_edge:                    ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.end26.i.do.body.i_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

if.end16:                                         ; preds = %if.then6
  %call9 = tail call fastcc i32 @ft260_i2c_read(ptr noundef %1, i8 noundef zeroext %conv11, ptr noundef %14, i16 noundef zeroext %16, i8 noundef zeroext 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp17 = icmp slt i32 %call9, 0
  br i1 %cmp17, label %if.end16.i2c_exit_crit_edge, label %if.end16.if.end27_crit_edge

if.end16.if.end27_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.end16.i2c_exit_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %i2c_exit

if.else21:                                        ; preds = %if.end
  %len1.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 1, i32 2
  %29 = ptrtoint ptr %len1.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %len1.i, align 4
  %buf.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 1, i32 3
  %31 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buf.i, align 4
  %33 = ptrtoint ptr %msgs to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %msgs, align 4
  %conv.i55 = trunc i16 %34 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %read_off.i) #10
  %35 = ptrtoint ptr %read_off.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %read_off.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %36 = ptrtoint ptr %len7.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %len7.i, align 4
  %conv8.i = zext i16 %37 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %37)
  %cmp.i = icmp ugt i16 %37, 2
  br i1 %cmp.i, label %do.end.i56, label %if.end.i

do.end.i56:                                       ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hdev1, align 8
  %dev10.i = getelementptr inbounds %struct.hid_device, ptr %39, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10.i, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69, i32 noundef %conv8.i) #13
  br label %ft260_i2c_write_read.exit.thread

if.end.i:                                         ; preds = %if.else21
  %buf15.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %40 = ptrtoint ptr %buf15.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buf15.i, align 4
  %42 = call ptr @memcpy(ptr %read_off.i, ptr %41, i32 %conv8.i)
  %write_buf.i.i = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4
  %address.i.i = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4, i32 1
  %length.i.i = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4, i32 3
  %flag3.i.i = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4, i32 2
  %data4.i.i = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4, i32 4
  %conv.mask.i = and i16 %34, 255
  %conv11.i.i = zext i16 %conv.mask.i to i32
  br label %do.body19.i

do.body19.i:                                      ; preds = %if.end49.i.do.body19.i_crit_edge, %if.end.i
  %left_len.0.i = phi i16 [ %30, %if.end.i ], [ %conv51.i, %if.end49.i.do.body19.i_crit_edge ]
  %read_buf.0.i = phi ptr [ %32, %if.end.i ], [ %add.ptr.i, %if.end49.i.do.body19.i_crit_edge ]
  %conv20.i = zext i16 %left_len.0.i to i32
  %43 = tail call i32 @llvm.umin.i32(i32 %conv20.i, i32 60) #10
  %44 = load i32, ptr @ft260_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i57 = icmp eq i32 %44, 0
  br i1 %tobool.not.i57, label %do.body19.i.do.end35.i_crit_edge, label %do.end30.i

do.body19.i.do.end35.i_crit_edge:                 ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end35.i

do.end30.i:                                       ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %read_off.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %read_off.i, align 2
  %conv31.i = zext i16 %46 to i32
  %call.i58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.69, i32 noundef %conv31.i, i32 noundef %conv20.i, i32 noundef %43) #13
  br label %do.end35.i

do.end35.i:                                       ; preds = %do.end30.i, %do.body19.i.do.end35.i_crit_edge
  %47 = ptrtoint ptr %len7.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %len7.i, align 4
  %conv38.i = zext i16 %48 to i32
  %49 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hdev1, align 8
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end26.i.i.do.body.i.i_crit_edge, %do.end35.i
  %data_len.addr.0.i.i = phi i32 [ %conv38.i, %do.end35.i ], [ %sub27.i.i, %if.end26.i.i.do.body.i.i_crit_edge ]
  %idx.0.i.i = phi i32 [ 0, %do.end35.i ], [ %add28.i.i, %if.end26.i.i.do.body.i.i_crit_edge ]
  %51 = tail call i32 @llvm.smin.i32(i32 %data_len.addr.0.i.i, i32 60) #10
  %52 = trunc i32 %51 to i8
  %div.i.lhs.trunc.i = add nsw i8 %52, -1
  %div.i89.i = sdiv i8 %div.i.lhs.trunc.i, 4
  %conv.i.i = add nuw nsw i8 %div.i89.i, -48
  %53 = ptrtoint ptr %write_buf.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv.i.i, ptr %write_buf.i.i, align 1
  %54 = ptrtoint ptr %address.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv.i55, ptr %address.i.i, align 1
  %55 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %52, ptr %length.i.i, align 1
  %56 = ptrtoint ptr %flag3.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 2, ptr %flag3.i.i, align 1
  %arrayidx.i.i = getelementptr i8, ptr %read_off.i, i32 %idx.0.i.i
  %57 = call ptr @memcpy(ptr %data4.i.i, ptr %arrayidx.i.i, i32 %51)
  %58 = load i32, ptr @ft260_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i.i = icmp eq i32 %58, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.do.end16.i.i_crit_edge, label %do.end.i.i

do.body.i.i.do.end16.i.i_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end16.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv10.i.i = zext i8 %conv.i.i to i32
  %59 = ptrtoint ptr %read_off.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %read_off.i, align 2
  %conv13.i.i = zext i8 %60 to i32
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, i32 noundef %conv10.i.i, i32 noundef %conv11.i.i, i32 noundef %idx.0.i.i, i32 noundef %51, i32 noundef %conv13.i.i) #13
  br label %do.end16.i.i

do.end16.i.i:                                     ; preds = %do.end.i.i, %do.body.i.i.do.end16.i.i_crit_edge
  %add17.i.i = add nuw nsw i32 %51, 4
  %call18.i.i = tail call fastcc i32 @ft260_hid_output_report_check_status(ptr noundef %1, ptr noundef %write_buf.i.i, i32 noundef %add17.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %cmp19.i.i = icmp slt i32 %call18.i.i, 0
  br i1 %cmp19.i.i, label %ft260_i2c_write.exit.thread.i, label %if.end26.i.i

ft260_i2c_write.exit.thread.i:                    ; preds = %do.end16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev25.i.i = getelementptr inbounds %struct.hid_device, ptr %50, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25.i.i, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.60, i32 noundef %call18.i.i) #13
  br label %ft260_i2c_write_read.exit.thread

if.end26.i.i:                                     ; preds = %do.end16.i.i
  %sub27.i.i = sub nsw i32 %data_len.addr.0.i.i, %51
  %add28.i.i = add i32 %idx.0.i.i, %51
  %cmp30.i.i = icmp sgt i32 %sub27.i.i, 0
  br i1 %cmp30.i.i, label %if.end26.i.i.do.body.i.i_crit_edge, label %if.end43.i

if.end26.i.i.do.body.i.i_crit_edge:               ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

if.end43.i:                                       ; preds = %if.end26.i.i
  %conv44.i = trunc i32 %43 to i16
  %call45.i = tail call fastcc i32 @ft260_i2c_read(ptr noundef %1, i8 noundef zeroext %conv.i55, ptr noundef %read_buf.0.i, i16 noundef zeroext %conv44.i, i8 noundef zeroext 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %cmp46.i = icmp slt i32 %call45.i, 0
  br i1 %cmp46.i, label %if.end43.i.ft260_i2c_write_read.exit.thread_crit_edge, label %if.end49.i

if.end43.i.ft260_i2c_write_read.exit.thread_crit_edge: ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ft260_i2c_write_read.exit.thread

if.end49.i:                                       ; preds = %if.end43.i
  %conv51.i = sub i16 %left_len.0.i, %conv44.i
  %add.ptr.i = getelementptr i8, ptr %read_buf.0.i, i32 %43
  %61 = ptrtoint ptr %read_off.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %read_off.i, align 2
  %conv53.i = add i16 %62, %conv44.i
  store i16 %conv53.i, ptr %read_off.i, align 2
  %cmp56.not.i = icmp eq i16 %conv51.i, 0
  br i1 %cmp56.not.i, label %ft260_i2c_write_read.exit, label %if.end49.i.do.body19.i_crit_edge

if.end49.i.do.body19.i_crit_edge:                 ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body19.i

ft260_i2c_write_read.exit.thread:                 ; preds = %if.end43.i.ft260_i2c_write_read.exit.thread_crit_edge, %ft260_i2c_write.exit.thread.i, %do.end.i56
  %retval.0.i59.ph = phi i32 [ %call18.i.i, %ft260_i2c_write.exit.thread.i ], [ -95, %do.end.i56 ], [ %call45.i, %if.end43.i.ft260_i2c_write_read.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %read_off.i) #10
  br label %i2c_exit

ft260_i2c_write_read.exit:                        ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %read_off.i) #10
  br label %if.end27

if.end27:                                         ; preds = %ft260_i2c_write_read.exit, %if.end16.if.end27_crit_edge, %if.end26.i.if.end27_crit_edge
  br label %i2c_exit

i2c_exit:                                         ; preds = %if.end27, %ft260_i2c_write_read.exit.thread, %if.end16.i2c_exit_crit_edge, %if.end16.thread
  %ret.1 = phi i32 [ %call9, %if.end16.i2c_exit_crit_edge ], [ %num, %if.end27 ], [ %call18.i, %if.end16.thread ], [ %retval.0.i59.ph, %ft260_i2c_write_read.exit.thread ]
  %63 = ptrtoint ptr %ll_driver.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ll_driver.i, align 4
  %power.i61 = getelementptr inbounds %struct.hid_ll_driver, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %power.i61 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %power.i61, align 4
  %tobool.not.i62 = icmp eq ptr %66, null
  br i1 %tobool.not.i62, label %i2c_exit.cleanup_crit_edge, label %cond.true.i64

i2c_exit.cleanup_crit_edge:                       ; preds = %i2c_exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.true.i64:                                    ; preds = %i2c_exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i63 = tail call i32 %66(ptr noundef %3, i32 noundef 2) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.true.i64, %i2c_exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %ret.1, %i2c_exit.cleanup_crit_edge ], [ %ret.1, %cond.true.i64 ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ft260_smbus_xfer(ptr nocapture noundef readonly %adapter, i16 noundef zeroext %addr, i16 noundef zeroext %flags, i8 noundef zeroext %read_write, i8 noundef zeroext %cmd, i32 noundef %size, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hdev1 = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev1, align 8
  %4 = load i32, ptr @ft260_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74, i32 noundef %size) #13
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %lock = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %ll_driver.i = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 20
  %5 = ptrtoint ptr %ll_driver.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ll_driver.i, align 4
  %power.i = getelementptr inbounds %struct.hid_ll_driver, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %power.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %power.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %do.end5.if.end13_crit_edge, label %hid_hw_power.exit

do.end5.if.end13_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

hid_hw_power.exit:                                ; preds = %do.end5
  %call.i = tail call i32 %8(ptr noundef %3, i32 noundef 32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end10, label %hid_hw_power.exit.if.end13_crit_edge

hid_hw_power.exit.if.end13_crit_edge:             ; preds = %hid_hw_power.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

do.end10:                                         ; preds = %hid_hw_power.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dev11 = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.76, i32 noundef %call.i) #13
  br label %cleanup

if.end13:                                         ; preds = %hid_hw_power.exit.if.end13_crit_edge, %do.end5.if.end13_crit_edge
  %9 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %size, label %do.end112 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb22
    i32 2, label %sw.bb33
    i32 3, label %sw.bb49
    i32 5, label %sw.bb65
    i32 8, label %sw.bb88
  ]

sw.bb:                                            ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %read_write)
  %cmp14 = icmp eq i8 %read_write, 1
  %conv17 = trunc i16 %addr to i8
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %call18 = tail call fastcc i32 @ft260_i2c_read(ptr noundef %1, i8 noundef zeroext %conv17, ptr noundef %data, i16 noundef zeroext 0, i8 noundef zeroext 6)
  br label %smbus_exit

if.else:                                          ; preds = %sw.bb
  %write_buf.i = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4
  %address.i = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %address.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv17, ptr %address.i, align 1
  %data2.i = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4, i32 4
  %11 = ptrtoint ptr %data2.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %cmd, ptr %data2.i, align 1
  %length.i = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4, i32 3
  %12 = ptrtoint ptr %length.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %length.i, align 1
  %flag5.i = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4, i32 2
  %13 = ptrtoint ptr %flag5.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 6, ptr %flag5.i, align 1
  %14 = ptrtoint ptr %write_buf.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -47, ptr %write_buf.i, align 1
  %15 = load i32, ptr @ft260_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i191 = icmp eq i32 %15, 0
  br i1 %tobool.not.i191, label %if.else.ft260_smbus_write.exit_crit_edge, label %do.end.i

if.else.ft260_smbus_write.exit_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %ft260_smbus_write.exit

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %conv19.mask = and i16 %addr, 255
  %conv23.i = zext i16 %conv19.mask to i32
  %conv24.i = zext i8 %cmd to i32
  %call.i192 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82, i32 noundef 209, i32 noundef %conv23.i, i32 noundef %conv24.i, i32 noundef 1, i32 noundef 5) #13
  br label %ft260_smbus_write.exit

ft260_smbus_write.exit:                           ; preds = %do.end.i, %if.else.ft260_smbus_write.exit_crit_edge
  %call30.i = tail call fastcc i32 @ft260_hid_output_report_check_status(ptr noundef %1, ptr noundef %write_buf.i, i32 noundef 5) #10
  br label %smbus_exit

sw.bb22:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %read_write)
  %cmp24 = icmp eq i8 %read_write, 1
  %conv27 = trunc i16 %addr to i8
  br i1 %cmp24, label %if.then26, label %if.else29

if.then26:                                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #12
  %call28 = tail call fastcc i32 @ft260_i2c_read(ptr noundef %1, i8 noundef zeroext %conv27, ptr noundef %data, i16 noundef zeroext 1, i8 noundef zeroext 6)
  br label %smbus_exit

if.else29:                                        ; preds = %sw.bb22
  %write_buf.i193 = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4
  %address.i194 = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %address.i194 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv27, ptr %address.i194, align 1
  %data2.i195 = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4, i32 4
  %17 = ptrtoint ptr %data2.i195 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %cmd, ptr %data2.i195, align 1
  %length.i196 = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4, i32 3
  %18 = ptrtoint ptr %length.i196 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %length.i196, align 1
  %flag5.i197 = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4, i32 2
  %19 = ptrtoint ptr %flag5.i197 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 6, ptr %flag5.i197, align 1
  %20 = ptrtoint ptr %write_buf.i193 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -47, ptr %write_buf.i193, align 1
  %21 = load i32, ptr @ft260_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i198 = icmp eq i32 %21, 0
  br i1 %tobool.not.i198, label %if.else29.ft260_smbus_write.exit204_crit_edge, label %do.end.i202

if.else29.ft260_smbus_write.exit204_crit_edge:    ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #12
  br label %ft260_smbus_write.exit204

do.end.i202:                                      ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #12
  %conv30.mask = and i16 %addr, 255
  %conv23.i199 = zext i16 %conv30.mask to i32
  %conv24.i200 = zext i8 %cmd to i32
  %call.i201 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82, i32 noundef 209, i32 noundef %conv23.i199, i32 noundef %conv24.i200, i32 noundef 1, i32 noundef 5) #13
  br label %ft260_smbus_write.exit204

ft260_smbus_write.exit204:                        ; preds = %do.end.i202, %if.else29.ft260_smbus_write.exit204_crit_edge
  %call30.i203 = tail call fastcc i32 @ft260_hid_output_report_check_status(ptr noundef %1, ptr noundef %write_buf.i193, i32 noundef 5) #10
  br label %smbus_exit

sw.bb33:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %read_write)
  %cmp35 = icmp eq i8 %read_write, 1
  %conv38 = trunc i16 %addr to i8
  %write_buf.i205 = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4
  %address.i206 = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %address.i206 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv38, ptr %address.i206, align 1
  %data2.i207 = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4, i32 4
  %23 = ptrtoint ptr %data2.i207 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %cmd, ptr %data2.i207, align 1
  %length.i208 = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4, i32 3
  br i1 %cmp35, label %if.then37, label %if.else45

if.then37:                                        ; preds = %sw.bb33
  %24 = ptrtoint ptr %length.i208 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %length.i208, align 1
  %flag5.i209 = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4, i32 2
  %25 = ptrtoint ptr %flag5.i209 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %flag5.i209, align 1
  %26 = ptrtoint ptr %write_buf.i205 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -47, ptr %write_buf.i205, align 1
  %27 = load i32, ptr @ft260_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i210 = icmp eq i32 %27, 0
  br i1 %tobool.not.i210, label %if.then37.ft260_smbus_write.exit216_crit_edge, label %do.end.i214

if.then37.ft260_smbus_write.exit216_crit_edge:    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  br label %ft260_smbus_write.exit216

do.end.i214:                                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  %conv38.mask = and i16 %addr, 255
  %conv23.i211 = zext i16 %conv38.mask to i32
  %conv24.i212 = zext i8 %cmd to i32
  %call.i213 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82, i32 noundef 209, i32 noundef %conv23.i211, i32 noundef %conv24.i212, i32 noundef 1, i32 noundef 5) #13
  br label %ft260_smbus_write.exit216

ft260_smbus_write.exit216:                        ; preds = %do.end.i214, %if.then37.ft260_smbus_write.exit216_crit_edge
  %call30.i215 = tail call fastcc i32 @ft260_hid_output_report_check_status(ptr noundef %1, ptr noundef %write_buf.i205, i32 noundef 5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i215)
  %tobool40.not = icmp eq i32 %call30.i215, 0
  br i1 %tobool40.not, label %if.end42, label %ft260_smbus_write.exit216.smbus_exit_crit_edge

ft260_smbus_write.exit216.smbus_exit_crit_edge:   ; preds = %ft260_smbus_write.exit216
  call void @__sanitizer_cov_trace_pc() #12
  br label %smbus_exit

if.end42:                                         ; preds = %ft260_smbus_write.exit216
  call void @__sanitizer_cov_trace_pc() #12
  %call44 = tail call fastcc i32 @ft260_i2c_read(ptr noundef %1, i8 noundef zeroext %conv38, ptr noundef %data, i16 noundef zeroext 1, i8 noundef zeroext 7)
  br label %smbus_exit

if.else45:                                        ; preds = %sw.bb33
  %28 = ptrtoint ptr %length.i208 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 2, ptr %length.i208, align 1
  %flag5.i221 = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4, i32 2
  %29 = ptrtoint ptr %flag5.i221 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 6, ptr %flag5.i221, align 1
  %30 = ptrtoint ptr %write_buf.i205 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -47, ptr %write_buf.i205, align 1
  %arrayidx16.i = getelementptr %struct.ft260_device, ptr %1, i32 0, i32 4, i32 5
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %data, align 1
  %33 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %arrayidx16.i, align 1
  %34 = load i32, ptr @ft260_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i222 = icmp eq i32 %34, 0
  br i1 %tobool.not.i222, label %if.else45.ft260_smbus_write.exit228_crit_edge, label %do.end.i226

if.else45.ft260_smbus_write.exit228_crit_edge:    ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #12
  br label %ft260_smbus_write.exit228

do.end.i226:                                      ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #12
  %conv46.mask = and i16 %addr, 255
  %conv23.i223 = zext i16 %conv46.mask to i32
  %conv24.i224 = zext i8 %cmd to i32
  %call.i225 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82, i32 noundef 209, i32 noundef %conv23.i223, i32 noundef %conv24.i224, i32 noundef 2, i32 noundef 6) #13
  br label %ft260_smbus_write.exit228

ft260_smbus_write.exit228:                        ; preds = %do.end.i226, %if.else45.ft260_smbus_write.exit228_crit_edge
  %call30.i227 = tail call fastcc i32 @ft260_hid_output_report_check_status(ptr noundef %1, ptr noundef %write_buf.i205, i32 noundef 6) #10
  br label %smbus_exit

sw.bb49:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %read_write)
  %cmp51 = icmp eq i8 %read_write, 1
  %conv54 = trunc i16 %addr to i8
  %write_buf.i229 = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4
  %address.i230 = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %address.i230 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv54, ptr %address.i230, align 1
  %data2.i231 = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4, i32 4
  %36 = ptrtoint ptr %data2.i231 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %cmd, ptr %data2.i231, align 1
  %length.i232 = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4, i32 3
  br i1 %cmp51, label %if.then53, label %if.else61

if.then53:                                        ; preds = %sw.bb49
  %37 = ptrtoint ptr %length.i232 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %length.i232, align 1
  %flag5.i233 = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4, i32 2
  %38 = ptrtoint ptr %flag5.i233 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 2, ptr %flag5.i233, align 1
  %39 = ptrtoint ptr %write_buf.i229 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -47, ptr %write_buf.i229, align 1
  %40 = load i32, ptr @ft260_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i234 = icmp eq i32 %40, 0
  br i1 %tobool.not.i234, label %if.then53.ft260_smbus_write.exit240_crit_edge, label %do.end.i238

if.then53.ft260_smbus_write.exit240_crit_edge:    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %ft260_smbus_write.exit240

do.end.i238:                                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  %conv54.mask = and i16 %addr, 255
  %conv23.i235 = zext i16 %conv54.mask to i32
  %conv24.i236 = zext i8 %cmd to i32
  %call.i237 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82, i32 noundef 209, i32 noundef %conv23.i235, i32 noundef %conv24.i236, i32 noundef 1, i32 noundef 5) #13
  br label %ft260_smbus_write.exit240

ft260_smbus_write.exit240:                        ; preds = %do.end.i238, %if.then53.ft260_smbus_write.exit240_crit_edge
  %call30.i239 = tail call fastcc i32 @ft260_hid_output_report_check_status(ptr noundef %1, ptr noundef %write_buf.i229, i32 noundef 5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i239)
  %tobool56.not = icmp eq i32 %call30.i239, 0
  br i1 %tobool56.not, label %if.end58, label %ft260_smbus_write.exit240.smbus_exit_crit_edge

ft260_smbus_write.exit240.smbus_exit_crit_edge:   ; preds = %ft260_smbus_write.exit240
  call void @__sanitizer_cov_trace_pc() #12
  br label %smbus_exit

if.end58:                                         ; preds = %ft260_smbus_write.exit240
  call void @__sanitizer_cov_trace_pc() #12
  %call60 = tail call fastcc i32 @ft260_i2c_read(ptr noundef %1, i8 noundef zeroext %conv54, ptr noundef %data, i16 noundef zeroext 2, i8 noundef zeroext 7)
  br label %smbus_exit

if.else61:                                        ; preds = %sw.bb49
  %41 = ptrtoint ptr %length.i232 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 3, ptr %length.i232, align 1
  %flag5.i245 = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4, i32 2
  %42 = ptrtoint ptr %flag5.i245 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 6, ptr %flag5.i245, align 1
  %43 = ptrtoint ptr %write_buf.i229 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -47, ptr %write_buf.i229, align 1
  %arrayidx16.i246 = getelementptr %struct.ft260_device, ptr %1, i32 0, i32 4, i32 5
  %44 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %data, align 1
  %46 = ptrtoint ptr %arrayidx16.i246 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 2)
  store i16 %45, ptr %arrayidx16.i246, align 1
  %47 = load i32, ptr @ft260_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i247 = icmp eq i32 %47, 0
  br i1 %tobool.not.i247, label %if.else61.ft260_smbus_write.exit253_crit_edge, label %do.end.i251

if.else61.ft260_smbus_write.exit253_crit_edge:    ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #12
  br label %ft260_smbus_write.exit253

do.end.i251:                                      ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #12
  %conv62.mask = and i16 %addr, 255
  %conv23.i248 = zext i16 %conv62.mask to i32
  %conv24.i249 = zext i8 %cmd to i32
  %call.i250 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82, i32 noundef 209, i32 noundef %conv23.i248, i32 noundef %conv24.i249, i32 noundef 3, i32 noundef 7) #13
  br label %ft260_smbus_write.exit253

ft260_smbus_write.exit253:                        ; preds = %do.end.i251, %if.else61.ft260_smbus_write.exit253_crit_edge
  %call30.i252 = tail call fastcc i32 @ft260_hid_output_report_check_status(ptr noundef %1, ptr noundef %write_buf.i229, i32 noundef 7) #10
  br label %smbus_exit

sw.bb65:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %read_write)
  %cmp67 = icmp eq i8 %read_write, 1
  br i1 %cmp67, label %if.then69, label %if.else79

if.then69:                                        ; preds = %sw.bb65
  %conv70 = trunc i16 %addr to i8
  %write_buf.i254 = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4
  %address.i255 = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4, i32 1
  %48 = ptrtoint ptr %address.i255 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv70, ptr %address.i255, align 1
  %data2.i256 = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4, i32 4
  %49 = ptrtoint ptr %data2.i256 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %cmd, ptr %data2.i256, align 1
  %length.i257 = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4, i32 3
  %50 = ptrtoint ptr %length.i257 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %length.i257, align 1
  %flag5.i258 = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4, i32 2
  %51 = ptrtoint ptr %flag5.i258 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 2, ptr %flag5.i258, align 1
  %52 = ptrtoint ptr %write_buf.i254 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -47, ptr %write_buf.i254, align 1
  %53 = load i32, ptr @ft260_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i259 = icmp eq i32 %53, 0
  br i1 %tobool.not.i259, label %if.then69.ft260_smbus_write.exit265_crit_edge, label %do.end.i263

if.then69.ft260_smbus_write.exit265_crit_edge:    ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  br label %ft260_smbus_write.exit265

do.end.i263:                                      ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  %conv70.mask = and i16 %addr, 255
  %conv23.i260 = zext i16 %conv70.mask to i32
  %conv24.i261 = zext i8 %cmd to i32
  %call.i262 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82, i32 noundef 209, i32 noundef %conv23.i260, i32 noundef %conv24.i261, i32 noundef 1, i32 noundef 5) #13
  br label %ft260_smbus_write.exit265

ft260_smbus_write.exit265:                        ; preds = %do.end.i263, %if.then69.ft260_smbus_write.exit265_crit_edge
  %call30.i264 = tail call fastcc i32 @ft260_hid_output_report_check_status(ptr noundef %1, ptr noundef %write_buf.i254, i32 noundef 5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i264)
  %tobool72.not = icmp eq i32 %call30.i264, 0
  br i1 %tobool72.not, label %if.end74, label %ft260_smbus_write.exit265.smbus_exit_crit_edge

ft260_smbus_write.exit265.smbus_exit_crit_edge:   ; preds = %ft260_smbus_write.exit265
  call void @__sanitizer_cov_trace_pc() #12
  br label %smbus_exit

if.end74:                                         ; preds = %ft260_smbus_write.exit265
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %data, align 2
  %conv76 = zext i8 %55 to i16
  %add = add nuw nsw i16 %conv76, 1
  %call78 = tail call fastcc i32 @ft260_i2c_read(ptr noundef %1, i8 noundef zeroext %conv70, ptr noundef %data, i16 noundef zeroext %add, i8 noundef zeroext 7)
  br label %smbus_exit

if.else79:                                        ; preds = %sw.bb65
  %56 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %data, align 2
  %add84 = add i8 %57, 1
  %write_buf.i266 = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4
  %conv.i = zext i8 %add84 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 59, i8 %add84)
  %cmp.i = icmp ugt i8 %add84, 59
  br i1 %cmp.i, label %if.else79.smbus_exit_crit_edge, label %if.end.i

if.else79.smbus_exit_crit_edge:                   ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #12
  br label %smbus_exit

if.end.i:                                         ; preds = %if.else79
  %conv80 = trunc i16 %addr to i8
  %address.i267 = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4, i32 1
  %58 = ptrtoint ptr %address.i267 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv80, ptr %address.i267, align 1
  %data2.i268 = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4, i32 4
  %59 = ptrtoint ptr %data2.i268 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %cmd, ptr %data2.i268, align 1
  %add.i = add nsw i8 %57, 2
  %length.i269 = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4, i32 3
  %60 = ptrtoint ptr %length.i269 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %add.i, ptr %length.i269, align 1
  %flag5.i270 = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4, i32 2
  %61 = ptrtoint ptr %flag5.i270 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 6, ptr %flag5.i270, align 1
  %conv7.i = zext i8 %add.i to i32
  %add8.i = add nuw nsw i32 %conv7.i, 4
  %sub.i = add nuw nsw i32 %conv7.i, 3
  %div51.i = lshr i32 %sub.i, 2
  %62 = trunc i32 %div51.i to i8
  %conv10.i = add nuw nsw i8 %62, -48
  %63 = ptrtoint ptr %write_buf.i266 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv10.i, ptr %write_buf.i266, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add84)
  %cmp12.not.i = icmp eq i8 %add84, 0
  br i1 %cmp12.not.i, label %if.end.i.do.body.i_crit_edge, label %if.then14.i

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx16.i271 = getelementptr %struct.ft260_device, ptr %1, i32 0, i32 4, i32 5
  %64 = call ptr @memcpy(ptr %arrayidx16.i271, ptr %data, i32 %conv.i)
  br label %do.body.i

do.body.i:                                        ; preds = %if.then14.i, %if.end.i.do.body.i_crit_edge
  %65 = load i32, ptr @ft260_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i272 = icmp eq i32 %65, 0
  br i1 %tobool.not.i272, label %do.body.i.do.end29.i_crit_edge, label %do.end.i276

do.body.i.do.end29.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end29.i

do.end.i276:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv22.i = zext i8 %conv10.i to i32
  %conv80.mask = and i16 %addr, 255
  %conv23.i273 = zext i16 %conv80.mask to i32
  %conv24.i274 = zext i8 %cmd to i32
  %call.i275 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82, i32 noundef %conv22.i, i32 noundef %conv23.i273, i32 noundef %conv24.i274, i32 noundef %conv7.i, i32 noundef %add8.i) #13
  br label %do.end29.i

do.end29.i:                                       ; preds = %do.end.i276, %do.body.i.do.end29.i_crit_edge
  %call30.i277 = tail call fastcc i32 @ft260_hid_output_report_check_status(ptr noundef %1, ptr noundef %write_buf.i266, i32 noundef %add8.i) #10
  br label %smbus_exit

sw.bb88:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %read_write)
  %cmp90 = icmp eq i8 %read_write, 1
  br i1 %cmp90, label %if.then92, label %if.else103

if.then92:                                        ; preds = %sw.bb88
  %conv93 = trunc i16 %addr to i8
  %write_buf.i279 = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4
  %address.i280 = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4, i32 1
  %66 = ptrtoint ptr %address.i280 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv93, ptr %address.i280, align 1
  %data2.i281 = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4, i32 4
  %67 = ptrtoint ptr %data2.i281 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %cmd, ptr %data2.i281, align 1
  %length.i282 = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4, i32 3
  %68 = ptrtoint ptr %length.i282 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %length.i282, align 1
  %flag5.i283 = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4, i32 2
  %69 = ptrtoint ptr %flag5.i283 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 2, ptr %flag5.i283, align 1
  %70 = ptrtoint ptr %write_buf.i279 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 -47, ptr %write_buf.i279, align 1
  %71 = load i32, ptr @ft260_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i285 = icmp eq i32 %71, 0
  br i1 %tobool.not.i285, label %if.then92.ft260_smbus_write.exit294_crit_edge, label %do.end.i290

if.then92.ft260_smbus_write.exit294_crit_edge:    ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #12
  br label %ft260_smbus_write.exit294

do.end.i290:                                      ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #12
  %conv93.mask = and i16 %addr, 255
  %conv23.i287 = zext i16 %conv93.mask to i32
  %conv24.i288 = zext i8 %cmd to i32
  %call.i289 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82, i32 noundef 209, i32 noundef %conv23.i287, i32 noundef %conv24.i288, i32 noundef 1, i32 noundef 5) #13
  br label %ft260_smbus_write.exit294

ft260_smbus_write.exit294:                        ; preds = %do.end.i290, %if.then92.ft260_smbus_write.exit294_crit_edge
  %call30.i291 = tail call fastcc i32 @ft260_hid_output_report_check_status(ptr noundef %1, ptr noundef %write_buf.i279, i32 noundef 5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i291)
  %tobool95.not = icmp eq i32 %call30.i291, 0
  br i1 %tobool95.not, label %if.end97, label %ft260_smbus_write.exit294.smbus_exit_crit_edge

ft260_smbus_write.exit294.smbus_exit_crit_edge:   ; preds = %ft260_smbus_write.exit294
  call void @__sanitizer_cov_trace_pc() #12
  br label %smbus_exit

if.end97:                                         ; preds = %ft260_smbus_write.exit294
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %data, i32 1
  %72 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %data, align 2
  %conv101 = zext i8 %73 to i16
  %call102 = tail call fastcc i32 @ft260_i2c_read(ptr noundef %1, i8 noundef zeroext %conv93, ptr noundef %add.ptr, i16 noundef zeroext %conv101, i8 noundef zeroext 7)
  br label %smbus_exit

if.else103:                                       ; preds = %sw.bb88
  %add.ptr106 = getelementptr i8, ptr %data, i32 1
  %74 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %data, align 2
  %write_buf.i295 = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4
  %conv.i296 = zext i8 %75 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 59, i8 %75)
  %cmp.i297 = icmp ugt i8 %75, 59
  br i1 %cmp.i297, label %if.else103.smbus_exit_crit_edge, label %if.end.i309

if.else103.smbus_exit_crit_edge:                  ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #12
  br label %smbus_exit

if.end.i309:                                      ; preds = %if.else103
  %conv104 = trunc i16 %addr to i8
  %address.i298 = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4, i32 1
  %76 = ptrtoint ptr %address.i298 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv104, ptr %address.i298, align 1
  %data2.i299 = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4, i32 4
  %77 = ptrtoint ptr %data2.i299 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %cmd, ptr %data2.i299, align 1
  %add.i300 = add nuw nsw i8 %75, 1
  %length.i301 = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4, i32 3
  %78 = ptrtoint ptr %length.i301 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %add.i300, ptr %length.i301, align 1
  %flag5.i302 = getelementptr inbounds %struct.ft260_device, ptr %1, i32 0, i32 4, i32 2
  %79 = ptrtoint ptr %flag5.i302 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 6, ptr %flag5.i302, align 1
  %conv7.i303 = zext i8 %add.i300 to i32
  %add8.i304 = add nuw nsw i32 %conv7.i303, 4
  %sub.i305 = add nuw nsw i32 %conv7.i303, 3
  %div51.i306 = lshr i32 %sub.i305, 2
  %80 = trunc i32 %div51.i306 to i8
  %conv10.i307 = add nuw nsw i8 %80, -48
  %81 = ptrtoint ptr %write_buf.i295 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv10.i307, ptr %write_buf.i295, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %cmp12.not.i308 = icmp eq i8 %75, 0
  br i1 %cmp12.not.i308, label %if.end.i309.do.body.i313_crit_edge, label %if.then14.i311

if.end.i309.do.body.i313_crit_edge:               ; preds = %if.end.i309
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i313

if.then14.i311:                                   ; preds = %if.end.i309
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx16.i310 = getelementptr %struct.ft260_device, ptr %1, i32 0, i32 4, i32 5
  %82 = call ptr @memcpy(ptr %arrayidx16.i310, ptr %add.ptr106, i32 %conv.i296)
  br label %do.body.i313

do.body.i313:                                     ; preds = %if.then14.i311, %if.end.i309.do.body.i313_crit_edge
  %83 = load i32, ptr @ft260_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool.not.i312 = icmp eq i32 %83, 0
  br i1 %tobool.not.i312, label %do.body.i313.do.end29.i320_crit_edge, label %do.end.i318

do.body.i313.do.end29.i320_crit_edge:             ; preds = %do.body.i313
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end29.i320

do.end.i318:                                      ; preds = %do.body.i313
  call void @__sanitizer_cov_trace_pc() #12
  %conv22.i314 = zext i8 %conv10.i307 to i32
  %conv104.mask = and i16 %addr, 255
  %conv23.i315 = zext i16 %conv104.mask to i32
  %conv24.i316 = zext i8 %cmd to i32
  %call.i317 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82, i32 noundef %conv22.i314, i32 noundef %conv23.i315, i32 noundef %conv24.i316, i32 noundef %conv7.i303, i32 noundef %add8.i304) #13
  br label %do.end29.i320

do.end29.i320:                                    ; preds = %do.end.i318, %do.body.i313.do.end29.i320_crit_edge
  %call30.i319 = tail call fastcc i32 @ft260_hid_output_report_check_status(ptr noundef %1, ptr noundef %write_buf.i295, i32 noundef %add8.i304) #10
  br label %smbus_exit

do.end112:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %dev113 = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev113, ptr noundef nonnull @.str.79, i32 noundef %size) #13
  br label %smbus_exit

smbus_exit:                                       ; preds = %do.end112, %do.end29.i320, %if.else103.smbus_exit_crit_edge, %if.end97, %ft260_smbus_write.exit294.smbus_exit_crit_edge, %do.end29.i, %if.else79.smbus_exit_crit_edge, %if.end74, %ft260_smbus_write.exit265.smbus_exit_crit_edge, %ft260_smbus_write.exit253, %if.end58, %ft260_smbus_write.exit240.smbus_exit_crit_edge, %ft260_smbus_write.exit228, %if.end42, %ft260_smbus_write.exit216.smbus_exit_crit_edge, %ft260_smbus_write.exit204, %if.then26, %ft260_smbus_write.exit, %if.then16
  %ret.0 = phi i32 [ -95, %do.end112 ], [ %call30.i291, %ft260_smbus_write.exit294.smbus_exit_crit_edge ], [ %call102, %if.end97 ], [ %call30.i264, %ft260_smbus_write.exit265.smbus_exit_crit_edge ], [ %call78, %if.end74 ], [ %call30.i239, %ft260_smbus_write.exit240.smbus_exit_crit_edge ], [ %call60, %if.end58 ], [ %call30.i252, %ft260_smbus_write.exit253 ], [ %call30.i215, %ft260_smbus_write.exit216.smbus_exit_crit_edge ], [ %call44, %if.end42 ], [ %call30.i227, %ft260_smbus_write.exit228 ], [ %call28, %if.then26 ], [ %call30.i203, %ft260_smbus_write.exit204 ], [ %call18, %if.then16 ], [ %call30.i, %ft260_smbus_write.exit ], [ %call30.i277, %do.end29.i ], [ -22, %if.else79.smbus_exit_crit_edge ], [ %call30.i319, %do.end29.i320 ], [ -22, %if.else103.smbus_exit_crit_edge ]
  %84 = ptrtoint ptr %ll_driver.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ll_driver.i, align 4
  %power.i324 = getelementptr inbounds %struct.hid_ll_driver, ptr %85, i32 0, i32 4
  %86 = ptrtoint ptr %power.i324 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %power.i324, align 4
  %tobool.not.i325 = icmp eq ptr %87, null
  br i1 %tobool.not.i325, label %smbus_exit.cleanup_crit_edge, label %cond.true.i327

smbus_exit.cleanup_crit_edge:                     ; preds = %smbus_exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.true.i327:                                   ; preds = %smbus_exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i326 = tail call i32 %87(ptr noundef %3, i32 noundef 2) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.true.i327, %smbus_exit.cleanup_crit_edge, %do.end10
  %retval.0 = phi i32 [ %call.i, %do.end10 ], [ %ret.0, %smbus_exit.cleanup_crit_edge ], [ %ret.0, %cond.true.i327 ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ft260_functionality(ptr nocapture noundef readnone %adap) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 259981313
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ft260_i2c_read(ptr noundef %dev, i8 noundef zeroext %addr, ptr noundef %data, i16 noundef zeroext %len, i8 noundef zeroext %flag) unnamed_addr #2 align 64 {
entry:
  %rep = alloca %struct.ft260_i2c_read_request_report, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %rep) #10
  %hdev1 = getelementptr inbounds %struct.ft260_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 60, i16 %len)
  %cmp = icmp ugt i16 %len, 60
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i16 %len to i32
  %dev3 = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i32 noundef %conv) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.ft260_i2c_read_request_report, ptr %rep, i32 0, i32 3
  %3 = getelementptr inbounds %struct.ft260_i2c_read_request_report, ptr %rep, i32 0, i32 2
  %4 = getelementptr inbounds %struct.ft260_i2c_read_request_report, ptr %rep, i32 0, i32 1
  %read_idx = getelementptr inbounds %struct.ft260_device, ptr %dev, i32 0, i32 6
  %5 = ptrtoint ptr %read_idx to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %read_idx, align 4
  %read_buf = getelementptr inbounds %struct.ft260_device, ptr %dev, i32 0, i32 5
  %6 = ptrtoint ptr %read_buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %data, ptr %read_buf, align 8
  %read_len = getelementptr inbounds %struct.ft260_device, ptr %dev, i32 0, i32 7
  %7 = ptrtoint ptr %read_len to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %len, ptr %read_len, align 2
  %8 = ptrtoint ptr %rep to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -62, ptr %rep, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %len)
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %9, ptr %2, align 1
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %addr, ptr %4, align 1
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %flag, ptr %3, align 1
  %13 = load i32, ptr @ft260_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.end.do.end19_crit_edge, label %do.end10

if.end.do.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv14 = zext i8 %addr to i32
  %conv16 = zext i16 %9 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.52, i32 noundef 194, i32 noundef %conv14, i32 noundef %conv16) #13
  br label %do.end19

do.end19:                                         ; preds = %do.end10, %if.end.do.end19_crit_edge
  %wait = getelementptr inbounds %struct.ft260_device, ptr %dev, i32 0, i32 2
  %14 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %wait, align 4
  %call.i = call ptr @kmemdup(ptr noundef nonnull %rep, i32 noundef 5, i32 noundef 3264) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end19.do.end26_crit_edge, label %ft260_hid_output_report.exit

do.end19.do.end26_crit_edge:                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end26

ft260_hid_output_report.exit:                     ; preds = %do.end19
  %call1.i = call i32 @hid_hw_output_report(ptr noundef %1, ptr noundef nonnull %call.i, i32 noundef 5) #10
  call void @kfree(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp21 = icmp slt i32 %call1.i, 0
  br i1 %cmp21, label %ft260_hid_output_report.exit.do.end26_crit_edge, label %if.end28

ft260_hid_output_report.exit.do.end26_crit_edge:  ; preds = %ft260_hid_output_report.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end26

do.end26:                                         ; preds = %ft260_hid_output_report.exit.do.end26_crit_edge, %do.end19.do.end26_crit_edge
  %retval.0.i63 = phi i32 [ %call1.i, %ft260_hid_output_report.exit.do.end26_crit_edge ], [ -12, %do.end19.do.end26_crit_edge ]
  %dev27 = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.52, i32 noundef %retval.0.i63) #13
  br label %cleanup

if.end28:                                         ; preds = %ft260_hid_output_report.exit
  %call31 = call i32 @wait_for_completion_timeout(ptr noundef %wait, i32 noundef 500) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %call34 = call fastcc i32 @ft260_i2c_reset(ptr noundef %1)
  br label %cleanup

if.end35:                                         ; preds = %if.end28
  %call36 = call fastcc i32 @ft260_xfer_status(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %if.end35.cleanup_crit_edge, label %if.end40

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end40:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %call41 = call fastcc i32 @ft260_i2c_reset(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.end35.cleanup_crit_edge, %if.then33, %do.end26, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %retval.0.i63, %do.end26 ], [ -5, %if.end40 ], [ -110, %if.then33 ], [ 0, %if.end35.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %rep) #10
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_output_report(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ft260_hid_output_report_check_status(ptr nocapture noundef %dev, ptr noundef %data, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.ft260_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 8
  %call.i = tail call ptr @kmemdup(ptr noundef %data, i32 noundef %len, i32 noundef 3264) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %ft260_hid_output_report.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

ft260_hid_output_report.exit:                     ; preds = %entry
  %call1.i = tail call i32 @hid_hw_output_report(ptr noundef %1, ptr noundef nonnull %call.i, i32 noundef %len) #10
  tail call void @kfree(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %ft260_hid_output_report.exit.do.end_crit_edge, label %if.end

ft260_hid_output_report.exit.do.end_crit_edge:    ; preds = %ft260_hid_output_report.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %ft260_hid_output_report.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %retval.0.i48 = phi i32 [ %call1.i, %ft260_hid_output_report.exit.do.end_crit_edge ], [ -12, %entry.do.end_crit_edge ]
  %dev2 = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.64, i32 noundef %retval.0.i48) #13
  br label %cleanup.sink.split

if.end:                                           ; preds = %ft260_hid_output_report.exit
  %clock = getelementptr inbounds %struct.ft260_device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %clock to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %clock, align 8
  %4 = udiv i16 10000, %3
  %div = zext i16 %4 to i32
  %mul = mul i32 %div, %len
  %add = add i32 %mul, 100
  tail call void @usleep_range_state(i32 noundef %mul, i32 noundef %add, i32 noundef 2) #10
  %5 = load i32, ptr @ft260_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end.do.body13_crit_edge, label %do.end8

if.end.do.body13_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body13

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.64, i32 noundef %mul, i32 noundef %len) #13
  br label %do.body13

do.body13:                                        ; preds = %do.end8, %if.end.do.body13_crit_edge
  %call14 = tail call fastcc i32 @ft260_xfer_status(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call14)
  %cmp15.not.not = icmp eq i32 %call14, -11
  br i1 %cmp15.not.not, label %do.body13.1, label %do.body13.do.end21_crit_edge

do.body13.do.end21_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end21

do.body13.1:                                      ; preds = %do.body13
  %call14.1 = tail call fastcc i32 @ft260_xfer_status(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call14.1)
  %cmp15.not.1.not = icmp eq i32 %call14.1, -11
  br i1 %cmp15.not.1.not, label %do.body13.2, label %do.body13.1.do.end21_crit_edge

do.body13.1.do.end21_crit_edge:                   ; preds = %do.body13.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end21

do.body13.2:                                      ; preds = %do.body13.1
  call void @__sanitizer_cov_trace_pc() #12
  %call14.2 = tail call fastcc i32 @ft260_xfer_status(ptr noundef %dev)
  br label %do.end21

do.end21:                                         ; preds = %do.body13.2, %do.body13.1.do.end21_crit_edge, %do.body13.do.end21_crit_edge
  %call14.lcssa = phi i32 [ %call14, %do.body13.do.end21_crit_edge ], [ %call14.1, %do.body13.1.do.end21_crit_edge ], [ %call14.2, %do.body13.2 ]
  %6 = zext i32 %call14.lcssa to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %call14.lcssa, label %do.end21.cleanup.sink.split_crit_edge [
    i32 0, label %do.end21.cleanup_crit_edge
    i32 -16, label %do.end21.cleanup_crit_edge49
  ]

do.end21.cleanup_crit_edge49:                     ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end21.cleanup_crit_edge:                       ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end21.cleanup.sink.split_crit_edge:            ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end21.cleanup.sink.split_crit_edge, %do.end
  %retval.0.ph = phi i32 [ %retval.0.i48, %do.end ], [ -5, %do.end21.cleanup.sink.split_crit_edge ]
  %call28 = tail call fastcc i32 @ft260_i2c_reset(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end21.cleanup_crit_edge, %do.end21.cleanup_crit_edge49
  %retval.0 = phi i32 [ 0, %do.end21.cleanup_crit_edge ], [ 0, %do.end21.cleanup_crit_edge49 ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chip_mode_show(ptr noundef %kdev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 25) #15
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %entry.ft260_byte_show.exit_crit_edge, label %if.end.i.i

entry.ft260_byte_show.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ft260_byte_show.exit

if.end.i.i:                                       ; preds = %entry
  %add.ptr = getelementptr i8, ptr %kdev, i32 -3264
  %call1.i.i = tail call i32 @hid_hw_raw_request(ptr noundef %add.ptr, i8 noundef zeroext -95, ptr noundef nonnull %call7.i.i.i, i32 noundef 25, i8 noundef zeroext 2, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %call1.i.i)
  %cmp.i.i = icmp eq i32 %call1.i.i, 25
  br i1 %cmp.i.i, label %if.end.i, label %if.else.i.i, !prof !247

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i)
  %cmp5.i.i = icmp sgt i32 %call1.i.i, -1
  %spec.select.i = select i1 %cmp5.i.i, i32 -5, i32 %call1.i.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %ft260_byte_show.exit

if.end.i:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rep.sroa.4.0.call7.i.i.i.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i.i, i32 1
  %1 = ptrtoint ptr %rep.sroa.4.0.call7.i.i.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %1)
  %rep.sroa.4.0.copyload = load i8, ptr %rep.sroa.4.0.call7.i.i.i.sroa_idx, align 1
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  %conv2.i = zext i8 %rep.sroa.4.0.copyload to i32
  %call3.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.104, i32 noundef %conv2.i) #10
  br label %ft260_byte_show.exit

ft260_byte_show.exit:                             ; preds = %if.end.i, %if.else.i.i, %entry.ft260_byte_show.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %spec.select.i, %if.else.i.i ], [ -12, %entry.ft260_byte_show.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwren_status_show(ptr noundef %kdev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 25) #15
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %entry.ft260_byte_show.exit_crit_edge, label %if.end.i.i

entry.ft260_byte_show.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ft260_byte_show.exit

if.end.i.i:                                       ; preds = %entry
  %add.ptr = getelementptr i8, ptr %kdev, i32 -3264
  %call1.i.i = tail call i32 @hid_hw_raw_request(ptr noundef %add.ptr, i8 noundef zeroext -95, ptr noundef nonnull %call7.i.i.i, i32 noundef 25, i8 noundef zeroext 2, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %call1.i.i)
  %cmp.i.i = icmp eq i32 %call1.i.i, 25
  br i1 %cmp.i.i, label %if.end.i, label %if.else.i.i, !prof !247

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i)
  %cmp5.i.i = icmp sgt i32 %call1.i.i, -1
  %spec.select.i = select i1 %cmp5.i.i, i32 -5, i32 %call1.i.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %ft260_byte_show.exit

if.end.i:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rep.sroa.7.0.call7.i.i.i.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i.i, i32 4
  %1 = ptrtoint ptr %rep.sroa.7.0.call7.i.i.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %1)
  %rep.sroa.7.0.copyload = load i8, ptr %rep.sroa.7.0.call7.i.i.i.sroa_idx, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  %conv2.i = zext i8 %rep.sroa.7.0.copyload to i32
  %call3.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.104, i32 noundef %conv2.i) #10
  br label %ft260_byte_show.exit

ft260_byte_show.exit:                             ; preds = %if.end.i, %if.else.i.i, %entry.ft260_byte_show.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %spec.select.i, %if.else.i.i ], [ -12, %entry.ft260_byte_show.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @suspend_status_show(ptr noundef %kdev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 25) #15
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %entry.ft260_byte_show.exit_crit_edge, label %if.end.i.i

entry.ft260_byte_show.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ft260_byte_show.exit

if.end.i.i:                                       ; preds = %entry
  %add.ptr = getelementptr i8, ptr %kdev, i32 -3264
  %call1.i.i = tail call i32 @hid_hw_raw_request(ptr noundef %add.ptr, i8 noundef zeroext -95, ptr noundef nonnull %call7.i.i.i, i32 noundef 25, i8 noundef zeroext 2, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %call1.i.i)
  %cmp.i.i = icmp eq i32 %call1.i.i, 25
  br i1 %cmp.i.i, label %if.end.i, label %if.else.i.i, !prof !247

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i)
  %cmp5.i.i = icmp sgt i32 %call1.i.i, -1
  %spec.select.i = select i1 %cmp5.i.i, i32 -5, i32 %call1.i.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %ft260_byte_show.exit

if.end.i:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rep.sroa.6.0.call7.i.i.i.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i.i, i32 3
  %1 = ptrtoint ptr %rep.sroa.6.0.call7.i.i.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %1)
  %rep.sroa.6.0.copyload = load i8, ptr %rep.sroa.6.0.call7.i.i.i.sroa_idx, align 1
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  %conv2.i = zext i8 %rep.sroa.6.0.copyload to i32
  %call3.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.104, i32 noundef %conv2.i) #10
  br label %ft260_byte_show.exit

ft260_byte_show.exit:                             ; preds = %if.end.i, %if.else.i.i, %entry.ft260_byte_show.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %spec.select.i, %if.else.i.i ], [ -12, %entry.ft260_byte_show.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hid_over_i2c_en_show(ptr noundef %kdev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 25) #15
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %entry.ft260_byte_show.exit_crit_edge, label %if.end.i.i

entry.ft260_byte_show.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ft260_byte_show.exit

if.end.i.i:                                       ; preds = %entry
  %add.ptr = getelementptr i8, ptr %kdev, i32 -3264
  %call1.i.i = tail call i32 @hid_hw_raw_request(ptr noundef %add.ptr, i8 noundef zeroext -95, ptr noundef nonnull %call7.i.i.i, i32 noundef 25, i8 noundef zeroext 2, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %call1.i.i)
  %cmp.i.i = icmp eq i32 %call1.i.i, 25
  br i1 %cmp.i.i, label %if.end.i, label %if.else.i.i, !prof !247

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i)
  %cmp5.i.i = icmp sgt i32 %call1.i.i, -1
  %spec.select.i = select i1 %cmp5.i.i, i32 -5, i32 %call1.i.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %ft260_byte_show.exit

if.end.i:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rep.sroa.10.0.call7.i.i.i.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i.i, i32 7
  %1 = ptrtoint ptr %rep.sroa.10.0.call7.i.i.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %1)
  %rep.sroa.10.0.copyload = load i8, ptr %rep.sroa.10.0.call7.i.i.i.sroa_idx, align 1
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  %conv2.i = zext i8 %rep.sroa.10.0.copyload to i32
  %call3.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.104, i32 noundef %conv2.i) #10
  br label %ft260_byte_show.exit

ft260_byte_show.exit:                             ; preds = %if.end.i, %if.else.i.i, %entry.ft260_byte_show.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %spec.select.i, %if.else.i.i ], [ -12, %entry.ft260_byte_show.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @power_saving_en_show(ptr noundef %kdev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 25) #15
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %entry.ft260_byte_show.exit_crit_edge, label %if.end.i.i

entry.ft260_byte_show.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ft260_byte_show.exit

if.end.i.i:                                       ; preds = %entry
  %add.ptr = getelementptr i8, ptr %kdev, i32 -3264
  %call1.i.i = tail call i32 @hid_hw_raw_request(ptr noundef %add.ptr, i8 noundef zeroext -95, ptr noundef nonnull %call7.i.i.i, i32 noundef 25, i8 noundef zeroext 2, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %call1.i.i)
  %cmp.i.i = icmp eq i32 %call1.i.i, 25
  br i1 %cmp.i.i, label %if.end.i, label %if.else.i.i, !prof !247

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i)
  %cmp5.i.i = icmp sgt i32 %call1.i.i, -1
  %spec.select.i = select i1 %cmp5.i.i, i32 -5, i32 %call1.i.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %ft260_byte_show.exit

if.end.i:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rep.sroa.17.0.call7.i.i.i.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i.i, i32 14
  %1 = ptrtoint ptr %rep.sroa.17.0.call7.i.i.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %1)
  %rep.sroa.17.0.copyload = load i8, ptr %rep.sroa.17.0.call7.i.i.i.sroa_idx, align 2
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  %conv2.i = zext i8 %rep.sroa.17.0.copyload to i32
  %call3.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.104, i32 noundef %conv2.i) #10
  br label %ft260_byte_show.exit

ft260_byte_show.exit:                             ; preds = %if.end.i, %if.else.i.i, %entry.ft260_byte_show.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %spec.select.i, %if.else.i.i ], [ -12, %entry.ft260_byte_show.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_enable_show(ptr noundef %kdev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 25) #15
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %entry.ft260_byte_show.exit_crit_edge, label %if.end.i.i

entry.ft260_byte_show.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ft260_byte_show.exit

if.end.i.i:                                       ; preds = %entry
  %add.ptr = getelementptr i8, ptr %kdev, i32 -3264
  %call1.i.i = tail call i32 @hid_hw_raw_request(ptr noundef %add.ptr, i8 noundef zeroext -95, ptr noundef nonnull %call7.i.i.i, i32 noundef 25, i8 noundef zeroext 2, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %call1.i.i)
  %cmp.i.i = icmp eq i32 %call1.i.i, 25
  br i1 %cmp.i.i, label %if.end.i, label %if.else.i.i, !prof !247

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i)
  %cmp5.i.i = icmp sgt i32 %call1.i.i, -1
  %spec.select.i = select i1 %cmp5.i.i, i32 -5, i32 %call1.i.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %ft260_byte_show.exit

if.end.i:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rep.sroa.8.0.call7.i.i.i.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i.i, i32 5
  %1 = ptrtoint ptr %rep.sroa.8.0.call7.i.i.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %1)
  %rep.sroa.8.0.copyload = load i8, ptr %rep.sroa.8.0.call7.i.i.i.sroa_idx, align 1
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  %conv2.i = zext i8 %rep.sroa.8.0.copyload to i32
  %call3.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.104, i32 noundef %conv2.i) #10
  br label %ft260_byte_show.exit

ft260_byte_show.exit:                             ; preds = %if.end.i, %if.else.i.i, %entry.ft260_byte_show.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %spec.select.i, %if.else.i.i ], [ -12, %entry.ft260_byte_show.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_enable_store(ptr noundef %kdev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %rep = alloca %struct.ft260_set_i2c_mode_report, align 1
  %i2c_enable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %rep) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i2c_enable) #10
  %0 = ptrtoint ptr %i2c_enable to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %i2c_enable, align 1, !annotation !248
  %call = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %i2c_enable) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then:                                          ; preds = %entry
  %1 = getelementptr inbounds %struct.ft260_set_i2c_mode_report, ptr %rep, i32 0, i32 2
  %2 = getelementptr inbounds %struct.ft260_set_i2c_mode_report, ptr %rep, i32 0, i32 1
  %3 = ptrtoint ptr %i2c_enable to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %i2c_enable, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %1, align 1
  %6 = ptrtoint ptr %rep to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -95, ptr %rep, align 1
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %2, align 1
  %call.i = call ptr @kmemdup(ptr noundef nonnull %rep, i32 noundef 3, i32 noundef 3264) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.if.end5_crit_edge, label %ft260_hid_feature_report_set.exit

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

ft260_hid_feature_report_set.exit:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %kdev, i32 -3264
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -95, ptr %call.i, align 1
  %call2.i = call i32 @hid_hw_raw_request(ptr noundef %add.ptr, i8 noundef zeroext -95, ptr noundef nonnull %call.i, i32 noundef 3, i8 noundef zeroext 2, i32 noundef 9) #10
  call void @kfree(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not = icmp eq i32 %call2.i, 0
  %spec.select = select i1 %tobool3.not, i32 %count, i32 %call2.i
  br label %if.end5

if.end5:                                          ; preds = %ft260_hid_feature_report_set.exit, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %ret.0 = phi i32 [ -22, %entry.if.end5_crit_edge ], [ -12, %if.then.if.end5_crit_edge ], [ %spec.select, %ft260_hid_feature_report_set.exit ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i2c_enable) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %rep) #10
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uart_mode_show(ptr noundef %kdev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 25) #15
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %entry.ft260_byte_show.exit_crit_edge, label %if.end.i.i

entry.ft260_byte_show.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ft260_byte_show.exit

if.end.i.i:                                       ; preds = %entry
  %add.ptr = getelementptr i8, ptr %kdev, i32 -3264
  %call1.i.i = tail call i32 @hid_hw_raw_request(ptr noundef %add.ptr, i8 noundef zeroext -95, ptr noundef nonnull %call7.i.i.i, i32 noundef 25, i8 noundef zeroext 2, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %call1.i.i)
  %cmp.i.i = icmp eq i32 %call1.i.i, 25
  br i1 %cmp.i.i, label %if.end.i, label %if.else.i.i, !prof !247

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i)
  %cmp5.i.i = icmp sgt i32 %call1.i.i, -1
  %spec.select.i = select i1 %cmp5.i.i, i32 -5, i32 %call1.i.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %ft260_byte_show.exit

if.end.i:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rep.sroa.9.0.call7.i.i.i.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i.i, i32 6
  %1 = ptrtoint ptr %rep.sroa.9.0.call7.i.i.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %1)
  %rep.sroa.9.0.copyload = load i8, ptr %rep.sroa.9.0.call7.i.i.i.sroa_idx, align 2
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  %conv2.i = zext i8 %rep.sroa.9.0.copyload to i32
  %call3.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.104, i32 noundef %conv2.i) #10
  br label %ft260_byte_show.exit

ft260_byte_show.exit:                             ; preds = %if.end.i, %if.else.i.i, %entry.ft260_byte_show.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %spec.select.i, %if.else.i.i ], [ -12, %entry.ft260_byte_show.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uart_mode_store(ptr noundef %kdev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %rep = alloca %struct.ft260_set_uart_mode_report, align 1
  %uart_mode = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %rep) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %uart_mode) #10
  %0 = ptrtoint ptr %uart_mode to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %uart_mode, align 1, !annotation !248
  %call = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %uart_mode) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then:                                          ; preds = %entry
  %1 = getelementptr inbounds %struct.ft260_set_uart_mode_report, ptr %rep, i32 0, i32 2
  %2 = getelementptr inbounds %struct.ft260_set_uart_mode_report, ptr %rep, i32 0, i32 1
  %3 = ptrtoint ptr %uart_mode to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %uart_mode, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %1, align 1
  %6 = ptrtoint ptr %rep to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -95, ptr %rep, align 1
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 3, ptr %2, align 1
  %call.i = call ptr @kmemdup(ptr noundef nonnull %rep, i32 noundef 3, i32 noundef 3264) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.if.end5_crit_edge, label %ft260_hid_feature_report_set.exit

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

ft260_hid_feature_report_set.exit:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %kdev, i32 -3264
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -95, ptr %call.i, align 1
  %call2.i = call i32 @hid_hw_raw_request(ptr noundef %add.ptr, i8 noundef zeroext -95, ptr noundef nonnull %call.i, i32 noundef 3, i8 noundef zeroext 2, i32 noundef 9) #10
  call void @kfree(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not = icmp eq i32 %call2.i, 0
  %spec.select = select i1 %tobool3.not, i32 %count, i32 %call2.i
  br label %if.end5

if.end5:                                          ; preds = %ft260_hid_feature_report_set.exit, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %ret.0 = phi i32 [ -22, %entry.if.end5_crit_edge ], [ -12, %if.then.if.end5_crit_edge ], [ %spec.select, %ft260_hid_feature_report_set.exit ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %uart_mode) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %rep) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clock_ctl_show(ptr noundef %kdev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 25) #15
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %entry.ft260_byte_show.exit_crit_edge, label %if.end.i.i

entry.ft260_byte_show.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ft260_byte_show.exit

if.end.i.i:                                       ; preds = %entry
  %add.ptr = getelementptr i8, ptr %kdev, i32 -3264
  %call1.i.i = tail call i32 @hid_hw_raw_request(ptr noundef %add.ptr, i8 noundef zeroext -95, ptr noundef nonnull %call7.i.i.i, i32 noundef 25, i8 noundef zeroext 2, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %call1.i.i)
  %cmp.i.i = icmp eq i32 %call1.i.i, 25
  br i1 %cmp.i.i, label %if.end.i, label %if.else.i.i, !prof !247

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i)
  %cmp5.i.i = icmp sgt i32 %call1.i.i, -1
  %spec.select.i = select i1 %cmp5.i.i, i32 -5, i32 %call1.i.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %ft260_byte_show.exit

if.end.i:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rep.sroa.5.0.call7.i.i.i.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i.i, i32 2
  %1 = ptrtoint ptr %rep.sroa.5.0.call7.i.i.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %1)
  %rep.sroa.5.0.copyload = load i8, ptr %rep.sroa.5.0.call7.i.i.i.sroa_idx, align 2
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  %conv2.i = zext i8 %rep.sroa.5.0.copyload to i32
  %call3.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.104, i32 noundef %conv2.i) #10
  br label %ft260_byte_show.exit

ft260_byte_show.exit:                             ; preds = %if.end.i, %if.else.i.i, %entry.ft260_byte_show.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %spec.select.i, %if.else.i.i ], [ -12, %entry.ft260_byte_show.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clock_ctl_store(ptr noundef %kdev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %rep = alloca %struct.ft260_set_system_clock_report, align 1
  %clock_ctl = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %rep) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %clock_ctl) #10
  %0 = ptrtoint ptr %clock_ctl to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %clock_ctl, align 1, !annotation !248
  %call = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %clock_ctl) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then:                                          ; preds = %entry
  %1 = getelementptr inbounds %struct.ft260_set_system_clock_report, ptr %rep, i32 0, i32 2
  %2 = getelementptr inbounds %struct.ft260_set_system_clock_report, ptr %rep, i32 0, i32 1
  %3 = ptrtoint ptr %clock_ctl to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %clock_ctl, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %1, align 1
  %6 = ptrtoint ptr %rep to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -95, ptr %rep, align 1
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %2, align 1
  %call.i = call ptr @kmemdup(ptr noundef nonnull %rep, i32 noundef 3, i32 noundef 3264) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.if.end5_crit_edge, label %ft260_hid_feature_report_set.exit

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

ft260_hid_feature_report_set.exit:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %kdev, i32 -3264
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -95, ptr %call.i, align 1
  %call2.i = call i32 @hid_hw_raw_request(ptr noundef %add.ptr, i8 noundef zeroext -95, ptr noundef nonnull %call.i, i32 noundef 3, i8 noundef zeroext 2, i32 noundef 9) #10
  call void @kfree(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not = icmp eq i32 %call2.i, 0
  %spec.select = select i1 %tobool3.not, i32 %count, i32 %call2.i
  br label %if.end5

if.end5:                                          ; preds = %ft260_hid_feature_report_set.exit, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %ret.0 = phi i32 [ -22, %entry.if.end5_crit_edge ], [ -12, %if.then.if.end5_crit_edge ], [ %spec.select, %ft260_hid_feature_report_set.exit ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %clock_ctl) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %rep) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_reset_store(ptr noundef %kdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kdev, i32 -3264
  %call = tail call fastcc i32 @ft260_i2c_reset(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %count.call = select i1 %tobool.not, i32 %count, i32 %call
  ret i32 %count.call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clock_show(ptr noundef %kdev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 5) #15
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %entry.ft260_word_show.exit_crit_edge, label %if.end.i.i

entry.ft260_word_show.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ft260_word_show.exit

if.end.i.i:                                       ; preds = %entry
  %add.ptr = getelementptr i8, ptr %kdev, i32 -3264
  %call1.i.i = tail call i32 @hid_hw_raw_request(ptr noundef %add.ptr, i8 noundef zeroext -64, ptr noundef nonnull %call7.i.i.i, i32 noundef 5, i8 noundef zeroext 2, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call1.i.i)
  %cmp.i.i = icmp eq i32 %call1.i.i, 5
  br i1 %cmp.i.i, label %if.end.i, label %if.else.i.i, !prof !247

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i)
  %cmp5.i.i = icmp sgt i32 %call1.i.i, -1
  %spec.select.i = select i1 %cmp5.i.i, i32 -5, i32 %call1.i.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %ft260_word_show.exit

if.end.i:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rep.sroa.5.0.call7.i.i.i.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i.i, i32 2
  %1 = ptrtoint ptr %rep.sroa.5.0.call7.i.i.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %1)
  %rep.sroa.5.0.copyload = load i16, ptr %rep.sroa.5.0.call7.i.i.i.sroa_idx, align 2
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  %2 = tail call i16 @llvm.bswap.i16(i16 %rep.sroa.5.0.copyload) #10
  %conv2.i = zext i16 %2 to i32
  %call3.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.104, i32 noundef %conv2.i) #10
  br label %ft260_word_show.exit

ft260_word_show.exit:                             ; preds = %if.end.i, %if.else.i.i, %entry.ft260_word_show.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %spec.select.i, %if.else.i.i ], [ -12, %entry.ft260_word_show.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clock_store(ptr noundef %kdev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %rep = alloca %struct.ft260_set_i2c_speed_report, align 1
  %clock = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rep) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %clock) #10
  %0 = ptrtoint ptr %clock to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %clock, align 2, !annotation !248
  %call = call i32 @kstrtou16(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %clock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then:                                          ; preds = %entry
  %1 = getelementptr inbounds %struct.ft260_set_i2c_speed_report, ptr %rep, i32 0, i32 2
  %2 = getelementptr inbounds %struct.ft260_set_i2c_speed_report, ptr %rep, i32 0, i32 1
  %3 = ptrtoint ptr %clock to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %clock, align 2
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %4, ptr %1, align 1
  %6 = ptrtoint ptr %rep to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -95, ptr %rep, align 1
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 34, ptr %2, align 1
  %call.i = call ptr @kmemdup(ptr noundef nonnull %rep, i32 noundef 4, i32 noundef 3264) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.if.end5_crit_edge, label %ft260_hid_feature_report_set.exit

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

ft260_hid_feature_report_set.exit:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %kdev, i32 -3264
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -95, ptr %call.i, align 1
  %call2.i = call i32 @hid_hw_raw_request(ptr noundef %add.ptr, i8 noundef zeroext -95, ptr noundef nonnull %call.i, i32 noundef 4, i8 noundef zeroext 2, i32 noundef 9) #10
  call void @kfree(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not = icmp eq i32 %call2.i, 0
  %spec.select = select i1 %tobool3.not, i32 %count, i32 %call2.i
  br label %if.end5

if.end5:                                          ; preds = %ft260_hid_feature_report_set.exit, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %ret.0 = phi i32 [ -22, %entry.if.end5_crit_edge ], [ -12, %if.then.if.end5_crit_edge ], [ %spec.select, %ft260_hid_feature_report_set.exit ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %clock) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rep) #10
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 126)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 126)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !19, !21, !23, !25, !27, !28, !29, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !93, !94, !95, !96, !98, !100, !101, !102, !103, !105, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !138, !140, !141, !142, !144, !145, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159, !160, !162, !164, !165, !167, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !191, !193, !194, !195, !197, !199, !200, !202, !204, !205, !207, !208, !210, !211, !213, !214, !216, !217, !219, !220, !222, !223, !225, !226, !228, !229, !231, !232, !233, !234, !236, !237}
!llvm.module.flags = !{!238, !239, !240, !241, !242, !243, !244, !245}
!llvm.ident = !{!246}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-ft260.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype293, !1, !"__UNIQUE_ID_debugtype293", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug294, !4, !"__UNIQUE_ID_debug294", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-ft260.c", i32 23, i32 1}
!5 = !{ptr @__initcall__kmod_hid_ft260__295_1047_ft260_driver_init6, !6, !"__initcall__kmod_hid_ft260__295_1047_ft260_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/hid/hid-ft260.c", i32 1047, i32 1}
!7 = !{ptr @__exitcall_ft260_driver_exit, !6, !"__exitcall_ft260_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description296, !9, !"__UNIQUE_ID_description296", i1 false, i1 false}
!9 = !{!"../drivers/hid/hid-ft260.c", i32 1048, i32 1}
!10 = !{ptr @__UNIQUE_ID_author297, !11, !"__UNIQUE_ID_author297", i1 false, i1 false}
!11 = !{!"../drivers/hid/hid-ft260.c", i32 1049, i32 1}
!12 = !{ptr @__UNIQUE_ID_file298, !13, !"__UNIQUE_ID_file298", i1 false, i1 false}
!13 = !{!"../drivers/hid/hid-ft260.c", i32 1050, i32 1}
!14 = !{ptr @__UNIQUE_ID_license299, !13, !"__UNIQUE_ID_license299", i1 false, i1 false}
!15 = !{ptr @ft260_debug, !16, !"ft260_debug", i1 false, i1 false}
!16 = !{!"../drivers/hid/hid-ft260.c", i32 20, i32 12}
!17 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!18 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/hid/hid-ft260.c", i32 1040, i32 11}
!21 = !{ptr @ft260_driver, !22, !"ft260_driver", i1 false, i1 false}
!22 = !{!"../drivers/hid/hid-ft260.c", i32 1039, i32 26}
!23 = !{ptr @ft260_devices, !24, !"ft260_devices", i1 false, i1 false}
!24 = !{!"../drivers/hid/hid-ft260.c", i32 220, i32 35}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hid/hid-ft260.c", i32 927, i32 3}
!27 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ft260_probe._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @ft260_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/hid/hid-ft260.c", i32 933, i32 3}
!35 = !{ptr @ft260_probe._entry.7, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @ft260_probe._entry_ptr.9, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hid/hid-ft260.c", i32 939, i32 3}
!39 = !{ptr @ft260_probe._entry.10, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ft260_probe._entry_ptr.12, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hid/hid-ft260.c", i32 946, i32 3}
!43 = !{ptr @ft260_probe._entry.13, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @ft260_probe._entry_ptr.15, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/hid/hid-ft260.c", i32 950, i32 2}
!47 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ft260_probe._entry.16, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @ft260_probe._entry_ptr.19, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hid/hid-ft260.c", i32 966, i32 4}
!52 = !{ptr @ft260_probe.__key, !53, !"__key", i1 false, i1 false}
!53 = !{!"../drivers/hid/hid-ft260.c", i32 969, i32 2}
!54 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hid/hid-ft260.c", i32 979, i32 3}
!57 = !{ptr @ft260_probe._entry.22, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @ft260_probe._entry_ptr.24, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/hid/hid-ft260.c", i32 985, i32 3}
!61 = !{ptr @ft260_probe._entry.25, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @ft260_probe._entry_ptr.27, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/hid/hid-ft260.c", i32 748, i32 2}
!65 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @ft260_is_interface_enabled._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @ft260_is_interface_enabled._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/hid/hid-ft260.c", i32 749, i32 2}
!70 = !{ptr @ft260_is_interface_enabled._entry.30, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @ft260_is_interface_enabled._entry_ptr.32, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/hid/hid-ft260.c", i32 750, i32 2}
!74 = !{ptr @ft260_is_interface_enabled._entry.33, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @ft260_is_interface_enabled._entry_ptr.35, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/hid/hid-ft260.c", i32 751, i32 2}
!78 = !{ptr @ft260_is_interface_enabled._entry.36, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @ft260_is_interface_enabled._entry_ptr.38, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/hid/hid-ft260.c", i32 752, i32 2}
!82 = !{ptr @ft260_is_interface_enabled._entry.39, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @ft260_is_interface_enabled._entry_ptr.41, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/hid/hid-ft260.c", i32 758, i32 4}
!86 = !{ptr @ft260_is_interface_enabled._entry.42, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @ft260_is_interface_enabled._entry_ptr.44, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @ft260_is_interface_enabled._entry.45, !89, !"_entry", i1 false, i1 false}
!89 = !{!"../drivers/hid/hid-ft260.c", i32 763, i32 3}
!90 = !{ptr @ft260_is_interface_enabled._entry_ptr.46, !89, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.47, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/hid/hid-ft260.c", i32 731, i32 3}
!93 = !{ptr @.str.48, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @ft260_get_system_config._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @ft260_get_system_config._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @ft260_i2c_algo, !97, !"ft260_i2c_algo", i1 false, i1 false}
!97 = !{!"../drivers/hid/hid-ft260.c", i32 716, i32 35}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/hid/hid-ft260.c", i32 567, i32 3}
!100 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @ft260_i2c_xfer._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @ft260_i2c_xfer._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/hid/hid-ft260.c", i32 466, i32 3}
!105 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @ft260_i2c_read._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @ft260_i2c_read._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/hid/hid-ft260.c", i32 479, i32 2}
!110 = !{ptr @ft260_i2c_read._entry.53, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @ft260_i2c_read._entry_ptr.55, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.57, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/hid/hid-ft260.c", i32 486, i32 3}
!114 = !{ptr @ft260_i2c_read._entry.56, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @ft260_i2c_read._entry_ptr.58, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/hid/hid-ft260.c", i32 407, i32 3}
!118 = !{ptr @.str.60, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @ft260_i2c_write._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @ft260_i2c_write._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.62, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/hid/hid-ft260.c", i32 413, i32 4}
!123 = !{ptr @ft260_i2c_write._entry.61, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @ft260_i2c_write._entry_ptr.63, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.64, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/hid/hid-ft260.c", i32 363, i32 3}
!127 = !{ptr @ft260_hid_output_report_check_status._entry, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @ft260_hid_output_report_check_status._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.66, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/hid/hid-ft260.c", i32 372, i32 2}
!131 = !{ptr @ft260_hid_output_report_check_status._entry.65, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @ft260_hid_output_report_check_status._entry_ptr.67, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.68, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/hid/hid-ft260.c", i32 521, i32 3}
!135 = !{ptr @.str.69, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @ft260_i2c_write_read._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @ft260_i2c_write_read._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.71, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/hid/hid-ft260.c", i32 534, i32 3}
!140 = !{ptr @ft260_i2c_write_read._entry.70, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @ft260_i2c_write_read._entry_ptr.72, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.73, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/hid/hid-ft260.c", i32 604, i32 2}
!144 = !{ptr @.str.74, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @ft260_smbus_xfer._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @ft260_smbus_xfer._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.76, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/hid/hid-ft260.c", i32 610, i32 3}
!149 = !{ptr @ft260_smbus_xfer._entry.75, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @ft260_smbus_xfer._entry_ptr.77, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.79, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/hid/hid-ft260.c", i32 694, i32 3}
!153 = !{ptr @ft260_smbus_xfer._entry.78, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @ft260_smbus_xfer._entry_ptr.80, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.81, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/hid/hid-ft260.c", i32 449, i32 2}
!157 = !{ptr @.str.82, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @ft260_smbus_write._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @ft260_smbus_write._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @ft260_i2c_quirks, !161, !"ft260_i2c_quirks", i1 false, i1 false}
!161 = !{!"../drivers/hid/hid-ft260.c", i32 711, i32 40}
!162 = !{ptr @init_completion.__key, !163, !"__key", i1 false, i1 false}
!163 = !{!"../include/linux/completion.h", i32 87, i32 2}
!164 = !{ptr @.str.83, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.84, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/hid/hid-ft260.c", i32 305, i32 3}
!167 = !{ptr @.str.85, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @ft260_xfer_status._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @ft260_xfer_status._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.87, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/hid/hid-ft260.c", i32 310, i32 2}
!172 = !{ptr @ft260_xfer_status._entry.86, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @ft260_xfer_status._entry_ptr.88, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.90, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/hid/hid-ft260.c", i32 325, i32 3}
!176 = !{ptr @ft260_xfer_status._entry.89, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @ft260_xfer_status._entry_ptr.91, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.93, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/hid/hid-ft260.c", i32 328, i32 3}
!180 = !{ptr @ft260_xfer_status._entry.92, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @ft260_xfer_status._entry_ptr.94, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.96, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/hid/hid-ft260.c", i32 331, i32 3}
!184 = !{ptr @ft260_xfer_status._entry.95, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @ft260_xfer_status._entry_ptr.97, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.98, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/hid/hid-ft260.c", i32 288, i32 3}
!188 = !{ptr @.str.99, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @ft260_i2c_reset._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @ft260_i2c_reset._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.101, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/hid/hid-ft260.c", i32 292, i32 2}
!193 = !{ptr @ft260_i2c_reset._entry.100, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @ft260_i2c_reset._entry_ptr.102, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @ft260_attr_group, !196, !"ft260_attr_group", i1 false, i1 false}
!196 = !{!"../drivers/hid/hid-ft260.c", i32 896, i32 37}
!197 = !{ptr @.str.103, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/hid/hid-ft260.c", i32 849, i32 8}
!199 = !{ptr @dev_attr_chip_mode, !198, !"dev_attr_chip_mode", i1 false, i1 false}
!200 = !{ptr @.str.104, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/hid/hid-ft260.c", i32 781, i32 35}
!202 = !{ptr @.str.105, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/hid/hid-ft260.c", i32 852, i32 8}
!204 = !{ptr @dev_attr_pwren_status, !203, !"dev_attr_pwren_status", i1 false, i1 false}
!205 = !{ptr @.str.106, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/hid/hid-ft260.c", i32 855, i32 8}
!207 = !{ptr @dev_attr_suspend_status, !206, !"dev_attr_suspend_status", i1 false, i1 false}
!208 = !{ptr @.str.107, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/hid/hid-ft260.c", i32 858, i32 8}
!210 = !{ptr @dev_attr_hid_over_i2c_en, !209, !"dev_attr_hid_over_i2c_en", i1 false, i1 false}
!211 = !{ptr @.str.108, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/hid/hid-ft260.c", i32 861, i32 8}
!213 = !{ptr @dev_attr_power_saving_en, !212, !"dev_attr_power_saving_en", i1 false, i1 false}
!214 = !{ptr @.str.109, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/hid/hid-ft260.c", i32 866, i32 8}
!216 = !{ptr @dev_attr_i2c_enable, !215, !"dev_attr_i2c_enable", i1 false, i1 false}
!217 = !{ptr @.str.110, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/hid/hid-ft260.c", i32 871, i32 8}
!219 = !{ptr @dev_attr_uart_mode, !218, !"dev_attr_uart_mode", i1 false, i1 false}
!220 = !{ptr @.str.111, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/hid/hid-ft260.c", i32 876, i32 8}
!222 = !{ptr @dev_attr_clock_ctl, !221, !"dev_attr_clock_ctl", i1 false, i1 false}
!223 = !{ptr @.str.112, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/hid/hid-ft260.c", i32 894, i32 8}
!225 = !{ptr @dev_attr_i2c_reset, !224, !"dev_attr_i2c_reset", i1 false, i1 false}
!226 = !{ptr @.str.113, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/hid/hid-ft260.c", i32 881, i32 8}
!228 = !{ptr @dev_attr_clock, !227, !"dev_attr_clock", i1 false, i1 false}
!229 = !{ptr @.str.114, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/hid/hid-ft260.c", i32 1022, i32 3}
!231 = !{ptr @.str.115, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @ft260_raw_event._entry, !230, !"_entry", i1 false, i1 false}
!233 = !{ptr @ft260_raw_event._entry_ptr, !230, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.117, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/hid/hid-ft260.c", i32 1033, i32 3}
!236 = !{ptr @ft260_raw_event._entry.116, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @ft260_raw_event._entry_ptr.118, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{i32 1, !"wchar_size", i32 2}
!239 = !{i32 1, !"min_enum_size", i32 4}
!240 = !{i32 8, !"branch-target-enforcement", i32 0}
!241 = !{i32 8, !"sign-return-address", i32 0}
!242 = !{i32 8, !"sign-return-address-all", i32 0}
!243 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!244 = !{i32 7, !"uwtable", i32 1}
!245 = !{i32 7, !"frame-pointer", i32 2}
!246 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!247 = !{!"branch_weights", i32 2000, i32 1}
!248 = !{!"auto-init"}
