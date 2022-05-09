; ModuleID = '/llk/IR_all_yes/drivers/input/tablet/aiptek.c_pt.bc'
source_filename = "../drivers/input/tablet/aiptek.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.aiptek_map = type { ptr, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.aiptek = type { ptr, ptr, ptr, i32, %struct.aiptek_features, %struct.aiptek_settings, %struct.aiptek_settings, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.aiptek_features = type { i32, i32, i32, [65 x i8] }
%struct.aiptek_settings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_aiptek__237_1906_aiptek_driver_init6 = internal global ptr @aiptek_driver_init, section ".initcall6.init", align 4
@aiptek_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @aiptek_probe, ptr @aiptek_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aiptek_ids, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_aiptek_driver_exit = internal global ptr @aiptek_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author238 = internal constant [75 x i8] c"aiptek.author=Bryan W. Headley/Chris Atenasio/Cedric Brun/Rene van Paassen\00", section ".modinfo", align 1
@__UNIQUE_ID_description239 = internal constant [53 x i8] c"aiptek.description=Aiptek HyperPen USB Tablet Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [40 x i8] c"aiptek.file=drivers/input/tablet/aiptek\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [19 x i8] c"aiptek.license=GPL\00", section ".modinfo", align 1
@__param_str_programmableDelay = internal constant [25 x i8] c"aiptek.programmableDelay\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@programmableDelay = internal global { i32, [28 x i8] } { i32 400, [28 x i8] zeroinitializer }, align 32
@__param_programmableDelay = internal constant %struct.kernel_param { ptr @__param_str_programmableDelay, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @programmableDelay } }, section "__param", align 4
@__UNIQUE_ID_programmableDelaytype242 = internal constant [38 x i8] c"aiptek.parmtype=programmableDelay:int\00", section ".modinfo", align 1
@__UNIQUE_ID_programmableDelay243 = internal constant [67 x i8] c"aiptek.parm=programmableDelay:delay used during tablet programming\00", section ".modinfo", align 1
@__param_str_jitterDelay = internal constant [19 x i8] c"aiptek.jitterDelay\00", align 1
@jitterDelay = internal global { i32, [28 x i8] } { i32 50, [28 x i8] zeroinitializer }, align 32
@__param_jitterDelay = internal constant %struct.kernel_param { ptr @__param_str_jitterDelay, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @jitterDelay } }, section "__param", align 4
@__UNIQUE_ID_jitterDelaytype244 = internal constant [32 x i8] c"aiptek.parmtype=jitterDelay:int\00", section ".modinfo", align 1
@__UNIQUE_ID_jitterDelay245 = internal constant [54 x i8] c"aiptek.parm=jitterDelay:stylus/mouse settlement delay\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"aiptek\00", [25 x i8] zeroinitializer }, align 32
@aiptek_ids = internal constant { [9 x %struct.usb_device_id], [40 x i8] } { [9 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 2250, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2250, i16 16, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2250, i16 32, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2250, i16 33, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2250, i16 34, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2250, i16 35, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2250, i16 36, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1112, i16 20483, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@aiptek_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1683, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"cannot allocate memory or input device\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"aiptek_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/input/tablet/aiptek.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aiptek_probe._entry_ptr = internal global ptr @aiptek_probe._entry, section ".printk_index", align 4
@aiptek_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1690, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cannot allocate usb buffer\0A\00", [36 x i8] zeroinitializer }, align 32
@aiptek_probe._entry_ptr.8 = internal global ptr @aiptek_probe._entry.6, section ".printk_index", align 4
@aiptek_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1696, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cannot allocate urb\0A\00", [43 x i8] zeroinitializer }, align 32
@aiptek_probe._entry_ptr.11 = internal global ptr @aiptek_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"/input0\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Aiptek\00", [25 x i8] zeroinitializer }, align 32
@macroKeyEvents = internal constant { [34 x i32], [56 x i8] } { [34 x i32] [i32 1, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 87, i32 88, i32 183, i32 184, i32 185, i32 186, i32 187, i32 188, i32 189, i32 190, i32 191, i32 192, i32 193, i32 194, i32 128, i32 129, i32 130, i32 131, i32 132, i32 133, i32 134, i32 135, i32 0], [56 x i8] zeroinitializer }, align 32
@aiptek_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 1794, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"interface has no int in endpoints, but must have minimum 1\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@aiptek_probe._entry_ptr.17 = internal global ptr @aiptek_probe._entry.14, section ".printk_index", align 4
@aiptek_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 1828, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Aiptek using %d ms programming speed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@aiptek_probe._entry_ptr.21 = internal global ptr @aiptek_probe._entry.18, section ".printk_index", align 4
@aiptek_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 1837, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Aiptek tried all speeds, no sane response\0A\00", [53 x i8] zeroinitializer }, align 32
@aiptek_probe._entry_ptr.24 = internal global ptr @aiptek_probe._entry.22, section ".printk_index", align 4
@aiptek_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @aiptek_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@aiptek_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 1851, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cannot create sysfs group err: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@aiptek_probe._entry_ptr.27 = internal global ptr @aiptek_probe._entry.25, section ".printk_index", align 4
@aiptek_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 1860, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"input_register_device returned err: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@aiptek_probe._entry_ptr.30 = internal global ptr @aiptek_probe._entry.28, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@aiptek_irq.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.3, ptr @.str.33, i8 0, i8 107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"aiptek_irq\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s - urb shutting down with status: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@aiptek_irq.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.3, ptr @.str.34, i8 0, i8 109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s - nonzero urb status received: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@aiptek_irq.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.3, ptr @.str.35, i8 0, i8 -64, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Unknown report %d\0A\00", [45 x i8] zeroinitializer }, align 32
@aiptek_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.32, ptr @.str.3, i32 796, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s - usb_submit_urb failed with result %d\0A\00", [53 x i8] zeroinitializer }, align 32
@aiptek_irq._entry_ptr = internal global ptr @aiptek_irq._entry, section ".printk_index", align 4
@aiptek_command.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.3, ptr @.str.38, i8 0, i8 -31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aiptek_command\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"aiptek_program: failed, tried to send: 0x%02x 0x%02x\0A\00", [42 x i8] zeroinitializer }, align 32
@aiptek_query.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.3, ptr @.str.40, i8 0, i8 -22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"aiptek_query\00", [19 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"aiptek_query failed: returned 0x%02x 0x%02x 0x%02x\0A\00", [44 x i8] zeroinitializer }, align 32
@aiptek_attributes = internal global { [21 x ptr], [44 x i8] } { [21 x ptr] [ptr @dev_attr_size, ptr @dev_attr_pointer_mode, ptr @dev_attr_coordinate_mode, ptr @dev_attr_tool_mode, ptr @dev_attr_xtilt, ptr @dev_attr_ytilt, ptr @dev_attr_jitter, ptr @dev_attr_delay, ptr @dev_attr_event_count, ptr @dev_attr_diagnostic, ptr @dev_attr_odm_code, ptr @dev_attr_model_code, ptr @dev_attr_firmware_code, ptr @dev_attr_stylus_lower, ptr @dev_attr_stylus_upper, ptr @dev_attr_mouse_left, ptr @dev_attr_mouse_middle, ptr @dev_attr_mouse_right, ptr @dev_attr_wheel, ptr @dev_attr_execute, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_tabletSize, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pointer_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_tabletPointerMode, ptr @store_tabletPointerMode }, [36 x i8] zeroinitializer }, align 32
@dev_attr_coordinate_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_tabletCoordinateMode, ptr @store_tabletCoordinateMode }, [36 x i8] zeroinitializer }, align 32
@dev_attr_tool_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_tabletToolMode, ptr @store_tabletToolMode }, [36 x i8] zeroinitializer }, align 32
@dev_attr_xtilt = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_tabletXtilt, ptr @store_tabletXtilt }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ytilt = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_tabletYtilt, ptr @store_tabletYtilt }, [36 x i8] zeroinitializer }, align 32
@dev_attr_jitter = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_tabletJitterDelay, ptr @store_tabletJitterDelay }, [36 x i8] zeroinitializer }, align 32
@dev_attr_delay = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_tabletProgrammableDelay, ptr @store_tabletProgrammableDelay }, [36 x i8] zeroinitializer }, align 32
@dev_attr_event_count = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_tabletEventsReceived, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_diagnostic = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_tabletDiagnosticMessage, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_odm_code = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_tabletODMCode, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_model_code = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_tabletModelCode, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_firmware_code = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_firmwareCode, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_stylus_lower = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.79, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_tabletStylusLower, ptr @store_tabletStylusLower }, [36 x i8] zeroinitializer }, align 32
@dev_attr_stylus_upper = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.82, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_tabletStylusUpper, ptr @store_tabletStylusUpper }, [36 x i8] zeroinitializer }, align 32
@dev_attr_mouse_left = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.83, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_tabletMouseLeft, ptr @store_tabletMouseLeft }, [36 x i8] zeroinitializer }, align 32
@dev_attr_mouse_middle = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.87, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_tabletMouseMiddle, ptr @store_tabletMouseMiddle }, [36 x i8] zeroinitializer }, align 32
@dev_attr_mouse_right = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.88, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_tabletMouseRight, ptr @store_tabletMouseRight }, [36 x i8] zeroinitializer }, align 32
@dev_attr_wheel = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.89, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_tabletWheel, ptr @store_tabletWheel }, [36 x i8] zeroinitializer }, align 32
@dev_attr_execute = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.90, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_tabletExecute, ptr @store_tabletExecute }, [36 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"size\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%dx%d\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pointer_mode\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@pointer_mode_map = internal constant { [4 x %struct.aiptek_map], [32 x i8] } { [4 x %struct.aiptek_map] [%struct.aiptek_map { ptr @.str.46, i32 1 }, %struct.aiptek_map { ptr @.str.47, i32 0 }, %struct.aiptek_map { ptr @.str.48, i32 2 }, %struct.aiptek_map { ptr null, i32 -1 }], [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"stylus\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mouse\00", [26 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"either\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"coordinate_mode\00", [16 x i8] zeroinitializer }, align 32
@coordinate_mode_map = internal constant { [3 x %struct.aiptek_map], [40 x i8] } { [3 x %struct.aiptek_map] [%struct.aiptek_map { ptr @.str.50, i32 1 }, %struct.aiptek_map { ptr @.str.51, i32 0 }, %struct.aiptek_map { ptr null, i32 -1 }], [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"absolute\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"relative\00", [23 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tool_mode\00", [22 x i8] zeroinitializer }, align 32
@tool_mode_map = internal constant { [8 x %struct.aiptek_map], [32 x i8] } { [8 x %struct.aiptek_map] [%struct.aiptek_map { ptr @.str.47, i32 326 }, %struct.aiptek_map { ptr @.str.53, i32 321 }, %struct.aiptek_map { ptr @.str.54, i32 323 }, %struct.aiptek_map { ptr @.str.55, i32 320 }, %struct.aiptek_map { ptr @.str.56, i32 322 }, %struct.aiptek_map { ptr @.str.57, i32 324 }, %struct.aiptek_map { ptr @.str.58, i32 327 }, %struct.aiptek_map { ptr null, i32 -1 }], [32 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"eraser\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pencil\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pen\00", [28 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"brush\00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"airbrush\00", [23 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lens\00", [27 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"xtilt\00", [26 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disable\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ytilt\00", [26 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"jitter\00", [25 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"delay\00", [26 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"event_count\00", [20 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%ld\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"diagnostic\00", [21 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"no errors\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error: receiving relative reports\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error: receiving absolute reports\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Error: receiving stylus reports\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error: receiving mouse reports\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"odm_code\00", [23 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%04x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"model_code\00", [21 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"firmware_code\00", [18 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%04x\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"stylus_lower\00", [19 x i8] zeroinitializer }, align 32
@stylus_button_map = internal constant { [3 x %struct.aiptek_map], [40 x i8] } { [3 x %struct.aiptek_map] [%struct.aiptek_map { ptr @.str.80, i32 16 }, %struct.aiptek_map { ptr @.str.81, i32 8 }, %struct.aiptek_map { ptr null, i32 -1 }], [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"upper\00", [26 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lower\00", [26 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"stylus_upper\00", [19 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mouse_left\00", [21 x i8] zeroinitializer }, align 32
@mouse_button_map = internal constant { [4 x %struct.aiptek_map], [32 x i8] } { [4 x %struct.aiptek_map] [%struct.aiptek_map { ptr @.str.84, i32 4 }, %struct.aiptek_map { ptr @.str.85, i32 16 }, %struct.aiptek_map { ptr @.str.86, i32 8 }, %struct.aiptek_map { ptr null, i32 -1 }], [32 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"left\00", [27 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"middle\00", [25 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"right\00", [26 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mouse_middle\00", [19 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mouse_right\00", [20 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"wheel\00", [26 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"execute\00", [24 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Write anything to this file to program your tablet.\0A\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.92 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.94 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.96 = internal global [9 x i64] [i64 7, i64 32, i64 320, i64 321, i64 322, i64 323, i64 324, i64 326, i64 327]
@__sancov_gen_cov_switch_values.97 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 16]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 16]
@__sancov_gen_cov_switch_values.100 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.101 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.102 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 8, i64 16]
@___asan_gen_.103 = private unnamed_addr constant [14 x i8] c"aiptek_driver\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1899, i32 26 }
@___asan_gen_.106 = private unnamed_addr constant [18 x i8] c"programmableDelay\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 262, i32 12 }
@___asan_gen_.109 = private unnamed_addr constant [12 x i8] c"jitterDelay\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 263, i32 12 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1906, i32 1 }
@___asan_gen_.115 = private unnamed_addr constant [11 x i8] c"aiptek_ids\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 808, i32 35 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1682, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1690, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1696, i32 10 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1740, i32 36 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1746, i32 19 }
@___asan_gen_.154 = private unnamed_addr constant [15 x i8] c"macroKeyEvents\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 333, i32 18 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1793, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1826, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1836, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant [23 x i8] c"aiptek_attribute_group\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1645, i32 37 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1850, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1859, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 912, i32 31 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 430, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 435, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 768, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 794, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 900, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 936, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant [18 x i8] c"aiptek_attributes\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1621, i32 26 }
@___asan_gen_.232 = private unnamed_addr constant [14 x i8] c"dev_attr_size\00", align 1
@___asan_gen_.235 = private unnamed_addr constant [22 x i8] c"dev_attr_pointer_mode\00", align 1
@___asan_gen_.238 = private unnamed_addr constant [25 x i8] c"dev_attr_coordinate_mode\00", align 1
@___asan_gen_.241 = private unnamed_addr constant [19 x i8] c"dev_attr_tool_mode\00", align 1
@___asan_gen_.244 = private unnamed_addr constant [15 x i8] c"dev_attr_xtilt\00", align 1
@___asan_gen_.247 = private unnamed_addr constant [15 x i8] c"dev_attr_ytilt\00", align 1
@___asan_gen_.250 = private unnamed_addr constant [16 x i8] c"dev_attr_jitter\00", align 1
@___asan_gen_.253 = private unnamed_addr constant [15 x i8] c"dev_attr_delay\00", align 1
@___asan_gen_.256 = private unnamed_addr constant [21 x i8] c"dev_attr_event_count\00", align 1
@___asan_gen_.259 = private unnamed_addr constant [20 x i8] c"dev_attr_diagnostic\00", align 1
@___asan_gen_.262 = private unnamed_addr constant [18 x i8] c"dev_attr_odm_code\00", align 1
@___asan_gen_.265 = private unnamed_addr constant [20 x i8] c"dev_attr_model_code\00", align 1
@___asan_gen_.268 = private unnamed_addr constant [23 x i8] c"dev_attr_firmware_code\00", align 1
@___asan_gen_.271 = private unnamed_addr constant [22 x i8] c"dev_attr_stylus_lower\00", align 1
@___asan_gen_.274 = private unnamed_addr constant [22 x i8] c"dev_attr_stylus_upper\00", align 1
@___asan_gen_.277 = private unnamed_addr constant [20 x i8] c"dev_attr_mouse_left\00", align 1
@___asan_gen_.280 = private unnamed_addr constant [22 x i8] c"dev_attr_mouse_middle\00", align 1
@___asan_gen_.283 = private unnamed_addr constant [21 x i8] c"dev_attr_mouse_right\00", align 1
@___asan_gen_.286 = private unnamed_addr constant [15 x i8] c"dev_attr_wheel\00", align 1
@___asan_gen_.289 = private unnamed_addr constant [17 x i8] c"dev_attr_execute\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1050, i32 8 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1039, i32 25 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1084, i32 8 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1067, i32 25 }
@___asan_gen_.304 = private unnamed_addr constant [17 x i8] c"pointer_mode_map\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1056, i32 26 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 375, i32 9 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1057, i32 4 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1058, i32 4 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1059, i32 4 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1120, i32 8 }
@___asan_gen_.322 = private unnamed_addr constant [20 x i8] c"coordinate_mode_map\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1093, i32 26 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1094, i32 4 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1095, i32 4 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1161, i32 8 }
@___asan_gen_.334 = private unnamed_addr constant [14 x i8] c"tool_mode_map\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1129, i32 26 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1131, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1132, i32 4 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1133, i32 4 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1134, i32 4 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1135, i32 4 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1136, i32 4 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1203, i32 8 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1174, i32 26 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1176, i32 26 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1189, i32 20 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1244, i32 8 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1272, i32 8 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1301, i32 8 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1316, i32 8 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1313, i32 25 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1355, i32 8 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1329, i32 12 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1333, i32 12 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1337, i32 12 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1343, i32 13 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1345, i32 13 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1593, i32 8 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1590, i32 25 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1606, i32 8 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1619, i32 8 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1616, i32 25 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1419, i32 8 }
@___asan_gen_.418 = private unnamed_addr constant [18 x i8] c"stylus_button_map\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1362, i32 26 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1363, i32 4 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1364, i32 4 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1389, i32 8 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1456, i32 8 }
@___asan_gen_.433 = private unnamed_addr constant [17 x i8] c"mouse_button_map\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1428, i32 26 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1429, i32 4 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1430, i32 4 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1431, i32 4 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1485, i32 8 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1514, i32 8 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1547, i32 8 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1579, i32 8 }
@___asan_gen_.457 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.458 = private constant [33 x i8] c"../drivers/input/tablet/aiptek.c\00", align 1
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1559, i32 25 }
@llvm.compiler.used = appending global [141 x ptr] [ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_jitterDelay245, ptr @__UNIQUE_ID_jitterDelaytype244, ptr @__UNIQUE_ID_license241, ptr @__UNIQUE_ID_programmableDelay243, ptr @__UNIQUE_ID_programmableDelaytype242, ptr @__exitcall_aiptek_driver_exit, ptr @__initcall__kmod_aiptek__237_1906_aiptek_driver_init6, ptr @__param_jitterDelay, ptr @__param_programmableDelay, ptr @aiptek_driver_exit, ptr @aiptek_irq._entry, ptr @aiptek_irq._entry_ptr, ptr @aiptek_probe._entry, ptr @aiptek_probe._entry.14, ptr @aiptek_probe._entry.18, ptr @aiptek_probe._entry.22, ptr @aiptek_probe._entry.25, ptr @aiptek_probe._entry.28, ptr @aiptek_probe._entry.6, ptr @aiptek_probe._entry.9, ptr @aiptek_probe._entry_ptr, ptr @aiptek_probe._entry_ptr.11, ptr @aiptek_probe._entry_ptr.17, ptr @aiptek_probe._entry_ptr.21, ptr @aiptek_probe._entry_ptr.24, ptr @aiptek_probe._entry_ptr.27, ptr @aiptek_probe._entry_ptr.30, ptr @aiptek_probe._entry_ptr.8, ptr @aiptek_driver, ptr @programmableDelay, ptr @jitterDelay, ptr @.str, ptr @aiptek_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @macroKeyEvents, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @.str.20, ptr @.str.23, ptr @aiptek_attribute_group, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @aiptek_attributes, ptr @dev_attr_size, ptr @dev_attr_pointer_mode, ptr @dev_attr_coordinate_mode, ptr @dev_attr_tool_mode, ptr @dev_attr_xtilt, ptr @dev_attr_ytilt, ptr @dev_attr_jitter, ptr @dev_attr_delay, ptr @dev_attr_event_count, ptr @dev_attr_diagnostic, ptr @dev_attr_odm_code, ptr @dev_attr_model_code, ptr @dev_attr_firmware_code, ptr @dev_attr_stylus_lower, ptr @dev_attr_stylus_upper, ptr @dev_attr_mouse_left, ptr @dev_attr_mouse_middle, ptr @dev_attr_mouse_right, ptr @dev_attr_wheel, ptr @dev_attr_execute, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @pointer_mode_map, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @coordinate_mode_map, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @tool_mode_map, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @stylus_button_map, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @mouse_button_map, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91], section "llvm.metadata"
@0 = internal global [119 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aiptek_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @programmableDelay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jitterDelay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aiptek_ids to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aiptek_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aiptek_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aiptek_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @macroKeyEvents to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aiptek_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aiptek_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aiptek_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aiptek_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aiptek_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aiptek_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aiptek_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aiptek_attributes to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pointer_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_coordinate_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_tool_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_xtilt to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ytilt to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_jitter to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_delay to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_event_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_diagnostic to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_odm_code to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_model_code to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_firmware_code to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_stylus_lower to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_stylus_upper to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mouse_left to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mouse_middle to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mouse_right to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_wheel to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_execute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pointer_mode_map to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coordinate_mode_map to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tool_mode_map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stylus_button_map to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mouse_button_map to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @aiptek_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @aiptek_driver, ptr noundef null, ptr noundef nonnull @.str) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @aiptek_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_deregister(ptr noundef nonnull @aiptek_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aiptek_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %endpoint = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i299 = getelementptr i8, ptr %1, i32 -128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %endpoint) #11
  %2 = ptrtoint ptr %endpoint to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %endpoint, align 4, !annotation !252
  %3 = load i32, ptr @programmableDelay, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 236) #14
  %call2 = tail call ptr @input_allocate_device() #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool3.not = icmp eq ptr %call2, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.1) #15
  br label %fail1

if.end:                                           ; preds = %entry
  %data_dma = getelementptr inbounds %struct.aiptek, ptr %call7.i.i, i32 0, i32 3
  %call4 = tail call ptr @usb_alloc_coherent(ptr noundef %add.ptr.i299, i32 noundef 8, i32 noundef 3264, ptr noundef %data_dma) #11
  %data = getelementptr inbounds %struct.aiptek, ptr %call7.i.i, i32 0, i32 15
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call4, ptr %data, align 8
  %tobool6.not = icmp eq ptr %call4, null
  br i1 %tobool6.not, label %do.end10, label %if.end12

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev11 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev11, ptr noundef nonnull @.str.7) #15
  br label %fail1

if.end12:                                         ; preds = %if.end
  %call13 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %urb = getelementptr inbounds %struct.aiptek, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %urb to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call13, ptr %urb, align 8
  %tobool15.not = icmp eq ptr %call13, null
  br i1 %tobool15.not, label %do.end19, label %if.end21

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %dev20 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev20, ptr noundef nonnull @.str.10) #15
  br label %fail2

if.end21:                                         ; preds = %if.end12
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call2, ptr %call7.i.i, align 8
  %intf23 = getelementptr inbounds %struct.aiptek, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %intf23 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %intf, ptr %intf23, align 4
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %9 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bInterfaceNumber, align 2
  %conv = zext i8 %12 to i32
  %ifnum = getelementptr inbounds %struct.aiptek, ptr %call7.i.i, i32 0, i32 7
  %13 = ptrtoint ptr %ifnum to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %ifnum, align 8
  %inDelay = getelementptr inbounds %struct.aiptek, ptr %call7.i.i, i32 0, i32 10
  %14 = ptrtoint ptr %inDelay to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %inDelay, align 4
  %endDelay = getelementptr inbounds %struct.aiptek, ptr %call7.i.i, i32 0, i32 11
  %15 = ptrtoint ptr %endDelay to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %endDelay, align 8
  %previousJitterable = getelementptr inbounds %struct.aiptek, ptr %call7.i.i, i32 0, i32 12
  %16 = ptrtoint ptr %previousJitterable to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %previousJitterable, align 4
  %lastMacro = getelementptr inbounds %struct.aiptek, ptr %call7.i.i, i32 0, i32 13
  %17 = ptrtoint ptr %lastMacro to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %lastMacro, align 8
  %curSetting = getelementptr inbounds %struct.aiptek, ptr %call7.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %curSetting to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %curSetting, align 8
  %coordinateMode = getelementptr inbounds %struct.aiptek, ptr %call7.i.i, i32 0, i32 5, i32 1
  %19 = ptrtoint ptr %coordinateMode to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %coordinateMode, align 4
  %toolMode = getelementptr inbounds %struct.aiptek, ptr %call7.i.i, i32 0, i32 5, i32 2
  %20 = ptrtoint ptr %toolMode to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 320, ptr %toolMode, align 8
  %xTilt = getelementptr inbounds %struct.aiptek, ptr %call7.i.i, i32 0, i32 5, i32 3
  %21 = ptrtoint ptr %xTilt to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -10101, ptr %xTilt, align 4
  %yTilt = getelementptr inbounds %struct.aiptek, ptr %call7.i.i, i32 0, i32 5, i32 4
  %22 = ptrtoint ptr %yTilt to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -10101, ptr %yTilt, align 8
  %mouseButtonLeft = getelementptr inbounds %struct.aiptek, ptr %call7.i.i, i32 0, i32 5, i32 8
  %23 = ptrtoint ptr %mouseButtonLeft to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4, ptr %mouseButtonLeft, align 8
  %mouseButtonMiddle = getelementptr inbounds %struct.aiptek, ptr %call7.i.i, i32 0, i32 5, i32 9
  %24 = ptrtoint ptr %mouseButtonMiddle to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 16, ptr %mouseButtonMiddle, align 4
  %mouseButtonRight = getelementptr inbounds %struct.aiptek, ptr %call7.i.i, i32 0, i32 5, i32 10
  %25 = ptrtoint ptr %mouseButtonRight to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 8, ptr %mouseButtonRight, align 8
  %stylusButtonUpper = getelementptr inbounds %struct.aiptek, ptr %call7.i.i, i32 0, i32 5, i32 6
  %26 = ptrtoint ptr %stylusButtonUpper to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 16, ptr %stylusButtonUpper, align 8
  %stylusButtonLower = getelementptr inbounds %struct.aiptek, ptr %call7.i.i, i32 0, i32 5, i32 7
  %27 = ptrtoint ptr %stylusButtonLower to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 8, ptr %stylusButtonLower, align 4
  %28 = load i32, ptr @jitterDelay, align 4
  %jitterDelay = getelementptr inbounds %struct.aiptek, ptr %call7.i.i, i32 0, i32 5, i32 12
  %29 = ptrtoint ptr %jitterDelay to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %jitterDelay, align 8
  %30 = load i32, ptr @programmableDelay, align 4
  %programmableDelay = getelementptr inbounds %struct.aiptek, ptr %call7.i.i, i32 0, i32 5, i32 11
  %31 = ptrtoint ptr %programmableDelay to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %programmableDelay, align 4
  %newSetting = getelementptr inbounds %struct.aiptek, ptr %call7.i.i, i32 0, i32 6
  %32 = call ptr @memcpy(ptr %newSetting, ptr %curSetting, i32 52)
  %usbPath = getelementptr inbounds %struct.aiptek, ptr %call7.i.i, i32 0, i32 4, i32 3
  %bus.i = getelementptr i8, ptr %1, i32 -64
  %33 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr i8, ptr %1, i32 -124
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %usbPath, i32 noundef 65, ptr noundef nonnull @.str.31, ptr noundef %36, ptr noundef %devpath.i) #11
  %call40 = tail call i32 @strlcat(ptr noundef %usbPath, ptr noundef nonnull @.str.12, i32 noundef 65) #11
  %37 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.13, ptr %call2, align 8
  %phys = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 1
  %38 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %usbPath, ptr %phys, align 4
  %id44 = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 3
  %39 = ptrtoint ptr %id44 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 3, ptr %id44, align 2
  %idVendor.i = getelementptr i8, ptr %1, i32 936
  %40 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %idVendor.i, align 8
  %42 = tail call i16 @llvm.bswap.i16(i16 %41) #11
  %vendor.i = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 3, i32 1
  %43 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %vendor.i, align 2
  %idProduct.i = getelementptr i8, ptr %1, i32 938
  %44 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %idProduct.i, align 2
  %46 = tail call i16 @llvm.bswap.i16(i16 %45) #11
  %product.i = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 3, i32 2
  %47 = ptrtoint ptr %product.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %product.i, align 2
  %bcdDevice.i = getelementptr i8, ptr %1, i32 940
  %48 = ptrtoint ptr %bcdDevice.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %bcdDevice.i, align 4
  %50 = tail call i16 @llvm.bswap.i16(i16 %49) #11
  %version.i = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 3, i32 3
  %51 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %version.i, align 2
  %dev45 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %parent = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 40, i32 1
  %52 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %dev45, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 40, i32 8
  %53 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 31
  %54 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @aiptek_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 32
  %55 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @aiptek_close, ptr %close, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 5
  %56 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %evbit, align 4
  %or.i.3 = or i32 %57, 30
  store i32 %or.i.3, ptr %evbit, align 4
  %absbit = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 8
  %58 = ptrtoint ptr %absbit to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %absbit, align 4
  %or.i282.5 = or i32 %59, 218104067
  store i32 %or.i282.5, ptr %absbit, align 4
  %add.ptr.i281.6 = getelementptr %struct.input_dev, ptr %call2, i32 0, i32 8, i32 1
  %60 = ptrtoint ptr %add.ptr.i281.6 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %add.ptr.i281.6, align 4
  %or.i282.6 = or i32 %61, 256
  store i32 %or.i282.6, ptr %add.ptr.i281.6, align 4
  %relbit = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 7
  %62 = ptrtoint ptr %relbit to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %relbit, align 4
  %or.i287.2 = or i32 %63, 259
  store i32 %or.i287.2, ptr %relbit, align 4
  %mscbit = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 9
  %64 = ptrtoint ptr %mscbit to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mscbit, align 4
  %or.i288 = or i32 %65, 1
  store i32 %or.i288, ptr %mscbit, align 4
  %keybit = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 6
  %add.ptr.i292 = getelementptr %struct.input_dev, ptr %call2, i32 0, i32 6, i32 8
  %66 = ptrtoint ptr %add.ptr.i292 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %add.ptr.i292, align 4
  %or.i293.2 = or i32 %67, 458752
  store i32 %or.i293.2, ptr %add.ptr.i292, align 4
  %add.ptr.i292.3 = getelementptr %struct.input_dev, ptr %call2, i32 0, i32 6, i32 10
  %68 = ptrtoint ptr %add.ptr.i292.3 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %add.ptr.i292.3, align 4
  %or.i293.12 = or i32 %69, 7391
  store i32 %or.i293.12, ptr %add.ptr.i292.3, align 4
  br label %for.body81

for.body81:                                       ; preds = %for.body81.for.body81_crit_edge, %if.end21
  %i.4313 = phi i32 [ 0, %if.end21 ], [ %inc86, %for.body81.for.body81_crit_edge ]
  %arrayidx82 = getelementptr [34 x i32], ptr @macroKeyEvents, i32 0, i32 %i.4313
  %70 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx82, align 4
  %rem.i294 = and i32 %71, 31
  %shl.i295 = shl nuw i32 1, %rem.i294
  %div2.i296 = lshr i32 %71, 5
  %add.ptr.i297 = getelementptr i32, ptr %keybit, i32 %div2.i296
  %72 = ptrtoint ptr %add.ptr.i297 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %add.ptr.i297, align 4
  %or.i298 = or i32 %shl.i295, %73
  store i32 %or.i298, ptr %add.ptr.i297, align 4
  %inc86 = add nuw nsw i32 %i.4313, 1
  %exitcond.not = icmp eq i32 %inc86, 34
  br i1 %exitcond.not, label %for.end87, label %for.body81.for.body81_crit_edge

for.body81.for.body81_crit_edge:                  ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body81

for.end87:                                        ; preds = %for.body81
  tail call void @input_set_abs_params(ptr noundef %call2, i32 noundef 0, i32 noundef 0, i32 noundef 2999, i32 noundef 0, i32 noundef 0) #11
  tail call void @input_set_abs_params(ptr noundef %call2, i32 noundef 1, i32 noundef 0, i32 noundef 2249, i32 noundef 0, i32 noundef 0) #11
  tail call void @input_set_abs_params(ptr noundef %call2, i32 noundef 24, i32 noundef 0, i32 noundef 511, i32 noundef 0, i32 noundef 0) #11
  tail call void @input_set_abs_params(ptr noundef %call2, i32 noundef 26, i32 noundef -128, i32 noundef 127, i32 noundef 0, i32 noundef 0) #11
  tail call void @input_set_abs_params(ptr noundef %call2, i32 noundef 27, i32 noundef -128, i32 noundef 127, i32 noundef 0, i32 noundef 0) #11
  tail call void @input_set_abs_params(ptr noundef %call2, i32 noundef 8, i32 noundef 0, i32 noundef 1023, i32 noundef 0, i32 noundef 0) #11
  %74 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cur_altsetting, align 4
  %call89 = call i32 @usb_find_common_endpoints(ptr noundef %75, ptr noundef null, ptr noundef null, ptr noundef nonnull %endpoint, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end96, label %do.end94

do.end94:                                         ; preds = %for.end87
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev45, ptr noundef nonnull @.str.15) #15
  br label %fail3

if.end96:                                         ; preds = %for.end87
  %76 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %urb, align 8
  %78 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %endpoint, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %bEndpointAddress, align 1
  %conv98 = zext i8 %81 to i32
  %82 = ptrtoint ptr %add.ptr.i299 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %add.ptr.i299, align 8
  %shl.i300 = shl i32 %83, 8
  %shl1.i = shl nuw nsw i32 %conv98, 15
  %or.i301 = or i32 %shl1.i, %shl.i300
  %or100 = or i32 %or.i301, 1073741952
  %84 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %data, align 8
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %79, i32 0, i32 5
  %86 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %bInterval, align 1
  %conv102 = zext i8 %87 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %77, i32 0, i32 8
  %88 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %add.ptr.i299, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %77, i32 0, i32 10
  %89 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %or100, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %77, i32 0, i32 14
  %90 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %85, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %77, i32 0, i32 19
  %91 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 8, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %77, i32 0, i32 28
  %92 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @aiptek_irq, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %77, i32 0, i32 27
  %93 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call7.i.i, ptr %context4.i, align 4
  %speed.i = getelementptr i8, ptr %1, i32 -100
  %94 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %95)
  %cmp.i = icmp eq i32 %95, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %95)
  %cmp6.i = icmp ugt i32 %95, 4
  %or.cond.i = or i1 %cmp.i, %cmp6.i
  br i1 %or.cond.i, label %if.then.i, label %if.end96.usb_fill_int_urb.exit_crit_edge

if.end96.usb_fill_int_urb.exit_crit_edge:         ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  br label %usb_fill_int_urb.exit

if.then.i:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  %96 = call i32 @llvm.smax.i32(i32 %conv102, i32 1) #11
  %97 = call i32 @llvm.umin.i32(i32 %96, i32 16) #11
  %sub.i = add nsw i32 %97, -1
  %shl.i302 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i, %if.end96.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i302, %if.then.i ], [ %conv102, %if.end96.usb_fill_int_urb.exit_crit_edge ]
  %98 = getelementptr inbounds %struct.urb, ptr %77, i32 0, i32 25
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %interval.sink.i, ptr %98, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %77, i32 0, i32 23
  %100 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 -1, ptr %start_frame.i, align 4
  %101 = ptrtoint ptr %data_dma to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %data_dma, align 4
  %103 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %urb, align 8
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %104, i32 0, i32 15
  %105 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %102, ptr %transfer_dma, align 4
  %106 = load ptr, ptr %urb, align 8
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %106, i32 0, i32 13
  %107 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %transfer_flags, align 4
  %or106 = or i32 %108, 4
  store i32 %or106, ptr %transfer_flags, align 4
  %109 = ptrtoint ptr %programmableDelay to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %3, ptr %programmableDelay, align 4
  %call114 = call fastcc i32 @aiptek_program_tablet(ptr noundef nonnull %call7.i.i)
  %110 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %call7.i.i, align 8
  %absinfo.i = getelementptr inbounds %struct.input_dev, ptr %111, i32 0, i32 26
  %112 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i = icmp eq ptr %113, null
  br i1 %tobool.not.i, label %usb_fill_int_urb.exit.for.inc127_crit_edge, label %input_abs_get_max.exit

usb_fill_int_urb.exit.for.inc127_crit_edge:       ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc127

input_abs_get_max.exit:                           ; preds = %usb_fill_int_urb.exit
  %maximum.i = getelementptr %struct.input_absinfo, ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %maximum.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %maximum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp117 = icmp sgt i32 %115, 0
  br i1 %cmp117, label %input_abs_get_max.exit.if.end137_crit_edge, label %input_abs_get_max.exit.for.inc127_crit_edge

input_abs_get_max.exit.for.inc127_crit_edge:      ; preds = %input_abs_get_max.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc127

input_abs_get_max.exit.if.end137_crit_edge:       ; preds = %input_abs_get_max.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end137

for.inc127:                                       ; preds = %input_abs_get_max.exit.for.inc127_crit_edge, %usb_fill_int_urb.exit.for.inc127_crit_edge
  %116 = ptrtoint ptr %programmableDelay to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 50, ptr %programmableDelay, align 4
  %call114.1 = call fastcc i32 @aiptek_program_tablet(ptr noundef nonnull %call7.i.i)
  %117 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %call7.i.i, align 8
  %absinfo.i.1 = getelementptr inbounds %struct.input_dev, ptr %118, i32 0, i32 26
  %119 = ptrtoint ptr %absinfo.i.1 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %absinfo.i.1, align 8
  %tobool.not.i.1 = icmp eq ptr %120, null
  br i1 %tobool.not.i.1, label %for.inc127.for.inc127.1_crit_edge, label %input_abs_get_max.exit.1

for.inc127.for.inc127.1_crit_edge:                ; preds = %for.inc127
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc127.1

input_abs_get_max.exit.1:                         ; preds = %for.inc127
  %maximum.i.1 = getelementptr %struct.input_absinfo, ptr %120, i32 0, i32 2
  %121 = ptrtoint ptr %maximum.i.1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %maximum.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %cmp117.1 = icmp sgt i32 %122, 0
  br i1 %cmp117.1, label %input_abs_get_max.exit.1.if.end137_crit_edge, label %input_abs_get_max.exit.1.for.inc127.1_crit_edge

input_abs_get_max.exit.1.for.inc127.1_crit_edge:  ; preds = %input_abs_get_max.exit.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc127.1

input_abs_get_max.exit.1.if.end137_crit_edge:     ; preds = %input_abs_get_max.exit.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end137

for.inc127.1:                                     ; preds = %input_abs_get_max.exit.1.for.inc127.1_crit_edge, %for.inc127.for.inc127.1_crit_edge
  %123 = ptrtoint ptr %programmableDelay to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 400, ptr %programmableDelay, align 4
  %call114.2 = call fastcc i32 @aiptek_program_tablet(ptr noundef nonnull %call7.i.i)
  %124 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %call7.i.i, align 8
  %absinfo.i.2 = getelementptr inbounds %struct.input_dev, ptr %125, i32 0, i32 26
  %126 = ptrtoint ptr %absinfo.i.2 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %absinfo.i.2, align 8
  %tobool.not.i.2 = icmp eq ptr %127, null
  br i1 %tobool.not.i.2, label %for.inc127.1.for.inc127.2_crit_edge, label %input_abs_get_max.exit.2

for.inc127.1.for.inc127.2_crit_edge:              ; preds = %for.inc127.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc127.2

input_abs_get_max.exit.2:                         ; preds = %for.inc127.1
  %maximum.i.2 = getelementptr %struct.input_absinfo, ptr %127, i32 0, i32 2
  %128 = ptrtoint ptr %maximum.i.2 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %maximum.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp117.2 = icmp sgt i32 %129, 0
  br i1 %cmp117.2, label %input_abs_get_max.exit.2.if.end137_crit_edge, label %input_abs_get_max.exit.2.for.inc127.2_crit_edge

input_abs_get_max.exit.2.for.inc127.2_crit_edge:  ; preds = %input_abs_get_max.exit.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc127.2

input_abs_get_max.exit.2.if.end137_crit_edge:     ; preds = %input_abs_get_max.exit.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end137

for.inc127.2:                                     ; preds = %input_abs_get_max.exit.2.for.inc127.2_crit_edge, %for.inc127.1.for.inc127.2_crit_edge
  %130 = ptrtoint ptr %programmableDelay to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 25, ptr %programmableDelay, align 4
  %call114.3 = call fastcc i32 @aiptek_program_tablet(ptr noundef nonnull %call7.i.i)
  %131 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %call7.i.i, align 8
  %absinfo.i.3 = getelementptr inbounds %struct.input_dev, ptr %132, i32 0, i32 26
  %133 = ptrtoint ptr %absinfo.i.3 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %absinfo.i.3, align 8
  %tobool.not.i.3 = icmp eq ptr %134, null
  br i1 %tobool.not.i.3, label %for.inc127.2.for.inc127.3_crit_edge, label %input_abs_get_max.exit.3

for.inc127.2.for.inc127.3_crit_edge:              ; preds = %for.inc127.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc127.3

input_abs_get_max.exit.3:                         ; preds = %for.inc127.2
  %maximum.i.3 = getelementptr %struct.input_absinfo, ptr %134, i32 0, i32 2
  %135 = ptrtoint ptr %maximum.i.3 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %maximum.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %cmp117.3 = icmp sgt i32 %136, 0
  br i1 %cmp117.3, label %input_abs_get_max.exit.3.if.end137_crit_edge, label %input_abs_get_max.exit.3.for.inc127.3_crit_edge

input_abs_get_max.exit.3.for.inc127.3_crit_edge:  ; preds = %input_abs_get_max.exit.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc127.3

input_abs_get_max.exit.3.if.end137_crit_edge:     ; preds = %input_abs_get_max.exit.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end137

for.inc127.3:                                     ; preds = %input_abs_get_max.exit.3.for.inc127.3_crit_edge, %for.inc127.2.for.inc127.3_crit_edge
  %137 = ptrtoint ptr %programmableDelay to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 100, ptr %programmableDelay, align 4
  %call114.4 = call fastcc i32 @aiptek_program_tablet(ptr noundef nonnull %call7.i.i)
  %138 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %call7.i.i, align 8
  %absinfo.i.4 = getelementptr inbounds %struct.input_dev, ptr %139, i32 0, i32 26
  %140 = ptrtoint ptr %absinfo.i.4 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %absinfo.i.4, align 8
  %tobool.not.i.4 = icmp eq ptr %141, null
  br i1 %tobool.not.i.4, label %for.inc127.3.for.inc127.4_crit_edge, label %input_abs_get_max.exit.4

for.inc127.3.for.inc127.4_crit_edge:              ; preds = %for.inc127.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc127.4

input_abs_get_max.exit.4:                         ; preds = %for.inc127.3
  %maximum.i.4 = getelementptr %struct.input_absinfo, ptr %141, i32 0, i32 2
  %142 = ptrtoint ptr %maximum.i.4 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %maximum.i.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %cmp117.4 = icmp sgt i32 %143, 0
  br i1 %cmp117.4, label %input_abs_get_max.exit.4.if.end137_crit_edge, label %input_abs_get_max.exit.4.for.inc127.4_crit_edge

input_abs_get_max.exit.4.for.inc127.4_crit_edge:  ; preds = %input_abs_get_max.exit.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc127.4

input_abs_get_max.exit.4.if.end137_crit_edge:     ; preds = %input_abs_get_max.exit.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end137

for.inc127.4:                                     ; preds = %input_abs_get_max.exit.4.for.inc127.4_crit_edge, %for.inc127.3.for.inc127.4_crit_edge
  %144 = ptrtoint ptr %programmableDelay to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 200, ptr %programmableDelay, align 4
  %call114.5 = call fastcc i32 @aiptek_program_tablet(ptr noundef nonnull %call7.i.i)
  %145 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %call7.i.i, align 8
  %absinfo.i.5 = getelementptr inbounds %struct.input_dev, ptr %146, i32 0, i32 26
  %147 = ptrtoint ptr %absinfo.i.5 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %absinfo.i.5, align 8
  %tobool.not.i.5 = icmp eq ptr %148, null
  br i1 %tobool.not.i.5, label %for.inc127.4.for.inc127.5_crit_edge, label %input_abs_get_max.exit.5

for.inc127.4.for.inc127.5_crit_edge:              ; preds = %for.inc127.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc127.5

input_abs_get_max.exit.5:                         ; preds = %for.inc127.4
  %maximum.i.5 = getelementptr %struct.input_absinfo, ptr %148, i32 0, i32 2
  %149 = ptrtoint ptr %maximum.i.5 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %maximum.i.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %cmp117.5 = icmp sgt i32 %150, 0
  br i1 %cmp117.5, label %input_abs_get_max.exit.5.if.end137_crit_edge, label %input_abs_get_max.exit.5.for.inc127.5_crit_edge

input_abs_get_max.exit.5.for.inc127.5_crit_edge:  ; preds = %input_abs_get_max.exit.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc127.5

input_abs_get_max.exit.5.if.end137_crit_edge:     ; preds = %input_abs_get_max.exit.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end137

for.inc127.5:                                     ; preds = %input_abs_get_max.exit.5.for.inc127.5_crit_edge, %for.inc127.4.for.inc127.5_crit_edge
  %151 = ptrtoint ptr %programmableDelay to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 300, ptr %programmableDelay, align 4
  %call114.6 = call fastcc i32 @aiptek_program_tablet(ptr noundef nonnull %call7.i.i)
  %152 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %call7.i.i, align 8
  %absinfo.i.6 = getelementptr inbounds %struct.input_dev, ptr %153, i32 0, i32 26
  %154 = ptrtoint ptr %absinfo.i.6 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %absinfo.i.6, align 8
  %tobool.not.i.6 = icmp eq ptr %155, null
  br i1 %tobool.not.i.6, label %for.inc127.5.do.end135_crit_edge, label %input_abs_get_max.exit.6

for.inc127.5.do.end135_crit_edge:                 ; preds = %for.inc127.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end135

input_abs_get_max.exit.6:                         ; preds = %for.inc127.5
  %maximum.i.6 = getelementptr %struct.input_absinfo, ptr %155, i32 0, i32 2
  %156 = ptrtoint ptr %maximum.i.6 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %maximum.i.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %cmp117.6 = icmp sgt i32 %157, 0
  br i1 %cmp117.6, label %input_abs_get_max.exit.6.if.end137_crit_edge, label %input_abs_get_max.exit.6.do.end135_crit_edge

input_abs_get_max.exit.6.do.end135_crit_edge:     ; preds = %input_abs_get_max.exit.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end135

input_abs_get_max.exit.6.if.end137_crit_edge:     ; preds = %input_abs_get_max.exit.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end137

do.end135:                                        ; preds = %input_abs_get_max.exit.6.do.end135_crit_edge, %for.inc127.5.do.end135_crit_edge
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev45, ptr noundef nonnull @.str.23) #15
  br label %fail3

if.end137:                                        ; preds = %input_abs_get_max.exit.6.if.end137_crit_edge, %input_abs_get_max.exit.5.if.end137_crit_edge, %input_abs_get_max.exit.4.if.end137_crit_edge, %input_abs_get_max.exit.3.if.end137_crit_edge, %input_abs_get_max.exit.2.if.end137_crit_edge, %input_abs_get_max.exit.1.if.end137_crit_edge, %input_abs_get_max.exit.if.end137_crit_edge
  %158 = ptrtoint ptr %programmableDelay to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %programmableDelay, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev45, ptr noundef nonnull @.str.19, i32 noundef %159) #15
  %driver_data.i.i303 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %160 = ptrtoint ptr %driver_data.i.i303 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %call7.i.i, ptr %driver_data.i.i303, align 4
  %call139 = call i32 @sysfs_create_group(ptr noundef %dev45, ptr noundef nonnull @aiptek_attribute_group) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %if.end146, label %do.end144

do.end144:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev45, ptr noundef nonnull @.str.26, i32 noundef %call139) #15
  br label %fail3

if.end146:                                        ; preds = %if.end137
  %161 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %call7.i.i, align 8
  %call148 = call i32 @input_register_device(ptr noundef %162) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %if.end146.cleanup_crit_edge, label %do.end153

if.end146.cleanup_crit_edge:                      ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end153:                                        ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev45, ptr noundef nonnull @.str.29, i32 noundef %call148) #15
  call void @sysfs_remove_group(ptr noundef %dev45, ptr noundef nonnull @aiptek_attribute_group) #11
  br label %fail3

fail3:                                            ; preds = %do.end153, %do.end144, %do.end135, %do.end94
  %err.0 = phi i32 [ %call89, %do.end94 ], [ -22, %do.end135 ], [ %call139, %do.end144 ], [ %call148, %do.end153 ]
  %163 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %urb, align 8
  call void @usb_free_urb(ptr noundef %164) #11
  br label %fail2

fail2:                                            ; preds = %fail3, %do.end19
  %err.1 = phi i32 [ %err.0, %fail3 ], [ -12, %do.end19 ]
  %165 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %data, align 8
  %167 = ptrtoint ptr %data_dma to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %data_dma, align 4
  call void @usb_free_coherent(ptr noundef %add.ptr.i299, i32 noundef 8, ptr noundef %166, i32 noundef %168) #11
  br label %fail1

fail1:                                            ; preds = %fail2, %do.end10, %do.end
  %err.2 = phi i32 [ %err.1, %fail2 ], [ -12, %do.end10 ], [ -12, %do.end ]
  %driver_data.i.i304 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %169 = ptrtoint ptr %driver_data.i.i304 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr null, ptr %driver_data.i.i304, align 4
  call void @input_free_device(ptr noundef %call2) #11
  call void @kfree(ptr noundef %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %fail1, %if.end146.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %fail1 ], [ 0, %if.end146.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endpoint) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aiptek_disconnect(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %urb = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %urb, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #11
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @input_unregister_device(ptr noundef %5) #11
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @aiptek_attribute_group) #11
  %6 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %urb, align 4
  tail call void @usb_free_urb(ptr noundef %7) #11
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 -128
  %data = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 15
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %data_dma = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %data_dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %add.ptr.i, i32 noundef 8, ptr noundef %11, i32 noundef %13) #11
  tail call void @kfree(ptr noundef nonnull %1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aiptek_open(ptr nocapture noundef readonly %inputdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %inputdev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %intf = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 -128
  %urb = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %urb, align 4
  %dev = getelementptr inbounds %struct.urb, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr.i, ptr %dev, align 4
  %9 = load ptr, ptr %urb, align 4
  %call3 = tail call i32 @usb_submit_urb(ptr noundef %9, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 0
  %. = select i1 %cmp.not, i32 0, i32 -5
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aiptek_close(ptr nocapture noundef readonly %inputdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %inputdev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %urb = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %urb, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_find_common_endpoints(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aiptek_irq(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %data1 = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %intf3 = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %intf3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intf3, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %do.body7 [
    i32 0, label %sw.epilog
    i32 -104, label %entry.do.body_crit_edge
    i32 -2, label %entry.do.body_crit_edge899
    i32 -108, label %entry.do.body_crit_edge900
  ]

entry.do.body_crit_edge900:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

entry.do.body_crit_edge899:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge899, %entry.do.body_crit_edge900
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aiptek_irq.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aiptek_irq, %if.then)) #11
          to label %cleanup [label %if.then], !srcloc !253

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 7
  %11 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aiptek_irq.__UNIQUE_ID_ddebug232, ptr noundef %dev, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32, i32 noundef %12) #11
  br label %cleanup

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aiptek_irq.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aiptek_irq, %if.then19)) #11
          to label %exit [label %if.then19], !srcloc !253

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  %dev20 = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 7
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aiptek_irq.__UNIQUE_ID_ddebug233, ptr noundef %dev20, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.32, i32 noundef %14) #11
  br label %exit

sw.epilog:                                        ; preds = %entry
  %inDelay = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %inDelay to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %inDelay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp = icmp eq i32 %16, 1
  br i1 %cmp, label %land.lhs.true, label %sw.epilog.if.end27_crit_edge

sw.epilog.if.end27_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

land.lhs.true:                                    ; preds = %sw.epilog
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %endDelay = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 11
  %18 = ptrtoint ptr %endDelay to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %endDelay, align 4
  %sub = sub i32 %17, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp25 = icmp slt i32 %sub, 0
  br i1 %cmp25, label %land.lhs.true.exit_crit_edge, label %land.lhs.true.if.end27_crit_edge

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

land.lhs.true.exit_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.end27:                                         ; preds = %land.lhs.true.if.end27_crit_edge, %sw.epilog.if.end27_crit_edge
  %20 = ptrtoint ptr %inDelay to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %inDelay, align 4
  %eventCount = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 9
  %21 = ptrtoint ptr %eventCount to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %eventCount, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr %eventCount, align 4
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %3, align 1
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.92)
  switch i8 %24, label %do.body546 [
    i8 1, label %if.then31
    i8 2, label %if.then85
    i8 3, label %if.then204
    i8 4, label %if.then316
    i8 5, label %if.then415
    i8 6, label %if.then516
  ]

if.then31:                                        ; preds = %if.end27
  %coordinateMode = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 5, i32 1
  %26 = ptrtoint ptr %coordinateMode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %coordinateMode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp32 = icmp eq i32 %27, 1
  br i1 %cmp32, label %if.then34, label %if.else

if.then34:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  %diagnostic = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 8
  %28 = ptrtoint ptr %diagnostic to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %diagnostic, align 4
  br label %if.end570

if.else:                                          ; preds = %if.then31
  %arrayidx35 = getelementptr i8, ptr %3, i32 2
  %29 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx35, align 1
  %conv36 = sext i8 %30 to i32
  %arrayidx37 = getelementptr i8, ptr %3, i32 3
  %31 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx37, align 1
  %conv38 = sext i8 %32 to i32
  %arrayidx39 = getelementptr i8, ptr %3, i32 1
  %33 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %34 to i32
  %and = and i32 %conv40, 7
  %mouseButtonLeft = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 5, i32 8
  %35 = ptrtoint ptr %mouseButtonLeft to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mouseButtonLeft, align 4
  %37 = lshr i32 %36, 2
  %and44 = and i32 %37, %conv40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %cmp45.not = icmp ne i32 %and44, 0
  %mouseButtonRight = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 5, i32 10
  %38 = ptrtoint ptr %mouseButtonRight to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mouseButtonRight, align 4
  %40 = lshr i32 %39, 2
  %and51 = and i32 %40, %conv40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %cmp52.not = icmp ne i32 %and51, 0
  %mouseButtonMiddle = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 5, i32 9
  %41 = ptrtoint ptr %mouseButtonMiddle to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mouseButtonMiddle, align 4
  %43 = lshr i32 %42, 2
  %and59 = and i32 %43, %conv40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %cmp60.not = icmp ne i32 %and59, 0
  %lnot.ext.i = zext i1 %cmp45.not to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 272, i32 noundef %lnot.ext.i) #11
  %lnot.ext.i887 = zext i1 %cmp60.not to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 274, i32 noundef %lnot.ext.i887) #11
  %lnot.ext.i888 = zext i1 %cmp52.not to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 273, i32 noundef %lnot.ext.i888) #11
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 40, i32 noundef 17) #11
  tail call void @input_event(ptr noundef %5, i32 noundef 2, i32 noundef 0, i32 noundef %conv36) #11
  tail call void @input_event(ptr noundef %5, i32 noundef 2, i32 noundef 1, i32 noundef %conv38) #11
  %wheel = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 5, i32 5
  %44 = ptrtoint ptr %wheel to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %wheel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10101, i32 %45)
  %cmp64.not = icmp eq i32 %45, -10101
  br i1 %cmp64.not, label %if.else.if.end71_crit_edge, label %if.then66

if.else.if.end71_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71

if.then66:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @input_event(ptr noundef %5, i32 noundef 2, i32 noundef 8, i32 noundef %45) #11
  %46 = ptrtoint ptr %wheel to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -10101, ptr %wheel, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then66, %if.else.if.end71_crit_edge
  %lastMacro = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 13
  %47 = ptrtoint ptr %lastMacro to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %lastMacro, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %cmp72.not = icmp eq i32 %48, -1
  br i1 %cmp72.not, label %if.end71.if.end78_crit_edge, label %if.then74

if.end71.if.end78_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

if.then74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx76 = getelementptr [34 x i32], ptr @macroKeyEvents, i32 0, i32 %48
  %49 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx76, align 4
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef %50, i32 noundef 0) #11
  %51 = ptrtoint ptr %lastMacro to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %lastMacro, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then74, %if.end71.if.end78_crit_edge
  tail call void @input_event(ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  br label %if.end570

if.then85:                                        ; preds = %if.end27
  %coordinateMode87 = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 5, i32 1
  %52 = ptrtoint ptr %coordinateMode87 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %coordinateMode87, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp88 = icmp eq i32 %53, 0
  br i1 %cmp88, label %if.then90, label %if.else92

if.then90:                                        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #13
  %diagnostic91 = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 8
  %54 = ptrtoint ptr %diagnostic91 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 2, ptr %diagnostic91, align 4
  br label %if.end570

if.else92:                                        ; preds = %if.then85
  %curSetting86 = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 5
  %55 = ptrtoint ptr %curSetting86 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %curSetting86, align 4
  %.off = add i32 %56, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.else102, label %if.then100

if.then100:                                       ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #13
  %diagnostic101 = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 8
  %57 = ptrtoint ptr %diagnostic101 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 3, ptr %diagnostic101, align 4
  br label %if.end570

if.else102:                                       ; preds = %if.else92
  %add.ptr = getelementptr i8, ptr %3, i32 1
  %58 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %59 = load i16, ptr %add.ptr, align 1
  %60 = tail call i16 @llvm.bswap.i16(i16 %59) #11
  %conv104 = zext i16 %60 to i32
  %add.ptr105 = getelementptr i8, ptr %3, i32 3
  %61 = ptrtoint ptr %add.ptr105 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 2)
  %62 = load i16, ptr %add.ptr105, align 1
  %63 = tail call i16 @llvm.bswap.i16(i16 %62) #11
  %conv107 = zext i16 %63 to i32
  %add.ptr108 = getelementptr i8, ptr %3, i32 6
  %64 = ptrtoint ptr %add.ptr108 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 2)
  %65 = load i16, ptr %add.ptr108, align 1
  %66 = tail call i16 @llvm.bswap.i16(i16 %65) #11
  %conv110 = zext i16 %66 to i32
  %arrayidx111 = getelementptr i8, ptr %3, i32 5
  %67 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx111, align 1
  %conv112 = zext i8 %68 to i32
  %and113 = and i32 %conv112, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %cmp114.not = icmp eq i32 %and113, 0
  %and119 = and i32 %conv112, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %cmp120.not = icmp eq i32 %and119, 0
  %not.cmp120.not = xor i1 %cmp120.not, true
  %cond122 = zext i1 %not.cmp120.not to i32
  %and131 = and i32 %conv112, 24
  %stylusButtonLower = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 5, i32 7
  %69 = ptrtoint ptr %stylusButtonLower to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %stylusButtonLower, align 4
  %and135 = and i32 %70, %conv112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %cmp136.not = icmp ne i32 %and135, 0
  %stylusButtonUpper = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 5, i32 6
  %71 = ptrtoint ptr %stylusButtonUpper to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %stylusButtonUpper, align 4
  %and142 = and i32 %72, %conv112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142)
  %cmp143.not = icmp ne i32 %and142, 0
  br i1 %cmp114.not, label %if.else102.if.end570_crit_edge, label %if.then148

if.else102.if.end570_crit_edge:                   ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end570

if.then148:                                       ; preds = %if.else102
  %previousToolMode = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 14
  %73 = ptrtoint ptr %previousToolMode to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %previousToolMode, align 4
  %toolMode = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 5, i32 2
  %75 = ptrtoint ptr %toolMode to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %toolMode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %76)
  %cmp150.not = icmp eq i32 %74, %76
  br i1 %cmp150.not, label %if.then148.if.end159_crit_edge, label %if.then152

if.then148.if.end159_crit_edge:                   ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end159

if.then152:                                       ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef %74, i32 noundef 0) #11
  %77 = ptrtoint ptr %toolMode to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %toolMode, align 4
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef %78, i32 noundef 1) #11
  %79 = ptrtoint ptr %toolMode to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %toolMode, align 4
  %81 = ptrtoint ptr %previousToolMode to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %previousToolMode, align 4
  br label %if.end159

if.end159:                                        ; preds = %if.then152, %if.then148.if.end159_crit_edge
  br i1 %cmp120.not, label %if.end159.if.end187_crit_edge, label %if.then162

if.end159.if.end187_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end187

if.then162:                                       ; preds = %if.end159
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 0, i32 noundef %conv104) #11
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 1, i32 noundef %conv107) #11
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 24, i32 noundef %conv110) #11
  %82 = lshr i32 %conv112, 2
  %.lobit = and i32 %82, 1
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 330, i32 noundef %.lobit) #11
  %lnot.ext.i890 = zext i1 %cmp136.not to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 331, i32 noundef %lnot.ext.i890) #11
  %lnot.ext.i891 = zext i1 %cmp143.not to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 332, i32 noundef %lnot.ext.i891) #11
  %xTilt = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 5, i32 3
  %83 = ptrtoint ptr %xTilt to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %xTilt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10101, i32 %84)
  %cmp164.not = icmp eq i32 %84, -10101
  br i1 %cmp164.not, label %if.then162.if.end169_crit_edge, label %if.then166

if.then162.if.end169_crit_edge:                   ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end169

if.then166:                                       ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 26, i32 noundef %84) #11
  br label %if.end169

if.end169:                                        ; preds = %if.then166, %if.then162.if.end169_crit_edge
  %yTilt = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 5, i32 4
  %85 = ptrtoint ptr %yTilt to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %yTilt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10101, i32 %86)
  %cmp171.not = icmp eq i32 %86, -10101
  br i1 %cmp171.not, label %if.end169.if.end176_crit_edge, label %if.then173

if.end169.if.end176_crit_edge:                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end176

if.then173:                                       ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 27, i32 noundef %86) #11
  br label %if.end176

if.end176:                                        ; preds = %if.then173, %if.end169.if.end176_crit_edge
  %wheel178 = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 5, i32 5
  %87 = ptrtoint ptr %wheel178 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %wheel178, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10101, i32 %88)
  %cmp179.not = icmp eq i32 %88, -10101
  br i1 %cmp179.not, label %if.end176.if.end187_crit_edge, label %if.then181

if.end176.if.end187_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end187

if.then181:                                       ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 8, i32 noundef %88) #11
  %89 = ptrtoint ptr %wheel178 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 -10101, ptr %wheel178, align 4
  br label %if.end187

if.end187:                                        ; preds = %if.then181, %if.end176.if.end187_crit_edge, %if.end159.if.end187_crit_edge
  %or = or i32 %cond122, 32
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 40, i32 noundef %or) #11
  %lastMacro188 = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 13
  %90 = ptrtoint ptr %lastMacro188 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %lastMacro188, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %91)
  %cmp189.not = icmp eq i32 %91, -1
  br i1 %cmp189.not, label %if.end187.if.end195_crit_edge, label %if.then191

if.end187.if.end195_crit_edge:                    ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end195

if.then191:                                       ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx193 = getelementptr [34 x i32], ptr @macroKeyEvents, i32 0, i32 %91
  %92 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx193, align 4
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef %93, i32 noundef 0) #11
  %94 = ptrtoint ptr %lastMacro188 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 -1, ptr %lastMacro188, align 4
  br label %if.end195

if.end195:                                        ; preds = %if.then191, %if.end187.if.end195_crit_edge
  tail call void @input_event(ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  br label %if.end570

if.then204:                                       ; preds = %if.end27
  %coordinateMode206 = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 5, i32 1
  %95 = ptrtoint ptr %coordinateMode206 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %coordinateMode206, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp207 = icmp eq i32 %96, 0
  br i1 %cmp207, label %if.then209, label %if.else211

if.then209:                                       ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #13
  %diagnostic210 = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 8
  %97 = ptrtoint ptr %diagnostic210 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 2, ptr %diagnostic210, align 4
  br label %if.end570

if.else211:                                       ; preds = %if.then204
  %curSetting205 = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 5
  %98 = ptrtoint ptr %curSetting205 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %curSetting205, align 4
  %100 = zext i32 %99 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %99, label %if.then221 [
    i32 0, label %if.else211.if.else223_crit_edge
    i32 2, label %if.else211.if.else223_crit_edge901
  ]

if.else211.if.else223_crit_edge901:               ; preds = %if.else211
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else223

if.else211.if.else223_crit_edge:                  ; preds = %if.else211
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else223

if.then221:                                       ; preds = %if.else211
  call void @__sanitizer_cov_trace_pc() #13
  %diagnostic222 = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 8
  %101 = ptrtoint ptr %diagnostic222 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 3, ptr %diagnostic222, align 4
  br label %if.end570

if.else223:                                       ; preds = %if.else211.if.else223_crit_edge, %if.else211.if.else223_crit_edge901
  %add.ptr224 = getelementptr i8, ptr %3, i32 1
  %102 = ptrtoint ptr %add.ptr224 to i32
  call void @__asan_loadN_noabort(i32 %102, i32 2)
  %103 = load i16, ptr %add.ptr224, align 1
  %104 = tail call i16 @llvm.bswap.i16(i16 %103) #11
  %conv226 = zext i16 %104 to i32
  %add.ptr227 = getelementptr i8, ptr %3, i32 3
  %105 = ptrtoint ptr %add.ptr227 to i32
  call void @__asan_loadN_noabort(i32 %105, i32 2)
  %106 = load i16, ptr %add.ptr227, align 1
  %107 = tail call i16 @llvm.bswap.i16(i16 %106) #11
  %conv229 = zext i16 %107 to i32
  %arrayidx230 = getelementptr i8, ptr %3, i32 5
  %108 = ptrtoint ptr %arrayidx230 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx230, align 1
  %conv231 = zext i8 %109 to i32
  %and232 = and i32 %conv231, 28
  %and235 = and i32 %conv231, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and235)
  %cmp236.not = icmp eq i32 %and235, 0
  %and241 = and i32 %conv231, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and241)
  %cmp242.not = icmp eq i32 %and241, 0
  %not.cmp242.not = xor i1 %cmp242.not, true
  %cond244 = zext i1 %not.cmp242.not to i32
  %mouseButtonLeft248 = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 5, i32 8
  %110 = ptrtoint ptr %mouseButtonLeft248 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %mouseButtonLeft248, align 4
  %and249 = and i32 %111, %conv231
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and249)
  %cmp250.not = icmp ne i32 %and249, 0
  %mouseButtonRight256 = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 5, i32 10
  %112 = ptrtoint ptr %mouseButtonRight256 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %mouseButtonRight256, align 4
  %and257 = and i32 %113, %conv231
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and257)
  %cmp258.not = icmp ne i32 %and257, 0
  %mouseButtonMiddle264 = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 5, i32 9
  %114 = ptrtoint ptr %mouseButtonMiddle264 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %mouseButtonMiddle264, align 4
  %and265 = and i32 %115, %conv231
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and265)
  %cmp266.not = icmp ne i32 %and265, 0
  br i1 %cmp236.not, label %if.else223.if.end570_crit_edge, label %if.then271

if.else223.if.end570_crit_edge:                   ; preds = %if.else223
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end570

if.then271:                                       ; preds = %if.else223
  %previousToolMode272 = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 14
  %116 = ptrtoint ptr %previousToolMode272 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %previousToolMode272, align 4
  %toolMode274 = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 5, i32 2
  %118 = ptrtoint ptr %toolMode274 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %toolMode274, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %119)
  %cmp275.not = icmp eq i32 %117, %119
  br i1 %cmp275.not, label %if.then271.if.end284_crit_edge, label %if.then277

if.then271.if.end284_crit_edge:                   ; preds = %if.then271
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end284

if.then277:                                       ; preds = %if.then271
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef %117, i32 noundef 0) #11
  %120 = ptrtoint ptr %toolMode274 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %toolMode274, align 4
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef %121, i32 noundef 1) #11
  %122 = ptrtoint ptr %toolMode274 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %toolMode274, align 4
  %124 = ptrtoint ptr %previousToolMode272 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %previousToolMode272, align 4
  br label %if.end284

if.end284:                                        ; preds = %if.then277, %if.then271.if.end284_crit_edge
  br i1 %cmp242.not, label %if.end284.if.end298_crit_edge, label %if.then287

if.end284.if.end298_crit_edge:                    ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end298

if.then287:                                       ; preds = %if.end284
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 0, i32 noundef %conv226) #11
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 1, i32 noundef %conv229) #11
  %lnot.ext.i892 = zext i1 %cmp250.not to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 272, i32 noundef %lnot.ext.i892) #11
  %lnot.ext.i893 = zext i1 %cmp266.not to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 274, i32 noundef %lnot.ext.i893) #11
  %lnot.ext.i894 = zext i1 %cmp258.not to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 273, i32 noundef %lnot.ext.i894) #11
  %wheel289 = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 5, i32 5
  %125 = ptrtoint ptr %wheel289 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %wheel289, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10101, i32 %126)
  %cmp290.not = icmp eq i32 %126, -10101
  br i1 %cmp290.not, label %if.then287.if.end298_crit_edge, label %if.then292

if.then287.if.end298_crit_edge:                   ; preds = %if.then287
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end298

if.then292:                                       ; preds = %if.then287
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 8, i32 noundef %126) #11
  %127 = ptrtoint ptr %wheel289 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 -10101, ptr %wheel289, align 4
  br label %if.end298

if.end298:                                        ; preds = %if.then292, %if.then287.if.end298_crit_edge, %if.end284.if.end298_crit_edge
  %or299 = or i32 %cond244, 64
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 40, i32 noundef %or299) #11
  %lastMacro300 = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 13
  %128 = ptrtoint ptr %lastMacro300 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %lastMacro300, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %129)
  %cmp301.not = icmp eq i32 %129, -1
  br i1 %cmp301.not, label %if.end298.if.end307_crit_edge, label %if.then303

if.end298.if.end307_crit_edge:                    ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end307

if.then303:                                       ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx305 = getelementptr [34 x i32], ptr @macroKeyEvents, i32 0, i32 %129
  %130 = ptrtoint ptr %arrayidx305 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx305, align 4
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef %131, i32 noundef 0) #11
  %132 = ptrtoint ptr %lastMacro300 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 -1, ptr %lastMacro300, align 4
  br label %if.end307

if.end307:                                        ; preds = %if.then303, %if.end298.if.end307_crit_edge
  tail call void @input_event(ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  br label %if.end570

if.then316:                                       ; preds = %if.end27
  %arrayidx317 = getelementptr i8, ptr %3, i32 1
  %133 = ptrtoint ptr %arrayidx317 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx317, align 1
  %conv318 = zext i8 %134 to i32
  %and319 = and i32 %conv318, 24
  %and322 = and i32 %conv318, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and322)
  %cmp323.not = icmp eq i32 %and322, 0
  %and328 = lshr i32 %conv318, 1
  %and328.lobit = and i32 %and328, 1
  %135 = and i32 %conv318, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %135)
  %.not = icmp eq i32 %135, 7
  br i1 %.not, label %land.lhs.true359, label %if.then316.cond.end_crit_edge

if.then316.cond.end_crit_edge:                    ; preds = %if.then316
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

land.lhs.true359:                                 ; preds = %if.then316
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx360 = getelementptr i8, ptr %3, i32 3
  %136 = ptrtoint ptr %arrayidx360 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx360, align 1
  %conv361 = zext i8 %137 to i32
  %and362 = and i32 %conv361, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and362)
  %tobool363.not = icmp eq i32 %and362, 0
  %138 = lshr i32 %conv361, 1
  %spec.select = select i1 %tobool363.not, i32 %138, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true359, %if.then316.cond.end_crit_edge
  %cond367 = phi i32 [ -1, %if.then316.cond.end_crit_edge ], [ %spec.select, %land.lhs.true359 ]
  br i1 %cmp323.not, label %cond.end.if.end386_crit_edge, label %if.then372

cond.end.if.end386_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end386

if.then372:                                       ; preds = %cond.end
  %previousToolMode373 = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 14
  %139 = ptrtoint ptr %previousToolMode373 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %previousToolMode373, align 4
  %toolMode375 = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 5, i32 2
  %141 = ptrtoint ptr %toolMode375 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %toolMode375, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %140, i32 %142)
  %cmp376.not = icmp eq i32 %140, %142
  br i1 %cmp376.not, label %if.then372.if.end386_crit_edge, label %if.then378

if.then372.if.end386_crit_edge:                   ; preds = %if.then372
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end386

if.then378:                                       ; preds = %if.then372
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef %140, i32 noundef 0) #11
  %143 = ptrtoint ptr %toolMode375 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %toolMode375, align 4
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef %144, i32 noundef 1) #11
  %145 = ptrtoint ptr %toolMode375 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %toolMode375, align 4
  %147 = ptrtoint ptr %previousToolMode373 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %previousToolMode373, align 4
  br label %if.end386

if.end386:                                        ; preds = %if.then378, %if.then372.if.end386_crit_edge, %cond.end.if.end386_crit_edge
  %lastMacro387 = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 13
  %148 = ptrtoint ptr %lastMacro387 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %lastMacro387, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %149)
  %cmp388.not = icmp eq i32 %149, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %149, i32 %cond367)
  %cmp392.not = icmp eq i32 %149, %cond367
  %or.cond = select i1 %cmp388.not, i1 true, i1 %cmp392.not
  br i1 %or.cond, label %if.end386.if.end398_crit_edge, label %if.then394

if.end386.if.end398_crit_edge:                    ; preds = %if.end386
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end398

if.then394:                                       ; preds = %if.end386
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx396 = getelementptr [34 x i32], ptr @macroKeyEvents, i32 0, i32 %149
  %150 = ptrtoint ptr %arrayidx396 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx396, align 4
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef %151, i32 noundef 0) #11
  %152 = ptrtoint ptr %lastMacro387 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 -1, ptr %lastMacro387, align 4
  br label %if.end398

if.end398:                                        ; preds = %if.then394, %if.end386.if.end398_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cond367)
  %cmp399.not = icmp eq i32 %cond367, -1
  br i1 %cmp399.not, label %if.end398.if.end408_crit_edge, label %land.lhs.true401

if.end398.if.end408_crit_edge:                    ; preds = %if.end398
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end408

land.lhs.true401:                                 ; preds = %if.end398
  %153 = ptrtoint ptr %lastMacro387 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %lastMacro387, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond367, i32 %154)
  %cmp403.not = icmp eq i32 %cond367, %154
  br i1 %cmp403.not, label %land.lhs.true401.if.end408_crit_edge, label %if.then405

land.lhs.true401.if.end408_crit_edge:             ; preds = %land.lhs.true401
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end408

if.then405:                                       ; preds = %land.lhs.true401
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx406 = getelementptr [34 x i32], ptr @macroKeyEvents, i32 0, i32 %cond367
  %155 = ptrtoint ptr %arrayidx406 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx406, align 4
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef %156, i32 noundef 1) #11
  %157 = ptrtoint ptr %lastMacro387 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %cond367, ptr %lastMacro387, align 4
  br label %if.end408

if.end408:                                        ; preds = %if.then405, %land.lhs.true401.if.end408_crit_edge, %if.end398.if.end408_crit_edge
  %or409 = or i32 %and328.lobit, 32
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 40, i32 noundef %or409) #11
  tail call void @input_event(ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  br label %if.end570

if.then415:                                       ; preds = %if.end27
  %arrayidx416 = getelementptr i8, ptr %3, i32 1
  %158 = ptrtoint ptr %arrayidx416 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx416, align 1
  %conv417 = zext i8 %159 to i32
  %and418 = and i32 %conv417, 28
  %and421 = and i32 %conv417, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and421)
  %cmp422.not = icmp eq i32 %and421, 0
  %and427 = lshr i32 %conv417, 1
  %and427.lobit = and i32 %and427, 1
  %mouseButtonLeft434 = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 5, i32 8
  %160 = ptrtoint ptr %mouseButtonLeft434 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %mouseButtonLeft434, align 4
  %and435 = and i32 %161, %conv417
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and435)
  %cmp436.not = icmp eq i32 %and435, 0
  %162 = and i32 %conv417, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %162)
  %163 = icmp ne i32 %162, 3
  %brmerge878 = select i1 %163, i1 true, i1 %cmp436.not
  br i1 %brmerge878, label %if.then415.cond.end470_crit_edge, label %land.lhs.true460

if.then415.cond.end470_crit_edge:                 ; preds = %if.then415
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end470

land.lhs.true460:                                 ; preds = %if.then415
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx461 = getelementptr i8, ptr %3, i32 3
  %164 = ptrtoint ptr %arrayidx461 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %arrayidx461, align 1
  %conv462 = zext i8 %165 to i32
  %and463 = and i32 %conv462, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and463)
  %tobool464.not = icmp eq i32 %and463, 0
  %166 = lshr i32 %conv462, 1
  %spec.select879 = select i1 %tobool464.not, i32 %166, i32 0
  br label %cond.end470

cond.end470:                                      ; preds = %land.lhs.true460, %if.then415.cond.end470_crit_edge
  %cond471 = phi i32 [ 0, %if.then415.cond.end470_crit_edge ], [ %spec.select879, %land.lhs.true460 ]
  br i1 %cmp422.not, label %cond.end470.if.end487_crit_edge, label %if.then473

cond.end470.if.end487_crit_edge:                  ; preds = %cond.end470
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end487

if.then473:                                       ; preds = %cond.end470
  %previousToolMode474 = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 14
  %167 = ptrtoint ptr %previousToolMode474 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %previousToolMode474, align 4
  %toolMode476 = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 5, i32 2
  %169 = ptrtoint ptr %toolMode476 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %toolMode476, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %168, i32 %170)
  %cmp477.not = icmp eq i32 %168, %170
  br i1 %cmp477.not, label %if.then473.if.end487_crit_edge, label %if.then479

if.then473.if.end487_crit_edge:                   ; preds = %if.then473
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end487

if.then479:                                       ; preds = %if.then473
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef %168, i32 noundef 0) #11
  %171 = ptrtoint ptr %toolMode476 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %toolMode476, align 4
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef %172, i32 noundef 1) #11
  %173 = ptrtoint ptr %toolMode476 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %toolMode476, align 4
  %175 = ptrtoint ptr %previousToolMode474 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %174, ptr %previousToolMode474, align 4
  br label %if.end487

if.end487:                                        ; preds = %if.then479, %if.then473.if.end487_crit_edge, %cond.end470.if.end487_crit_edge
  %lastMacro488 = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 13
  %176 = ptrtoint ptr %lastMacro488 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %lastMacro488, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %177)
  %cmp489.not = icmp eq i32 %177, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %177, i32 %cond471)
  %cmp493.not = icmp eq i32 %177, %cond471
  %or.cond880 = select i1 %cmp489.not, i1 true, i1 %cmp493.not
  br i1 %or.cond880, label %if.end487.land.lhs.true502_crit_edge, label %if.then495

if.end487.land.lhs.true502_crit_edge:             ; preds = %if.end487
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true502

if.then495:                                       ; preds = %if.end487
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx497 = getelementptr [34 x i32], ptr @macroKeyEvents, i32 0, i32 %177
  %178 = ptrtoint ptr %arrayidx497 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx497, align 4
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef %179, i32 noundef 0) #11
  %180 = ptrtoint ptr %lastMacro488 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 -1, ptr %lastMacro488, align 4
  br label %land.lhs.true502

land.lhs.true502:                                 ; preds = %if.then495, %if.end487.land.lhs.true502_crit_edge
  %181 = ptrtoint ptr %lastMacro488 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %lastMacro488, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond471, i32 %182)
  %cmp504.not = icmp eq i32 %cond471, %182
  br i1 %cmp504.not, label %land.lhs.true502.if.end509_crit_edge, label %if.then506

land.lhs.true502.if.end509_crit_edge:             ; preds = %land.lhs.true502
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end509

if.then506:                                       ; preds = %land.lhs.true502
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx507 = getelementptr [34 x i32], ptr @macroKeyEvents, i32 0, i32 %cond471
  %183 = ptrtoint ptr %arrayidx507 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %arrayidx507, align 4
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef %184, i32 noundef 1) #11
  %185 = ptrtoint ptr %lastMacro488 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %cond471, ptr %lastMacro488, align 4
  br label %if.end509

if.end509:                                        ; preds = %if.then506, %land.lhs.true502.if.end509_crit_edge
  %or510 = or i32 %and427.lobit, 64
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 40, i32 noundef %or510) #11
  tail call void @input_event(ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  br label %if.end570

if.then516:                                       ; preds = %if.end27
  %add.ptr517 = getelementptr i8, ptr %3, i32 1
  %186 = ptrtoint ptr %add.ptr517 to i32
  call void @__asan_loadN_noabort(i32 %186, i32 2)
  %187 = load i16, ptr %add.ptr517, align 1
  %188 = tail call i16 @llvm.bswap.i16(i16 %187) #11
  %conv519 = zext i16 %188 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %187)
  %cmp520.not = icmp eq i16 %187, 0
  br i1 %cmp520.not, label %if.then516.if.then528_crit_edge, label %if.end525

if.then516.if.then528_crit_edge:                  ; preds = %if.then516
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then528

if.end525:                                        ; preds = %if.then516
  %sub523 = add nsw i32 %conv519, -1
  %arrayidx524 = getelementptr [34 x i32], ptr @macroKeyEvents, i32 0, i32 %sub523
  %189 = ptrtoint ptr %arrayidx524 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx524, align 4
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef %190, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 25, i16 %188)
  %cmp526 = icmp ult i16 %188, 25
  br i1 %cmp526, label %if.end525.if.then528_crit_edge, label %if.end525.if.end530_crit_edge

if.end525.if.end530_crit_edge:                    ; preds = %if.end525
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end530

if.end525.if.then528_crit_edge:                   ; preds = %if.end525
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then528

if.then528:                                       ; preds = %if.end525.if.then528_crit_edge, %if.then516.if.then528_crit_edge
  %add = add nuw nsw i32 %conv519, 1
  %arrayidx529 = getelementptr [34 x i32], ptr @macroKeyEvents, i32 0, i32 %add
  %191 = ptrtoint ptr %arrayidx529 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx529, align 4
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef %192, i32 noundef 0) #11
  br label %if.end530

if.end530:                                        ; preds = %if.then528, %if.end525.if.end530_crit_edge
  %previousToolMode531 = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 14
  %193 = ptrtoint ptr %previousToolMode531 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %previousToolMode531, align 4
  %toolMode533 = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 5, i32 2
  %195 = ptrtoint ptr %toolMode533 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %toolMode533, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %194, i32 %196)
  %cmp534.not = icmp eq i32 %194, %196
  br i1 %cmp534.not, label %if.end530.if.end543_crit_edge, label %if.then536

if.end530.if.end543_crit_edge:                    ; preds = %if.end530
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end543

if.then536:                                       ; preds = %if.end530
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef %194, i32 noundef 0) #11
  %197 = ptrtoint ptr %toolMode533 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %toolMode533, align 4
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef %198, i32 noundef 1) #11
  %199 = ptrtoint ptr %toolMode533 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %toolMode533, align 4
  %201 = ptrtoint ptr %previousToolMode531 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %200, ptr %previousToolMode531, align 4
  br label %if.end543

if.end543:                                        ; preds = %if.then536, %if.end530.if.end543_crit_edge
  %arrayidx544 = getelementptr [34 x i32], ptr @macroKeyEvents, i32 0, i32 %conv519
  %202 = ptrtoint ptr %arrayidx544 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %arrayidx544, align 4
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef %203, i32 noundef 1) #11
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 40, i32 noundef 17) #11
  tail call void @input_event(ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  br label %if.end570

do.body546:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aiptek_irq.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aiptek_irq, %if.then558)) #11
          to label %if.end570 [label %if.then558], !srcloc !253

if.then558:                                       ; preds = %do.body546
  call void @__sanitizer_cov_trace_pc() #13
  %dev559 = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 7
  %204 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %3, align 1
  %conv561 = zext i8 %205 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aiptek_irq.__UNIQUE_ID_ddebug234, ptr noundef %dev559, ptr noundef nonnull @.str.35, i32 noundef %conv561) #11
  br label %if.end570

if.end570:                                        ; preds = %if.then558, %do.body546, %if.end543, %if.end509, %if.end408, %if.end307, %if.else223.if.end570_crit_edge, %if.then221, %if.then209, %if.end195, %if.else102.if.end570_crit_edge, %if.then100, %if.then90, %if.end78, %if.then34
  %jitterable.0 = phi i32 [ 0, %if.then34 ], [ %and, %if.end78 ], [ 0, %if.then90 ], [ %and131, %if.end195 ], [ %and131, %if.else102.if.end570_crit_edge ], [ 0, %if.then100 ], [ 0, %if.then209 ], [ %and232, %if.end307 ], [ %and232, %if.else223.if.end570_crit_edge ], [ 0, %if.then221 ], [ %and319, %if.end408 ], [ %and418, %if.end509 ], [ 0, %if.end543 ], [ 0, %if.then558 ], [ 0, %do.body546 ]
  %previousJitterable = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 12
  %206 = ptrtoint ptr %previousJitterable to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %previousJitterable, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %207, i32 %jitterable.0)
  %cmp571.not = icmp eq i32 %207, %jitterable.0
  br i1 %cmp571.not, label %if.end570.if.end587_crit_edge, label %land.lhs.true573

if.end570.if.end587_crit_edge:                    ; preds = %if.end570
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end587

land.lhs.true573:                                 ; preds = %if.end570
  %jitterDelay = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 5, i32 12
  %208 = ptrtoint ptr %jitterDelay to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %jitterDelay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %cmp575.not = icmp eq i32 %209, 0
  br i1 %cmp575.not, label %land.lhs.true573.if.end587_crit_edge, label %land.lhs.true577

land.lhs.true573.if.end587_crit_edge:             ; preds = %land.lhs.true573
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end587

land.lhs.true577:                                 ; preds = %land.lhs.true573
  %210 = ptrtoint ptr %inDelay to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %inDelay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %211)
  %cmp579.not = icmp eq i32 %211, 1
  br i1 %cmp579.not, label %land.lhs.true577.if.end587_crit_edge, label %if.then581

land.lhs.true577.if.end587_crit_edge:             ; preds = %land.lhs.true577
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end587

if.then581:                                       ; preds = %land.lhs.true577
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %212 = load volatile i32, ptr @jiffies, align 128
  %mul = mul i32 %209, 100
  %div = sdiv i32 %mul, 1000
  %add584 = add i32 %212, %div
  %endDelay585 = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 11
  %213 = ptrtoint ptr %endDelay585 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %add584, ptr %endDelay585, align 4
  %214 = ptrtoint ptr %inDelay to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 1, ptr %inDelay, align 4
  br label %if.end587

if.end587:                                        ; preds = %if.then581, %land.lhs.true577.if.end587_crit_edge, %land.lhs.true573.if.end587_crit_edge, %if.end570.if.end587_crit_edge
  %215 = ptrtoint ptr %previousJitterable to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %jitterable.0, ptr %previousJitterable, align 4
  br label %exit

exit:                                             ; preds = %if.end587, %land.lhs.true.exit_crit_edge, %if.then19, %do.body7
  %call589 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call589)
  %cmp590.not = icmp eq i32 %call589, 0
  br i1 %cmp590.not, label %exit.cleanup_crit_edge, label %do.end595

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end595:                                        ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #13
  %dev596 = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev596, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.32, i32 noundef %call589) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end595, %exit.cleanup_crit_edge, %if.then, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aiptek_program_tablet(ptr nocapture noundef %aiptek) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @aiptek_command(ptr noundef %aiptek, i8 noundef zeroext 24, i8 noundef zeroext 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @aiptek_query(ptr noundef %aiptek, i8 noundef zeroext 2, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %and = and i32 %call1, 255
  %modelCode = getelementptr inbounds %struct.aiptek, ptr %aiptek, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %modelCode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %and, ptr %modelCode, align 4
  %call5 = tail call fastcc i32 @aiptek_query(ptr noundef %aiptek, i8 noundef zeroext 3, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %features = getelementptr inbounds %struct.aiptek, ptr %aiptek, i32 0, i32 4
  %1 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call5, ptr %features, align 4
  %call10 = tail call fastcc i32 @aiptek_query(ptr noundef %aiptek, i8 noundef zeroext 4, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %firmwareCode = getelementptr inbounds %struct.aiptek, ptr %aiptek, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %firmwareCode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call10, ptr %firmwareCode, align 4
  %call15 = tail call fastcc i32 @aiptek_query(ptr noundef %aiptek, i8 noundef zeroext 1, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end13.cleanup_crit_edge, label %if.end18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %3 = ptrtoint ptr %aiptek to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %aiptek, align 4
  %sub = add nsw i32 %call15, -1
  tail call void @input_set_abs_params(ptr noundef %4, i32 noundef 0, i32 noundef 0, i32 noundef %sub, i32 noundef 0, i32 noundef 0) #11
  %call19 = tail call fastcc i32 @aiptek_query(ptr noundef %aiptek, i8 noundef zeroext 1, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end18.cleanup_crit_edge, label %if.end22

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %5 = ptrtoint ptr %aiptek to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %aiptek, align 4
  %sub24 = add nsw i32 %call19, -1
  tail call void @input_set_abs_params(ptr noundef %6, i32 noundef 1, i32 noundef 0, i32 noundef %sub24, i32 noundef 0, i32 noundef 0) #11
  %call25 = tail call fastcc i32 @aiptek_query(ptr noundef %aiptek, i8 noundef zeroext 8, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end22.cleanup_crit_edge, label %if.end28

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end28:                                         ; preds = %if.end22
  %7 = ptrtoint ptr %aiptek to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %aiptek, align 4
  %sub30 = add nsw i32 %call25, -1
  tail call void @input_set_abs_params(ptr noundef %8, i32 noundef 24, i32 noundef 0, i32 noundef %sub30, i32 noundef 0, i32 noundef 0) #11
  %coordinateMode = getelementptr inbounds %struct.aiptek, ptr %aiptek, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %coordinateMode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %coordinateMode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp31 = icmp eq i32 %10, 1
  br i1 %cmp31, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.end28
  %call33 = tail call fastcc i32 @aiptek_command(ptr noundef %aiptek, i8 noundef zeroext 16, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then32.cleanup_crit_edge, label %if.then32.if.end41_crit_edge

if.then32.if.end41_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %if.end28
  %call37 = tail call fastcc i32 @aiptek_command(ptr noundef %aiptek, i8 noundef zeroext 16, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.else.cleanup_crit_edge, label %if.else.if.end41_crit_edge

if.else.if.end41_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end41:                                         ; preds = %if.else.if.end41_crit_edge, %if.then32.if.end41_crit_edge
  %call42 = tail call fastcc i32 @aiptek_command(ptr noundef %aiptek, i8 noundef zeroext 17, i8 noundef zeroext 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %if.end41.cleanup_crit_edge, label %if.end45

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end45:                                         ; preds = %if.end41
  %call46 = tail call fastcc i32 @aiptek_command(ptr noundef %aiptek, i8 noundef zeroext 18, i8 noundef zeroext -1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.end45.cleanup_crit_edge, label %if.end49

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end49:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  %diagnostic = getelementptr inbounds %struct.aiptek, ptr %aiptek, i32 0, i32 8
  %11 = ptrtoint ptr %diagnostic to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %diagnostic, align 4
  %eventCount = getelementptr inbounds %struct.aiptek, ptr %aiptek, i32 0, i32 9
  %12 = ptrtoint ptr %eventCount to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %eventCount, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.end45.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then32.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end49 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %call10, %if.end8.cleanup_crit_edge ], [ %call15, %if.end13.cleanup_crit_edge ], [ %call19, %if.end18.cleanup_crit_edge ], [ %call25, %if.end22.cleanup_crit_edge ], [ %call33, %if.then32.cleanup_crit_edge ], [ %call37, %if.else.cleanup_crit_edge ], [ %call42, %if.end41.cleanup_crit_edge ], [ %call46, %if.end45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aiptek_command(ptr nocapture noundef readonly %aiptek, i8 noundef zeroext %command, i8 noundef zeroext %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 3) #14
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 2, ptr %call7.i, align 8
  %arrayidx1 = getelementptr i8, ptr %call7.i, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %command, ptr %arrayidx1, align 1
  %arrayidx2 = getelementptr i8, ptr %call7.i, i32 2
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %data, ptr %arrayidx2, align 2
  %intf.i = getelementptr inbounds %struct.aiptek, ptr %aiptek, i32 0, i32 1
  %4 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf.i, align 4
  %parent.i.i = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 -128
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i, align 8
  %shl.i.i = shl i32 %9, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %ifnum.i = getelementptr inbounds %struct.aiptek, ptr %aiptek, i32 0, i32 7
  %10 = ptrtoint ptr %ifnum.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ifnum.i, align 4
  %conv4.i = trunc i32 %11 to i16
  %call6.i = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i.i, i32 noundef %or.i, i8 noundef zeroext 9, i8 noundef zeroext 33, i16 noundef zeroext 770, i16 noundef zeroext %conv4.i, ptr noundef nonnull %call7.i, i16 noundef zeroext 3, i32 noundef 5000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call6.i)
  %cmp.not = icmp eq i32 %call6.i, 3
  br i1 %cmp.not, label %if.end.if.end12_crit_edge, label %do.body

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aiptek_command.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aiptek_command, %if.then9)) #11
          to label %if.end12 [label %if.then9], !srcloc !253

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %intf.i, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %13, i32 0, i32 7
  %conv = zext i8 %command to i32
  %conv10 = zext i8 %data to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aiptek_command.__UNIQUE_ID_ddebug235, ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %conv, i32 noundef %conv10) #11
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %do.body, %if.end.if.end12_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  %14 = tail call i32 @llvm.smin.i32(i32 %call6.i, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %if.end12 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aiptek_query(ptr nocapture noundef readonly %aiptek, i8 noundef zeroext %command, i8 noundef zeroext %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 3) #14
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 2, ptr %call7.i, align 8
  %arrayidx1 = getelementptr i8, ptr %call7.i, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %command, ptr %arrayidx1, align 1
  %arrayidx2 = getelementptr i8, ptr %call7.i, i32 2
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %data, ptr %arrayidx2, align 2
  %call3 = tail call fastcc i32 @aiptek_command(ptr noundef %aiptek, i8 noundef zeroext %command, i8 noundef zeroext %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 0
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end5:                                          ; preds = %if.end
  %programmableDelay = getelementptr inbounds %struct.aiptek, ptr %aiptek, i32 0, i32 5, i32 11
  %4 = ptrtoint ptr %programmableDelay to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %programmableDelay, align 4
  tail call void @msleep(i32 noundef %5) #11
  %intf.i = getelementptr inbounds %struct.aiptek, ptr %aiptek, i32 0, i32 1
  %6 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intf.i, align 4
  %parent.i.i = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 -128
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i, align 8
  %shl.i.i = shl i32 %11, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %ifnum.i = getelementptr inbounds %struct.aiptek, ptr %aiptek, i32 0, i32 7
  %12 = ptrtoint ptr %ifnum.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ifnum.i, align 4
  %conv5.i = trunc i32 %13 to i16
  %call7.i40 = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i.i, i32 noundef %or2.i, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 770, i16 noundef zeroext %conv5.i, ptr noundef nonnull %call7.i, i16 noundef zeroext 3, i32 noundef 5000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call7.i40)
  %cmp7.not = icmp eq i32 %call7.i40, 3
  br i1 %cmp7.not, label %if.else, label %do.body

do.body:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aiptek_query.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aiptek_query, %if.then13)) #11
          to label %cleanup.sink.split [label %if.then13], !srcloc !253

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %intf.i, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %call7.i, align 8
  %conv = zext i8 %17 to i32
  %18 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx1, align 1
  %conv16 = zext i8 %19 to i32
  %20 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx2, align 2
  %conv18 = zext i8 %21 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aiptek_query.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.40, i32 noundef %conv, i32 noundef %conv16, i32 noundef %conv18) #11
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %arrayidx1, align 1
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #11
  %conv21 = zext i16 %24 to i32
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %if.then13, %do.body, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -5, %if.end.cleanup.sink.split_crit_edge ], [ %conv21, %if.else ], [ -5, %if.then13 ], [ -5, %do.body ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_tabletSize(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %absinfo.i = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 26
  %4 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.input_abs_get_max.exit12_crit_edge, label %cond.true.i10

entry.input_abs_get_max.exit12_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %input_abs_get_max.exit12

cond.true.i10:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %maximum.i = getelementptr %struct.input_absinfo, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %maximum.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %maximum.i, align 4
  %add = add i32 %7, 1
  %maximum.i9 = getelementptr %struct.input_absinfo, ptr %5, i32 1, i32 2
  %8 = ptrtoint ptr %maximum.i9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %maximum.i9, align 4
  %phi.bo = add i32 %9, 1
  br label %input_abs_get_max.exit12

input_abs_get_max.exit12:                         ; preds = %cond.true.i10, %entry.input_abs_get_max.exit12_crit_edge
  %add15 = phi i32 [ %add, %cond.true.i10 ], [ 1, %entry.input_abs_get_max.exit12_crit_edge ]
  %cond.i11 = phi i32 [ %phi.bo, %cond.true.i10 ], [ 1, %entry.input_abs_get_max.exit12_crit_edge ]
  %call5 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.42, i32 noundef %add15, i32 noundef %cond.i11) #11
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_tabletPointerMode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %curSetting = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %curSetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %curSetting, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %3, label %entry.map_val_to_str.exit_crit_edge [
    i32 1, label %entry.if.then.i_crit_edge
    i32 0, label %if.then.i.fold.split
    i32 2, label %if.then.i.fold.split8
  ]

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

entry.map_val_to_str.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_val_to_str.exit

if.then.i.fold.split:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i.fold.split8:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.i.fold.split8, %if.then.i.fold.split, %entry.if.then.i_crit_edge
  %p.09.i.lcssa = phi ptr [ @pointer_mode_map, %entry.if.then.i_crit_edge ], [ getelementptr inbounds ([4 x %struct.aiptek_map], ptr @pointer_mode_map, i32 0, i32 1), %if.then.i.fold.split ], [ getelementptr inbounds ([4 x %struct.aiptek_map], ptr @pointer_mode_map, i32 0, i32 2), %if.then.i.fold.split8 ]
  %5 = ptrtoint ptr %p.09.i.lcssa to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p.09.i.lcssa, align 4
  br label %map_val_to_str.exit

map_val_to_str.exit:                              ; preds = %if.then.i, %entry.map_val_to_str.exit_crit_edge
  %retval.0.i = phi ptr [ %6, %if.then.i ], [ @.str.45, %entry.map_val_to_str.exit_crit_edge ]
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.44, ptr noundef %retval.0.i) #11
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_tabletPointerMode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %sub.i = add i32 %count, -1
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %sub.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp.i = icmp eq i8 %3, 10
  %spec.select.i = select i1 %cmp.i, i32 %sub.i, i32 %count
  %call.i = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.46, i32 noundef %spec.select.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %entry.map_str_to_val.exit_crit_edge, label %for.inc.i

entry.map_str_to_val.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_str_to_val.exit

for.inc.i:                                        ; preds = %entry
  %call.i.1 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.47, i32 noundef %spec.select.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool3.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool3.not.i.1, label %for.inc.i.map_str_to_val.exit_crit_edge, label %for.inc.i.1

for.inc.i.map_str_to_val.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_str_to_val.exit

for.inc.i.1:                                      ; preds = %for.inc.i
  %call.i.2 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.48, i32 noundef %spec.select.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool3.not.i.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool3.not.i.2, label %for.inc.i.1.map_str_to_val.exit_crit_edge, label %for.inc.i.1.cleanup_crit_edge

for.inc.i.1.cleanup_crit_edge:                    ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.i.1.map_str_to_val.exit_crit_edge:        ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_str_to_val.exit

map_str_to_val.exit:                              ; preds = %for.inc.i.1.map_str_to_val.exit_crit_edge, %for.inc.i.map_str_to_val.exit_crit_edge, %entry.map_str_to_val.exit_crit_edge
  %p.014.i.lcssa = phi ptr [ @pointer_mode_map, %entry.map_str_to_val.exit_crit_edge ], [ getelementptr inbounds ([4 x %struct.aiptek_map], ptr @pointer_mode_map, i32 0, i32 1), %for.inc.i.map_str_to_val.exit_crit_edge ], [ getelementptr inbounds ([4 x %struct.aiptek_map], ptr @pointer_mode_map, i32 0, i32 2), %for.inc.i.1.map_str_to_val.exit_crit_edge ]
  %value.i = getelementptr inbounds %struct.aiptek_map, ptr %p.014.i.lcssa, i32 0, i32 1
  %4 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp = icmp eq i32 %5, -1
  br i1 %cmp, label %map_str_to_val.exit.cleanup_crit_edge, label %if.end

map_str_to_val.exit.cleanup_crit_edge:            ; preds = %map_str_to_val.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %map_str_to_val.exit
  call void @__sanitizer_cov_trace_pc() #13
  %newSetting = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %newSetting to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %newSetting, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %map_str_to_val.exit.cleanup_crit_edge, %for.inc.i.1.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %map_str_to_val.exit.cleanup_crit_edge ], [ -22, %for.inc.i.1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_tabletCoordinateMode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %coordinateMode = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %coordinateMode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %coordinateMode, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %3, label %entry.map_val_to_str.exit_crit_edge [
    i32 1, label %entry.if.then.i_crit_edge
    i32 0, label %if.then.i.fold.split
  ]

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

entry.map_val_to_str.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_val_to_str.exit

if.then.i.fold.split:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.i.fold.split, %entry.if.then.i_crit_edge
  %p.09.i.lcssa = phi ptr [ @coordinate_mode_map, %entry.if.then.i_crit_edge ], [ getelementptr inbounds ([3 x %struct.aiptek_map], ptr @coordinate_mode_map, i32 0, i32 1), %if.then.i.fold.split ]
  %5 = ptrtoint ptr %p.09.i.lcssa to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p.09.i.lcssa, align 4
  br label %map_val_to_str.exit

map_val_to_str.exit:                              ; preds = %if.then.i, %entry.map_val_to_str.exit_crit_edge
  %retval.0.i = phi ptr [ %6, %if.then.i ], [ @.str.45, %entry.map_val_to_str.exit_crit_edge ]
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.44, ptr noundef %retval.0.i) #11
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_tabletCoordinateMode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %sub.i = add i32 %count, -1
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %sub.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp.i = icmp eq i8 %3, 10
  %spec.select.i = select i1 %cmp.i, i32 %sub.i, i32 %count
  %call.i = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.50, i32 noundef %spec.select.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %entry.map_str_to_val.exit_crit_edge, label %for.inc.i

entry.map_str_to_val.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_str_to_val.exit

for.inc.i:                                        ; preds = %entry
  %call.i.1 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.51, i32 noundef %spec.select.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool3.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool3.not.i.1, label %for.inc.i.map_str_to_val.exit_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.i.map_str_to_val.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_str_to_val.exit

map_str_to_val.exit:                              ; preds = %for.inc.i.map_str_to_val.exit_crit_edge, %entry.map_str_to_val.exit_crit_edge
  %p.014.i.lcssa = phi ptr [ @coordinate_mode_map, %entry.map_str_to_val.exit_crit_edge ], [ getelementptr inbounds ([3 x %struct.aiptek_map], ptr @coordinate_mode_map, i32 0, i32 1), %for.inc.i.map_str_to_val.exit_crit_edge ]
  %value.i = getelementptr inbounds %struct.aiptek_map, ptr %p.014.i.lcssa, i32 0, i32 1
  %4 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp = icmp eq i32 %5, -1
  br i1 %cmp, label %map_str_to_val.exit.cleanup_crit_edge, label %if.end

map_str_to_val.exit.cleanup_crit_edge:            ; preds = %map_str_to_val.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %map_str_to_val.exit
  call void @__sanitizer_cov_trace_pc() #13
  %coordinateMode = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %coordinateMode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %coordinateMode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %map_str_to_val.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %map_str_to_val.exit.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_tabletToolMode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %toolMode = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 5, i32 2
  %2 = ptrtoint ptr %toolMode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %toolMode, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %3, label %entry.map_val_to_str.exit_crit_edge [
    i32 326, label %entry.if.then.i_crit_edge
    i32 321, label %if.then.i.fold.split
    i32 323, label %if.then.i.fold.split8
    i32 320, label %if.then.i.fold.split9
    i32 322, label %if.then.i.fold.split10
    i32 324, label %if.then.i.fold.split11
    i32 327, label %if.then.i.fold.split12
  ]

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

entry.map_val_to_str.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_val_to_str.exit

if.then.i.fold.split:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i.fold.split8:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i.fold.split9:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i.fold.split10:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i.fold.split11:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i.fold.split12:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.i.fold.split12, %if.then.i.fold.split11, %if.then.i.fold.split10, %if.then.i.fold.split9, %if.then.i.fold.split8, %if.then.i.fold.split, %entry.if.then.i_crit_edge
  %p.09.i.lcssa = phi ptr [ @tool_mode_map, %entry.if.then.i_crit_edge ], [ getelementptr inbounds ([8 x %struct.aiptek_map], ptr @tool_mode_map, i32 0, i32 1), %if.then.i.fold.split ], [ getelementptr inbounds ([8 x %struct.aiptek_map], ptr @tool_mode_map, i32 0, i32 2), %if.then.i.fold.split8 ], [ getelementptr inbounds ([8 x %struct.aiptek_map], ptr @tool_mode_map, i32 0, i32 3), %if.then.i.fold.split9 ], [ getelementptr inbounds ([8 x %struct.aiptek_map], ptr @tool_mode_map, i32 0, i32 4), %if.then.i.fold.split10 ], [ getelementptr inbounds ([8 x %struct.aiptek_map], ptr @tool_mode_map, i32 0, i32 5), %if.then.i.fold.split11 ], [ getelementptr inbounds ([8 x %struct.aiptek_map], ptr @tool_mode_map, i32 0, i32 6), %if.then.i.fold.split12 ]
  %5 = ptrtoint ptr %p.09.i.lcssa to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p.09.i.lcssa, align 4
  br label %map_val_to_str.exit

map_val_to_str.exit:                              ; preds = %if.then.i, %entry.map_val_to_str.exit_crit_edge
  %retval.0.i = phi ptr [ %6, %if.then.i ], [ @.str.45, %entry.map_val_to_str.exit_crit_edge ]
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.44, ptr noundef %retval.0.i) #11
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_tabletToolMode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %sub.i = add i32 %count, -1
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %sub.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp.i = icmp eq i8 %3, 10
  %spec.select.i = select i1 %cmp.i, i32 %sub.i, i32 %count
  %call.i = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.47, i32 noundef %spec.select.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %entry.map_str_to_val.exit_crit_edge, label %for.inc.i

entry.map_str_to_val.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_str_to_val.exit

for.inc.i:                                        ; preds = %entry
  %call.i.1 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.53, i32 noundef %spec.select.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool3.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool3.not.i.1, label %for.inc.i.map_str_to_val.exit_crit_edge, label %for.inc.i.1

for.inc.i.map_str_to_val.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_str_to_val.exit

for.inc.i.1:                                      ; preds = %for.inc.i
  %call.i.2 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.54, i32 noundef %spec.select.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool3.not.i.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool3.not.i.2, label %for.inc.i.1.map_str_to_val.exit_crit_edge, label %for.inc.i.2

for.inc.i.1.map_str_to_val.exit_crit_edge:        ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_str_to_val.exit

for.inc.i.2:                                      ; preds = %for.inc.i.1
  %call.i.3 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.55, i32 noundef %spec.select.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %tobool3.not.i.3 = icmp eq i32 %call.i.3, 0
  br i1 %tobool3.not.i.3, label %for.inc.i.2.map_str_to_val.exit_crit_edge, label %for.inc.i.3

for.inc.i.2.map_str_to_val.exit_crit_edge:        ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_str_to_val.exit

for.inc.i.3:                                      ; preds = %for.inc.i.2
  %call.i.4 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.56, i32 noundef %spec.select.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.4)
  %tobool3.not.i.4 = icmp eq i32 %call.i.4, 0
  br i1 %tobool3.not.i.4, label %for.inc.i.3.map_str_to_val.exit_crit_edge, label %for.inc.i.4

for.inc.i.3.map_str_to_val.exit_crit_edge:        ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_str_to_val.exit

for.inc.i.4:                                      ; preds = %for.inc.i.3
  %call.i.5 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.57, i32 noundef %spec.select.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.5)
  %tobool3.not.i.5 = icmp eq i32 %call.i.5, 0
  br i1 %tobool3.not.i.5, label %for.inc.i.4.map_str_to_val.exit_crit_edge, label %for.inc.i.5

for.inc.i.4.map_str_to_val.exit_crit_edge:        ; preds = %for.inc.i.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_str_to_val.exit

for.inc.i.5:                                      ; preds = %for.inc.i.4
  %call.i.6 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.58, i32 noundef %spec.select.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.6)
  %tobool3.not.i.6 = icmp eq i32 %call.i.6, 0
  br i1 %tobool3.not.i.6, label %for.inc.i.5.map_str_to_val.exit_crit_edge, label %for.inc.i.5.cleanup_crit_edge

for.inc.i.5.cleanup_crit_edge:                    ; preds = %for.inc.i.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.i.5.map_str_to_val.exit_crit_edge:        ; preds = %for.inc.i.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_str_to_val.exit

map_str_to_val.exit:                              ; preds = %for.inc.i.5.map_str_to_val.exit_crit_edge, %for.inc.i.4.map_str_to_val.exit_crit_edge, %for.inc.i.3.map_str_to_val.exit_crit_edge, %for.inc.i.2.map_str_to_val.exit_crit_edge, %for.inc.i.1.map_str_to_val.exit_crit_edge, %for.inc.i.map_str_to_val.exit_crit_edge, %entry.map_str_to_val.exit_crit_edge
  %p.014.i.lcssa = phi ptr [ @tool_mode_map, %entry.map_str_to_val.exit_crit_edge ], [ getelementptr inbounds ([8 x %struct.aiptek_map], ptr @tool_mode_map, i32 0, i32 1), %for.inc.i.map_str_to_val.exit_crit_edge ], [ getelementptr inbounds ([8 x %struct.aiptek_map], ptr @tool_mode_map, i32 0, i32 2), %for.inc.i.1.map_str_to_val.exit_crit_edge ], [ getelementptr inbounds ([8 x %struct.aiptek_map], ptr @tool_mode_map, i32 0, i32 3), %for.inc.i.2.map_str_to_val.exit_crit_edge ], [ getelementptr inbounds ([8 x %struct.aiptek_map], ptr @tool_mode_map, i32 0, i32 4), %for.inc.i.3.map_str_to_val.exit_crit_edge ], [ getelementptr inbounds ([8 x %struct.aiptek_map], ptr @tool_mode_map, i32 0, i32 5), %for.inc.i.4.map_str_to_val.exit_crit_edge ], [ getelementptr inbounds ([8 x %struct.aiptek_map], ptr @tool_mode_map, i32 0, i32 6), %for.inc.i.5.map_str_to_val.exit_crit_edge ]
  %value.i = getelementptr inbounds %struct.aiptek_map, ptr %p.014.i.lcssa, i32 0, i32 1
  %4 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp = icmp eq i32 %5, -1
  br i1 %cmp, label %map_str_to_val.exit.cleanup_crit_edge, label %if.end

map_str_to_val.exit.cleanup_crit_edge:            ; preds = %map_str_to_val.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %map_str_to_val.exit
  call void @__sanitizer_cov_trace_pc() #13
  %toolMode = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 6, i32 2
  %6 = ptrtoint ptr %toolMode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %toolMode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %map_str_to_val.exit.cleanup_crit_edge, %for.inc.i.5.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %map_str_to_val.exit.cleanup_crit_edge ], [ -22, %for.inc.i.5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_tabletXtilt(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %xTilt = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 5, i32 3
  %2 = ptrtoint ptr %xTilt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xTilt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10101, i32 %3)
  %cmp = icmp eq i32 %3, -10101
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.60) #11
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.61, i32 noundef %3) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call4, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_tabletXtilt(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %x = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x) #11
  %2 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %x, align 4, !annotation !252
  %call1 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %x) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %sub = add i32 %count, -1
  %arrayidx = getelementptr i8, ptr %buf, i32 %sub
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %4)
  %cmp = icmp eq i8 %4, 10
  %sub.count = select i1 %cmp, i32 %sub, i32 %count
  %call4 = call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.62, i32 noundef %sub.count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then.cleanup16.sink.split_crit_edge, label %if.then.cleanup16_crit_edge

if.then.cleanup16_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup16

if.then.cleanup16.sink.split_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup16.sink.split

if.else:                                          ; preds = %entry
  %5 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %x, align 4
  %7 = add i32 %6, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 -256, i32 %7)
  %8 = icmp ult i32 %7, -256
  br i1 %8, label %if.else.cleanup16_crit_edge, label %if.else.cleanup16.sink.split_crit_edge

if.else.cleanup16.sink.split_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup16.sink.split

if.else.cleanup16_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup16

cleanup16.sink.split:                             ; preds = %if.else.cleanup16.sink.split_crit_edge, %if.then.cleanup16.sink.split_crit_edge
  %.sink = phi i32 [ -10101, %if.then.cleanup16.sink.split_crit_edge ], [ %6, %if.else.cleanup16.sink.split_crit_edge ]
  %xTilt14 = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 6, i32 3
  %9 = ptrtoint ptr %xTilt14 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink, ptr %xTilt14, align 4
  br label %cleanup16

cleanup16:                                        ; preds = %cleanup16.sink.split, %if.else.cleanup16_crit_edge, %if.then.cleanup16_crit_edge
  %retval.1 = phi i32 [ -22, %if.else.cleanup16_crit_edge ], [ -22, %if.then.cleanup16_crit_edge ], [ %count, %cleanup16.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x) #11
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_tabletYtilt(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %yTilt = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 5, i32 4
  %2 = ptrtoint ptr %yTilt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %yTilt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10101, i32 %3)
  %cmp = icmp eq i32 %3, -10101
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.60) #11
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.61, i32 noundef %3) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call4, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_tabletYtilt(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %y = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y) #11
  %2 = ptrtoint ptr %y to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %y, align 4, !annotation !252
  %call1 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %y) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %sub = add i32 %count, -1
  %arrayidx = getelementptr i8, ptr %buf, i32 %sub
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %4)
  %cmp = icmp eq i8 %4, 10
  %sub.count = select i1 %cmp, i32 %sub, i32 %count
  %call4 = call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.62, i32 noundef %sub.count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then.cleanup16.sink.split_crit_edge, label %if.then.cleanup16_crit_edge

if.then.cleanup16_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup16

if.then.cleanup16.sink.split_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup16.sink.split

if.else:                                          ; preds = %entry
  %5 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %y, align 4
  %7 = add i32 %6, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 -256, i32 %7)
  %8 = icmp ult i32 %7, -256
  br i1 %8, label %if.else.cleanup16_crit_edge, label %if.else.cleanup16.sink.split_crit_edge

if.else.cleanup16.sink.split_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup16.sink.split

if.else.cleanup16_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup16

cleanup16.sink.split:                             ; preds = %if.else.cleanup16.sink.split_crit_edge, %if.then.cleanup16.sink.split_crit_edge
  %.sink = phi i32 [ -10101, %if.then.cleanup16.sink.split_crit_edge ], [ %6, %if.else.cleanup16.sink.split_crit_edge ]
  %yTilt14 = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 6, i32 4
  %9 = ptrtoint ptr %yTilt14 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink, ptr %yTilt14, align 4
  br label %cleanup16

cleanup16:                                        ; preds = %cleanup16.sink.split, %if.else.cleanup16_crit_edge, %if.then.cleanup16_crit_edge
  %retval.1 = phi i32 [ -22, %if.else.cleanup16_crit_edge ], [ -22, %if.then.cleanup16_crit_edge ], [ %count, %cleanup16.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y) #11
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_tabletJitterDelay(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %jitterDelay = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 5, i32 12
  %2 = ptrtoint ptr %jitterDelay to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %jitterDelay, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.61, i32 noundef %3) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_tabletJitterDelay(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %j = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %j) #11
  %2 = ptrtoint ptr %j to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %j, align 4, !annotation !252
  %call1 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %j) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %j to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %j, align 4
  %jitterDelay = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 6, i32 12
  %5 = ptrtoint ptr %jitterDelay to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %jitterDelay, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %j) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_tabletProgrammableDelay(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %programmableDelay = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 5, i32 11
  %2 = ptrtoint ptr %programmableDelay to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %programmableDelay, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.61, i32 noundef %3) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_tabletProgrammableDelay(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %d = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d) #11
  %2 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %d, align 4, !annotation !252
  %call1 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %d) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %d, align 4
  %programmableDelay = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 6, i32 11
  %5 = ptrtoint ptr %programmableDelay to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %programmableDelay, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_tabletEventsReceived(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %eventCount = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %eventCount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eventCount, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.67, i32 noundef %3) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_tabletDiagnosticMessage(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %diagnostic = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %diagnostic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %diagnostic, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %curSetting = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %curSetting to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %curSetting, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  %.str.72..str.73 = select i1 %cmp, ptr @.str.72, ptr @.str.73
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %retMsg.0 = phi ptr [ @.str.71, %sw.bb2 ], [ @.str.70, %sw.bb1 ], [ @.str.69, %entry.sw.epilog_crit_edge ], [ %.str.72..str.73, %sw.bb3 ]
  %call4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull %retMsg.0) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_tabletODMCode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %features = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %features, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.75, i32 noundef %3) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_tabletModelCode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %modelCode = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %modelCode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %modelCode, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.75, i32 noundef %3) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_firmwareCode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %firmwareCode = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %firmwareCode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %firmwareCode, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.78, i32 noundef %3) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_tabletStylusLower(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %stylusButtonLower = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 5, i32 7
  %2 = ptrtoint ptr %stylusButtonLower to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stylusButtonLower, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %3, label %entry.map_val_to_str.exit_crit_edge [
    i32 16, label %entry.if.then.i_crit_edge
    i32 8, label %if.then.i.fold.split
  ]

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

entry.map_val_to_str.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_val_to_str.exit

if.then.i.fold.split:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.i.fold.split, %entry.if.then.i_crit_edge
  %p.09.i.lcssa = phi ptr [ @stylus_button_map, %entry.if.then.i_crit_edge ], [ getelementptr inbounds ([3 x %struct.aiptek_map], ptr @stylus_button_map, i32 0, i32 1), %if.then.i.fold.split ]
  %5 = ptrtoint ptr %p.09.i.lcssa to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p.09.i.lcssa, align 4
  br label %map_val_to_str.exit

map_val_to_str.exit:                              ; preds = %if.then.i, %entry.map_val_to_str.exit_crit_edge
  %retval.0.i = phi ptr [ %6, %if.then.i ], [ @.str.45, %entry.map_val_to_str.exit_crit_edge ]
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.44, ptr noundef %retval.0.i) #11
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_tabletStylusLower(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %sub.i = add i32 %count, -1
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %sub.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp.i = icmp eq i8 %3, 10
  %spec.select.i = select i1 %cmp.i, i32 %sub.i, i32 %count
  %call.i = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.80, i32 noundef %spec.select.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %entry.map_str_to_val.exit_crit_edge, label %for.inc.i

entry.map_str_to_val.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_str_to_val.exit

for.inc.i:                                        ; preds = %entry
  %call.i.1 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.81, i32 noundef %spec.select.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool3.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool3.not.i.1, label %for.inc.i.map_str_to_val.exit_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.i.map_str_to_val.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_str_to_val.exit

map_str_to_val.exit:                              ; preds = %for.inc.i.map_str_to_val.exit_crit_edge, %entry.map_str_to_val.exit_crit_edge
  %p.014.i.lcssa = phi ptr [ @stylus_button_map, %entry.map_str_to_val.exit_crit_edge ], [ getelementptr inbounds ([3 x %struct.aiptek_map], ptr @stylus_button_map, i32 0, i32 1), %for.inc.i.map_str_to_val.exit_crit_edge ]
  %value.i = getelementptr inbounds %struct.aiptek_map, ptr %p.014.i.lcssa, i32 0, i32 1
  %4 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp = icmp eq i32 %5, -1
  br i1 %cmp, label %map_str_to_val.exit.cleanup_crit_edge, label %if.end

map_str_to_val.exit.cleanup_crit_edge:            ; preds = %map_str_to_val.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %map_str_to_val.exit
  call void @__sanitizer_cov_trace_pc() #13
  %stylusButtonLower = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 6, i32 7
  %6 = ptrtoint ptr %stylusButtonLower to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %stylusButtonLower, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %map_str_to_val.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %map_str_to_val.exit.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_tabletStylusUpper(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %stylusButtonUpper = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 5, i32 6
  %2 = ptrtoint ptr %stylusButtonUpper to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stylusButtonUpper, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %3, label %entry.map_val_to_str.exit_crit_edge [
    i32 16, label %entry.if.then.i_crit_edge
    i32 8, label %if.then.i.fold.split
  ]

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

entry.map_val_to_str.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_val_to_str.exit

if.then.i.fold.split:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.i.fold.split, %entry.if.then.i_crit_edge
  %p.09.i.lcssa = phi ptr [ @stylus_button_map, %entry.if.then.i_crit_edge ], [ getelementptr inbounds ([3 x %struct.aiptek_map], ptr @stylus_button_map, i32 0, i32 1), %if.then.i.fold.split ]
  %5 = ptrtoint ptr %p.09.i.lcssa to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p.09.i.lcssa, align 4
  br label %map_val_to_str.exit

map_val_to_str.exit:                              ; preds = %if.then.i, %entry.map_val_to_str.exit_crit_edge
  %retval.0.i = phi ptr [ %6, %if.then.i ], [ @.str.45, %entry.map_val_to_str.exit_crit_edge ]
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.44, ptr noundef %retval.0.i) #11
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_tabletStylusUpper(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %sub.i = add i32 %count, -1
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %sub.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp.i = icmp eq i8 %3, 10
  %spec.select.i = select i1 %cmp.i, i32 %sub.i, i32 %count
  %call.i = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.80, i32 noundef %spec.select.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %entry.map_str_to_val.exit_crit_edge, label %for.inc.i

entry.map_str_to_val.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_str_to_val.exit

for.inc.i:                                        ; preds = %entry
  %call.i.1 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.81, i32 noundef %spec.select.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool3.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool3.not.i.1, label %for.inc.i.map_str_to_val.exit_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.i.map_str_to_val.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_str_to_val.exit

map_str_to_val.exit:                              ; preds = %for.inc.i.map_str_to_val.exit_crit_edge, %entry.map_str_to_val.exit_crit_edge
  %p.014.i.lcssa = phi ptr [ @stylus_button_map, %entry.map_str_to_val.exit_crit_edge ], [ getelementptr inbounds ([3 x %struct.aiptek_map], ptr @stylus_button_map, i32 0, i32 1), %for.inc.i.map_str_to_val.exit_crit_edge ]
  %value.i = getelementptr inbounds %struct.aiptek_map, ptr %p.014.i.lcssa, i32 0, i32 1
  %4 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp = icmp eq i32 %5, -1
  br i1 %cmp, label %map_str_to_val.exit.cleanup_crit_edge, label %if.end

map_str_to_val.exit.cleanup_crit_edge:            ; preds = %map_str_to_val.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %map_str_to_val.exit
  call void @__sanitizer_cov_trace_pc() #13
  %stylusButtonUpper = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 6, i32 6
  %6 = ptrtoint ptr %stylusButtonUpper to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %stylusButtonUpper, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %map_str_to_val.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %map_str_to_val.exit.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_tabletMouseLeft(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mouseButtonLeft = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %mouseButtonLeft to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mouseButtonLeft, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %3, label %entry.map_val_to_str.exit_crit_edge [
    i32 4, label %entry.if.then.i_crit_edge
    i32 16, label %if.then.i.fold.split
    i32 8, label %if.then.i.fold.split8
  ]

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

entry.map_val_to_str.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_val_to_str.exit

if.then.i.fold.split:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i.fold.split8:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.i.fold.split8, %if.then.i.fold.split, %entry.if.then.i_crit_edge
  %p.09.i.lcssa = phi ptr [ @mouse_button_map, %entry.if.then.i_crit_edge ], [ getelementptr inbounds ([4 x %struct.aiptek_map], ptr @mouse_button_map, i32 0, i32 1), %if.then.i.fold.split ], [ getelementptr inbounds ([4 x %struct.aiptek_map], ptr @mouse_button_map, i32 0, i32 2), %if.then.i.fold.split8 ]
  %5 = ptrtoint ptr %p.09.i.lcssa to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p.09.i.lcssa, align 4
  br label %map_val_to_str.exit

map_val_to_str.exit:                              ; preds = %if.then.i, %entry.map_val_to_str.exit_crit_edge
  %retval.0.i = phi ptr [ %6, %if.then.i ], [ @.str.45, %entry.map_val_to_str.exit_crit_edge ]
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.44, ptr noundef %retval.0.i) #11
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_tabletMouseLeft(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %sub.i = add i32 %count, -1
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %sub.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp.i = icmp eq i8 %3, 10
  %spec.select.i = select i1 %cmp.i, i32 %sub.i, i32 %count
  %call.i = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.84, i32 noundef %spec.select.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %entry.map_str_to_val.exit_crit_edge, label %for.inc.i

entry.map_str_to_val.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_str_to_val.exit

for.inc.i:                                        ; preds = %entry
  %call.i.1 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.85, i32 noundef %spec.select.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool3.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool3.not.i.1, label %for.inc.i.map_str_to_val.exit_crit_edge, label %for.inc.i.1

for.inc.i.map_str_to_val.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_str_to_val.exit

for.inc.i.1:                                      ; preds = %for.inc.i
  %call.i.2 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.86, i32 noundef %spec.select.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool3.not.i.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool3.not.i.2, label %for.inc.i.1.map_str_to_val.exit_crit_edge, label %for.inc.i.1.cleanup_crit_edge

for.inc.i.1.cleanup_crit_edge:                    ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.i.1.map_str_to_val.exit_crit_edge:        ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_str_to_val.exit

map_str_to_val.exit:                              ; preds = %for.inc.i.1.map_str_to_val.exit_crit_edge, %for.inc.i.map_str_to_val.exit_crit_edge, %entry.map_str_to_val.exit_crit_edge
  %p.014.i.lcssa = phi ptr [ @mouse_button_map, %entry.map_str_to_val.exit_crit_edge ], [ getelementptr inbounds ([4 x %struct.aiptek_map], ptr @mouse_button_map, i32 0, i32 1), %for.inc.i.map_str_to_val.exit_crit_edge ], [ getelementptr inbounds ([4 x %struct.aiptek_map], ptr @mouse_button_map, i32 0, i32 2), %for.inc.i.1.map_str_to_val.exit_crit_edge ]
  %value.i = getelementptr inbounds %struct.aiptek_map, ptr %p.014.i.lcssa, i32 0, i32 1
  %4 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp = icmp eq i32 %5, -1
  br i1 %cmp, label %map_str_to_val.exit.cleanup_crit_edge, label %if.end

map_str_to_val.exit.cleanup_crit_edge:            ; preds = %map_str_to_val.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %map_str_to_val.exit
  call void @__sanitizer_cov_trace_pc() #13
  %mouseButtonLeft = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 6, i32 8
  %6 = ptrtoint ptr %mouseButtonLeft to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %mouseButtonLeft, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %map_str_to_val.exit.cleanup_crit_edge, %for.inc.i.1.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %map_str_to_val.exit.cleanup_crit_edge ], [ -22, %for.inc.i.1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_tabletMouseMiddle(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mouseButtonMiddle = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 5, i32 9
  %2 = ptrtoint ptr %mouseButtonMiddle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mouseButtonMiddle, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %3, label %entry.map_val_to_str.exit_crit_edge [
    i32 4, label %entry.if.then.i_crit_edge
    i32 16, label %if.then.i.fold.split
    i32 8, label %if.then.i.fold.split8
  ]

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

entry.map_val_to_str.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_val_to_str.exit

if.then.i.fold.split:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i.fold.split8:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.i.fold.split8, %if.then.i.fold.split, %entry.if.then.i_crit_edge
  %p.09.i.lcssa = phi ptr [ @mouse_button_map, %entry.if.then.i_crit_edge ], [ getelementptr inbounds ([4 x %struct.aiptek_map], ptr @mouse_button_map, i32 0, i32 1), %if.then.i.fold.split ], [ getelementptr inbounds ([4 x %struct.aiptek_map], ptr @mouse_button_map, i32 0, i32 2), %if.then.i.fold.split8 ]
  %5 = ptrtoint ptr %p.09.i.lcssa to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p.09.i.lcssa, align 4
  br label %map_val_to_str.exit

map_val_to_str.exit:                              ; preds = %if.then.i, %entry.map_val_to_str.exit_crit_edge
  %retval.0.i = phi ptr [ %6, %if.then.i ], [ @.str.45, %entry.map_val_to_str.exit_crit_edge ]
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.44, ptr noundef %retval.0.i) #11
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_tabletMouseMiddle(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %sub.i = add i32 %count, -1
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %sub.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp.i = icmp eq i8 %3, 10
  %spec.select.i = select i1 %cmp.i, i32 %sub.i, i32 %count
  %call.i = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.84, i32 noundef %spec.select.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %entry.map_str_to_val.exit_crit_edge, label %for.inc.i

entry.map_str_to_val.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_str_to_val.exit

for.inc.i:                                        ; preds = %entry
  %call.i.1 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.85, i32 noundef %spec.select.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool3.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool3.not.i.1, label %for.inc.i.map_str_to_val.exit_crit_edge, label %for.inc.i.1

for.inc.i.map_str_to_val.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_str_to_val.exit

for.inc.i.1:                                      ; preds = %for.inc.i
  %call.i.2 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.86, i32 noundef %spec.select.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool3.not.i.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool3.not.i.2, label %for.inc.i.1.map_str_to_val.exit_crit_edge, label %for.inc.i.1.cleanup_crit_edge

for.inc.i.1.cleanup_crit_edge:                    ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.i.1.map_str_to_val.exit_crit_edge:        ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_str_to_val.exit

map_str_to_val.exit:                              ; preds = %for.inc.i.1.map_str_to_val.exit_crit_edge, %for.inc.i.map_str_to_val.exit_crit_edge, %entry.map_str_to_val.exit_crit_edge
  %p.014.i.lcssa = phi ptr [ @mouse_button_map, %entry.map_str_to_val.exit_crit_edge ], [ getelementptr inbounds ([4 x %struct.aiptek_map], ptr @mouse_button_map, i32 0, i32 1), %for.inc.i.map_str_to_val.exit_crit_edge ], [ getelementptr inbounds ([4 x %struct.aiptek_map], ptr @mouse_button_map, i32 0, i32 2), %for.inc.i.1.map_str_to_val.exit_crit_edge ]
  %value.i = getelementptr inbounds %struct.aiptek_map, ptr %p.014.i.lcssa, i32 0, i32 1
  %4 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp = icmp eq i32 %5, -1
  br i1 %cmp, label %map_str_to_val.exit.cleanup_crit_edge, label %if.end

map_str_to_val.exit.cleanup_crit_edge:            ; preds = %map_str_to_val.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %map_str_to_val.exit
  call void @__sanitizer_cov_trace_pc() #13
  %mouseButtonMiddle = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 6, i32 9
  %6 = ptrtoint ptr %mouseButtonMiddle to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %mouseButtonMiddle, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %map_str_to_val.exit.cleanup_crit_edge, %for.inc.i.1.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %map_str_to_val.exit.cleanup_crit_edge ], [ -22, %for.inc.i.1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_tabletMouseRight(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mouseButtonRight = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 5, i32 10
  %2 = ptrtoint ptr %mouseButtonRight to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mouseButtonRight, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %3, label %entry.map_val_to_str.exit_crit_edge [
    i32 4, label %entry.if.then.i_crit_edge
    i32 16, label %if.then.i.fold.split
    i32 8, label %if.then.i.fold.split8
  ]

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

entry.map_val_to_str.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_val_to_str.exit

if.then.i.fold.split:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i.fold.split8:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.i.fold.split8, %if.then.i.fold.split, %entry.if.then.i_crit_edge
  %p.09.i.lcssa = phi ptr [ @mouse_button_map, %entry.if.then.i_crit_edge ], [ getelementptr inbounds ([4 x %struct.aiptek_map], ptr @mouse_button_map, i32 0, i32 1), %if.then.i.fold.split ], [ getelementptr inbounds ([4 x %struct.aiptek_map], ptr @mouse_button_map, i32 0, i32 2), %if.then.i.fold.split8 ]
  %5 = ptrtoint ptr %p.09.i.lcssa to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p.09.i.lcssa, align 4
  br label %map_val_to_str.exit

map_val_to_str.exit:                              ; preds = %if.then.i, %entry.map_val_to_str.exit_crit_edge
  %retval.0.i = phi ptr [ %6, %if.then.i ], [ @.str.45, %entry.map_val_to_str.exit_crit_edge ]
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.44, ptr noundef %retval.0.i) #11
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_tabletMouseRight(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %sub.i = add i32 %count, -1
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %sub.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp.i = icmp eq i8 %3, 10
  %spec.select.i = select i1 %cmp.i, i32 %sub.i, i32 %count
  %call.i = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.84, i32 noundef %spec.select.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %entry.map_str_to_val.exit_crit_edge, label %for.inc.i

entry.map_str_to_val.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_str_to_val.exit

for.inc.i:                                        ; preds = %entry
  %call.i.1 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.85, i32 noundef %spec.select.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool3.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool3.not.i.1, label %for.inc.i.map_str_to_val.exit_crit_edge, label %for.inc.i.1

for.inc.i.map_str_to_val.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_str_to_val.exit

for.inc.i.1:                                      ; preds = %for.inc.i
  %call.i.2 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.86, i32 noundef %spec.select.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool3.not.i.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool3.not.i.2, label %for.inc.i.1.map_str_to_val.exit_crit_edge, label %for.inc.i.1.cleanup_crit_edge

for.inc.i.1.cleanup_crit_edge:                    ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.i.1.map_str_to_val.exit_crit_edge:        ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_str_to_val.exit

map_str_to_val.exit:                              ; preds = %for.inc.i.1.map_str_to_val.exit_crit_edge, %for.inc.i.map_str_to_val.exit_crit_edge, %entry.map_str_to_val.exit_crit_edge
  %p.014.i.lcssa = phi ptr [ @mouse_button_map, %entry.map_str_to_val.exit_crit_edge ], [ getelementptr inbounds ([4 x %struct.aiptek_map], ptr @mouse_button_map, i32 0, i32 1), %for.inc.i.map_str_to_val.exit_crit_edge ], [ getelementptr inbounds ([4 x %struct.aiptek_map], ptr @mouse_button_map, i32 0, i32 2), %for.inc.i.1.map_str_to_val.exit_crit_edge ]
  %value.i = getelementptr inbounds %struct.aiptek_map, ptr %p.014.i.lcssa, i32 0, i32 1
  %4 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp = icmp eq i32 %5, -1
  br i1 %cmp, label %map_str_to_val.exit.cleanup_crit_edge, label %if.end

map_str_to_val.exit.cleanup_crit_edge:            ; preds = %map_str_to_val.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %map_str_to_val.exit
  call void @__sanitizer_cov_trace_pc() #13
  %mouseButtonRight = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 6, i32 10
  %6 = ptrtoint ptr %mouseButtonRight to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %mouseButtonRight, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %map_str_to_val.exit.cleanup_crit_edge, %for.inc.i.1.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %map_str_to_val.exit.cleanup_crit_edge ], [ -22, %for.inc.i.1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_tabletWheel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %wheel = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 5, i32 5
  %2 = ptrtoint ptr %wheel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wheel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10101, i32 %3)
  %cmp = icmp eq i32 %3, -10101
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.60) #11
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.61, i32 noundef %3) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call4, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_tabletWheel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %w = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %w) #11
  %2 = ptrtoint ptr %w to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %w, align 4, !annotation !252
  %call1 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %w) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %w, align 4
  %wheel = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 6, i32 5
  %5 = ptrtoint ptr %wheel to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %wheel, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %w) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_tabletExecute(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.91) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_tabletExecute(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %curSetting = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 5
  %newSetting = getelementptr inbounds %struct.aiptek, ptr %1, i32 0, i32 6
  %2 = call ptr @memcpy(ptr %curSetting, ptr %newSetting, i32 52)
  %call1 = tail call fastcc i32 @aiptek_program_tablet(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  %.count = select i1 %cmp, i32 -5, i32 %count
  ret i32 %.count
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 119)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 119)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !15, !17, !18, !20, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !43, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !69, !71, !73, !75, !77, !79, !80, !81, !83, !84, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !103, !105, !106, !108, !110, !111, !113, !115, !117, !119, !121, !123, !125, !126, !128, !130, !132, !134, !135, !137, !139, !141, !143, !145, !147, !149, !151, !152, !154, !156, !158, !160, !161, !163, !164, !166, !167, !169, !170, !172, !174, !175, !177, !179, !181, !183, !185, !187, !188, !190, !192, !193, !195, !196, !198, !200, !201, !203, !205, !207, !209, !210, !212, !213, !215, !217, !219, !221, !223, !224, !226, !227, !229, !230, !232, !233, !235, !237, !238, !240, !241}
!llvm.module.flags = !{!243, !244, !245, !246, !247, !248, !249, !250}
!llvm.ident = !{!251}

!0 = !{ptr @__initcall__kmod_aiptek__237_1906_aiptek_driver_init6, !1, !"__initcall__kmod_aiptek__237_1906_aiptek_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/tablet/aiptek.c", i32 1906, i32 1}
!2 = !{ptr @__exitcall_aiptek_driver_exit, !1, !"__exitcall_aiptek_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author238, !4, !"__UNIQUE_ID_author238", i1 false, i1 false}
!4 = !{!"../drivers/input/tablet/aiptek.c", i32 1908, i32 1}
!5 = !{ptr @__UNIQUE_ID_description239, !6, !"__UNIQUE_ID_description239", i1 false, i1 false}
!6 = !{!"../drivers/input/tablet/aiptek.c", i32 1909, i32 1}
!7 = !{ptr @__UNIQUE_ID_file240, !8, !"__UNIQUE_ID_file240", i1 false, i1 false}
!8 = !{!"../drivers/input/tablet/aiptek.c", i32 1910, i32 1}
!9 = !{ptr @__UNIQUE_ID_license241, !8, !"__UNIQUE_ID_license241", i1 false, i1 false}
!10 = !{ptr @__param_programmableDelay, !11, !"__param_programmableDelay", i1 false, i1 false}
!11 = !{!"../drivers/input/tablet/aiptek.c", i32 1912, i32 1}
!12 = !{ptr @__UNIQUE_ID_programmableDelaytype242, !11, !"__UNIQUE_ID_programmableDelaytype242", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_programmableDelay243, !14, !"__UNIQUE_ID_programmableDelay243", i1 false, i1 false}
!14 = !{!"../drivers/input/tablet/aiptek.c", i32 1913, i32 1}
!15 = !{ptr @__param_jitterDelay, !16, !"__param_jitterDelay", i1 false, i1 false}
!16 = !{!"../drivers/input/tablet/aiptek.c", i32 1914, i32 1}
!17 = !{ptr @__UNIQUE_ID_jitterDelaytype244, !16, !"__UNIQUE_ID_jitterDelaytype244", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_jitterDelay245, !19, !"__UNIQUE_ID_jitterDelay245", i1 false, i1 false}
!19 = !{!"../drivers/input/tablet/aiptek.c", i32 1915, i32 1}
!20 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @aiptek_driver, !22, !"aiptek_driver", i1 false, i1 false}
!22 = !{!"../drivers/input/tablet/aiptek.c", i32 1899, i32 26}
!23 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/input/tablet/aiptek.c", i32 1682, i32 3}
!25 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @aiptek_probe._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @aiptek_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/tablet/aiptek.c", i32 1690, i32 3}
!33 = !{ptr @aiptek_probe._entry.6, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @aiptek_probe._entry_ptr.8, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/tablet/aiptek.c", i32 1696, i32 10}
!37 = !{ptr @aiptek_probe._entry.9, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @aiptek_probe._entry_ptr.11, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/tablet/aiptek.c", i32 1740, i32 36}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/input/tablet/aiptek.c", i32 1746, i32 19}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/input/tablet/aiptek.c", i32 1793, i32 3}
!45 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @aiptek_probe._entry.14, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @aiptek_probe._entry_ptr.17, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/tablet/aiptek.c", i32 1826, i32 4}
!50 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @aiptek_probe._entry.18, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @aiptek_probe._entry_ptr.21, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/input/tablet/aiptek.c", i32 1836, i32 3}
!55 = !{ptr @aiptek_probe._entry.22, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @aiptek_probe._entry_ptr.24, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/input/tablet/aiptek.c", i32 1850, i32 3}
!59 = !{ptr @aiptek_probe._entry.25, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @aiptek_probe._entry_ptr.27, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/input/tablet/aiptek.c", i32 1859, i32 3}
!63 = !{ptr @aiptek_probe._entry.28, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @aiptek_probe._entry_ptr.30, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../include/linux/usb.h", i32 912, i32 31}
!67 = distinct !{null, !68, !"eventTypes", i1 false, i1 false}
!68 = !{!"../drivers/input/tablet/aiptek.c", i32 308, i32 18}
!69 = distinct !{null, !70, !"absEvents", i1 false, i1 false}
!70 = !{!"../drivers/input/tablet/aiptek.c", i32 312, i32 18}
!71 = distinct !{null, !72, !"relEvents", i1 false, i1 false}
!72 = !{!"../drivers/input/tablet/aiptek.c", i32 317, i32 18}
!73 = distinct !{null, !74, !"buttonEvents", i1 false, i1 false}
!74 = !{!"../drivers/input/tablet/aiptek.c", i32 321, i32 18}
!75 = !{ptr @macroKeyEvents, !76, !"macroKeyEvents", i1 false, i1 false}
!76 = !{!"../drivers/input/tablet/aiptek.c", i32 333, i32 18}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/input/tablet/aiptek.c", i32 430, i32 3}
!79 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @aiptek_irq.__UNIQUE_ID_ddebug232, !78, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/input/tablet/aiptek.c", i32 435, i32 3}
!83 = !{ptr @aiptek_irq.__UNIQUE_ID_ddebug233, !82, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/input/tablet/aiptek.c", i32 768, i32 3}
!86 = !{ptr @aiptek_irq.__UNIQUE_ID_ddebug234, !85, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/input/tablet/aiptek.c", i32 794, i32 3}
!89 = !{ptr @aiptek_irq._entry, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @aiptek_irq._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/input/tablet/aiptek.c", i32 900, i32 3}
!93 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @aiptek_command.__UNIQUE_ID_ddebug235, !92, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/input/tablet/aiptek.c", i32 936, i32 3}
!97 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @aiptek_query.__UNIQUE_ID_ddebug236, !96, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!99 = !{ptr @aiptek_attribute_group, !100, !"aiptek_attribute_group", i1 false, i1 false}
!100 = !{!"../drivers/input/tablet/aiptek.c", i32 1645, i32 37}
!101 = !{ptr @aiptek_attributes, !102, !"aiptek_attributes", i1 false, i1 false}
!102 = !{!"../drivers/input/tablet/aiptek.c", i32 1621, i32 26}
!103 = !{ptr @.str.41, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/input/tablet/aiptek.c", i32 1050, i32 8}
!105 = !{ptr @dev_attr_size, !104, !"dev_attr_size", i1 false, i1 false}
!106 = !{ptr @.str.42, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/input/tablet/aiptek.c", i32 1039, i32 25}
!108 = !{ptr @.str.43, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/input/tablet/aiptek.c", i32 1084, i32 8}
!110 = !{ptr @dev_attr_pointer_mode, !109, !"dev_attr_pointer_mode", i1 false, i1 false}
!111 = !{ptr @.str.44, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/input/tablet/aiptek.c", i32 1067, i32 25}
!113 = !{ptr @.str.45, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/input/tablet/aiptek.c", i32 375, i32 9}
!115 = !{ptr @.str.46, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/input/tablet/aiptek.c", i32 1057, i32 4}
!117 = !{ptr @.str.47, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/input/tablet/aiptek.c", i32 1058, i32 4}
!119 = !{ptr @.str.48, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/input/tablet/aiptek.c", i32 1059, i32 4}
!121 = !{ptr @pointer_mode_map, !122, !"pointer_mode_map", i1 false, i1 false}
!122 = !{!"../drivers/input/tablet/aiptek.c", i32 1056, i32 26}
!123 = !{ptr @.str.49, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/input/tablet/aiptek.c", i32 1120, i32 8}
!125 = !{ptr @dev_attr_coordinate_mode, !124, !"dev_attr_coordinate_mode", i1 false, i1 false}
!126 = !{ptr @.str.50, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/input/tablet/aiptek.c", i32 1094, i32 4}
!128 = !{ptr @.str.51, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/input/tablet/aiptek.c", i32 1095, i32 4}
!130 = !{ptr @coordinate_mode_map, !131, !"coordinate_mode_map", i1 false, i1 false}
!131 = !{!"../drivers/input/tablet/aiptek.c", i32 1093, i32 26}
!132 = !{ptr @.str.52, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/input/tablet/aiptek.c", i32 1161, i32 8}
!134 = !{ptr @dev_attr_tool_mode, !133, !"dev_attr_tool_mode", i1 false, i1 false}
!135 = !{ptr @.str.53, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/input/tablet/aiptek.c", i32 1131, i32 4}
!137 = !{ptr @.str.54, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/input/tablet/aiptek.c", i32 1132, i32 4}
!139 = !{ptr @.str.55, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/input/tablet/aiptek.c", i32 1133, i32 4}
!141 = !{ptr @.str.56, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/input/tablet/aiptek.c", i32 1134, i32 4}
!143 = !{ptr @.str.57, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/input/tablet/aiptek.c", i32 1135, i32 4}
!145 = !{ptr @.str.58, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/input/tablet/aiptek.c", i32 1136, i32 4}
!147 = !{ptr @tool_mode_map, !148, !"tool_mode_map", i1 false, i1 false}
!148 = !{!"../drivers/input/tablet/aiptek.c", i32 1129, i32 26}
!149 = !{ptr @.str.59, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/input/tablet/aiptek.c", i32 1203, i32 8}
!151 = !{ptr @dev_attr_xtilt, !150, !"dev_attr_xtilt", i1 false, i1 false}
!152 = !{ptr @.str.60, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/input/tablet/aiptek.c", i32 1174, i32 26}
!154 = !{ptr @.str.61, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/input/tablet/aiptek.c", i32 1176, i32 26}
!156 = !{ptr @.str.62, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/input/tablet/aiptek.c", i32 1189, i32 20}
!158 = !{ptr @.str.63, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/input/tablet/aiptek.c", i32 1244, i32 8}
!160 = !{ptr @dev_attr_ytilt, !159, !"dev_attr_ytilt", i1 false, i1 false}
!161 = !{ptr @.str.64, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/input/tablet/aiptek.c", i32 1272, i32 8}
!163 = !{ptr @dev_attr_jitter, !162, !"dev_attr_jitter", i1 false, i1 false}
!164 = !{ptr @.str.65, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/input/tablet/aiptek.c", i32 1301, i32 8}
!166 = !{ptr @dev_attr_delay, !165, !"dev_attr_delay", i1 false, i1 false}
!167 = !{ptr @.str.66, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/input/tablet/aiptek.c", i32 1316, i32 8}
!169 = !{ptr @dev_attr_event_count, !168, !"dev_attr_event_count", i1 false, i1 false}
!170 = !{ptr @.str.67, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/input/tablet/aiptek.c", i32 1313, i32 25}
!172 = !{ptr @.str.68, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/input/tablet/aiptek.c", i32 1355, i32 8}
!174 = !{ptr @dev_attr_diagnostic, !173, !"dev_attr_diagnostic", i1 false, i1 false}
!175 = !{ptr @.str.69, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/input/tablet/aiptek.c", i32 1329, i32 12}
!177 = !{ptr @.str.70, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/input/tablet/aiptek.c", i32 1333, i32 12}
!179 = !{ptr @.str.71, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/input/tablet/aiptek.c", i32 1337, i32 12}
!181 = !{ptr @.str.72, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/input/tablet/aiptek.c", i32 1343, i32 13}
!183 = !{ptr @.str.73, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/input/tablet/aiptek.c", i32 1345, i32 13}
!185 = !{ptr @.str.74, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/input/tablet/aiptek.c", i32 1593, i32 8}
!187 = !{ptr @dev_attr_odm_code, !186, !"dev_attr_odm_code", i1 false, i1 false}
!188 = !{ptr @.str.75, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/input/tablet/aiptek.c", i32 1590, i32 25}
!190 = !{ptr @.str.76, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/input/tablet/aiptek.c", i32 1606, i32 8}
!192 = !{ptr @dev_attr_model_code, !191, !"dev_attr_model_code", i1 false, i1 false}
!193 = !{ptr @.str.77, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/input/tablet/aiptek.c", i32 1619, i32 8}
!195 = !{ptr @dev_attr_firmware_code, !194, !"dev_attr_firmware_code", i1 false, i1 false}
!196 = !{ptr @.str.78, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/input/tablet/aiptek.c", i32 1616, i32 25}
!198 = !{ptr @.str.79, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/input/tablet/aiptek.c", i32 1419, i32 8}
!200 = !{ptr @dev_attr_stylus_lower, !199, !"dev_attr_stylus_lower", i1 false, i1 false}
!201 = !{ptr @.str.80, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/input/tablet/aiptek.c", i32 1363, i32 4}
!203 = !{ptr @.str.81, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/input/tablet/aiptek.c", i32 1364, i32 4}
!205 = !{ptr @stylus_button_map, !206, !"stylus_button_map", i1 false, i1 false}
!206 = !{!"../drivers/input/tablet/aiptek.c", i32 1362, i32 26}
!207 = !{ptr @.str.82, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/input/tablet/aiptek.c", i32 1389, i32 8}
!209 = !{ptr @dev_attr_stylus_upper, !208, !"dev_attr_stylus_upper", i1 false, i1 false}
!210 = !{ptr @.str.83, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/input/tablet/aiptek.c", i32 1456, i32 8}
!212 = !{ptr @dev_attr_mouse_left, !211, !"dev_attr_mouse_left", i1 false, i1 false}
!213 = !{ptr @.str.84, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/input/tablet/aiptek.c", i32 1429, i32 4}
!215 = !{ptr @.str.85, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/input/tablet/aiptek.c", i32 1430, i32 4}
!217 = !{ptr @.str.86, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/input/tablet/aiptek.c", i32 1431, i32 4}
!219 = !{ptr @mouse_button_map, !220, !"mouse_button_map", i1 false, i1 false}
!220 = !{!"../drivers/input/tablet/aiptek.c", i32 1428, i32 26}
!221 = !{ptr @.str.87, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/input/tablet/aiptek.c", i32 1485, i32 8}
!223 = !{ptr @dev_attr_mouse_middle, !222, !"dev_attr_mouse_middle", i1 false, i1 false}
!224 = !{ptr @.str.88, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/input/tablet/aiptek.c", i32 1514, i32 8}
!226 = !{ptr @dev_attr_mouse_right, !225, !"dev_attr_mouse_right", i1 false, i1 false}
!227 = !{ptr @.str.89, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/input/tablet/aiptek.c", i32 1547, i32 8}
!229 = !{ptr @dev_attr_wheel, !228, !"dev_attr_wheel", i1 false, i1 false}
!230 = !{ptr @.str.90, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/input/tablet/aiptek.c", i32 1579, i32 8}
!232 = !{ptr @dev_attr_execute, !231, !"dev_attr_execute", i1 false, i1 false}
!233 = !{ptr @.str.91, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/input/tablet/aiptek.c", i32 1559, i32 25}
!235 = !{ptr @aiptek_ids, !236, !"aiptek_ids", i1 false, i1 false}
!236 = !{!"../drivers/input/tablet/aiptek.c", i32 808, i32 35}
!237 = !{ptr @__param_str_programmableDelay, !11, !"__param_str_programmableDelay", i1 false, i1 false}
!238 = !{ptr @programmableDelay, !239, !"programmableDelay", i1 false, i1 false}
!239 = !{!"../drivers/input/tablet/aiptek.c", i32 262, i32 12}
!240 = !{ptr @__param_str_jitterDelay, !16, !"__param_str_jitterDelay", i1 false, i1 false}
!241 = !{ptr @jitterDelay, !242, !"jitterDelay", i1 false, i1 false}
!242 = !{!"../drivers/input/tablet/aiptek.c", i32 263, i32 12}
!243 = !{i32 1, !"wchar_size", i32 2}
!244 = !{i32 1, !"min_enum_size", i32 4}
!245 = !{i32 8, !"branch-target-enforcement", i32 0}
!246 = !{i32 8, !"sign-return-address", i32 0}
!247 = !{i32 8, !"sign-return-address-all", i32 0}
!248 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!249 = !{i32 7, !"uwtable", i32 1}
!250 = !{i32 7, !"frame-pointer", i32 2}
!251 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!252 = !{!"auto-init"}
!253 = !{i64 2148836926, i64 2148836931, i64 2148836944, i64 2148836988, i64 2148837022, i64 2148837043}
