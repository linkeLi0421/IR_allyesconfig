; ModuleID = '/llk/IR_all_yes/drivers/media/radio/si4713/si4713.c_pt.bc'
source_filename = "../drivers/media/radio/si4713/si4713.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.si4713_device = type { %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, %struct.anon.119, %struct.completion, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.119 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.radio_si4713_platform_data = type { ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.si4713_rnl = type { i32, i32, i32, [4 x i32] }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }
%struct.v4l2_modulator = type { i32, [32 x i8], i32, i32, i32, i32, i32, [3 x i32] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }

@__param_str_debug = internal constant [13 x i8] c"si4713.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype292 = internal constant [26 x i8] c"si4713.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug293 = internal constant [38 x i8] c"si4713.parm=debug:Debug level (0 - 2)\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [46 x i8] c"si4713.file=drivers/media/radio/si4713/si4713\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [19 x i8] c"si4713.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [60 x i8] c"si4713.author=Eduardo Valentin <eduardo.valentin@nokia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description297 = internal constant [62 x i8] c"si4713.description=I2C driver for Si4713 FM Radio Transmitter\00", section ".modinfo", align 1
@__UNIQUE_ID_version298 = internal constant [21 x i8] c"si4713.version=0.0.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"si4713\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.0.1\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__initcall__kmod_si4713__305_1667_si4713_i2c_driver_init6 = internal global ptr @si4713_i2c_driver_init, section ".initcall6.init", align 4
@si4713_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @si4713_remove, ptr @si4713_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @si4713_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @si4713_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_si4713_i2c_driver_exit = internal global ptr @si4713_i2c_driver_exit, section ".exitcall.exit", align 4
@si4713_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"silabs,si4713\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@si4713_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"si4713\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@si4713_powerup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: Failed to enable vdd: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"si4713_powerup\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/radio/si4713/si4713.c\00", [60 x i8] zeroinitializer }, align 32
@si4713_powerup._entry_ptr = internal global ptr @si4713_powerup._entry, section ".printk_index", align 4
@si4713_powerup._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: Failed to enable vio: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@si4713_powerup._entry_ptr.8 = internal global ptr @si4713_powerup._entry.6, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@si4713_powerup._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: Powerup response: 0x%02x\0A\00", [32 x i8] zeroinitializer }, align 32
@si4713_powerup._entry_ptr.11 = internal global ptr @si4713_powerup._entry.9, section ".printk_index", align 4
@si4713_powerup._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: Device in power up mode\0A\00", [33 x i8] zeroinitializer }, align 32
@si4713_powerup._entry_ptr.14 = internal global ptr @si4713_powerup._entry.12, section ".printk_index", align 4
@si4713_powerup._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: Failed to disable vdd: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@si4713_powerup._entry_ptr.17 = internal global ptr @si4713_powerup._entry.15, section ".printk_index", align 4
@si4713_powerup._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.4, ptr @.str.5, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: Failed to disable vio: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@si4713_powerup._entry_ptr.20 = internal global ptr @si4713_powerup._entry.18, section ".printk_index", align 4
@si4713_send_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.5, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: Error while sending command 0x%02x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"si4713_send_command\00", [44 x i8] zeroinitializer }, align 32
@si4713_send_command._entry_ptr = internal global ptr @si4713_send_command._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@si4713_send_command._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.5, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014%s: (%s) Device took too much time to answer.\0A\00", [47 x i8] zeroinitializer }, align 32
@si4713_send_command._entry_ptr.25 = internal global ptr @si4713_send_command._entry.23, section ".printk_index", align 4
@si4713_send_command._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.5, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013%s: Error %d while reading response for command 0x%02x\0A\00", [38 x i8] zeroinitializer }, align 32
@si4713_send_command._entry_ptr.28 = internal global ptr @si4713_send_command._entry.26, section ".printk_index", align 4
@si4713_write_property._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.5, i32 324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017%s: %s: property=0x%02x value=0x%02x status=0x%02x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"si4713_write_property\00", [42 x i8] zeroinitializer }, align 32
@si4713_write_property._entry_ptr = internal global ptr @si4713_write_property._entry, section ".printk_index", align 4
@si4713_powerdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.5, i32 434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: Power down response: 0x%02x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"si4713_powerdown\00", [47 x i8] zeroinitializer }, align 32
@si4713_powerdown._entry_ptr = internal global ptr @si4713_powerdown._entry, section ".printk_index", align 4
@si4713_powerdown._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.5, i32 435, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: Device in reset mode\0A\00", [36 x i8] zeroinitializer }, align 32
@si4713_powerdown._entry_ptr.35 = internal global ptr @si4713_powerdown._entry.33, section ".printk_index", align 4
@si4713_powerdown._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.32, ptr @.str.5, i32 443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@si4713_powerdown._entry_ptr.37 = internal global ptr @si4713_powerdown._entry.36, section ".printk_index", align 4
@si4713_powerdown._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.32, ptr @.str.5, i32 451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@si4713_powerdown._entry_ptr.39 = internal global ptr @si4713_powerdown._entry.38, section ".printk_index", align 4
@si4713_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.5, i32 1442, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to alloc video device.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"si4713_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@si4713_probe._entry_ptr = internal global ptr @si4713_probe._entry, section ".printk_index", align 4
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@si4713_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.5, i32 1451, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to request gpio: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@si4713_probe._entry_ptr.47 = internal global ptr @si4713_probe._entry.45, section ".printk_index", align 4
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@si4713_probe.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.41, ptr @.str.5, ptr @.str.49, i8 1, i8 109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no vdd regulator found: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vio\00", [28 x i8] zeroinitializer }, align 32
@si4713_probe.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.41, ptr @.str.5, ptr @.str.51, i8 1, i8 111, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no vio regulator found: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@si4713_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @si4713_subdev_core_ops, ptr @si4713_subdev_tuner_ops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@si4713_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"si4713:1480:(hdl)->_lock\00", [39 x i8] zeroinitializer }, align 32
@si4713_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @si4713_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@si4713_alt_freqs_ctrl = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr null, ptr null, i32 10160399, ptr null, i32 258, i64 87600, i64 107900, i64 100, i64 87600, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] [i32 1, i32 0, i32 0, i32 0], i32 4, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@si4713_probe._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.41, ptr @.str.5, i32 1579, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: Could not request IRQ\0A\00", [35 x i8] zeroinitializer }, align 32
@si4713_probe._entry_ptr.55 = internal global ptr @si4713_probe._entry.53, section ".printk_index", align 4
@si4713_probe._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.41, ptr @.str.5, i32 1582, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: IRQ requested.\0A\00", [42 x i8] zeroinitializer }, align 32
@si4713_probe._entry_ptr.58 = internal global ptr @si4713_probe._entry.56, section ".printk_index", align 4
@si4713_probe._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.41, ptr @.str.5, i32 1584, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014%s: IRQ not configured. Using timeouts.\0A\00", [53 x i8] zeroinitializer }, align 32
@si4713_probe._entry_ptr.61 = internal global ptr @si4713_probe._entry.59, section ".printk_index", align 4
@si4713_probe._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.41, ptr @.str.5, i32 1589, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: Failed to probe device information.\0A\00", [53 x i8] zeroinitializer }, align 32
@si4713_probe._entry_ptr.64 = internal global ptr @si4713_probe._entry.62, section ".printk_index", align 4
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"radio-si4713\00", [19 x i8] zeroinitializer }, align 32
@si4713_subdev_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @si4713_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@si4713_subdev_tuner_ops = internal constant { %struct.v4l2_subdev_tuner_ops, [52 x i8] } { %struct.v4l2_subdev_tuner_ops { ptr null, ptr null, ptr @si4713_s_frequency, ptr @si4713_g_frequency, ptr null, ptr null, ptr null, ptr @si4713_g_modulator, ptr @si4713_s_modulator, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@si4713_tx_tune_measure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.5, i32 662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017%s: %s: frequency=0x%02x antcap=0x%02x status=0x%02x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"si4713_tx_tune_measure\00", [41 x i8] zeroinitializer }, align 32
@si4713_tx_tune_measure._entry_ptr = internal global ptr @si4713_tx_tune_measure._entry, section ".printk_index", align 4
@si4713_wait_stc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.68, ptr @.str.5, i32 504, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"si4713_wait_stc\00", [16 x i8] zeroinitializer }, align 32
@si4713_wait_stc._entry_ptr = internal global ptr @si4713_wait_stc._entry, section ".printk_index", align 4
@si4713_wait_stc._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.5, i32 516, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: %s: status bits: 0x%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@si4713_wait_stc._entry_ptr.71 = internal global ptr @si4713_wait_stc._entry.69, section ".printk_index", align 4
@si4713_tx_tune_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.5, i32 700, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: %s: status=0x%02x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"si4713_tx_tune_status\00", [42 x i8] zeroinitializer }, align 32
@si4713_tx_tune_status._entry_ptr = internal global ptr @si4713_tx_tune_status._entry, section ".printk_index", align 4
@si4713_tx_tune_status._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.5, i32 708, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\017%s: %s: response: %d x 10 kHz (power %d, antcap %d, rnl %d)\0A\00", [33 x i8] zeroinitializer }, align 32
@si4713_tx_tune_status._entry_ptr.76 = internal global ptr @si4713_tx_tune_status._entry.74, section ".printk_index", align 4
@si4713_tx_tune_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.5, i32 562, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s: %s: frequency=0x%02x status=0x%02x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"si4713_tx_tune_freq\00", [44 x i8] zeroinitializer }, align 32
@si4713_tx_tune_freq._entry_ptr = internal global ptr @si4713_tx_tune_freq._entry, section ".printk_index", align 4
@.str.79 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"FM Modulator\00", [19 x i8] zeroinitializer }, align 32
@si4713_read_property._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.80, ptr @.str.5, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"si4713_read_property\00", [43 x i8] zeroinitializer }, align 32
@si4713_read_property._entry_ptr = internal global ptr @si4713_read_property._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@si4713_tx_rds_ps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.82, ptr @.str.5, i32 783, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"si4713_tx_rds_ps\00", [47 x i8] zeroinitializer }, align 32
@si4713_tx_rds_ps._entry_ptr = internal global ptr @si4713_tx_rds_ps._entry, section ".printk_index", align 4
@si4713_set_rds_radio_text.cr = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\0D\00\00\00", [28 x i8] zeroinitializer }, align 32
@si4713_tx_rds_buff._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.83, ptr @.str.5, i32 746, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"si4713_tx_rds_buff\00", [45 x i8] zeroinitializer }, align 32
@si4713_tx_rds_buff._entry_ptr = internal global ptr @si4713_tx_rds_buff._entry, section ".printk_index", align 4
@si4713_tx_rds_buff._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.5, i32 750, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\017%s: %s: response: interrupts 0x%02x cb avail: %d cb used %d fifo avail %d fifo used %d\0A\00", [38 x i8] zeroinitializer }, align 32
@si4713_tx_rds_buff._entry_ptr.86 = internal global ptr @si4713_tx_rds_buff._entry.84, section ".printk_index", align 4
@si4713_tx_tune_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.5, i32 613, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017%s: %s: power=0x%02x antcap=0x%02x status=0x%02x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"si4713_tx_tune_power\00", [43 x i8] zeroinitializer }, align 32
@si4713_tx_tune_power._entry_ptr = internal global ptr @si4713_tx_tune_power._entry, section ".printk_index", align 4
@limiter_times = internal constant { [40 x i32], [32 x i8] } { [40 x i32] [i32 2000, i32 250, i32 1000, i32 500, i32 510, i32 1000, i32 255, i32 2000, i32 170, i32 3000, i32 127, i32 4020, i32 102, i32 5010, i32 85, i32 6020, i32 73, i32 7010, i32 64, i32 7990, i32 57, i32 8970, i32 51, i32 10030, i32 25, i32 20470, i32 17, i32 30110, i32 13, i32 39380, i32 10, i32 51190, i32 8, i32 63690, i32 7, i32 73140, i32 6, i32 85330, i32 5, i32 102390], [32 x i8] zeroinitializer }, align 32
@acomp_rtimes = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 0, i32 100000, i32 1, i32 200000, i32 2, i32 350000, i32 3, i32 525000, i32 4, i32 1000000], [56 x i8] zeroinitializer }, align 32
@preemphasis_values = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 2, i32 0, i32 1, i32 1, i32 0, i32 2], [40 x i8] zeroinitializer }, align 32
@si4713_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.5, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017%s: %s: sending signal to completion work.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"si4713_handler\00", [17 x i8] zeroinitializer }, align 32
@si4713_handler._entry_ptr = internal global ptr @si4713_handler._entry, section ".printk_index", align 4
@si4713_checkrev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.5, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: chip found @ 0x%02x (%s)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"si4713_checkrev\00", [16 x i8] zeroinitializer }, align 32
@si4713_checkrev._entry_ptr = internal global ptr @si4713_checkrev._entry, section ".printk_index", align 4
@si4713_checkrev._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.92, ptr @.str.5, i32 482, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: Invalid product number 0x%X\0A\00", [61 x i8] zeroinitializer }, align 32
@si4713_checkrev._entry_ptr.95 = internal global ptr @si4713_checkrev._entry.93, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [30 x i64] [i64 28, i64 32, i64 10160385, i64 10160386, i64 10160387, i64 10160389, i64 10160390, i64 10160391, i64 10160392, i64 10160393, i64 10160394, i64 10160395, i64 10160396, i64 10160397, i64 10160398, i64 10160399, i64 10160448, i64 10160449, i64 10160450, i64 10160464, i64 10160465, i64 10160466, i64 10160467, i64 10160468, i64 10160480, i64 10160481, i64 10160482, i64 10160496, i64 10160497, i64 10160498]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 13]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 13]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 13]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 13]
@___asan_gen_.100 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 26, i32 12 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 33, i32 1 }
@___asan_gen_.112 = private unnamed_addr constant [18 x i8] c"si4713_i2c_driver\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1657, i32 26 }
@___asan_gen_.115 = private unnamed_addr constant [16 x i8] c"si4713_of_match\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1650, i32 34 }
@___asan_gen_.118 = private unnamed_addr constant [10 x i8] c"si4713_id\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1643, i32 35 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 360, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 368, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 387, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 389, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 403, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 409, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 212, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 223, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 231, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 322, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 433, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 435, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 442, i32 5 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 450, i32 5 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1442, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1447, i32 59 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1451, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1455, i32 56 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1461, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1465, i32 56 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1471, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant [18 x i8] c"si4713_subdev_ops\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1410, i32 37 }
@___asan_gen_.253 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1480, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant [16 x i8] c"si4713_ctrl_ops\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1395, i32 35 }
@___asan_gen_.262 = private unnamed_addr constant [22 x i8] c"si4713_alt_freqs_ctrl\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1415, i32 38 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1579, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1582, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1584, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1589, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1596, i32 38 }
@___asan_gen_.292 = private unnamed_addr constant [23 x i8] c"si4713_subdev_core_ops\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1399, i32 42 }
@___asan_gen_.295 = private unnamed_addr constant [24 x i8] c"si4713_subdev_tuner_ops\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1403, i32 43 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 660, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 503, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 515, i32 4 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 699, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 706, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 560, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1266, i32 20 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 282, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.356 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 87, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 783, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant [3 x i8] c"cr\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 850, i32 20 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 745, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 748, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 611, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant [14 x i8] c"limiter_times\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 109, i32 13 }
@___asan_gen_.391 = private unnamed_addr constant [13 x i8] c"acomp_rtimes\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 137, i32 22 }
@___asan_gen_.394 = private unnamed_addr constant [19 x i8] c"preemphasis_values\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 150, i32 22 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 176, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 479, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.418 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.419 = private constant [39 x i8] c"../drivers/media/radio/si4713/si4713.c\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 482, i32 3 }
@llvm.compiler.used = appending global [153 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_debug293, ptr @__UNIQUE_ID_debugtype292, ptr @__UNIQUE_ID_description297, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__UNIQUE_ID_version298, ptr @__exitcall_si4713_i2c_driver_exit, ptr @__initcall__kmod_si4713__305_1667_si4713_i2c_driver_init6, ptr @__modver_attr, ptr @__param_debug, ptr @si4713_checkrev._entry, ptr @si4713_checkrev._entry.93, ptr @si4713_checkrev._entry_ptr, ptr @si4713_checkrev._entry_ptr.95, ptr @si4713_handler._entry, ptr @si4713_handler._entry_ptr, ptr @si4713_i2c_driver_exit, ptr @si4713_powerdown._entry, ptr @si4713_powerdown._entry.33, ptr @si4713_powerdown._entry.36, ptr @si4713_powerdown._entry.38, ptr @si4713_powerdown._entry_ptr, ptr @si4713_powerdown._entry_ptr.35, ptr @si4713_powerdown._entry_ptr.37, ptr @si4713_powerdown._entry_ptr.39, ptr @si4713_powerup._entry, ptr @si4713_powerup._entry.12, ptr @si4713_powerup._entry.15, ptr @si4713_powerup._entry.18, ptr @si4713_powerup._entry.6, ptr @si4713_powerup._entry.9, ptr @si4713_powerup._entry_ptr, ptr @si4713_powerup._entry_ptr.11, ptr @si4713_powerup._entry_ptr.14, ptr @si4713_powerup._entry_ptr.17, ptr @si4713_powerup._entry_ptr.20, ptr @si4713_powerup._entry_ptr.8, ptr @si4713_probe._entry, ptr @si4713_probe._entry.45, ptr @si4713_probe._entry.53, ptr @si4713_probe._entry.56, ptr @si4713_probe._entry.59, ptr @si4713_probe._entry.62, ptr @si4713_probe._entry_ptr, ptr @si4713_probe._entry_ptr.47, ptr @si4713_probe._entry_ptr.55, ptr @si4713_probe._entry_ptr.58, ptr @si4713_probe._entry_ptr.61, ptr @si4713_probe._entry_ptr.64, ptr @si4713_read_property._entry, ptr @si4713_read_property._entry_ptr, ptr @si4713_send_command._entry, ptr @si4713_send_command._entry.23, ptr @si4713_send_command._entry.26, ptr @si4713_send_command._entry_ptr, ptr @si4713_send_command._entry_ptr.25, ptr @si4713_send_command._entry_ptr.28, ptr @si4713_tx_rds_buff._entry, ptr @si4713_tx_rds_buff._entry.84, ptr @si4713_tx_rds_buff._entry_ptr, ptr @si4713_tx_rds_buff._entry_ptr.86, ptr @si4713_tx_rds_ps._entry, ptr @si4713_tx_rds_ps._entry_ptr, ptr @si4713_tx_tune_freq._entry, ptr @si4713_tx_tune_freq._entry_ptr, ptr @si4713_tx_tune_measure._entry, ptr @si4713_tx_tune_measure._entry_ptr, ptr @si4713_tx_tune_power._entry, ptr @si4713_tx_tune_power._entry_ptr, ptr @si4713_tx_tune_status._entry, ptr @si4713_tx_tune_status._entry.74, ptr @si4713_tx_tune_status._entry_ptr, ptr @si4713_tx_tune_status._entry_ptr.76, ptr @si4713_wait_stc._entry, ptr @si4713_wait_stc._entry.69, ptr @si4713_wait_stc._entry_ptr, ptr @si4713_wait_stc._entry_ptr.71, ptr @si4713_write_property._entry, ptr @si4713_write_property._entry_ptr, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @si4713_i2c_driver, ptr @si4713_of_match, ptr @si4713_id, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @si4713_subdev_ops, ptr @si4713_probe._key, ptr @.str.52, ptr @si4713_ctrl_ops, ptr @si4713_alt_freqs_ctrl, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @si4713_subdev_core_ops, ptr @si4713_subdev_tuner_ops, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @init_completion.__key, ptr @.str.81, ptr @.str.82, ptr @si4713_set_rds_radio_text.cr, ptr @.str.83, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @limiter_times, ptr @acomp_rtimes, ptr @preemphasis_values, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.94], section "llvm.metadata"
@0 = internal global [107 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4713_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4713_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4713_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4713_powerup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4713_powerup._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4713_powerup._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4713_powerup._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4713_powerup._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4713_powerup._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4713_send_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4713_send_command._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4713_send_command._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4713_write_property._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4713_powerdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4713_powerdown._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4713_powerdown._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4713_powerdown._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4713_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4713_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4713_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4713_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4713_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4713_alt_freqs_ctrl to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4713_probe._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4713_probe._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4713_probe._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4713_probe._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4713_subdev_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4713_subdev_tuner_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4713_tx_tune_measure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4713_wait_stc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4713_wait_stc._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4713_tx_tune_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4713_tx_tune_status._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4713_tx_tune_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4713_read_property._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4713_tx_rds_ps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4713_set_rds_radio_text.cr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4713_tx_rds_buff._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4713_tx_rds_buff._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4713_tx_tune_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @limiter_times to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acomp_rtimes to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @preemphasis_values to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4713_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4713_checkrev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4713_checkrev._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @si4713_i2c_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @si4713_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @si4713_i2c_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @si4713_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si4713_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pd = getelementptr inbounds %struct.si4713_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pd, align 4
  tail call void @platform_device_unregister(ptr noundef %3) #7
  %power_state = getelementptr inbounds %struct.si4713_device, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %power_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %power_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call fastcc i32 @si4713_set_power_state(ptr noundef %1, i8 noundef zeroext 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #7
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctrl_handler, align 4
  tail call void @v4l2_ctrl_handler_free(ptr noundef %7) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si4713_probe(ptr noundef %client) #2 align 64 {
entry:
  %resp.i.i = alloca [9 x i8], align 1
  %si4713_pdev_pdata = alloca %struct.radio_si4713_platform_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %si4713_pdev_pdata) #7
  %4 = ptrtoint ptr %si4713_pdev_pdata to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %si4713_pdev_pdata, align 4, !annotation !227
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 592, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.40) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.44, i32 noundef 3) #7
  %gpio_reset = getelementptr inbounds %struct.si4713_device, ptr %call.i, i32 0, i32 6
  %5 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5, ptr %gpio_reset, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end15

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call5 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46, i32 noundef %6) #10
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %call17 = tail call ptr @devm_regulator_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.48) #7
  %vdd = getelementptr inbounds %struct.si4713_device, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %vdd to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call17, ptr %vdd, align 4
  %cmp.i299 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i299, label %if.then20, label %if.end15.if.end36_crit_edge

if.end15.if.end36_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then20:                                        ; preds = %if.end15
  %8 = ptrtoint ptr %call17 to i32
  %cmp = icmp eq ptr %call17, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %if.then20.cleanup_crit_edge, label %do.body25

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body25:                                        ; preds = %if.then20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si4713_probe.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si4713_probe, %if.then30)) #7
          to label %do.end34 [label %if.then30], !srcloc !228

if.then30:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si4713_probe.__UNIQUE_ID_ddebug303, ptr noundef %dev, ptr noundef nonnull @.str.49, i32 noundef %8) #7
  br label %do.end34

do.end34:                                         ; preds = %if.then30, %do.body25
  %9 = ptrtoint ptr %vdd to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %vdd, align 4
  br label %if.end36

if.end36:                                         ; preds = %do.end34, %if.end15.if.end36_crit_edge
  %call38 = tail call ptr @devm_regulator_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.50) #7
  %vio = getelementptr inbounds %struct.si4713_device, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %vio to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call38, ptr %vio, align 4
  %cmp.i300 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i300, label %if.then41, label %if.end36.if.end65_crit_edge

if.end36.if.end65_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then41:                                        ; preds = %if.end36
  %11 = ptrtoint ptr %call38 to i32
  %cmp44 = icmp eq ptr %call38, inttoptr (i32 -517 to ptr)
  br i1 %cmp44, label %if.then41.cleanup_crit_edge, label %do.body47

if.then41.cleanup_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body47:                                        ; preds = %if.then41
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si4713_probe.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si4713_probe, %if.then59)) #7
          to label %do.end63 [label %if.then59], !srcloc !228

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si4713_probe.__UNIQUE_ID_ddebug304, ptr noundef %dev, ptr noundef nonnull @.str.51, i32 noundef %11) #7
  br label %do.end63

do.end63:                                         ; preds = %if.then59, %do.body47
  %12 = ptrtoint ptr %vio to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %vio, align 4
  br label %if.end65

if.end65:                                         ; preds = %do.end63, %if.end36.if.end65_crit_edge
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @si4713_subdev_ops) #7
  %work = getelementptr inbounds %struct.si4713_device, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %work, align 4
  %wait.i = getelementptr inbounds %struct.si4713_device, ptr %call.i, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.81, ptr noundef nonnull @init_completion.__key) #7
  %ctrl_handler = getelementptr inbounds %struct.si4713_device, ptr %call.i, i32 0, i32 1
  %call67 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 20, ptr noundef nonnull @si4713_probe._key, ptr noundef nonnull @.str.52) #7
  %call68 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @si4713_ctrl_ops, i32 noundef 9963785, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #7
  %14 = getelementptr inbounds %struct.si4713_device, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call68, ptr %14, align 4
  %call69 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @si4713_ctrl_ops, i32 noundef 10160386, i64 noundef 0, i64 noundef 65535, i64 noundef 1, i64 noundef 0) #7
  %rds_pi = getelementptr inbounds %struct.si4713_device, ptr %call.i, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %rds_pi to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call69, ptr %rds_pi, align 4
  %call70 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @si4713_ctrl_ops, i32 noundef 10160387, i64 noundef 0, i64 noundef 31, i64 noundef 1, i64 noundef 0) #7
  %rds_pty = getelementptr inbounds %struct.si4713_device, ptr %call.i, i32 0, i32 2, i32 5
  %17 = ptrtoint ptr %rds_pty to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call70, ptr %rds_pty, align 4
  %call71 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @si4713_ctrl_ops, i32 noundef 10160393, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %rds_compressed = getelementptr inbounds %struct.si4713_device, ptr %call.i, i32 0, i32 2, i32 6
  %18 = ptrtoint ptr %rds_compressed to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call71, ptr %rds_compressed, align 4
  %call72 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @si4713_ctrl_ops, i32 noundef 10160392, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %rds_art_head = getelementptr inbounds %struct.si4713_device, ptr %call.i, i32 0, i32 2, i32 7
  %19 = ptrtoint ptr %rds_art_head to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call72, ptr %rds_art_head, align 4
  %call73 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @si4713_ctrl_ops, i32 noundef 10160391, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #7
  %rds_stereo = getelementptr inbounds %struct.si4713_device, ptr %call.i, i32 0, i32 2, i32 8
  %20 = ptrtoint ptr %rds_stereo to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call73, ptr %rds_stereo, align 4
  %call74 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @si4713_ctrl_ops, i32 noundef 10160396, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %rds_tp = getelementptr inbounds %struct.si4713_device, ptr %call.i, i32 0, i32 2, i32 10
  %21 = ptrtoint ptr %rds_tp to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call74, ptr %rds_tp, align 4
  %call75 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @si4713_ctrl_ops, i32 noundef 10160395, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %rds_ta = getelementptr inbounds %struct.si4713_device, ptr %call.i, i32 0, i32 2, i32 9
  %22 = ptrtoint ptr %rds_ta to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call75, ptr %rds_ta, align 4
  %call76 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @si4713_ctrl_ops, i32 noundef 10160397, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #7
  %rds_ms = getelementptr inbounds %struct.si4713_device, ptr %call.i, i32 0, i32 2, i32 11
  %23 = ptrtoint ptr %rds_ms to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call76, ptr %rds_ms, align 4
  %call77 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @si4713_ctrl_ops, i32 noundef 10160394, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %rds_dyn_pty = getelementptr inbounds %struct.si4713_device, ptr %call.i, i32 0, i32 2, i32 12
  %24 = ptrtoint ptr %rds_dyn_pty to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call77, ptr %rds_dyn_pty, align 4
  %call78 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @si4713_ctrl_ops, i32 noundef 10160398, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %rds_alt_freqs_enable = getelementptr inbounds %struct.si4713_device, ptr %call.i, i32 0, i32 2, i32 13
  %25 = ptrtoint ptr %rds_alt_freqs_enable to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call78, ptr %rds_alt_freqs_enable, align 4
  %call79 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler, ptr noundef nonnull @si4713_alt_freqs_ctrl, ptr noundef null) #7
  %rds_alt_freqs = getelementptr inbounds %struct.si4713_device, ptr %call.i, i32 0, i32 2, i32 14
  %26 = ptrtoint ptr %rds_alt_freqs to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call79, ptr %rds_alt_freqs, align 4
  %call80 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @si4713_ctrl_ops, i32 noundef 10160385, i64 noundef 0, i64 noundef 90000, i64 noundef 10, i64 noundef 200) #7
  %rds_deviation = getelementptr inbounds %struct.si4713_device, ptr %call.i, i32 0, i32 2, i32 4
  %27 = ptrtoint ptr %rds_deviation to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call80, ptr %rds_deviation, align 4
  %call81 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @si4713_ctrl_ops, i32 noundef 10160389, i64 noundef 0, i64 noundef 96, i64 noundef 8, i64 noundef 0) #7
  %rds_ps_name = getelementptr inbounds %struct.si4713_device, ptr %call.i, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %rds_ps_name to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call81, ptr %rds_ps_name, align 4
  %call82 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @si4713_ctrl_ops, i32 noundef 10160390, i64 noundef 0, i64 noundef 384, i64 noundef 32, i64 noundef 0) #7
  %rds_radio_text = getelementptr inbounds %struct.si4713_device, ptr %call.i, i32 0, i32 2, i32 2
  %29 = ptrtoint ptr %rds_radio_text to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call82, ptr %rds_radio_text, align 4
  %call83 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @si4713_ctrl_ops, i32 noundef 10160448, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #7
  %limiter_enabled = getelementptr inbounds %struct.si4713_device, ptr %call.i, i32 0, i32 2, i32 23
  %30 = ptrtoint ptr %limiter_enabled to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call83, ptr %limiter_enabled, align 4
  %call84 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @si4713_ctrl_ops, i32 noundef 10160449, i64 noundef 250, i64 noundef 102390, i64 noundef 10, i64 noundef 5010) #7
  %limiter_release_time = getelementptr inbounds %struct.si4713_device, ptr %call.i, i32 0, i32 2, i32 25
  %31 = ptrtoint ptr %limiter_release_time to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call84, ptr %limiter_release_time, align 4
  %call85 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @si4713_ctrl_ops, i32 noundef 10160450, i64 noundef 0, i64 noundef 90000, i64 noundef 10, i64 noundef 66250) #7
  %limiter_deviation = getelementptr inbounds %struct.si4713_device, ptr %call.i, i32 0, i32 2, i32 24
  %32 = ptrtoint ptr %limiter_deviation to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call85, ptr %limiter_deviation, align 4
  %call86 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @si4713_ctrl_ops, i32 noundef 10160464, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #7
  %compression_enabled = getelementptr inbounds %struct.si4713_device, ptr %call.i, i32 0, i32 2, i32 15
  %33 = ptrtoint ptr %compression_enabled to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call86, ptr %compression_enabled, align 4
  %call87 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @si4713_ctrl_ops, i32 noundef 10160465, i64 noundef 0, i64 noundef 20, i64 noundef 1, i64 noundef 15) #7
  %compression_gain = getelementptr inbounds %struct.si4713_device, ptr %call.i, i32 0, i32 2, i32 17
  %34 = ptrtoint ptr %compression_gain to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call87, ptr %compression_gain, align 4
  %call88 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @si4713_ctrl_ops, i32 noundef 10160466, i64 noundef -40, i64 noundef 0, i64 noundef 1, i64 noundef -40) #7
  %compression_threshold = getelementptr inbounds %struct.si4713_device, ptr %call.i, i32 0, i32 2, i32 16
  %35 = ptrtoint ptr %compression_threshold to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call88, ptr %compression_threshold, align 4
  %call89 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @si4713_ctrl_ops, i32 noundef 10160467, i64 noundef 0, i64 noundef 5000, i64 noundef 500, i64 noundef 0) #7
  %compression_attack_time = getelementptr inbounds %struct.si4713_device, ptr %call.i, i32 0, i32 2, i32 18
  %36 = ptrtoint ptr %compression_attack_time to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call89, ptr %compression_attack_time, align 4
  %call90 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @si4713_ctrl_ops, i32 noundef 10160468, i64 noundef 100000, i64 noundef 1000000, i64 noundef 100000, i64 noundef 1000000) #7
  %compression_release_time = getelementptr inbounds %struct.si4713_device, ptr %call.i, i32 0, i32 2, i32 19
  %37 = ptrtoint ptr %compression_release_time to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call90, ptr %compression_release_time, align 4
  %call91 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @si4713_ctrl_ops, i32 noundef 10160480, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #7
  %pilot_tone_enabled = getelementptr inbounds %struct.si4713_device, ptr %call.i, i32 0, i32 2, i32 20
  %38 = ptrtoint ptr %pilot_tone_enabled to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call91, ptr %pilot_tone_enabled, align 4
  %call92 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @si4713_ctrl_ops, i32 noundef 10160481, i64 noundef 0, i64 noundef 90000, i64 noundef 10, i64 noundef 6750) #7
  %pilot_tone_deviation = getelementptr inbounds %struct.si4713_device, ptr %call.i, i32 0, i32 2, i32 22
  %39 = ptrtoint ptr %pilot_tone_deviation to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call92, ptr %pilot_tone_deviation, align 4
  %call93 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @si4713_ctrl_ops, i32 noundef 10160482, i64 noundef 0, i64 noundef 19000, i64 noundef 1, i64 noundef 19000) #7
  %pilot_tone_freq = getelementptr inbounds %struct.si4713_device, ptr %call.i, i32 0, i32 2, i32 21
  %40 = ptrtoint ptr %pilot_tone_freq to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call93, ptr %pilot_tone_freq, align 4
  %call94 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @si4713_ctrl_ops, i32 noundef 10160496, i8 noundef zeroext 2, i64 noundef 0, i8 noundef zeroext 1) #7
  %tune_preemphasis = getelementptr inbounds %struct.si4713_device, ptr %call.i, i32 0, i32 2, i32 26
  %41 = ptrtoint ptr %tune_preemphasis to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call94, ptr %tune_preemphasis, align 4
  %call95 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @si4713_ctrl_ops, i32 noundef 10160497, i64 noundef 0, i64 noundef 120, i64 noundef 1, i64 noundef 88) #7
  %tune_pwr_level = getelementptr inbounds %struct.si4713_device, ptr %call.i, i32 0, i32 2, i32 27
  %42 = ptrtoint ptr %tune_pwr_level to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call95, ptr %tune_pwr_level, align 4
  %call96 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @si4713_ctrl_ops, i32 noundef 10160498, i64 noundef 0, i64 noundef 191, i64 noundef 1, i64 noundef 0) #7
  %tune_ant_cap = getelementptr inbounds %struct.si4713_device, ptr %call.i, i32 0, i32 2, i32 28
  %43 = ptrtoint ptr %tune_ant_cap to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call96, ptr %tune_ant_cap, align 4
  %error = getelementptr inbounds %struct.si4713_device, ptr %call.i, i32 0, i32 1, i32 9
  %44 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool97.not = icmp eq i32 %45, 0
  br i1 %tobool97.not, label %if.end100, label %if.end65.free_ctrls_crit_edge

if.end65.free_ctrls_crit_edge:                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_ctrls

if.end100:                                        ; preds = %if.end65
  tail call void @v4l2_ctrl_cluster(i32 noundef 29, ptr noundef %14) #7
  %ctrl_handler103 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 8
  %46 = ptrtoint ptr %ctrl_handler103 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %ctrl_handler, ptr %ctrl_handler103, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %47 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool104.not = icmp eq i32 %48, 0
  br i1 %tobool104.not, label %if.end100.if.end142.sink.split_crit_edge, label %if.then105

if.end100.if.end142.sink.split_crit_edge:         ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end142.sink.split

if.then105:                                       ; preds = %if.end100
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call.i301 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %48, ptr noundef nonnull @si4713_handler, ptr noundef null, i32 noundef 2, ptr noundef %name, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i301)
  %cmp109 = icmp slt i32 %call.i301, 0
  br i1 %cmp109, label %do.end113, label %do.body120

do.end113:                                        ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #9
  %name116 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %call118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %name116) #10
  br label %free_ctrls

do.body120:                                       ; preds = %if.then105
  %49 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp121 = icmp sgt i32 %49, 0
  br i1 %cmp121, label %do.body120.if.end142.sink.split_crit_edge, label %do.body120.if.end142_crit_edge

do.body120.if.end142_crit_edge:                   ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end142

do.body120.if.end142.sink.split_crit_edge:        ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end142.sink.split

if.end142.sink.split:                             ; preds = %do.body120.if.end142.sink.split_crit_edge, %if.end100.if.end142.sink.split_crit_edge
  %.str.57.sink = phi ptr [ @.str.57, %do.body120.if.end142.sink.split_crit_edge ], [ @.str.60, %if.end100.if.end142.sink.split_crit_edge ]
  %name128 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %call130 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.57.sink, ptr noundef %name128) #10
  br label %if.end142

if.end142:                                        ; preds = %if.end142.sink.split, %do.body120.if.end142_crit_edge
  %call.i302 = tail call fastcc i32 @si4713_set_power_state(ptr noundef nonnull %call.i, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i302)
  %cmp.i303 = icmp slt i32 %call.i302, 0
  br i1 %cmp.i303, label %if.end142.do.end148_crit_edge, label %if.end.i

if.end142.do.end148_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end148

if.end.i:                                         ; preds = %if.end142
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 11
  %50 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %resp.i.i) #7
  %52 = call ptr @memset(ptr %resp.i.i, i32 255, i32 9)
  %call1.i.i = call fastcc i32 @si4713_send_command(ptr noundef nonnull %call.i, i8 noundef zeroext 16, ptr noundef null, i32 noundef 0, ptr noundef nonnull %resp.i.i, i32 noundef 9, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.si4713_checkrev.exit.thread.i_crit_edge, label %if.end.i.i

if.end.i.si4713_checkrev.exit.thread.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %si4713_checkrev.exit.thread.i

if.end.i.i:                                       ; preds = %if.end.i
  %53 = getelementptr inbounds [9 x i8], ptr %resp.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %53, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %55)
  %cmp2.i.i = icmp eq i8 %55, 13
  br i1 %cmp2.i.i, label %if.end4.i, label %do.end13.i.i

do.end13.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i = zext i8 %55 to i32
  %name16.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %call20.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef %name16.i.i, i32 noundef %conv.i.i) #10
  br label %si4713_checkrev.exit.thread.i

si4713_checkrev.exit.thread.i:                    ; preds = %do.end13.i.i, %if.end.i.si4713_checkrev.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -22, %do.end13.i.i ], [ %call1.i.i, %if.end.i.si4713_checkrev.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %resp.i.i) #7
  br label %do.end148

if.end4.i:                                        ; preds = %if.end.i.i
  %name.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %51, i32 0, i32 1
  %56 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %addr.i.i, align 2
  %conv7.i.i = zext i16 %57 to i32
  %shl.i.i = shl nuw nsw i32 %conv7.i.i, 1
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %51, i32 0, i32 3
  %58 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %adapter.i.i, align 8
  %name8.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %59, i32 0, i32 12
  %call10.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef %name.i.i, i32 noundef %shl.i.i, ptr noundef %name8.i.i) #10
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %resp.i.i) #7
  %call5.i = call fastcc i32 @si4713_set_power_state(ptr noundef nonnull %call.i, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end4.i.do.end148_crit_edge, label %if.end154

if.end4.i.do.end148_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end148

do.end148:                                        ; preds = %if.end4.i.do.end148_crit_edge, %si4713_checkrev.exit.thread.i, %if.end142.do.end148_crit_edge
  %retval.0.i304.ph = phi i32 [ %retval.0.i.ph.i, %si4713_checkrev.exit.thread.i ], [ %call5.i, %if.end4.i.do.end148_crit_edge ], [ %call.i302, %if.end142.do.end148_crit_edge ]
  %name151 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %call153 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %name151) #10
  br label %free_ctrls

if.end154:                                        ; preds = %if.end4.i
  %frequency.i = getelementptr inbounds %struct.si4713_device, ptr %call.i, i32 0, i32 10
  %60 = ptrtoint ptr %frequency.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 8800, ptr %frequency.i, align 4
  %stereo.i = getelementptr inbounds %struct.si4713_device, ptr %call.i, i32 0, i32 12
  %61 = ptrtoint ptr %stereo.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %stereo.i, align 4
  %tune_rnl.i = getelementptr inbounds %struct.si4713_device, ptr %call.i, i32 0, i32 13
  %62 = ptrtoint ptr %tune_rnl.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 255, ptr %tune_rnl.i, align 4
  %tobool155.not = icmp eq ptr %3, null
  br i1 %tobool155.not, label %land.lhs.true, label %if.end154.if.end159_crit_edge

if.end154.if.end159_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end159

land.lhs.true:                                    ; preds = %if.end154
  %tobool156.not = icmp eq ptr %1, null
  br i1 %tobool156.not, label %land.lhs.true.cleanup_crit_edge, label %lor.lhs.false

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %1, align 1, !range !229
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool157.not = icmp eq i8 %64, 0
  br i1 %tobool157.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end159_crit_edge

lor.lhs.false.if.end159_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end159

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end159:                                        ; preds = %lor.lhs.false.if.end159_crit_edge, %if.end154.if.end159_crit_edge
  %call160 = call ptr @platform_device_alloc(ptr noundef nonnull @.str.65, i32 noundef -1) #7
  %tobool161.not = icmp eq ptr %call160, null
  br i1 %tobool161.not, label %if.end159.put_main_pdev_crit_edge, label %if.end163

if.end159.put_main_pdev_crit_edge:                ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_main_pdev

if.end163:                                        ; preds = %if.end159
  %65 = ptrtoint ptr %si4713_pdev_pdata to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %client, ptr %si4713_pdev_pdata, align 4
  %call164 = call i32 @platform_device_add_data(ptr noundef nonnull %call160, ptr noundef nonnull %si4713_pdev_pdata, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %if.end167, label %if.end163.put_main_pdev_crit_edge

if.end163.put_main_pdev_crit_edge:                ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_main_pdev

if.end167:                                        ; preds = %if.end163
  %call168 = call i32 @platform_device_add(ptr noundef nonnull %call160) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %if.end171, label %if.end167.put_main_pdev_crit_edge

if.end167.put_main_pdev_crit_edge:                ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_main_pdev

if.end171:                                        ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #9
  %pd = getelementptr inbounds %struct.si4713_device, ptr %call.i, i32 0, i32 7
  %66 = ptrtoint ptr %pd to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call160, ptr %pd, align 4
  br label %cleanup

put_main_pdev:                                    ; preds = %if.end167.put_main_pdev_crit_edge, %if.end163.put_main_pdev_crit_edge, %if.end159.put_main_pdev_crit_edge
  %rval.0 = phi i32 [ %call164, %if.end163.put_main_pdev_crit_edge ], [ %call168, %if.end167.put_main_pdev_crit_edge ], [ -12, %if.end159.put_main_pdev_crit_edge ]
  call void @platform_device_put(ptr noundef %call160) #7
  call void @v4l2_device_unregister_subdev(ptr noundef nonnull %call.i) #7
  br label %free_ctrls

free_ctrls:                                       ; preds = %put_main_pdev, %do.end148, %do.end113, %if.end65.free_ctrls_crit_edge
  %rval.1 = phi i32 [ %call.i301, %do.end113 ], [ %retval.0.i304.ph, %do.end148 ], [ %rval.0, %put_main_pdev ], [ %45, %if.end65.free_ctrls_crit_edge ]
  call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #7
  br label %cleanup

cleanup:                                          ; preds = %free_ctrls, %if.end171, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then41.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %if.then8, %do.end
  %retval.0 = phi i32 [ 0, %if.end171 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %6, %if.then8 ], [ -517, %if.then20.cleanup_crit_edge ], [ -517, %if.then41.cleanup_crit_edge ], [ %rval.1, %free_ctrls ], [ -12, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %si4713_pdev_pdata) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si4713_set_power_state(ptr noundef %sdev, i8 noundef zeroext %value) unnamed_addr #2 align 64 {
entry:
  %resp.i3 = alloca [1 x i8], align 1
  %resp.i.i = alloca [1 x i8], align 1
  %args.i.i = alloca [5 x i8], align 1
  %resp.i = alloca [1 x i8], align 1
  %args.i = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %value)
  %tobool.not = icmp eq i8 %value, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sdev, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %resp.i) #7
  %2 = ptrtoint ptr %resp.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %resp.i, align 1, !annotation !227
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %args.i) #7
  %3 = ptrtoint ptr %args.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 16976, ptr %args.i, align 2
  %power_state.i = getelementptr inbounds %struct.si4713_device, ptr %sdev, i32 0, i32 8
  %4 = ptrtoint ptr %power_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %power_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.si4713_powerup.exit_crit_edge

if.then.si4713_powerup.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %si4713_powerup.exit

if.end.i:                                         ; preds = %if.then
  %vdd.i = getelementptr inbounds %struct.si4713_device, ptr %sdev, i32 0, i32 4
  %6 = ptrtoint ptr %vdd.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vdd.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then2.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then2.i:                                       ; preds = %if.end.i
  %call4.i = tail call i32 @regulator_enable(ptr noundef nonnull %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then2.i.if.end10.i_crit_edge, label %do.end.i

if.then2.i.if.end10.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

do.end.i:                                         ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sdev, i32 0, i32 9
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name.i, i32 noundef %call4.i) #10
  br label %si4713_powerup.exit

if.end10.i:                                       ; preds = %if.then2.i.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge
  %vio.i = getelementptr inbounds %struct.si4713_device, ptr %sdev, i32 0, i32 5
  %8 = ptrtoint ptr %vio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vio.i, align 4
  %tobool11.not.i = icmp eq ptr %9, null
  br i1 %tobool11.not.i, label %if.end10.i.if.end26.i_crit_edge, label %if.then12.i

if.end10.i.if.end26.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

if.then12.i:                                      ; preds = %if.end10.i
  %call14.i = tail call i32 @regulator_enable(ptr noundef nonnull %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.then12.i.if.end26.i_crit_edge, label %do.end19.i

if.then12.i.if.end26.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

do.end19.i:                                       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  %name22.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sdev, i32 0, i32 9
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name22.i, i32 noundef %call14.i) #10
  br label %si4713_powerup.exit

if.end26.i:                                       ; preds = %if.then12.i.if.end26.i_crit_edge, %if.end10.i.if.end26.i_crit_edge
  %gpio_reset.i = getelementptr inbounds %struct.si4713_device, ptr %sdev, i32 0, i32 6
  %10 = ptrtoint ptr %gpio_reset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gpio_reset.i, align 4
  %tobool27.not.i = icmp eq ptr %11, null
  br i1 %tobool27.not.i, label %if.end26.i.if.end30.i_crit_edge, label %if.then28.i

if.end26.i.if.end30.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i

if.then28.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 10737400) #7
  %13 = ptrtoint ptr %gpio_reset.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gpio_reset.i, align 4
  tail call void @gpiod_set_value(ptr noundef %14, i32 noundef 1) #7
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then28.i, %if.end26.i.if.end30.i_crit_edge
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool31.not.i = icmp eq i32 %16, 0
  br i1 %tobool31.not.i, label %if.end30.i.if.end34.i_crit_edge, label %if.then32.i

if.end30.i.if.end34.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

if.then32.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %args.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %args.i, align 2
  %19 = or i8 %18, -128
  store i8 %19, ptr %args.i, align 2
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then32.i, %if.end30.i.if.end34.i_crit_edge
  %call37.i = call fastcc i32 @si4713_send_command(ptr noundef %sdev, i8 noundef zeroext 1, ptr noundef nonnull %args.i, i32 noundef 2, ptr noundef nonnull %resp.i, i32 noundef 1, i32 noundef 200000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %do.body40.i, label %if.end77.i

do.body40.i:                                      ; preds = %if.end34.i
  %20 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i = icmp sgt i32 %20, 0
  br i1 %cmp.i, label %do.body56.i, label %do.body40.i.do.end70.i_crit_edge

do.body40.i.do.end70.i_crit_edge:                 ; preds = %do.body40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end70.i

do.body56.i:                                      ; preds = %do.body40.i
  %name48.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sdev, i32 0, i32 9
  %21 = ptrtoint ptr %resp.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %resp.i, align 1
  %conv51.i = zext i8 %22 to i32
  %call52.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name48.i, i32 noundef %conv51.i) #10
  %.pr.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp57.i = icmp sgt i32 %.pr.i, 0
  br i1 %cmp57.i, label %do.end62.i, label %do.body56.i.do.end70.i_crit_edge

do.body56.i.do.end70.i_crit_edge:                 ; preds = %do.body56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end70.i

do.end62.i:                                       ; preds = %do.body56.i
  call void @__sanitizer_cov_trace_pc() #9
  %call67.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name48.i) #10
  br label %do.end70.i

do.end70.i:                                       ; preds = %do.end62.i, %do.body56.i.do.end70.i_crit_edge, %do.body40.i.do.end70.i_crit_edge
  %23 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %power_state.i, align 4
  %24 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool73.not.i = icmp eq i32 %25, 0
  br i1 %tobool73.not.i, label %do.end70.i.si4713_powerup.exit_crit_edge, label %if.then74.i

do.end70.i.si4713_powerup.exit_crit_edge:         ; preds = %do.end70.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %si4713_powerup.exit

if.then74.i:                                      ; preds = %do.end70.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %resp.i.i) #7
  %26 = ptrtoint ptr %resp.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %resp.i.i, align 1, !annotation !227
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %args.i.i) #7
  %27 = getelementptr inbounds [5 x i8], ptr %args.i.i, i32 0, i32 1
  %28 = getelementptr inbounds [5 x i8], ptr %args.i.i, i32 0, i32 2
  %29 = getelementptr inbounds [5 x i8], ptr %args.i.i, i32 0, i32 3
  %30 = getelementptr inbounds [5 x i8], ptr %args.i.i, i32 0, i32 4
  %31 = ptrtoint ptr %args.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %args.i.i, align 1
  %32 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %27, align 1
  %33 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %28, align 1
  %34 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %29, align 1
  %35 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -127, ptr %30, align 1
  %call.i.i = call fastcc i32 @si4713_send_command(ptr noundef %sdev, i8 noundef zeroext 18, ptr noundef nonnull %args.i.i, i32 noundef 5, ptr noundef nonnull %resp.i.i, i32 noundef 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then74.i.si4713_write_property.exit.i_crit_edge, label %do.body.i.i

if.then74.i.si4713_write_property.exit.i_crit_edge: ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %si4713_write_property.exit.i

do.body.i.i:                                      ; preds = %if.then74.i
  %36 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp15.i.i = icmp sgt i32 %36, 0
  br i1 %cmp15.i.i, label %do.end.i.i, label %do.body.i.i.do.end26.i.i_crit_edge

do.body.i.i.do.end26.i.i_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end26.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sdev, i32 0, i32 9
  %37 = ptrtoint ptr %resp.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %resp.i.i, align 1
  %conv22.i.i = zext i8 %38 to i32
  %call23.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name.i.i, ptr noundef nonnull @.str.30, i32 noundef 1, i32 noundef 129, i32 noundef %conv22.i.i) #10
  br label %do.end26.i.i

do.end26.i.i:                                     ; preds = %do.end.i.i, %do.body.i.i.do.end26.i.i_crit_edge
  call void @msleep(i32 noundef 20) #7
  br label %si4713_write_property.exit.i

si4713_write_property.exit.i:                     ; preds = %do.end26.i.i, %if.then74.i.si4713_write_property.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %args.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %resp.i.i) #7
  br label %si4713_powerup.exit

if.end77.i:                                       ; preds = %if.end34.i
  %39 = ptrtoint ptr %gpio_reset.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %gpio_reset.i, align 4
  call void @gpiod_set_value(ptr noundef %40, i32 noundef 0) #7
  %41 = ptrtoint ptr %vdd.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %vdd.i, align 4
  %tobool80.not.i = icmp eq ptr %42, null
  br i1 %tobool80.not.i, label %if.end77.i.if.end95.i_crit_edge, label %if.then81.i

if.end77.i.if.end95.i_crit_edge:                  ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95.i

if.then81.i:                                      ; preds = %if.end77.i
  %call83.i = call i32 @regulator_disable(ptr noundef nonnull %42) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83.i)
  %tobool84.not.i = icmp eq i32 %call83.i, 0
  br i1 %tobool84.not.i, label %if.then81.i.if.end95.i_crit_edge, label %do.end88.i

if.then81.i.if.end95.i_crit_edge:                 ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95.i

do.end88.i:                                       ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #9
  %name91.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sdev, i32 0, i32 9
  %call93.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name91.i, i32 noundef %call83.i) #10
  br label %if.end95.i

if.end95.i:                                       ; preds = %do.end88.i, %if.then81.i.if.end95.i_crit_edge, %if.end77.i.if.end95.i_crit_edge
  %err.1.i = phi i32 [ %call83.i, %do.end88.i ], [ 0, %if.then81.i.if.end95.i_crit_edge ], [ %call37.i, %if.end77.i.if.end95.i_crit_edge ]
  %43 = ptrtoint ptr %vio.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vio.i, align 4
  %tobool97.not.i = icmp eq ptr %44, null
  br i1 %tobool97.not.i, label %if.end95.i.si4713_powerup.exit_crit_edge, label %if.then98.i

if.end95.i.si4713_powerup.exit_crit_edge:         ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %si4713_powerup.exit

if.then98.i:                                      ; preds = %if.end95.i
  %call100.i = call i32 @regulator_disable(ptr noundef nonnull %44) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100.i)
  %tobool101.not.i = icmp eq i32 %call100.i, 0
  br i1 %tobool101.not.i, label %if.then98.i.si4713_powerup.exit_crit_edge, label %do.end105.i

if.then98.i.si4713_powerup.exit_crit_edge:        ; preds = %if.then98.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %si4713_powerup.exit

do.end105.i:                                      ; preds = %if.then98.i
  call void @__sanitizer_cov_trace_pc() #9
  %name108.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sdev, i32 0, i32 9
  %call110.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name108.i, i32 noundef %call100.i) #10
  br label %si4713_powerup.exit

si4713_powerup.exit:                              ; preds = %do.end105.i, %if.then98.i.si4713_powerup.exit_crit_edge, %if.end95.i.si4713_powerup.exit_crit_edge, %si4713_write_property.exit.i, %do.end70.i.si4713_powerup.exit_crit_edge, %do.end19.i, %do.end.i, %if.then.si4713_powerup.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %do.end.i ], [ %call14.i, %do.end19.i ], [ 0, %if.then.si4713_powerup.exit_crit_edge ], [ %call.i.i, %si4713_write_property.exit.i ], [ 0, %do.end70.i.si4713_powerup.exit_crit_edge ], [ %call100.i, %do.end105.i ], [ 0, %if.then98.i.si4713_powerup.exit_crit_edge ], [ %err.1.i, %if.end95.i.si4713_powerup.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %args.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %resp.i) #7
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %resp.i3) #7
  %45 = ptrtoint ptr %resp.i3 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -1, ptr %resp.i3, align 1, !annotation !227
  %power_state.i4 = getelementptr inbounds %struct.si4713_device, ptr %sdev, i32 0, i32 8
  %46 = ptrtoint ptr %power_state.i4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %power_state.i4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i5 = icmp eq i32 %47, 0
  br i1 %tobool.not.i5, label %if.end.si4713_powerdown.exit_crit_edge, label %if.end.i7

if.end.si4713_powerdown.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %si4713_powerdown.exit

if.end.i7:                                        ; preds = %if.end
  %call.i = call fastcc i32 @si4713_send_command(ptr noundef %sdev, i8 noundef zeroext 17, ptr noundef null, i32 noundef 0, ptr noundef nonnull %resp.i3, i32 noundef 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i6 = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i6, label %do.body.i, label %if.end.i7.si4713_powerdown.exit_crit_edge

if.end.i7.si4713_powerdown.exit_crit_edge:        ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #9
  br label %si4713_powerdown.exit

do.body.i:                                        ; preds = %if.end.i7
  %48 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.i8 = icmp sgt i32 %48, 0
  br i1 %cmp.i8, label %do.body10.i, label %do.body.i.do.end24.i_crit_edge

do.body.i.do.end24.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end24.i

do.body10.i:                                      ; preds = %do.body.i
  %name.i9 = getelementptr inbounds %struct.v4l2_subdev, ptr %sdev, i32 0, i32 9
  %49 = ptrtoint ptr %resp.i3 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %resp.i3, align 1
  %conv.i = zext i8 %50 to i32
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name.i9, i32 noundef %conv.i) #10
  %.pr.i10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i10)
  %cmp11.i = icmp sgt i32 %.pr.i10, 0
  br i1 %cmp11.i, label %do.end16.i, label %do.body10.i.do.end24.i_crit_edge

do.body10.i.do.end24.i_crit_edge:                 ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end24.i

do.end16.i:                                       ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %name.i9) #10
  br label %do.end24.i

do.end24.i:                                       ; preds = %do.end16.i, %do.body10.i.do.end24.i_crit_edge, %do.body.i.do.end24.i_crit_edge
  %gpio_reset.i11 = getelementptr inbounds %struct.si4713_device, ptr %sdev, i32 0, i32 6
  %51 = ptrtoint ptr %gpio_reset.i11 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %gpio_reset.i11, align 4
  %tobool25.not.i = icmp eq ptr %52, null
  br i1 %tobool25.not.i, label %do.end24.i.if.end28.i_crit_edge, label %if.then26.i

do.end24.i.if.end28.i_crit_edge:                  ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i

if.then26.i:                                      ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @gpiod_set_value(ptr noundef nonnull %52, i32 noundef 0) #7
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then26.i, %do.end24.i.if.end28.i_crit_edge
  %vdd.i12 = getelementptr inbounds %struct.si4713_device, ptr %sdev, i32 0, i32 4
  %53 = ptrtoint ptr %vdd.i12 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %vdd.i12, align 4
  %tobool29.not.i = icmp eq ptr %54, null
  br i1 %tobool29.not.i, label %if.end28.i.if.end44.i_crit_edge, label %if.then30.i

if.end28.i.if.end44.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.i

if.then30.i:                                      ; preds = %if.end28.i
  %call32.i = call i32 @regulator_disable(ptr noundef nonnull %54) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.then30.i.if.end44.i_crit_edge, label %do.end37.i

if.then30.i.if.end44.i_crit_edge:                 ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.i

do.end37.i:                                       ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #9
  %name40.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sdev, i32 0, i32 9
  %call42.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name40.i, i32 noundef %call32.i) #10
  br label %if.end44.i

if.end44.i:                                       ; preds = %do.end37.i, %if.then30.i.if.end44.i_crit_edge, %if.end28.i.if.end44.i_crit_edge
  %err.0.i = phi i32 [ %call32.i, %do.end37.i ], [ 0, %if.then30.i.if.end44.i_crit_edge ], [ 0, %if.end28.i.if.end44.i_crit_edge ]
  %vio.i13 = getelementptr inbounds %struct.si4713_device, ptr %sdev, i32 0, i32 5
  %55 = ptrtoint ptr %vio.i13 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %vio.i13, align 4
  %tobool45.not.i = icmp eq ptr %56, null
  br i1 %tobool45.not.i, label %if.end44.i.if.end60.i_crit_edge, label %if.then46.i

if.end44.i.if.end60.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60.i

if.then46.i:                                      ; preds = %if.end44.i
  %call48.i = call i32 @regulator_disable(ptr noundef nonnull %56) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %if.then46.i.if.end60.i_crit_edge, label %do.end53.i

if.then46.i.if.end60.i_crit_edge:                 ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60.i

do.end53.i:                                       ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #9
  %name56.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sdev, i32 0, i32 9
  %call58.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name56.i, i32 noundef %call48.i) #10
  br label %if.end60.i

if.end60.i:                                       ; preds = %do.end53.i, %if.then46.i.if.end60.i_crit_edge, %if.end44.i.if.end60.i_crit_edge
  %err.1.i14 = phi i32 [ %call48.i, %do.end53.i ], [ 0, %if.then46.i.if.end60.i_crit_edge ], [ %err.0.i, %if.end44.i.if.end60.i_crit_edge ]
  %57 = ptrtoint ptr %power_state.i4 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %power_state.i4, align 4
  br label %si4713_powerdown.exit

si4713_powerdown.exit:                            ; preds = %if.end60.i, %if.end.i7.si4713_powerdown.exit_crit_edge, %if.end.si4713_powerdown.exit_crit_edge
  %retval.0.i15 = phi i32 [ 0, %if.end.si4713_powerdown.exit_crit_edge ], [ %call.i, %if.end.i7.si4713_powerdown.exit_crit_edge ], [ %err.1.i14, %if.end60.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %resp.i3) #7
  br label %return

return:                                           ; preds = %si4713_powerdown.exit, %si4713_powerup.exit
  %retval.0 = phi i32 [ %retval.0.i, %si4713_powerup.exit ], [ %retval.0.i15, %si4713_powerdown.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si4713_send_command(ptr noundef %sdev, i8 noundef zeroext %command, ptr nocapture noundef readonly %args, i32 noundef %argn, ptr noundef %response, i32 noundef %respn, i32 noundef %usecs) unnamed_addr #2 align 64 {
entry:
  %data1 = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sdev, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data1) #7
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %2 = getelementptr inbounds i8, ptr %data1, i32 1
  %3 = call ptr @memset(ptr %2, i32 255, i32 7)
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = getelementptr inbounds [8 x i8], ptr %data1, i32 0, i32 1
  %7 = ptrtoint ptr %data1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %command, ptr %data1, align 1
  %8 = call ptr @memcpy(ptr %6, ptr %args, i32 %argn)
  %add = add i32 %argn, 1
  %call.i111 = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %data1, i32 noundef %add, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i111, i32 %add)
  %cmp.not = icmp eq i32 %call.i111, %add
  br i1 %cmp.not, label %if.end10, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sdev, i32 0, i32 9
  %conv = zext i8 %command to i32
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name, i32 noundef %conv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111)
  %cmp8 = icmp slt i32 %call.i111, 0
  %spec.select = select i1 %cmp8, i32 %call.i111, i32 -5
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %call3.i = call i32 @__usecs_to_jiffies(i32 noundef %usecs) #7
  %add12114 = add i32 %call3.i, %9
  %add13.neg115 = xor i32 %add12114, -1
  %irq116 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %irq116 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq116, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool14.not117 = icmp eq i32 %11, 0
  br i1 %tobool14.not117, label %if.end10.if.end30_crit_edge, label %if.else.i108

if.end10.if.end30_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.else.i108:                                     ; preds = %if.end10
  %call3.i107 = call i32 @__usecs_to_jiffies(i32 noundef %usecs) #7
  %work129 = getelementptr inbounds %struct.si4713_device, ptr %sdev, i32 0, i32 3
  %add17 = add i32 %call3.i107, 1
  %call18 = call i32 @wait_for_completion_timeout(ptr noundef %work129, i32 noundef %add17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %do.end23, label %if.else.i108.if.end30_crit_edge

if.else.i108.if.end30_crit_edge:                  ; preds = %if.else.i108
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

do.end23:                                         ; preds = %if.else.i108
  call void @__sanitizer_cov_trace_pc() #9
  %name26 = getelementptr inbounds %struct.v4l2_subdev, ptr %sdev, i32 0, i32 9
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name26, ptr noundef nonnull @.str.22) #10
  br label %if.end30

if.end30:                                         ; preds = %do.end23, %if.else.i108.if.end30_crit_edge, %if.end10.if.end30_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1001, i32 %usecs)
  %cmp65 = icmp slt i32 %usecs, 1001
  br label %do.body31

do.body31:                                        ; preds = %do.cond69.do.body31_crit_edge, %if.end30
  %call.i112 = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef %response, i32 noundef %respn, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i112, i32 %respn)
  %cmp33.not = icmp eq i32 %call.i112, %respn
  br i1 %cmp33.not, label %if.end51, label %do.end38

do.end38:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #9
  %name41 = getelementptr inbounds %struct.v4l2_subdev, ptr %sdev, i32 0, i32 9
  %conv43 = zext i8 %command to i32
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name41, i32 noundef %call.i112, i32 noundef %conv43) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %cmp45 = icmp slt i32 %call.i112, 0
  %spec.select100 = select i1 %cmp45, i32 %call.i112, i32 -5
  br label %cleanup

if.end51:                                         ; preds = %do.body31
  %12 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %response, align 1
  %14 = and i8 %13, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %14)
  %15 = icmp eq i8 %14, -128
  br i1 %15, label %if.end51.cleanup_crit_edge, label %if.end60

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end60:                                         ; preds = %if.end51
  %16 = ptrtoint ptr %irq116 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq116, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool62.not = icmp eq i32 %17, 0
  br i1 %tobool62.not, label %if.end64, label %if.end60.cleanup_crit_edge

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end64:                                         ; preds = %if.end60
  br i1 %cmp65, label %if.then67, label %if.else

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  call void @usleep_range_state(i32 noundef %usecs, i32 noundef 1000, i32 noundef 2) #7
  br label %do.cond69

if.else:                                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  br label %do.cond69

do.cond69:                                        ; preds = %if.else, %if.then67
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %18, %add13.neg115
  %cmp70 = icmp slt i32 %sub, 0
  br i1 %cmp70, label %do.cond69.do.body31_crit_edge, label %do.cond69.cleanup_crit_edge

do.cond69.cleanup_crit_edge:                      ; preds = %do.cond69
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.cond69.do.body31_crit_edge:                    ; preds = %do.cond69
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body31

cleanup:                                          ; preds = %do.cond69.cleanup_crit_edge, %if.end60.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %do.end38, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %do.end ], [ %spec.select100, %do.end38 ], [ -19, %entry.cleanup_crit_edge ], [ -16, %do.cond69.cleanup_crit_edge ], [ -16, %if.end60.cleanup_crit_edge ], [ 0, %if.end51.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data1) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_cluster(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si4713_handler(i32 noundef %irq, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %dev, i32 0, i32 9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef %name, ptr noundef nonnull @.str.90) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %work = getelementptr inbounds %struct.si4713_device, ptr %dev, i32 0, i32 3
  tail call void @complete(ptr noundef %work) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si4713_ioctl(ptr noundef %sd, i32 noundef %cmd, ptr noundef %arg) #2 align 64 {
entry:
  %f.i = alloca i16, align 2
  %p.i = alloca i8, align 1
  %a.i = alloca i8, align 1
  %n.i = alloca i8, align 1
  %val.i = alloca [1 x i8], align 1
  %args.i = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %arg, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1071884608, i32 %cmd)
  %cond = icmp eq i32 %cmd, -1071884608
  br i1 %cond, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %power_state = getelementptr inbounds %struct.si4713_device, ptr %sd, i32 0, i32 8
  %0 = ptrtoint ptr %power_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %power_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool2.not = icmp eq i32 %1, 0
  br i1 %tobool2.not, label %sw.bb.if.end12_crit_edge, label %if.then3

sw.bb.if.end12_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then3:                                         ; preds = %sw.bb
  %frequency1 = getelementptr inbounds %struct.si4713_rnl, ptr %arg, i32 0, i32 1
  %2 = ptrtoint ptr %frequency1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frequency1, align 4
  %mul = mul i32 %3, 625
  %div = udiv i32 %mul, 100000
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #7
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %val.i, align 1, !annotation !227
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args.i) #7
  %5 = getelementptr inbounds [4 x i8], ptr %args.i, i32 0, i32 1
  %6 = getelementptr inbounds [4 x i8], ptr %args.i, i32 0, i32 2
  %7 = getelementptr inbounds [4 x i8], ptr %args.i, i32 0, i32 3
  %8 = ptrtoint ptr %args.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %args.i, align 1
  %9 = lshr i32 %div, 8
  %conv1.i = trunc i32 %9 to i8
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv1.i, ptr %5, align 1
  %conv4.i = trunc i32 %div to i8
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv4.i, ptr %6, align 1
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %7, align 1
  %tune_rnl.i = getelementptr inbounds %struct.si4713_device, ptr %sd, i32 0, i32 13
  %13 = ptrtoint ptr %tune_rnl.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 255, ptr %tune_rnl.i, align 4
  %call.i = call fastcc i32 @si4713_send_command(ptr noundef %sd, i8 noundef zeroext 50, ptr noundef nonnull %args.i, i32 noundef 4, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp9.i = icmp slt i32 %call.i, 0
  br i1 %cmp9.i, label %si4713_tx_tune_measure.exit.thread, label %do.body.i

si4713_tx_tune_measure.exit.thread:               ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #7
  br label %cleanup

do.body.i:                                        ; preds = %if.then3
  %14 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp13.i = icmp sgt i32 %14, 0
  br i1 %cmp13.i, label %do.end.i, label %do.body.i.si4713_tx_tune_measure.exit_crit_edge

do.body.i.si4713_tx_tune_measure.exit_crit_edge:  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %si4713_tx_tune_measure.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %15 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %val.i, align 1
  %conv20.i = zext i8 %16 to i32
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %name.i, ptr noundef nonnull @.str.67, i32 noundef %div, i32 noundef 0, i32 noundef %conv20.i) #10
  br label %si4713_tx_tune_measure.exit

si4713_tx_tune_measure.exit:                      ; preds = %do.end.i, %do.body.i.si4713_tx_tune_measure.exit_crit_edge
  %call25.i = call fastcc i32 @si4713_wait_stc(ptr noundef %sd, i32 noundef 110000) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp = icmp slt i32 %call25.i, 0
  br i1 %cmp, label %si4713_tx_tune_measure.exit.cleanup_crit_edge, label %if.end6

si4713_tx_tune_measure.exit.cleanup_crit_edge:    ; preds = %si4713_tx_tune_measure.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %si4713_tx_tune_measure.exit
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %f.i) #7
  %17 = ptrtoint ptr %f.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %f.i, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %p.i) #7
  %18 = ptrtoint ptr %p.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %p.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %a.i) #7
  %19 = ptrtoint ptr %a.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %a.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %n.i) #7
  %20 = ptrtoint ptr %n.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %n.i, align 1
  %call.i26 = call fastcc i32 @si4713_tx_tune_status(ptr noundef %sd, ptr noundef nonnull %f.i, ptr noundef nonnull %p.i, ptr noundef nonnull %a.i, ptr noundef nonnull %n.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %cmp.i = icmp slt i32 %call.i26, 0
  br i1 %cmp.i, label %si4713_update_tune_status.exit.thread, label %si4713_update_tune_status.exit

si4713_update_tune_status.exit.thread:            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %n.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %a.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %p.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %f.i) #7
  br label %cleanup

si4713_update_tune_status.exit:                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %n.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %n.i, align 1
  %conv.i27 = zext i8 %22 to i32
  %23 = ptrtoint ptr %tune_rnl.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv.i27, ptr %tune_rnl.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %n.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %a.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %p.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %f.i) #7
  br label %if.end12

if.end12:                                         ; preds = %si4713_update_tune_status.exit, %sw.bb.if.end12_crit_edge
  %rval.0 = phi i32 [ %call.i26, %si4713_update_tune_status.exit ], [ 0, %sw.bb.if.end12_crit_edge ]
  %tune_rnl = getelementptr inbounds %struct.si4713_device, ptr %sd, i32 0, i32 13
  %24 = ptrtoint ptr %tune_rnl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tune_rnl, align 4
  %rnl13 = getelementptr inbounds %struct.si4713_rnl, ptr %arg, i32 0, i32 2
  %26 = ptrtoint ptr %rnl13 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %rnl13, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %si4713_update_tune_status.exit.thread, %si4713_tx_tune_measure.exit.cleanup_crit_edge, %si4713_tx_tune_measure.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call25.i, %si4713_tx_tune_measure.exit.cleanup_crit_edge ], [ %rval.0, %if.end12 ], [ -515, %if.end.cleanup_crit_edge ], [ %call.i, %si4713_tx_tune_measure.exit.thread ], [ %call.i26, %si4713_update_tune_status.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si4713_wait_stc(ptr noundef %sdev, i32 noundef %usecs) unnamed_addr #2 align 64 {
entry:
  %resp = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sdev, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %resp) #7
  %2 = ptrtoint ptr %resp to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %resp, align 1, !annotation !227
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %irq = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %work = getelementptr inbounds %struct.si4713_device, ptr %sdev, i32 0, i32 3
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %usecs) #7
  %add = add i32 %call3.i, 1
  %call2 = tail call i32 @wait_for_completion_timeout(ptr noundef %work, i32 noundef %add) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.end, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sdev, i32 0, i32 9
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name, ptr noundef nonnull @.str.68) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %name17 = getelementptr inbounds %struct.v4l2_subdev, ptr %sdev, i32 0, i32 9
  br label %for.cond

for.cond:                                         ; preds = %if.end35, %if.end
  %call7 = call fastcc i32 @si4713_send_command(ptr noundef %sdev, i8 noundef zeroext 20, ptr noundef null, i32 noundef 0, ptr noundef nonnull %resp, i32 noundef 1, i32 noundef 500)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call7)
  %cmp = icmp sgt i32 %call7, -1
  br i1 %cmp, label %do.body9, label %for.cond.if.end28_crit_edge

for.cond.if.end28_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

do.body9:                                         ; preds = %for.cond
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp10 = icmp sgt i32 %6, 0
  br i1 %cmp10, label %do.end14, label %do.body9.do.end22_crit_edge

do.body9.do.end22_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end22

do.end14:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %resp to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %resp, align 1
  %conv = zext i8 %8 to i32
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %name17, ptr noundef nonnull @.str.68, i32 noundef %conv) #10
  br label %do.end22

do.end22:                                         ; preds = %do.end14, %do.body9.do.end22_crit_edge
  %9 = ptrtoint ptr %resp to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %resp, align 1
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool25.not = icmp eq i8 %11, 0
  br i1 %tobool25.not, label %do.end22.if.end28_crit_edge, label %do.end22.cleanup_crit_edge

do.end22.cleanup_crit_edge:                       ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end22.if.end28_crit_edge:                      ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.end28:                                         ; preds = %do.end22.if.end28_crit_edge, %for.cond.if.end28_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %12, %3
  %call29 = call i32 @jiffies_to_usecs(i32 noundef %sub) #7
  %cmp30 = icmp ugt i32 %call29, %usecs
  br i1 %cmp30, label %if.then32, label %if.end35

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp33 = icmp slt i32 %call7, 0
  %spec.select = select i1 %cmp33, i32 %call7, i32 -5
  br label %cleanup

if.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  call void @usleep_range_state(i32 noundef 3000, i32 noundef 4000, i32 noundef 2) #7
  br label %for.cond

cleanup:                                          ; preds = %if.then32, %do.end22.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.then32 ], [ 0, %do.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %resp) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si4713_tx_tune_status(ptr noundef %sdev, ptr nocapture noundef %frequency, ptr nocapture noundef %power, ptr nocapture noundef %antcap, ptr nocapture noundef writeonly %noise) unnamed_addr #2 align 64 {
entry:
  %val = alloca [8 x i8], align 8
  %args = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val) #7
  %0 = getelementptr inbounds [8 x i8], ptr %val, i32 0, i32 2
  %1 = getelementptr inbounds [8 x i8], ptr %val, i32 0, i32 3
  %2 = getelementptr inbounds [8 x i8], ptr %val, i32 0, i32 5
  %3 = getelementptr inbounds [8 x i8], ptr %val, i32 0, i32 6
  %4 = getelementptr inbounds [8 x i8], ptr %val, i32 0, i32 7
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %val, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %args) #7
  %6 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %args, align 1
  %call = call fastcc i32 @si4713_send_command(ptr noundef %sdev, i8 noundef zeroext 51, ptr noundef nonnull %args, i32 noundef 1, ptr noundef nonnull %val, i32 noundef 8, i32 noundef 500)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %entry.if.end41_crit_edge

entry.if.end41_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

do.body:                                          ; preds = %entry
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp sgt i32 %7, 0
  br i1 %cmp, label %do.end, label %do.body.do.end10_crit_edge

do.body.do.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sdev, i32 0, i32 9
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %val, align 8
  %conv7 = zext i8 %9 to i32
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %name, ptr noundef nonnull @.str.73, i32 noundef %conv7) #10
  br label %do.end10

do.end10:                                         ; preds = %do.end, %do.body.do.end10_crit_edge
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %0, align 2
  %conv13 = zext i8 %11 to i16
  %shl = shl nuw i16 %conv13, 8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %1, align 1
  %conv15 = zext i8 %13 to i16
  %or = or i16 %shl, %conv15
  %14 = ptrtoint ptr %frequency to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %or, ptr %frequency, align 2
  %conv17 = zext i16 %or to i32
  %frequency18 = getelementptr inbounds %struct.si4713_device, ptr %sdev, i32 0, i32 10
  %15 = ptrtoint ptr %frequency18 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv17, ptr %frequency18, align 4
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %2, align 1
  %18 = ptrtoint ptr %power to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %power, align 1
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %3, align 2
  %21 = ptrtoint ptr %antcap to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %antcap, align 1
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %4, align 1
  %24 = ptrtoint ptr %noise to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %noise, align 1
  %25 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp23 = icmp sgt i32 %25, 0
  br i1 %cmp23, label %do.end28, label %do.end10.if.end41_crit_edge

do.end10.if.end41_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

do.end28:                                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  %name31 = getelementptr inbounds %struct.v4l2_subdev, ptr %sdev, i32 0, i32 9
  %26 = ptrtoint ptr %frequency to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %frequency, align 2
  %conv33 = zext i16 %27 to i32
  %28 = ptrtoint ptr %power to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %power, align 1
  %conv34 = zext i8 %29 to i32
  %30 = ptrtoint ptr %antcap to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %antcap, align 1
  %conv35 = zext i8 %31 to i32
  %conv36 = zext i8 %23 to i32
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name31, ptr noundef nonnull @.str.73, i32 noundef %conv33, i32 noundef %conv34, i32 noundef %conv35, i32 noundef %conv36) #10
  br label %if.end41

if.end41:                                         ; preds = %do.end28, %do.end10.if.end41_crit_edge, %entry.if.end41_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %args) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si4713_s_frequency(ptr noundef %sd, ptr nocapture noundef readonly %f) #2 align 64 {
entry:
  %val.i = alloca [1 x i8], align 1
  %args.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %frequency1 = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %2 = ptrtoint ptr %frequency1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frequency1, align 4
  %mul = mul i32 %3, 625
  call void @__sanitizer_cov_trace_const_cmp4(i32 760099999, i32 %mul)
  %cmp = icmp ugt i32 %mul, 760099999
  %div = udiv i32 %mul, 100000
  %4 = tail call i32 @llvm.umin.i32(i32 %div, i32 10800)
  %5 = select i1 %cmp, i32 %4, i32 7600
  %power_state = getelementptr inbounds %struct.si4713_device, ptr %sd, i32 0, i32 8
  %6 = ptrtoint ptr %power_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %power_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool21.not = icmp eq i32 %7, 0
  br i1 %tobool21.not, label %if.end.if.end28_crit_edge, label %if.then22

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then22:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #7
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %val.i, align 1, !annotation !227
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %args.i) #7
  %9 = getelementptr inbounds [3 x i8], ptr %args.i, i32 0, i32 1
  %10 = getelementptr inbounds [3 x i8], ptr %args.i, i32 0, i32 2
  %11 = ptrtoint ptr %args.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %args.i, align 1
  %12 = lshr i32 %5, 8
  %conv1.i = trunc i32 %12 to i8
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv1.i, ptr %9, align 1
  %conv4.i = trunc i32 %5 to i8
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv4.i, ptr %10, align 1
  %call.i = call fastcc i32 @si4713_send_command(ptr noundef %sd, i8 noundef zeroext 48, ptr noundef nonnull %args.i, i32 noundef 3, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then22.si4713_tx_tune_freq.exit.thread_crit_edge, label %do.body.i

if.then22.si4713_tx_tune_freq.exit.thread_crit_edge: ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %si4713_tx_tune_freq.exit.thread

do.body.i:                                        ; preds = %if.then22
  %15 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp7.i = icmp sgt i32 %15, 0
  br i1 %cmp7.i, label %do.end.i, label %do.body.i.do.end17.i_crit_edge

do.body.i.do.end17.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %val.i, align 1
  %conv13.i = zext i8 %17 to i32
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %name.i, ptr noundef nonnull @.str.78, i32 noundef %5, i32 noundef %conv13.i) #10
  br label %do.end17.i

do.end17.i:                                       ; preds = %do.end.i, %do.body.i.do.end17.i_crit_edge
  %call18.i = call fastcc i32 @si4713_wait_stc(ptr noundef %sd, i32 noundef 110000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %do.end17.i.si4713_tx_tune_freq.exit.thread_crit_edge, label %si4713_tx_tune_freq.exit

do.end17.i.si4713_tx_tune_freq.exit.thread_crit_edge: ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %si4713_tx_tune_freq.exit.thread

si4713_tx_tune_freq.exit.thread:                  ; preds = %do.end17.i.si4713_tx_tune_freq.exit.thread_crit_edge, %if.then22.si4713_tx_tune_freq.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call18.i, %do.end17.i.si4713_tx_tune_freq.exit.thread_crit_edge ], [ %call.i, %if.then22.si4713_tx_tune_freq.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %args.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #7
  br label %cleanup

si4713_tx_tune_freq.exit:                         ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %args.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #7
  br label %if.end28

if.end28:                                         ; preds = %si4713_tx_tune_freq.exit, %if.end.if.end28_crit_edge
  %frequency30 = getelementptr inbounds %struct.si4713_device, ptr %sd, i32 0, i32 10
  %18 = ptrtoint ptr %frequency30 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %5, ptr %frequency30, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %si4713_tx_tune_freq.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end28 ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %si4713_tx_tune_freq.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si4713_g_frequency(ptr noundef %sd, ptr nocapture noundef %f) #2 align 64 {
entry:
  %freq = alloca i16, align 2
  %p = alloca i8, align 1
  %a = alloca i8, align 1
  %n = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup11_crit_edge

entry.cleanup11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup11

if.end:                                           ; preds = %entry
  %power_state = getelementptr inbounds %struct.si4713_device, ptr %sd, i32 0, i32 8
  %2 = ptrtoint ptr %power_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end.if.end8_crit_edge, label %if.then2

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %freq) #7
  %4 = ptrtoint ptr %freq to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %freq, align 2, !annotation !227
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %p) #7
  %5 = ptrtoint ptr %p to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %p, align 1, !annotation !227
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %a) #7
  %6 = ptrtoint ptr %a to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %a, align 1, !annotation !227
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %n) #7
  %call = call fastcc i32 @si4713_tx_tune_status(ptr noundef %sd, ptr noundef nonnull %freq, ptr noundef nonnull %p, ptr noundef nonnull %a, ptr noundef nonnull %n)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup11.critedge, label %if.end4

if.end4:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %freq to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %freq, align 2
  %conv = zext i16 %8 to i32
  %frequency = getelementptr inbounds %struct.si4713_device, ptr %sd, i32 0, i32 10
  %9 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %frequency, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %n) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %a) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %p) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %freq) #7
  br label %if.end8

if.end8:                                          ; preds = %if.end4, %if.end.if.end8_crit_edge
  %rval.0 = phi i32 [ 0, %if.end.if.end8_crit_edge ], [ %call, %if.end4 ]
  %frequency9 = getelementptr inbounds %struct.si4713_device, ptr %sd, i32 0, i32 10
  %10 = ptrtoint ptr %frequency9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %frequency9, align 4
  %mul = mul i32 %11, 100000
  %div = udiv i32 %mul, 625
  %frequency10 = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %12 = ptrtoint ptr %frequency10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div, ptr %frequency10, align 4
  br label %cleanup11

cleanup11.critedge:                               ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %n) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %a) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %p) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %freq) #7
  br label %cleanup11

cleanup11:                                        ; preds = %cleanup11.critedge, %if.end8, %entry.cleanup11_crit_edge
  %retval.1 = phi i32 [ %rval.0, %if.end8 ], [ -22, %entry.cleanup11_crit_edge ], [ %call, %cleanup11.critedge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si4713_g_modulator(ptr noundef %sd, ptr noundef %vm) #2 align 64 {
entry:
  %val.i = alloca [4 x i8], align 4
  %args.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sd, null
  br i1 %tobool.not, label %entry.cleanup22_crit_edge, label %if.end

entry.cleanup22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup22

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %vm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup22_crit_edge

if.end.cleanup22_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup22

if.end2:                                          ; preds = %if.end
  %name = getelementptr inbounds %struct.v4l2_modulator, ptr %vm, i32 0, i32 1
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.79, i32 noundef 32) #7
  %capability = getelementptr inbounds %struct.v4l2_modulator, ptr %vm, i32 0, i32 2
  %2 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 657, ptr %capability, align 4
  %rangelow = getelementptr inbounds %struct.v4l2_modulator, ptr %vm, i32 0, i32 3
  %3 = ptrtoint ptr %rangelow to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1216000, ptr %rangelow, align 4
  %rangehigh = getelementptr inbounds %struct.v4l2_modulator, ptr %vm, i32 0, i32 4
  %4 = ptrtoint ptr %rangehigh to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1728000, ptr %rangehigh, align 4
  %power_state = getelementptr inbounds %struct.si4713_device, ptr %sd, i32 0, i32 8
  %5 = ptrtoint ptr %power_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %power_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %if.end2.if.end9_crit_edge, label %if.then4

if.end2.if.end9_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then4:                                         ; preds = %if.end2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %val.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %args.i) #7
  %8 = getelementptr inbounds [3 x i8], ptr %args.i, i32 0, i32 1
  %9 = getelementptr inbounds [3 x i8], ptr %args.i, i32 0, i32 2
  %10 = ptrtoint ptr %args.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %args.i, align 1
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 33, ptr %8, align 1
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %9, align 1
  %call.i = call fastcc i32 @si4713_send_command(ptr noundef nonnull %sd, i8 noundef zeroext 19, ptr noundef nonnull %args.i, i32 noundef 3, ptr noundef nonnull %val.i, i32 noundef 4, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %cleanup22.critedge, label %if.end.i

if.end.i:                                         ; preds = %if.then4
  %13 = getelementptr inbounds [4 x i8], ptr %val.i, i32 0, i32 3
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  %conv10.i = zext i8 %15 to i32
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp11.i = icmp sgt i32 %16, 0
  br i1 %cmp11.i, label %do.end.i, label %if.end.i.if.end8_crit_edge

if.end.i.if.end8_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = getelementptr inbounds [4 x i8], ptr %val.i, i32 0, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 2
  %conv8.i = zext i8 %19 to i32
  %shl.i = shl nuw nsw i32 %conv8.i, 8
  %or.i = or i32 %shl.i, %conv10.i
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %20 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %val.i, align 4
  %conv18.i = zext i8 %21 to i32
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name.i, ptr noundef nonnull @.str.80, i32 noundef 8448, i32 noundef %or.i, i32 noundef %conv18.i) #10
  br label %if.end8

if.end8:                                          ; preds = %do.end.i, %if.end.i.if.end8_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %args.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %and = lshr i32 %conv10.i, 1
  %shr = and i32 %and, 1
  %stereo = getelementptr inbounds %struct.si4713_device, ptr %sd, i32 0, i32 12
  %22 = ptrtoint ptr %stereo to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shr, ptr %stereo, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.end2.if.end9_crit_edge
  %rval.0 = phi i32 [ 0, %if.end2.if.end9_crit_edge ], [ %call.i, %if.end8 ]
  %stereo10 = getelementptr inbounds %struct.si4713_device, ptr %sd, i32 0, i32 12
  %23 = ptrtoint ptr %stereo10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %stereo10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool11.not = icmp eq i32 %24, 0
  %spec.select = select i1 %tobool11.not, i32 1, i32 2
  %25 = getelementptr inbounds %struct.v4l2_modulator, ptr %vm, i32 0, i32 5
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %spec.select, ptr %25, align 4
  %rds_enabled = getelementptr inbounds %struct.si4713_device, ptr %sd, i32 0, i32 9
  %27 = ptrtoint ptr %rds_enabled to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rds_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool15.not = icmp eq i32 %28, 0
  br i1 %tobool15.not, label %if.else18, label %if.then16

if.then16:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %spec.select, 16
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or, ptr %25, align 4
  br label %cleanup22

if.else18:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %spec.select, ptr %25, align 4
  br label %cleanup22

cleanup22.critedge:                               ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %args.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %cleanup22

cleanup22:                                        ; preds = %cleanup22.critedge, %if.else18, %if.then16, %if.end.cleanup22_crit_edge, %entry.cleanup22_crit_edge
  %retval.1 = phi i32 [ -19, %entry.cleanup22_crit_edge ], [ -22, %if.end.cleanup22_crit_edge ], [ %call.i, %cleanup22.critedge ], [ %rval.0, %if.else18 ], [ %rval.0, %if.then16 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si4713_s_modulator(ptr noundef %sd, ptr nocapture noundef readonly %vm) #2 align 64 {
entry:
  %resp.i = alloca [1 x i8], align 1
  %args.i56 = alloca [5 x i8], align 1
  %val.i = alloca [4 x i8], align 4
  %args.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sd, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %vm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %txsubchans = getelementptr inbounds %struct.v4l2_modulator, ptr %vm, i32 0, i32 5
  %2 = ptrtoint ptr %txsubchans to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %txsubchans, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.else, label %if.end2.if.end11_crit_edge

if.end2.if.end11_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.else:                                          ; preds = %if.end2
  %and6 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else.cleanup_crit_edge, label %if.else.if.end11_crit_edge

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.else.if.end11_crit_edge, %if.end2.if.end11_crit_edge
  %stereo.0 = phi i32 [ 1, %if.end2.if.end11_crit_edge ], [ 0, %if.else.if.end11_crit_edge ]
  %4 = trunc i32 %3 to i16
  %5 = lshr i16 %4, 4
  %6 = and i16 %5, 1
  %power_state = getelementptr inbounds %struct.si4713_device, ptr %sd, i32 0, i32 8
  %7 = ptrtoint ptr %power_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %power_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool16.not = icmp eq i32 %8, 0
  br i1 %tobool16.not, label %if.end11.if.end34_crit_edge, label %if.then17

if.end11.if.end34_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then17:                                        ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %val.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %args.i) #7
  %10 = getelementptr inbounds [3 x i8], ptr %args.i, i32 0, i32 1
  %11 = getelementptr inbounds [3 x i8], ptr %args.i, i32 0, i32 2
  %12 = ptrtoint ptr %args.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %args.i, align 1
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 33, ptr %10, align 1
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %11, align 1
  %call.i = call fastcc i32 @si4713_send_command(ptr noundef nonnull %sd, i8 noundef zeroext 19, ptr noundef nonnull %args.i, i32 noundef 3, ptr noundef nonnull %val.i, i32 noundef 4, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %si4713_read_property.exit, label %if.end.i

if.end.i:                                         ; preds = %if.then17
  %15 = getelementptr inbounds [4 x i8], ptr %val.i, i32 0, i32 3
  %16 = getelementptr inbounds [4 x i8], ptr %val.i, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 2
  %conv8.i = zext i8 %18 to i32
  %shl.i = shl nuw nsw i32 %conv8.i, 8
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %15, align 1
  %conv10.i = zext i8 %20 to i32
  %or.i = or i32 %shl.i, %conv10.i
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp11.i = icmp sgt i32 %21, 0
  br i1 %cmp11.i, label %do.end.i, label %if.end.i.if.end21_crit_edge

if.end.i.if.end21_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %22 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %val.i, align 4
  %conv18.i = zext i8 %23 to i32
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name.i, ptr noundef nonnull @.str.80, i32 noundef 8448, i32 noundef %or.i, i32 noundef %conv18.i) #10
  br label %if.end21

si4713_read_property.exit:                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %args.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %cleanup

if.end21:                                         ; preds = %do.end.i, %if.end.i.if.end21_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %args.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %and22 = and i32 %or.i, 65529
  %shl = shl nuw nsw i32 %stereo.0, 1
  %or = or i32 %and22, %shl
  %24 = shl nuw nsw i16 %6, 2
  %25 = trunc i32 %or to i16
  %conv28 = or i16 %24, %25
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %resp.i) #7
  %26 = ptrtoint ptr %resp.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %resp.i, align 1, !annotation !227
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %args.i56) #7
  %27 = getelementptr inbounds [5 x i8], ptr %args.i56, i32 0, i32 1
  %28 = getelementptr inbounds [5 x i8], ptr %args.i56, i32 0, i32 2
  %29 = getelementptr inbounds [5 x i8], ptr %args.i56, i32 0, i32 3
  %30 = getelementptr inbounds [5 x i8], ptr %args.i56, i32 0, i32 4
  %31 = ptrtoint ptr %args.i56 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %args.i56, align 1
  %32 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 33, ptr %27, align 1
  %33 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %28, align 1
  %conv6.i = zext i16 %conv28 to i32
  %34 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %18, ptr %29, align 1
  %conv12.i = trunc i16 %conv28 to i8
  %35 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv12.i, ptr %30, align 1
  %call.i58 = call fastcc i32 @si4713_send_command(ptr noundef nonnull %sd, i8 noundef zeroext 18, ptr noundef nonnull %args.i56, i32 noundef 5, ptr noundef nonnull %resp.i, i32 noundef 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %cmp.i59 = icmp slt i32 %call.i58, 0
  br i1 %cmp.i59, label %si4713_write_property.exit.thread, label %do.body.i

si4713_write_property.exit.thread:                ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %args.i56) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %resp.i) #7
  br label %cleanup

do.body.i:                                        ; preds = %if.end21
  %36 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp15.i = icmp sgt i32 %36, 0
  br i1 %cmp15.i, label %do.end.i61, label %do.body.i.si4713_write_property.exit_crit_edge

do.body.i.si4713_write_property.exit_crit_edge:   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %si4713_write_property.exit

do.end.i61:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i60 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %37 = ptrtoint ptr %resp.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %resp.i, align 1
  %conv22.i = zext i8 %38 to i32
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name.i60, ptr noundef nonnull @.str.30, i32 noundef 8448, i32 noundef %conv6.i, i32 noundef %conv22.i) #10
  br label %si4713_write_property.exit

si4713_write_property.exit:                       ; preds = %do.end.i61, %do.body.i.si4713_write_property.exit_crit_edge
  call void @msleep(i32 noundef 20) #7
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %args.i56) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %resp.i) #7
  br label %if.end34

if.end34:                                         ; preds = %si4713_write_property.exit, %if.end11.if.end34_crit_edge
  %stereo36 = getelementptr inbounds %struct.si4713_device, ptr %sd, i32 0, i32 12
  %39 = ptrtoint ptr %stereo36 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %stereo.0, ptr %stereo36, align 4
  %conv37 = zext i16 %6 to i32
  %rds_enabled = getelementptr inbounds %struct.si4713_device, ptr %sd, i32 0, i32 9
  %40 = ptrtoint ptr %rds_enabled to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv37, ptr %rds_enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %si4713_write_property.exit.thread, %si4713_read_property.exit, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end34 ], [ -19, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ %call.i, %si4713_read_property.exit ], [ %call.i58, %si4713_write_property.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si4713_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %resp.i253 = alloca [1 x i8], align 1
  %args.i254 = alloca [5 x i8], align 1
  %val.i241 = alloca [4 x i8], align 4
  %args.i242 = alloca [3 x i8], align 1
  %resp.i = alloca [1 x i8], align 1
  %args.i227 = alloca [5 x i8], align 1
  %val.i = alloca [1 x i8], align 1
  %args.i = alloca [4 x i8], align 1
  %left.i = alloca i8, align 1
  %resp.i57.i = alloca [1 x i8], align 1
  %args.i58.i = alloca [5 x i8], align 1
  %resp.i.i198 = alloca [1 x i8], align 1
  %args.i51.i = alloca [5 x i8], align 1
  %val.i.i = alloca [1 x i8], align 1
  %args.i.i199 = alloca [5 x i8], align 1
  %f.i = alloca %struct.v4l2_frequency, align 4
  %vm.i = alloca %struct.v4l2_modulator, align 4
  %resp.i.i176 = alloca [1 x i8], align 1
  %args.i.i177 = alloca [5 x i8], align 1
  %resp.i.i = alloca [1 x i8], align 1
  %args.i.i = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -196
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963785, i32 %3)
  %cmp.not = icmp eq i32 %3, 9963785
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_new = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 5
  %4 = ptrtoint ptr %is_new to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load = load i32, ptr %is_new, align 4
  %5 = and i32 %bf.load, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end.if.end25_crit_edge, label %if.then1

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then1:                                         ; preds = %if.end
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %6 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %if.end10, label %if.then4

if.then4:                                         ; preds = %if.then1
  %power_state.i = getelementptr i8, ptr %1, i32 372
  %8 = ptrtoint ptr %power_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %power_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.then4.if.then7_crit_edge, label %if.then.i

if.then4.if.then7_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

if.then.i:                                        ; preds = %if.then4
  %conv = trunc i32 %7 to i16
  %10 = and i16 %conv, 1
  %or.i = mul nuw nsw i16 %10, 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %resp.i.i) #7
  %11 = ptrtoint ptr %resp.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %resp.i.i, align 1, !annotation !227
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %args.i.i) #7
  %12 = getelementptr inbounds [5 x i8], ptr %args.i.i, i32 0, i32 1
  %13 = getelementptr inbounds [5 x i8], ptr %args.i.i, i32 0, i32 2
  %14 = getelementptr inbounds [5 x i8], ptr %args.i.i, i32 0, i32 3
  %15 = getelementptr inbounds [5 x i8], ptr %args.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %args.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %args.i.i, align 1
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 33, ptr %12, align 1
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 5, ptr %13, align 1
  %conv6.i.i = zext i16 %or.i to i32
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %14, align 1
  %conv12.i.i = trunc i16 %or.i to i8
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv12.i.i, ptr %15, align 1
  %call.i.i = call fastcc i32 @si4713_send_command(ptr noundef %add.ptr, i8 noundef zeroext 18, ptr noundef nonnull %args.i.i, i32 noundef 5, ptr noundef nonnull %resp.i.i, i32 noundef 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %si4713_set_mute.exit.thread277, label %do.body.i.i

si4713_set_mute.exit.thread277:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %args.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %resp.i.i) #7
  br label %cleanup

do.body.i.i:                                      ; preds = %if.then.i
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp15.i.i = icmp sgt i32 %21, 0
  br i1 %cmp15.i.i, label %do.end.i.i, label %do.body.i.i.si4713_set_mute.exit_crit_edge

do.body.i.i.si4713_set_mute.exit_crit_edge:       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %si4713_set_mute.exit

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i = getelementptr i8, ptr %1, i32 -80
  %22 = ptrtoint ptr %resp.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %resp.i.i, align 1
  %conv22.i.i = zext i8 %23 to i32
  %call23.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name.i.i, ptr noundef nonnull @.str.30, i32 noundef 8453, i32 noundef %conv6.i.i, i32 noundef %conv22.i.i) #10
  br label %si4713_set_mute.exit

si4713_set_mute.exit:                             ; preds = %do.end.i.i, %do.body.i.i.si4713_set_mute.exit_crit_edge
  call void @msleep(i32 noundef 20) #7
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %args.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %resp.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool6.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool6.not, label %si4713_set_mute.exit.if.then7_crit_edge, label %si4713_set_mute.exit.cleanup_crit_edge

si4713_set_mute.exit.cleanup_crit_edge:           ; preds = %si4713_set_mute.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

si4713_set_mute.exit.if.then7_crit_edge:          ; preds = %si4713_set_mute.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

if.then7:                                         ; preds = %si4713_set_mute.exit.if.then7_crit_edge, %if.then4.if.then7_crit_edge
  %call8 = call fastcc i32 @si4713_set_power_state(ptr noundef %add.ptr, i8 noundef zeroext 0)
  br label %cleanup

if.end10:                                         ; preds = %if.then1
  %call11 = tail call fastcc i32 @si4713_set_power_state(ptr noundef %add.ptr, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then13:                                        ; preds = %if.end10
  %power_state.i178 = getelementptr i8, ptr %1, i32 372
  %24 = ptrtoint ptr %power_state.i178 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %power_state.i178, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i179 = icmp eq i32 %25, 0
  br i1 %tobool.not.i179, label %if.then13.if.then19_crit_edge, label %if.then.i185

if.then13.if.then19_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

if.then.i185:                                     ; preds = %if.then13
  %26 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val2, align 4
  %conv15 = trunc i32 %27 to i16
  %28 = and i16 %conv15, 1
  %or.i180 = mul nuw nsw i16 %28, 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %resp.i.i176) #7
  %29 = ptrtoint ptr %resp.i.i176 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %resp.i.i176, align 1, !annotation !227
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %args.i.i177) #7
  %30 = getelementptr inbounds [5 x i8], ptr %args.i.i177, i32 0, i32 1
  %31 = getelementptr inbounds [5 x i8], ptr %args.i.i177, i32 0, i32 2
  %32 = getelementptr inbounds [5 x i8], ptr %args.i.i177, i32 0, i32 3
  %33 = getelementptr inbounds [5 x i8], ptr %args.i.i177, i32 0, i32 4
  %34 = ptrtoint ptr %args.i.i177 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %args.i.i177, align 1
  %35 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 33, ptr %30, align 1
  %36 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 5, ptr %31, align 1
  %conv6.i.i181 = zext i16 %or.i180 to i32
  %37 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %32, align 1
  %conv12.i.i182 = trunc i16 %or.i180 to i8
  %38 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv12.i.i182, ptr %33, align 1
  %call.i.i183 = call fastcc i32 @si4713_send_command(ptr noundef %add.ptr, i8 noundef zeroext 18, ptr noundef nonnull %args.i.i177, i32 noundef 5, ptr noundef nonnull %resp.i.i176, i32 noundef 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i183)
  %cmp.i.i184 = icmp slt i32 %call.i.i183, 0
  br i1 %cmp.i.i184, label %if.end17.thread284, label %do.body.i.i187

if.end17.thread284:                               ; preds = %if.then.i185
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %args.i.i177) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %resp.i.i176) #7
  br label %cleanup

do.body.i.i187:                                   ; preds = %if.then.i185
  %39 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp15.i.i186 = icmp sgt i32 %39, 0
  br i1 %cmp15.i.i186, label %do.end.i.i191, label %do.body.i.i187.if.end17_crit_edge

do.body.i.i187.if.end17_crit_edge:                ; preds = %do.body.i.i187
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

do.end.i.i191:                                    ; preds = %do.body.i.i187
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i188 = getelementptr i8, ptr %1, i32 -80
  %40 = ptrtoint ptr %resp.i.i176 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %resp.i.i176, align 1
  %conv22.i.i189 = zext i8 %41 to i32
  %call23.i.i190 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name.i.i188, ptr noundef nonnull @.str.30, i32 noundef 8453, i32 noundef %conv6.i.i181, i32 noundef %conv22.i.i189) #10
  br label %if.end17

if.end17:                                         ; preds = %do.end.i.i191, %do.body.i.i187.if.end17_crit_edge
  call void @msleep(i32 noundef 20) #7
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %args.i.i177) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %resp.i.i176) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i183)
  %tobool18.not = icmp eq i32 %call.i.i183, 0
  br i1 %tobool18.not, label %if.end17.if.then19_crit_edge, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17.if.then19_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

if.then19:                                        ; preds = %if.end17.if.then19_crit_edge, %if.then13.if.then19_crit_edge
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %f.i) #7
  %42 = getelementptr inbounds i8, ptr %f.i, i32 4
  %43 = call ptr @memset(ptr %42, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %vm.i) #7
  %44 = getelementptr inbounds i8, ptr %vm.i, i32 4
  %45 = call ptr @memset(ptr %44, i32 255, i32 64)
  %46 = ptrtoint ptr %f.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %f.i, align 4
  %frequency.i = getelementptr i8, ptr %1, i32 380
  %47 = ptrtoint ptr %frequency.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %frequency.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i196 = icmp eq i32 %48, 0
  %phi.bo.i = mul i32 %48, 100000
  %phi.bo18.i = udiv i32 %phi.bo.i, 625
  %cond.i = select i1 %tobool.not.i196, i32 1408000, i32 %phi.bo18.i
  %frequency2.i = getelementptr inbounds %struct.v4l2_frequency, ptr %f.i, i32 0, i32 2
  %49 = ptrtoint ptr %frequency2.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %cond.i, ptr %frequency2.i, align 4
  %call.i = call i32 @si4713_s_frequency(ptr noundef %add.ptr, ptr noundef nonnull %f.i) #7
  %50 = ptrtoint ptr %vm.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %vm.i, align 4
  %stereo.i = getelementptr i8, ptr %1, i32 388
  %51 = ptrtoint ptr %stereo.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %stereo.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool5.not.i = icmp eq i32 %52, 0
  %spec.select.i = select i1 %tobool5.not.i, i32 1, i32 2
  %53 = getelementptr inbounds %struct.v4l2_modulator, ptr %vm.i, i32 0, i32 5
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %spec.select.i, ptr %53, align 4
  %rds_enabled.i = getelementptr i8, ptr %1, i32 376
  %55 = ptrtoint ptr %rds_enabled.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rds_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool7.not.i = icmp eq i32 %56, 0
  br i1 %tobool7.not.i, label %if.then19.if.end21_crit_edge, label %if.then8.i

if.then19.if.end21_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then8.i:                                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %or.i197 = or i32 %spec.select.i, 16
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %or.i197, ptr %53, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then8.i, %if.then19.if.end21_crit_edge
  %call12.i = call i32 @si4713_s_modulator(ptr noundef %add.ptr, ptr noundef nonnull %vm.i) #7
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %vm.i) #7
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %f.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool22.not = icmp eq i32 %call.i, 0
  br i1 %tobool22.not, label %if.end21.if.end25_crit_edge, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.end25:                                         ; preds = %if.end21.if.end25_crit_edge, %if.end.if.end25_crit_edge
  %power_state = getelementptr i8, ptr %1, i32 372
  %58 = ptrtoint ptr %power_state to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %power_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool26.not = icmp eq i32 %59, 0
  br i1 %tobool26.not, label %if.end25.cleanup_crit_edge, label %for.cond.preheader

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end25
  %60 = getelementptr inbounds [3 x i8], ptr %args.i242, i32 0, i32 1
  %61 = getelementptr inbounds [3 x i8], ptr %args.i242, i32 0, i32 2
  %62 = getelementptr inbounds [4 x i8], ptr %val.i241, i32 0, i32 3
  %63 = getelementptr inbounds [4 x i8], ptr %val.i241, i32 0, i32 2
  %name.i250 = getelementptr i8, ptr %1, i32 -80
  %64 = getelementptr inbounds [5 x i8], ptr %args.i254, i32 0, i32 1
  %65 = getelementptr inbounds [5 x i8], ptr %args.i254, i32 0, i32 2
  %66 = getelementptr inbounds [5 x i8], ptr %args.i254, i32 0, i32 3
  %67 = getelementptr inbounds [5 x i8], ptr %args.i254, i32 0, i32 4
  %rds_alt_freqs_enable = getelementptr i8, ptr %1, i32 236
  %rds_alt_freqs = getelementptr i8, ptr %1, i32 240
  %68 = getelementptr inbounds [5 x i8], ptr %args.i227, i32 0, i32 1
  %69 = getelementptr inbounds [5 x i8], ptr %args.i227, i32 0, i32 2
  %70 = getelementptr inbounds [5 x i8], ptr %args.i227, i32 0, i32 3
  %71 = getelementptr inbounds [5 x i8], ptr %args.i227, i32 0, i32 4
  %tune_pwr_level = getelementptr i8, ptr %1, i32 292
  %tune_ant_cap = getelementptr i8, ptr %1, i32 296
  %72 = getelementptr inbounds [4 x i8], ptr %args.i, i32 0, i32 1
  %73 = getelementptr inbounds [4 x i8], ptr %args.i, i32 0, i32 2
  %74 = getelementptr inbounds [4 x i8], ptr %args.i, i32 0, i32 3
  %75 = getelementptr inbounds [5 x i8], ptr %args.i.i199, i32 0, i32 1
  %76 = getelementptr inbounds [5 x i8], ptr %args.i.i199, i32 0, i32 2
  %77 = getelementptr inbounds [5 x i8], ptr %args.i.i199, i32 0, i32 3
  %78 = getelementptr inbounds [5 x i8], ptr %args.i.i199, i32 0, i32 4
  %79 = getelementptr inbounds [5 x i8], ptr %args.i51.i, i32 0, i32 1
  %80 = getelementptr inbounds [5 x i8], ptr %args.i51.i, i32 0, i32 2
  %81 = getelementptr inbounds [5 x i8], ptr %args.i51.i, i32 0, i32 3
  %82 = getelementptr inbounds [5 x i8], ptr %args.i51.i, i32 0, i32 4
  %83 = getelementptr inbounds [5 x i8], ptr %args.i58.i, i32 0, i32 1
  %84 = getelementptr inbounds [5 x i8], ptr %args.i58.i, i32 0, i32 2
  %85 = getelementptr inbounds [5 x i8], ptr %args.i58.i, i32 0, i32 3
  %86 = getelementptr inbounds [5 x i8], ptr %args.i58.i, i32 0, i32 4
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %for.cond.preheader
  %c.0344 = phi i32 [ 1, %for.cond.preheader ], [ %inc, %for.inc.land.rhs_crit_edge ]
  %ctrl.addr.0343 = phi ptr [ %ctrl, %for.cond.preheader ], [ %92, %for.inc.land.rhs_crit_edge ]
  %size.0342 = phi i32 [ 0, %for.cond.preheader ], [ %size.2, %for.inc.land.rhs_crit_edge ]
  %table.0341 = phi ptr [ null, %for.cond.preheader ], [ %table.2, %for.inc.land.rhs_crit_edge ]
  %mul.0340 = phi i32 [ 0, %for.cond.preheader ], [ %mul.2, %for.inc.land.rhs_crit_edge ]
  %mask.0339 = phi i32 [ 0, %for.cond.preheader ], [ %mask.2, %for.inc.land.rhs_crit_edge ]
  %bit.0338 = phi i32 [ 0, %for.cond.preheader ], [ %bit.2, %for.inc.land.rhs_crit_edge ]
  %ncontrols = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl.addr.0343, i32 0, i32 4
  %87 = ptrtoint ptr %ncontrols to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %ncontrols, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %c.0344, i32 %88)
  %cmp30 = icmp ult i32 %c.0344, %88
  br i1 %cmp30, label %for.body, label %land.rhs.cleanup_crit_edge

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %land.rhs
  %cluster = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl.addr.0343, i32 0, i32 3
  %89 = ptrtoint ptr %cluster to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cluster, align 4
  %arrayidx = getelementptr ptr, ptr %90, i32 %c.0344
  %91 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx, align 4
  br i1 %tobool.not, label %land.lhs.true, label %for.body.if.end39_crit_edge

for.body.if.end39_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

land.lhs.true:                                    ; preds = %for.body
  %is_new33 = getelementptr inbounds %struct.v4l2_ctrl, ptr %92, i32 0, i32 5
  %93 = ptrtoint ptr %is_new33 to i32
  call void @__asan_load4_noabort(i32 %93)
  %bf.load34 = load i32, ptr %is_new33, align 4
  %94 = and i32 %bf.load34, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool37.not = icmp eq i32 %94, 0
  br i1 %tobool37.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.end39_crit_edge

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end39:                                         ; preds = %land.lhs.true.if.end39_crit_edge, %for.body.if.end39_crit_edge
  %id40 = getelementptr inbounds %struct.v4l2_ctrl, ptr %92, i32 0, i32 8
  %95 = ptrtoint ptr %id40 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %id40, align 8
  %97 = zext i32 %96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values)
  switch i32 %96, label %if.end39.cleanup_crit_edge [
    i32 10160389, label %sw.bb
    i32 10160390, label %sw.bb42
    i32 10160498, label %sw.bb45
    i32 10160497, label %if.end39.sw.bb49_crit_edge
    i32 10160398, label %if.end39.sw.bb67_crit_edge
    i32 10160399, label %if.end39.sw.bb67_crit_edge378
    i32 10160386, label %if.end39.if.end81.thread_crit_edge
    i32 10160466, label %sw.bb1.i
    i32 10160465, label %sw.bb2.i
    i32 10160482, label %sw.bb3.i
    i32 10160467, label %sw.bb4.i
    i32 10160481, label %sw.bb5.i
    i32 10160450, label %sw.bb6.i
    i32 10160385, label %sw.bb7.i
    i32 10160387, label %if.end39.if.end81_crit_edge
    i32 10160394, label %sw.bb9.i
    i32 10160393, label %sw.bb10.i
    i32 10160392, label %sw.bb11.i
    i32 10160391, label %sw.bb12.i
    i32 10160396, label %sw.bb13.i
    i32 10160395, label %sw.bb14.i
    i32 10160397, label %sw.bb15.i
    i32 10160448, label %sw.bb16.i
    i32 10160464, label %sw.bb17.i
    i32 10160480, label %sw.bb18.i
    i32 10160449, label %sw.bb19.i
    i32 10160468, label %sw.bb20.i
    i32 10160496, label %sw.bb21.i
  ]

if.end39.if.end81_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

if.end39.if.end81.thread_crit_edge:               ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81.thread

if.end39.sw.bb67_crit_edge378:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb67

if.end39.sw.bb67_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb67

if.end39.sw.bb49_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb49

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end39
  %p_new = getelementptr inbounds %struct.v4l2_ctrl, ptr %92, i32 0, i32 25
  %98 = ptrtoint ptr %p_new to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %p_new, align 8
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load1_noabort(i32 %100)
  %char0.i = load i8, ptr %99, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0.i)
  %tobool.not.i200 = icmp eq i8 %char0.i, 0
  br i1 %tobool.not.i200, label %if.then.i201, label %sw.bb.if.end.i_crit_edge

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i201:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %101 = call ptr @memset(ptr %99, i32 0, i32 97)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i201, %sw.bb.if.end.i_crit_edge
  %102 = ptrtoint ptr %power_state to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %power_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool1.not.i = icmp eq i32 %103, 0
  br i1 %tobool1.not.i, label %if.end.i.for.inc_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.070.i = phi i32 [ %add.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %104 = trunc i32 %i.070.i to i8
  %105 = lshr exact i8 %104, 2
  %add.ptr.i = getelementptr i8, ptr %99, i32 %i.070.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #7
  %106 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 -1, ptr %val.i.i, align 1, !annotation !227
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %args.i.i199) #7
  %107 = ptrtoint ptr %args.i.i199 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %105, ptr %args.i.i199, align 1
  %108 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %add.ptr.i, align 1
  %110 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %109, ptr %75, align 1
  %arrayidx3.i.i = getelementptr i8, ptr %add.ptr.i, i32 1
  %111 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx3.i.i, align 1
  %113 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %76, align 1
  %arrayidx5.i.i = getelementptr i8, ptr %add.ptr.i, i32 2
  %114 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx5.i.i, align 1
  %116 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %115, ptr %77, align 1
  %arrayidx7.i.i = getelementptr i8, ptr %add.ptr.i, i32 3
  %117 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx7.i.i, align 1
  %119 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %78, align 1
  %call.i.i204 = call fastcc i32 @si4713_send_command(ptr noundef %add.ptr, i8 noundef zeroext 54, ptr noundef nonnull %args.i.i199, i32 noundef 5, ptr noundef nonnull %val.i.i, i32 noundef 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i204)
  %cmp.i.i205 = icmp slt i32 %call.i.i204, 0
  br i1 %cmp.i.i205, label %si4713_tx_rds_ps.exit.i, label %do.body.i.i206

do.body.i.i206:                                   ; preds = %for.body.i
  %120 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp10.i.i = icmp sgt i32 %120, 0
  br i1 %cmp10.i.i, label %do.end.i.i207, label %do.body.i.i206.for.inc.i_crit_edge

do.body.i.i206.for.inc.i_crit_edge:               ; preds = %do.body.i.i206
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

do.end.i.i207:                                    ; preds = %do.body.i.i206
  call void @__sanitizer_cov_trace_pc() #9
  %121 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %val.i.i, align 1
  %conv16.i.i = zext i8 %122 to i32
  %call17.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %name.i250, ptr noundef nonnull @.str.82, i32 noundef %conv16.i.i) #10
  br label %for.inc.i

si4713_tx_rds_ps.exit.i:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %args.i.i199) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #7
  br label %cleanup

for.inc.i:                                        ; preds = %do.end.i.i207, %do.body.i.i206.for.inc.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %args.i.i199) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #7
  %add.i = add nuw nsw i32 %i.070.i, 4
  %cmp.i = icmp ult i32 %i.070.i, 92
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %call8.i = call i32 @strlen(ptr noundef %99) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  %sub.i = add i32 %call8.i, 255
  %phi.cast.i = and i32 %sub.i, 255
  %len.0.i = select i1 %tobool9.not.i, i32 1, i32 %phi.cast.i
  %div1550.i = lshr i32 %len.0.i, 3
  %rem.i = and i32 %len.0.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool17.not.i = icmp ne i32 %rem.i, 0
  %cond.i208 = zext i1 %tobool17.not.i to i32
  %add18.i = add nuw nsw i32 %div1550.i, %cond.i208
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %resp.i.i198) #7
  %123 = ptrtoint ptr %resp.i.i198 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 -1, ptr %resp.i.i198, align 1, !annotation !227
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %args.i51.i) #7
  %124 = ptrtoint ptr %args.i51.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 0, ptr %args.i51.i, align 1
  %125 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 44, ptr %79, align 1
  %126 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 5, ptr %80, align 1
  %127 = ptrtoint ptr %81 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 0, ptr %81, align 1
  %conv12.i.i209 = trunc i32 %add18.i to i8
  %128 = ptrtoint ptr %82 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %conv12.i.i209, ptr %82, align 1
  %call.i52.i = call fastcc i32 @si4713_send_command(ptr noundef %add.ptr, i8 noundef zeroext 18, ptr noundef nonnull %args.i51.i, i32 noundef 5, ptr noundef nonnull %resp.i.i198, i32 noundef 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52.i)
  %cmp.i53.i = icmp slt i32 %call.i52.i, 0
  br i1 %cmp.i53.i, label %si4713_write_property.exit.thread.i, label %do.body.i54.i

si4713_write_property.exit.thread.i:              ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %args.i51.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %resp.i.i198) #7
  br label %cleanup

do.body.i54.i:                                    ; preds = %for.end.i
  %129 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp15.i.i210 = icmp sgt i32 %129, 0
  br i1 %cmp15.i.i210, label %do.end.i56.i, label %do.body.i54.i.if.end24.i_crit_edge

do.body.i54.i.if.end24.i_crit_edge:               ; preds = %do.body.i54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

do.end.i56.i:                                     ; preds = %do.body.i54.i
  call void @__sanitizer_cov_trace_pc() #9
  %130 = ptrtoint ptr %resp.i.i198 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %resp.i.i198, align 1
  %conv22.i.i211 = zext i8 %131 to i32
  %call23.i.i212 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name.i250, ptr noundef nonnull @.str.30, i32 noundef 11269, i32 noundef %add18.i, i32 noundef %conv22.i.i211) #10
  br label %if.end24.i

if.end24.i:                                       ; preds = %do.end.i56.i, %do.body.i54.i.if.end24.i_crit_edge
  call void @msleep(i32 noundef 20) #7
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %args.i51.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %resp.i.i198) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %resp.i57.i) #7
  %132 = ptrtoint ptr %resp.i57.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 -1, ptr %resp.i57.i, align 1, !annotation !227
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %args.i58.i) #7
  %133 = ptrtoint ptr %args.i58.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 0, ptr %args.i58.i, align 1
  %134 = ptrtoint ptr %83 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 44, ptr %83, align 1
  %135 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 4, ptr %84, align 1
  %136 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 0, ptr %85, align 1
  %137 = ptrtoint ptr %86 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 6, ptr %86, align 1
  %call.i59.i = call fastcc i32 @si4713_send_command(ptr noundef %add.ptr, i8 noundef zeroext 18, ptr noundef nonnull %args.i58.i, i32 noundef 5, ptr noundef nonnull %resp.i57.i, i32 noundef 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59.i)
  %cmp.i60.i = icmp slt i32 %call.i59.i, 0
  br i1 %cmp.i60.i, label %si4713_write_property.exit68.thread.i, label %do.body.i62.i

si4713_write_property.exit68.thread.i:            ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %args.i58.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %resp.i57.i) #7
  br label %cleanup

do.body.i62.i:                                    ; preds = %if.end24.i
  %138 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %cmp15.i61.i = icmp sgt i32 %138, 0
  br i1 %cmp15.i61.i, label %do.end.i66.i, label %do.body.i62.i.si4713_write_property.exit68.i_crit_edge

do.body.i62.i.si4713_write_property.exit68.i_crit_edge: ; preds = %do.body.i62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %si4713_write_property.exit68.i

do.end.i66.i:                                     ; preds = %do.body.i62.i
  call void @__sanitizer_cov_trace_pc() #9
  %139 = ptrtoint ptr %resp.i57.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %resp.i57.i, align 1
  %conv22.i64.i = zext i8 %140 to i32
  %call23.i65.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name.i250, ptr noundef nonnull @.str.30, i32 noundef 11268, i32 noundef 6, i32 noundef %conv22.i64.i) #10
  br label %si4713_write_property.exit68.i

si4713_write_property.exit68.i:                   ; preds = %do.end.i66.i, %do.body.i62.i.si4713_write_property.exit68.i_crit_edge
  call void @msleep(i32 noundef 20) #7
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %args.i58.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %resp.i57.i) #7
  br label %for.inc

sw.bb42:                                          ; preds = %if.end39
  %p_new43 = getelementptr inbounds %struct.v4l2_ctrl, ptr %92, i32 0, i32 25
  %141 = ptrtoint ptr %p_new43 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %p_new43, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %left.i) #7
  %143 = ptrtoint ptr %left.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 -1, ptr %left.i, align 1, !annotation !227
  %144 = ptrtoint ptr %power_state to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %power_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool.not.i214 = icmp eq i32 %145, 0
  br i1 %tobool.not.i214, label %sw.bb42.si4713_set_rds_radio_text.exit_crit_edge, label %if.end.i217

sw.bb42.si4713_set_rds_radio_text.exit_crit_edge: ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #9
  br label %si4713_set_rds_radio_text.exit

if.end.i217:                                      ; preds = %sw.bb42
  %call.i215 = call fastcc i32 @si4713_tx_rds_buff(ptr noundef %add.ptr, i8 noundef zeroext 3, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %left.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i215)
  %cmp.i216 = icmp slt i32 %call.i215, 0
  br i1 %cmp.i216, label %if.end.i217.si4713_set_rds_radio_text.exit_crit_edge, label %if.end2.i

if.end.i217.si4713_set_rds_radio_text.exit_crit_edge: ; preds = %if.end.i217
  call void @__sanitizer_cov_trace_pc() #9
  br label %si4713_set_rds_radio_text.exit

if.end2.i:                                        ; preds = %if.end.i217
  %146 = ptrtoint ptr %142 to i32
  call void @__asan_load1_noabort(i32 %146)
  %char0.i218 = load i8, ptr %142, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0.i218)
  %tobool4.not.i = icmp eq i8 %char0.i218, 0
  br i1 %tobool4.not.i, label %if.end2.i.si4713_set_rds_radio_text.exit_crit_edge, label %if.end2.i.do.body.i_crit_edge

if.end2.i.do.body.i_crit_edge:                    ; preds = %if.end2.i
  br label %do.body.i

if.end2.i.si4713_set_rds_radio_text.exit_crit_edge: ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %si4713_set_rds_radio_text.exit

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end2.i.do.body.i_crit_edge
  %rt.addr.0.i = phi ptr [ %rt.addr.1.i, %do.cond.i.do.body.i_crit_edge ], [ %142, %if.end2.i.do.body.i_crit_edge ]
  %t_index.0.i = phi i32 [ %add53.i, %do.cond.i.do.body.i_crit_edge ], [ 0, %if.end2.i.do.body.i_crit_edge ]
  %b_index.0.i = phi i8 [ %inc23.i, %do.cond.i.do.body.i_crit_edge ], [ 0, %if.end2.i.do.body.i_crit_edge ]
  %conv.i = and i32 %t_index.0.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %conv.i)
  %cmp7.i = icmp ult i32 %conv.i, 60
  br i1 %cmp7.i, label %for.body.preheader.i, label %do.body.i.if.end22.i_crit_edge

do.body.i.if.end22.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

for.body.preheader.i:                             ; preds = %do.body.i
  %arrayidx.i = getelementptr i8, ptr %rt.addr.0.i, i32 %conv.i
  %147 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx.i, align 1
  %149 = zext i8 %148 to i64
  call void @__sanitizer_cov_trace_switch(i64 %149, ptr @__sancov_gen_cov_switch_values.96)
  switch i8 %148, label %for.inc.i219 [
    i8 0, label %for.body.preheader.i.if.end22.i_crit_edge
    i8 13, label %for.body.preheader.i.if.end22.i_crit_edge379
  ]

for.body.preheader.i.if.end22.i_crit_edge379:     ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

for.body.preheader.i.if.end22.i_crit_edge:        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

for.inc.i219:                                     ; preds = %for.body.preheader.i
  %add.1.i = add nuw nsw i32 %conv.i, 1
  %arrayidx.1.i = getelementptr i8, ptr %rt.addr.0.i, i32 %add.1.i
  %150 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx.1.i, align 1
  %152 = zext i8 %151 to i64
  call void @__sanitizer_cov_trace_switch(i64 %152, ptr @__sancov_gen_cov_switch_values.97)
  switch i8 %151, label %for.inc.1.i [
    i8 0, label %for.inc.i219.if.end22.i_crit_edge
    i8 13, label %for.inc.i219.if.end22.i_crit_edge380
  ]

for.inc.i219.if.end22.i_crit_edge380:             ; preds = %for.inc.i219
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

for.inc.i219.if.end22.i_crit_edge:                ; preds = %for.inc.i219
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

for.inc.1.i:                                      ; preds = %for.inc.i219
  %add.2.i = add nuw nsw i32 %conv.i, 2
  %arrayidx.2.i = getelementptr i8, ptr %rt.addr.0.i, i32 %add.2.i
  %153 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx.2.i, align 1
  %155 = zext i8 %154 to i64
  call void @__sanitizer_cov_trace_switch(i64 %155, ptr @__sancov_gen_cov_switch_values.98)
  switch i8 %154, label %for.inc.2.i [
    i8 0, label %for.inc.1.i.if.end22.i_crit_edge
    i8 13, label %for.inc.1.i.if.end22.i_crit_edge381
  ]

for.inc.1.i.if.end22.i_crit_edge381:              ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

for.inc.1.i.if.end22.i_crit_edge:                 ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %add.3.i = add nuw nsw i32 %conv.i, 3
  %arrayidx.3.i = getelementptr i8, ptr %rt.addr.0.i, i32 %add.3.i
  %156 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx.3.i, align 1
  %158 = zext i8 %157 to i64
  call void @__sanitizer_cov_trace_switch(i64 %158, ptr @__sancov_gen_cov_switch_values.99)
  switch i8 %157, label %for.inc.3.i [
    i8 0, label %for.inc.2.i.if.end22.i_crit_edge
    i8 13, label %for.inc.2.i.if.end22.i_crit_edge382
  ]

for.inc.2.i.if.end22.i_crit_edge382:              ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

for.inc.2.i.if.end22.i_crit_edge:                 ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

if.end22.i:                                       ; preds = %for.inc.3.i, %for.inc.2.i.if.end22.i_crit_edge, %for.inc.2.i.if.end22.i_crit_edge382, %for.inc.1.i.if.end22.i_crit_edge, %for.inc.1.i.if.end22.i_crit_edge381, %for.inc.i219.if.end22.i_crit_edge, %for.inc.i219.if.end22.i_crit_edge380, %for.body.preheader.i.if.end22.i_crit_edge, %for.body.preheader.i.if.end22.i_crit_edge379, %do.body.i.if.end22.i_crit_edge
  %rt.addr.1.i = phi ptr [ %rt.addr.0.i, %do.body.i.if.end22.i_crit_edge ], [ @si4713_set_rds_radio_text.cr, %for.body.preheader.i.if.end22.i_crit_edge ], [ @si4713_set_rds_radio_text.cr, %for.body.preheader.i.if.end22.i_crit_edge379 ], [ @si4713_set_rds_radio_text.cr, %for.inc.i219.if.end22.i_crit_edge ], [ @si4713_set_rds_radio_text.cr, %for.inc.i219.if.end22.i_crit_edge380 ], [ @si4713_set_rds_radio_text.cr, %for.inc.1.i.if.end22.i_crit_edge ], [ @si4713_set_rds_radio_text.cr, %for.inc.1.i.if.end22.i_crit_edge381 ], [ @si4713_set_rds_radio_text.cr, %for.inc.2.i.if.end22.i_crit_edge ], [ @si4713_set_rds_radio_text.cr, %for.inc.2.i.if.end22.i_crit_edge382 ], [ %rt.addr.0.i, %for.inc.3.i ]
  %tobool55.not.i = phi i1 [ false, %do.body.i.if.end22.i_crit_edge ], [ true, %for.body.preheader.i.if.end22.i_crit_edge ], [ true, %for.body.preheader.i.if.end22.i_crit_edge379 ], [ true, %for.inc.i219.if.end22.i_crit_edge ], [ true, %for.inc.i219.if.end22.i_crit_edge380 ], [ true, %for.inc.1.i.if.end22.i_crit_edge ], [ true, %for.inc.1.i.if.end22.i_crit_edge381 ], [ true, %for.inc.2.i.if.end22.i_crit_edge ], [ true, %for.inc.2.i.if.end22.i_crit_edge382 ], [ false, %for.inc.3.i ]
  %conv24.i = zext i8 %b_index.0.i to i16
  %or.i220 = or i16 %conv24.i, 8192
  %arrayidx26.i = getelementptr i8, ptr %rt.addr.1.i, i32 %conv.i
  %159 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %arrayidx26.i, align 1
  %conv28.i = zext i8 %160 to i16
  %shl.i = shl nuw i16 %conv28.i, 8
  %add30.i = add nuw nsw i32 %conv.i, 1
  %arrayidx31.i = getelementptr i8, ptr %rt.addr.1.i, i32 %add30.i
  %161 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx31.i, align 1
  %conv32.i = zext i8 %162 to i16
  %or33.i = or i16 %shl.i, %conv32.i
  %add36.i = add nuw nsw i32 %conv.i, 2
  %arrayidx37.i = getelementptr i8, ptr %rt.addr.1.i, i32 %add36.i
  %163 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %arrayidx37.i, align 1
  %conv39.i = zext i8 %164 to i16
  %shl40.i = shl nuw i16 %conv39.i, 8
  %add42.i = add nuw nsw i32 %conv.i, 3
  %arrayidx43.i = getelementptr i8, ptr %rt.addr.1.i, i32 %add42.i
  %165 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx43.i, align 1
  %conv44.i = zext i8 %166 to i16
  %or45.i = or i16 %shl40.i, %conv44.i
  %call47.i = call fastcc i32 @si4713_tx_rds_buff(ptr noundef %add.ptr, i8 noundef zeroext 4, i16 noundef zeroext %or.i220, i16 noundef zeroext %or33.i, i16 noundef zeroext %or45.i, ptr noundef nonnull %left.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %cmp48.i = icmp slt i32 %call47.i, 0
  %brmerge.i = or i1 %tobool55.not.i, %cmp48.i
  br i1 %brmerge.i, label %cleanup.loopexit.split.loop.exit91.i, label %do.cond.i

do.cond.i:                                        ; preds = %if.end22.i
  %inc23.i = add i8 %b_index.0.i, 1
  %add53.i = add nuw nsw i32 %conv.i, 4
  %167 = ptrtoint ptr %left.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %left.i, align 1
  %cmp59.i = icmp sgt i8 %168, 0
  br i1 %cmp59.i, label %do.cond.i.do.body.i_crit_edge, label %do.cond.i.si4713_set_rds_radio_text.exit_crit_edge

do.cond.i.si4713_set_rds_radio_text.exit_crit_edge: ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %si4713_set_rds_radio_text.exit

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

cleanup.loopexit.split.loop.exit91.i:             ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %169 = call i32 @llvm.smin.i32(i32 %call47.i, i32 0) #7
  br label %si4713_set_rds_radio_text.exit

si4713_set_rds_radio_text.exit:                   ; preds = %cleanup.loopexit.split.loop.exit91.i, %do.cond.i.si4713_set_rds_radio_text.exit_crit_edge, %if.end2.i.si4713_set_rds_radio_text.exit_crit_edge, %if.end.i217.si4713_set_rds_radio_text.exit_crit_edge, %sw.bb42.si4713_set_rds_radio_text.exit_crit_edge
  %retval.0.i221 = phi i32 [ 0, %sw.bb42.si4713_set_rds_radio_text.exit_crit_edge ], [ %call.i215, %if.end.i217.si4713_set_rds_radio_text.exit_crit_edge ], [ %call.i215, %if.end2.i.si4713_set_rds_radio_text.exit_crit_edge ], [ %169, %cleanup.loopexit.split.loop.exit91.i ], [ 0, %do.cond.i.si4713_set_rds_radio_text.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %left.i) #7
  br label %for.inc

sw.bb45:                                          ; preds = %if.end39
  br i1 %tobool.not, label %sw.bb45.sw.bb49_crit_edge, label %sw.bb45.for.inc_crit_edge

sw.bb45.for.inc_crit_edge:                        ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

sw.bb45.sw.bb49_crit_edge:                        ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb49

sw.bb49:                                          ; preds = %sw.bb45.sw.bb49_crit_edge, %if.end39.sw.bb49_crit_edge
  %170 = ptrtoint ptr %tune_pwr_level to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %tune_pwr_level, align 4
  %val50 = getelementptr inbounds %struct.v4l2_ctrl, ptr %171, i32 0, i32 22
  %172 = ptrtoint ptr %val50 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %val50, align 4
  %conv51 = trunc i32 %173 to i8
  %174 = ptrtoint ptr %tune_ant_cap to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %tune_ant_cap, align 4
  %val52 = getelementptr inbounds %struct.v4l2_ctrl, ptr %175, i32 0, i32 22
  %176 = ptrtoint ptr %val52 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %val52, align 4
  %conv53 = trunc i32 %177 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #7
  %178 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 -1, ptr %val.i, align 1, !annotation !227
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args.i) #7
  %179 = ptrtoint ptr %args.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 0, ptr %args.i, align 1
  %180 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 0, ptr %72, align 1
  %181 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 %conv51, ptr %73, align 1
  %182 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %conv53, ptr %74, align 1
  %183 = add i8 %conv51, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 87, i8 %183)
  %184 = icmp ult i8 %183, 87
  br i1 %184, label %if.then.i222, label %sw.bb49.if.end.i224_crit_edge

sw.bb49.if.end.i224_crit_edge:                    ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i224

if.then.i222:                                     ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #9
  %185 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 88, ptr %73, align 1
  br label %if.end.i224

if.end.i224:                                      ; preds = %if.then.i222, %sw.bb49.if.end.i224_crit_edge
  %power.addr.0.i = phi i32 [ 88, %if.then.i222 ], [ %173, %sw.bb49.if.end.i224_crit_edge ]
  %call.i223 = call fastcc i32 @si4713_send_command(ptr noundef %add.ptr, i8 noundef zeroext 49, ptr noundef nonnull %args.i, i32 noundef 4, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i223)
  %cmp8.i = icmp slt i32 %call.i223, 0
  br i1 %cmp8.i, label %si4713_tx_tune_power.exit.thread, label %do.body.i225

si4713_tx_tune_power.exit.thread:                 ; preds = %if.end.i224
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #7
  br label %cleanup

do.body.i225:                                     ; preds = %if.end.i224
  %186 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %cmp12.i = icmp sgt i32 %186, 0
  br i1 %cmp12.i, label %do.end.i, label %do.body.i225.si4713_tx_tune_power.exit_crit_edge

do.body.i225.si4713_tx_tune_power.exit_crit_edge: ; preds = %do.body.i225
  call void @__sanitizer_cov_trace_pc() #9
  br label %si4713_tx_tune_power.exit

do.end.i:                                         ; preds = %do.body.i225
  call void @__sanitizer_cov_trace_pc() #9
  %conv17.i = and i32 %power.addr.0.i, 255
  %conv18.i = and i32 %177, 255
  %187 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %val.i, align 1
  %conv20.i = zext i8 %188 to i32
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef %name.i250, ptr noundef nonnull @.str.88, i32 noundef %conv17.i, i32 noundef %conv18.i, i32 noundef %conv20.i) #10
  br label %si4713_tx_tune_power.exit

si4713_tx_tune_power.exit:                        ; preds = %do.end.i, %do.body.i225.si4713_tx_tune_power.exit_crit_edge
  %call25.i = call fastcc i32 @si4713_wait_stc(ptr noundef %add.ptr, i32 noundef 30000) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool55.not = icmp eq i32 %call25.i, 0
  br i1 %tobool55.not, label %if.then56, label %si4713_tx_tune_power.exit.cleanup_crit_edge

si4713_tx_tune_power.exit.cleanup_crit_edge:      ; preds = %si4713_tx_tune_power.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then56:                                        ; preds = %si4713_tx_tune_power.exit
  call void @__sanitizer_cov_trace_pc() #9
  %189 = ptrtoint ptr %tune_ant_cap to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %tune_ant_cap, align 4
  %is_new58 = getelementptr inbounds %struct.v4l2_ctrl, ptr %190, i32 0, i32 5
  %191 = ptrtoint ptr %is_new58 to i32
  call void @__asan_load4_noabort(i32 %191)
  %bf.load59 = load i32, ptr %is_new58, align 4
  %bf.clear60 = and i32 %bf.load59, -1073741825
  store i32 %bf.clear60, ptr %is_new58, align 4
  %192 = ptrtoint ptr %tune_pwr_level to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %tune_pwr_level, align 4
  %is_new62 = getelementptr inbounds %struct.v4l2_ctrl, ptr %193, i32 0, i32 5
  %194 = ptrtoint ptr %is_new62 to i32
  call void @__asan_load4_noabort(i32 %194)
  %bf.load63 = load i32, ptr %is_new62, align 4
  %bf.clear64 = and i32 %bf.load63, -1073741825
  store i32 %bf.clear64, ptr %is_new62, align 4
  br label %for.inc

sw.bb67:                                          ; preds = %if.end39.sw.bb67_crit_edge, %if.end39.sw.bb67_crit_edge378
  %195 = ptrtoint ptr %rds_alt_freqs_enable to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %rds_alt_freqs_enable, align 4
  %val68 = getelementptr inbounds %struct.v4l2_ctrl, ptr %196, i32 0, i32 22
  %197 = ptrtoint ptr %val68 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %val68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %tobool69.not = icmp eq i32 %198, 0
  br i1 %tobool69.not, label %sw.bb67.if.end73_crit_edge, label %if.then70

sw.bb67.if.end73_crit_edge:                       ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.then70:                                        ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #9
  %199 = ptrtoint ptr %rds_alt_freqs to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %rds_alt_freqs, align 4
  %p_new71 = getelementptr inbounds %struct.v4l2_ctrl, ptr %200, i32 0, i32 25
  %201 = ptrtoint ptr %p_new71 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %p_new71, align 8
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %202, align 4
  %div = udiv i32 %204, 100
  %add = add nuw nsw i32 %div, 56725
  br label %if.end73

if.end73:                                         ; preds = %if.then70, %sw.bb67.if.end73_crit_edge
  %storemerge = phi i32 [ %add, %if.then70 ], [ 57568, %sw.bb67.if.end73_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %resp.i) #7
  %205 = ptrtoint ptr %resp.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 -1, ptr %resp.i, align 1, !annotation !227
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %args.i227) #7
  %206 = ptrtoint ptr %args.i227 to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 0, ptr %args.i227, align 1
  %207 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 44, ptr %68, align 1
  %208 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 6, ptr %69, align 1
  %conv6.i = and i32 %storemerge, 65535
  %209 = lshr i32 %storemerge, 8
  %conv8.i = trunc i32 %209 to i8
  %210 = ptrtoint ptr %70 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %conv8.i, ptr %70, align 1
  %conv12.i = trunc i32 %storemerge to i8
  %211 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 %conv12.i, ptr %71, align 1
  %call.i228 = call fastcc i32 @si4713_send_command(ptr noundef %add.ptr, i8 noundef zeroext 18, ptr noundef nonnull %args.i227, i32 noundef 5, ptr noundef nonnull %resp.i, i32 noundef 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i228)
  %cmp.i229 = icmp slt i32 %call.i228, 0
  br i1 %cmp.i229, label %if.end73.si4713_write_property.exit_crit_edge, label %do.body.i230

if.end73.si4713_write_property.exit_crit_edge:    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %si4713_write_property.exit

do.body.i230:                                     ; preds = %if.end73
  %212 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %cmp15.i = icmp sgt i32 %212, 0
  br i1 %cmp15.i, label %do.end.i232, label %do.body.i230.do.end26.i_crit_edge

do.body.i230.do.end26.i_crit_edge:                ; preds = %do.body.i230
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end26.i

do.end.i232:                                      ; preds = %do.body.i230
  call void @__sanitizer_cov_trace_pc() #9
  %213 = ptrtoint ptr %resp.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %resp.i, align 1
  %conv22.i = zext i8 %214 to i32
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name.i250, ptr noundef nonnull @.str.30, i32 noundef 11270, i32 noundef %conv6.i, i32 noundef %conv22.i) #10
  br label %do.end26.i

do.end26.i:                                       ; preds = %do.end.i232, %do.body.i230.do.end26.i_crit_edge
  call void @msleep(i32 noundef 20) #7
  br label %si4713_write_property.exit

si4713_write_property.exit:                       ; preds = %do.end26.i, %if.end73.si4713_write_property.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %args.i227) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %resp.i) #7
  br label %for.inc

sw.bb1.i:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81.thread

sw.bb2.i:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81.thread

sw.bb3.i:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81.thread

sw.bb4.i:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81.thread

sw.bb5.i:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81.thread

sw.bb6.i:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81.thread

sw.bb7.i:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81.thread

sw.bb9.i:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

sw.bb10.i:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

sw.bb11.i:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

sw.bb12.i:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

sw.bb13.i:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

sw.bb14.i:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

sw.bb15.i:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

sw.bb16.i:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

sw.bb17.i:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

sw.bb18.i:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

sw.bb19.i:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

sw.bb20.i:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

sw.bb21.i:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

if.end81.thread:                                  ; preds = %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end39.if.end81.thread_crit_edge
  %property.1.ph.ph = phi i16 [ 8451, %sw.bb7.i ], [ 8449, %sw.bb6.i ], [ 8450, %sw.bb5.i ], [ 8706, %sw.bb4.i ], [ 8455, %sw.bb3.i ], [ 8708, %sw.bb2.i ], [ 8705, %sw.bb1.i ], [ 11265, %if.end39.if.end81.thread_crit_edge ]
  %mul.1.ph.ph = phi i32 [ 1, %sw.bb7.i ], [ 10, %sw.bb6.i ], [ 10, %sw.bb5.i ], [ 500, %sw.bb4.i ], [ 1, %sw.bb3.i ], [ 1, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ 1, %if.end39.if.end81.thread_crit_edge ]
  %val82316 = getelementptr inbounds %struct.v4l2_ctrl, ptr %92, i32 0, i32 22
  %215 = ptrtoint ptr %val82316 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %val82316, align 4
  br label %if.then84

if.end81:                                         ; preds = %sw.bb21.i, %sw.bb20.i, %sw.bb19.i, %sw.bb18.i, %sw.bb17.i, %sw.bb16.i, %sw.bb15.i, %sw.bb14.i, %sw.bb13.i, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %if.end39.if.end81_crit_edge
  %bit.1.ph = phi i32 [ 15, %sw.bb9.i ], [ 14, %sw.bb10.i ], [ 13, %sw.bb11.i ], [ 12, %sw.bb12.i ], [ 10, %sw.bb13.i ], [ 4, %sw.bb14.i ], [ 3, %sw.bb15.i ], [ 1, %sw.bb16.i ], [ 0, %sw.bb17.i ], [ 0, %sw.bb18.i ], [ %bit.0338, %sw.bb19.i ], [ %bit.0338, %sw.bb20.i ], [ %bit.0338, %sw.bb21.i ], [ 5, %if.end39.if.end81_crit_edge ]
  %mask.1.ph = phi i32 [ 32768, %sw.bb9.i ], [ 16384, %sw.bb10.i ], [ 8192, %sw.bb11.i ], [ 4096, %sw.bb12.i ], [ 1024, %sw.bb13.i ], [ 16, %sw.bb14.i ], [ 8, %sw.bb15.i ], [ 2, %sw.bb16.i ], [ 1, %sw.bb17.i ], [ 1, %sw.bb18.i ], [ %mask.0339, %sw.bb19.i ], [ %mask.0339, %sw.bb20.i ], [ %mask.0339, %sw.bb21.i ], [ 992, %if.end39.if.end81_crit_edge ]
  %property.1.ph = phi i16 [ 11267, %sw.bb9.i ], [ 11267, %sw.bb10.i ], [ 11267, %sw.bb11.i ], [ 11267, %sw.bb12.i ], [ 11267, %sw.bb13.i ], [ 11267, %sw.bb14.i ], [ 11267, %sw.bb15.i ], [ 8704, %sw.bb16.i ], [ 8704, %sw.bb17.i ], [ 8448, %sw.bb18.i ], [ 8709, %sw.bb19.i ], [ 8707, %sw.bb20.i ], [ 8454, %sw.bb21.i ], [ 11267, %if.end39.if.end81_crit_edge ]
  %table.1.ph = phi ptr [ %table.0341, %sw.bb9.i ], [ %table.0341, %sw.bb10.i ], [ %table.0341, %sw.bb11.i ], [ %table.0341, %sw.bb12.i ], [ %table.0341, %sw.bb13.i ], [ %table.0341, %sw.bb14.i ], [ %table.0341, %sw.bb15.i ], [ %table.0341, %sw.bb16.i ], [ %table.0341, %sw.bb17.i ], [ %table.0341, %sw.bb18.i ], [ @limiter_times, %sw.bb19.i ], [ @acomp_rtimes, %sw.bb20.i ], [ @preemphasis_values, %sw.bb21.i ], [ %table.0341, %if.end39.if.end81_crit_edge ]
  %size.1.ph = phi i32 [ %size.0342, %sw.bb9.i ], [ %size.0342, %sw.bb10.i ], [ %size.0342, %sw.bb11.i ], [ %size.0342, %sw.bb12.i ], [ %size.0342, %sw.bb13.i ], [ %size.0342, %sw.bb14.i ], [ %size.0342, %sw.bb15.i ], [ %size.0342, %sw.bb16.i ], [ %size.0342, %sw.bb17.i ], [ %size.0342, %sw.bb18.i ], [ 40, %sw.bb19.i ], [ 10, %sw.bb20.i ], [ 6, %sw.bb21.i ], [ %size.0342, %if.end39.if.end81_crit_edge ]
  %val82 = getelementptr inbounds %struct.v4l2_ctrl, ptr %92, i32 0, i32 22
  %217 = ptrtoint ptr %val82 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %val82, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.0340)
  %tobool83.not = icmp eq i32 %mul.0340, 0
  br i1 %tobool83.not, label %if.else86, label %if.end81.if.then84_crit_edge

if.end81.if.then84_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then84

if.then84:                                        ; preds = %if.end81.if.then84_crit_edge, %if.end81.thread
  %219 = phi i32 [ %216, %if.end81.thread ], [ %218, %if.end81.if.then84_crit_edge ]
  %val82329 = phi ptr [ %val82316, %if.end81.thread ], [ %val82, %if.end81.if.then84_crit_edge ]
  %size.1.ph327 = phi i32 [ %size.0342, %if.end81.thread ], [ %size.1.ph, %if.end81.if.then84_crit_edge ]
  %table.1.ph326 = phi ptr [ %table.0341, %if.end81.thread ], [ %table.1.ph, %if.end81.if.then84_crit_edge ]
  %mul.1.ph325 = phi i32 [ %mul.1.ph.ph, %if.end81.thread ], [ %mul.0340, %if.end81.if.then84_crit_edge ]
  %property.1.ph323 = phi i16 [ %property.1.ph.ph, %if.end81.thread ], [ %property.1.ph, %if.end81.if.then84_crit_edge ]
  %mask.1.ph321 = phi i32 [ %mask.0339, %if.end81.thread ], [ %mask.1.ph, %if.end81.if.then84_crit_edge ]
  %bit.1.ph319 = phi i32 [ %bit.0338, %if.end81.thread ], [ %bit.1.ph, %if.end81.if.then84_crit_edge ]
  %div85 = udiv i32 %219, %mul.1.ph325
  br label %if.end95

if.else86:                                        ; preds = %if.end81
  %tobool87.not = icmp eq ptr %table.1.ph, null
  br i1 %tobool87.not, label %if.else86.if.end95_crit_edge, label %if.then88

if.else86.if.end95_crit_edge:                     ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

if.then88:                                        ; preds = %if.else86
  %div.i = sdiv i32 %size.1.ph, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %size.1.ph)
  %cmp8.i234 = icmp sgt i32 %size.1.ph, 1
  br i1 %cmp8.i234, label %if.then88.for.body.i237_crit_edge, label %if.then88.cleanup_crit_edge

if.then88.cleanup_crit_edge:                      ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then88.for.body.i237_crit_edge:                ; preds = %if.then88
  br label %for.body.i237

for.cond.i:                                       ; preds = %for.body.i237
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div.i
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i237_crit_edge

for.cond.i.for.body.i237_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i237

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i237:                                    ; preds = %for.cond.i.for.body.i237_crit_edge, %if.then88.for.body.i237_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.cond.i.for.body.i237_crit_edge ], [ 0, %if.then88.for.body.i237_crit_edge ]
  %mul.i = shl nuw i32 %i.09.i, 1
  %add.i235 = or i32 %mul.i, 1
  %arrayidx.i236 = getelementptr i32, ptr %table.1.ph, i32 %add.i235
  %220 = ptrtoint ptr %arrayidx.i236 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %arrayidx.i236, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %221, i32 %218)
  %cmp1.not.i = icmp ult i32 %221, %218
  br i1 %cmp1.not.i, label %for.cond.i, label %usecs_to_dev.exit

usecs_to_dev.exit:                                ; preds = %for.body.i237
  %arrayidx3.i = getelementptr i32, ptr %table.1.ph, i32 %mul.i
  %222 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %arrayidx3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %223)
  %cmp90 = icmp slt i32 %223, 0
  br i1 %cmp90, label %usecs_to_dev.exit.cleanup_crit_edge, label %usecs_to_dev.exit.if.end95_crit_edge

usecs_to_dev.exit.if.end95_crit_edge:             ; preds = %usecs_to_dev.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

usecs_to_dev.exit.cleanup_crit_edge:              ; preds = %usecs_to_dev.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end95:                                         ; preds = %usecs_to_dev.exit.if.end95_crit_edge, %if.else86.if.end95_crit_edge, %if.then84
  %val82328 = phi ptr [ %val82, %if.else86.if.end95_crit_edge ], [ %val82329, %if.then84 ], [ %val82, %usecs_to_dev.exit.if.end95_crit_edge ]
  %property.1.ph322 = phi i16 [ %property.1.ph, %if.else86.if.end95_crit_edge ], [ %property.1.ph323, %if.then84 ], [ %property.1.ph, %usecs_to_dev.exit.if.end95_crit_edge ]
  %mask.1.ph320 = phi i32 [ %mask.1.ph, %if.else86.if.end95_crit_edge ], [ %mask.1.ph321, %if.then84 ], [ %mask.1.ph, %usecs_to_dev.exit.if.end95_crit_edge ]
  %bit.1.ph318 = phi i32 [ %bit.1.ph, %if.else86.if.end95_crit_edge ], [ %bit.1.ph319, %if.then84 ], [ %bit.1.ph, %usecs_to_dev.exit.if.end95_crit_edge ]
  %size.1309 = phi i32 [ %size.1.ph, %if.else86.if.end95_crit_edge ], [ %size.1.ph327, %if.then84 ], [ %size.1.ph, %usecs_to_dev.exit.if.end95_crit_edge ]
  %table.1306 = phi ptr [ null, %if.else86.if.end95_crit_edge ], [ %table.1.ph326, %if.then84 ], [ %table.1.ph, %usecs_to_dev.exit.if.end95_crit_edge ]
  %mul.1304 = phi i32 [ 0, %if.else86.if.end95_crit_edge ], [ %mul.1.ph325, %if.then84 ], [ 0, %usecs_to_dev.exit.if.end95_crit_edge ]
  %val.0 = phi i32 [ %218, %if.else86.if.end95_crit_edge ], [ %div85, %if.then84 ], [ %223, %usecs_to_dev.exit.if.end95_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask.1.ph320)
  %tobool96.not = icmp eq i32 %mask.1.ph320, 0
  br i1 %tobool96.not, label %if.end95.if.end104_crit_edge, label %if.then97

if.end95.if.end104_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  %.pre = zext i16 %property.1.ph322 to i32
  %.pre348 = lshr i16 %property.1.ph322, 8
  %.pre349 = trunc i16 %.pre348 to i8
  %.pre350 = trunc i16 %property.1.ph322 to i8
  br label %if.end104

if.then97:                                        ; preds = %if.end95
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i241) #7
  %224 = ptrtoint ptr %val.i241 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 -1, ptr %val.i241, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %args.i242) #7
  %225 = ptrtoint ptr %args.i242 to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 0, ptr %args.i242, align 1
  %conv.i243 = zext i16 %property.1.ph322 to i32
  %226 = lshr i16 %property.1.ph322, 8
  %conv1.i = trunc i16 %226 to i8
  %227 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 %conv1.i, ptr %60, align 1
  %conv4.i = trunc i16 %property.1.ph322 to i8
  %228 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %conv4.i, ptr %61, align 1
  %call.i244 = call fastcc i32 @si4713_send_command(ptr noundef %add.ptr, i8 noundef zeroext 19, ptr noundef nonnull %args.i242, i32 noundef 3, ptr noundef nonnull %val.i241, i32 noundef 4, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i244)
  %cmp.i245 = icmp slt i32 %call.i244, 0
  br i1 %cmp.i245, label %si4713_read_property.exit, label %if.end.i249

if.end.i249:                                      ; preds = %if.then97
  %229 = ptrtoint ptr %63 to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %63, align 2
  %conv8.i246 = zext i8 %230 to i32
  %shl.i247 = shl nuw nsw i32 %conv8.i246, 8
  %231 = ptrtoint ptr %62 to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %62, align 1
  %conv10.i = zext i8 %232 to i32
  %or.i248 = or i32 %shl.i247, %conv10.i
  %233 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %233)
  %cmp11.i = icmp sgt i32 %233, 0
  br i1 %cmp11.i, label %do.end.i252, label %if.end.i249.if.end102_crit_edge

if.end.i249.if.end102_crit_edge:                  ; preds = %if.end.i249
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102

do.end.i252:                                      ; preds = %if.end.i249
  call void @__sanitizer_cov_trace_pc() #9
  %234 = ptrtoint ptr %val.i241 to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %val.i241, align 4
  %conv18.i251 = zext i8 %235 to i32
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name.i250, ptr noundef nonnull @.str.80, i32 noundef %conv.i243, i32 noundef %or.i248, i32 noundef %conv18.i251) #10
  br label %if.end102

si4713_read_property.exit:                        ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %args.i242) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i241) #7
  br label %cleanup

if.end102:                                        ; preds = %do.end.i252, %if.end.i249.if.end102_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %args.i242) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i241) #7
  %neg = xor i32 %mask.1.ph320, -1
  %and = and i32 %or.i248, %neg
  %236 = ptrtoint ptr %val82328 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %val82328, align 4
  %shl = shl i32 %237, %bit.1.ph318
  %or = or i32 %shl, %and
  br label %if.end104

if.end104:                                        ; preds = %if.end102, %if.end95.if.end104_crit_edge
  %conv4.i257.pre-phi = phi i8 [ %.pre350, %if.end95.if.end104_crit_edge ], [ %conv4.i, %if.end102 ]
  %conv1.i256.pre-phi = phi i8 [ %.pre349, %if.end95.if.end104_crit_edge ], [ %conv1.i, %if.end102 ]
  %conv.i255.pre-phi = phi i32 [ %.pre, %if.end95.if.end104_crit_edge ], [ %conv.i243, %if.end102 ]
  %val.2 = phi i32 [ %val.0, %if.end95.if.end104_crit_edge ], [ %or, %if.end102 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %resp.i253) #7
  %238 = ptrtoint ptr %resp.i253 to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 -1, ptr %resp.i253, align 1, !annotation !227
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %args.i254) #7
  %239 = ptrtoint ptr %args.i254 to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 0, ptr %args.i254, align 1
  %240 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 %conv1.i256.pre-phi, ptr %64, align 1
  %241 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 %conv4.i257.pre-phi, ptr %65, align 1
  %conv6.i258 = and i32 %val.2, 65535
  %242 = lshr i32 %val.2, 8
  %conv8.i259 = trunc i32 %242 to i8
  %243 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 %conv8.i259, ptr %66, align 1
  %conv12.i260 = trunc i32 %val.2 to i8
  %244 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 %conv12.i260, ptr %67, align 1
  %call.i261 = call fastcc i32 @si4713_send_command(ptr noundef %add.ptr, i8 noundef zeroext 18, ptr noundef nonnull %args.i254, i32 noundef 5, ptr noundef nonnull %resp.i253, i32 noundef 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i261)
  %cmp.i262 = icmp slt i32 %call.i261, 0
  br i1 %cmp.i262, label %si4713_write_property.exit270.thread, label %do.body.i264

si4713_write_property.exit270.thread:             ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %args.i254) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %resp.i253) #7
  br label %cleanup

do.body.i264:                                     ; preds = %if.end104
  %245 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %245)
  %cmp15.i263 = icmp sgt i32 %245, 0
  br i1 %cmp15.i263, label %do.end.i268, label %do.body.i264.if.end110_crit_edge

do.body.i264.if.end110_crit_edge:                 ; preds = %do.body.i264
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110

do.end.i268:                                      ; preds = %do.body.i264
  call void @__sanitizer_cov_trace_pc() #9
  %246 = ptrtoint ptr %resp.i253 to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %resp.i253, align 1
  %conv22.i266 = zext i8 %247 to i32
  %call23.i267 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name.i250, ptr noundef nonnull @.str.30, i32 noundef %conv.i255.pre-phi, i32 noundef %conv6.i258, i32 noundef %conv22.i266) #10
  br label %if.end110

if.end110:                                        ; preds = %do.end.i268, %do.body.i264.if.end110_crit_edge
  call void @msleep(i32 noundef 20) #7
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %args.i254) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %resp.i253) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end110, %si4713_write_property.exit, %if.then56, %sw.bb45.for.inc_crit_edge, %si4713_set_rds_radio_text.exit, %si4713_write_property.exit68.i, %if.end.i.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %bit.2 = phi i32 [ %bit.0338, %land.lhs.true.for.inc_crit_edge ], [ %bit.0338, %si4713_write_property.exit ], [ %bit.0338, %if.then56 ], [ %bit.0338, %sw.bb45.for.inc_crit_edge ], [ %bit.0338, %si4713_set_rds_radio_text.exit ], [ %bit.0338, %if.end.i.for.inc_crit_edge ], [ %bit.0338, %si4713_write_property.exit68.i ], [ %bit.1.ph318, %if.end110 ]
  %mask.2 = phi i32 [ %mask.0339, %land.lhs.true.for.inc_crit_edge ], [ %mask.0339, %si4713_write_property.exit ], [ %mask.0339, %if.then56 ], [ %mask.0339, %sw.bb45.for.inc_crit_edge ], [ %mask.0339, %si4713_set_rds_radio_text.exit ], [ %mask.0339, %if.end.i.for.inc_crit_edge ], [ %mask.0339, %si4713_write_property.exit68.i ], [ %mask.1.ph320, %if.end110 ]
  %mul.2 = phi i32 [ %mul.0340, %land.lhs.true.for.inc_crit_edge ], [ %mul.0340, %si4713_write_property.exit ], [ %mul.0340, %if.then56 ], [ %mul.0340, %sw.bb45.for.inc_crit_edge ], [ %mul.0340, %si4713_set_rds_radio_text.exit ], [ %mul.0340, %if.end.i.for.inc_crit_edge ], [ %mul.0340, %si4713_write_property.exit68.i ], [ %mul.1304, %if.end110 ]
  %table.2 = phi ptr [ %table.0341, %land.lhs.true.for.inc_crit_edge ], [ %table.0341, %si4713_write_property.exit ], [ %table.0341, %if.then56 ], [ %table.0341, %sw.bb45.for.inc_crit_edge ], [ %table.0341, %si4713_set_rds_radio_text.exit ], [ %table.0341, %if.end.i.for.inc_crit_edge ], [ %table.0341, %si4713_write_property.exit68.i ], [ %table.1306, %if.end110 ]
  %size.2 = phi i32 [ %size.0342, %land.lhs.true.for.inc_crit_edge ], [ %size.0342, %si4713_write_property.exit ], [ %size.0342, %if.then56 ], [ %size.0342, %sw.bb45.for.inc_crit_edge ], [ %size.0342, %si4713_set_rds_radio_text.exit ], [ %size.0342, %if.end.i.for.inc_crit_edge ], [ %size.0342, %si4713_write_property.exit68.i ], [ %size.1309, %if.end110 ]
  %ret.5 = phi i32 [ 0, %land.lhs.true.for.inc_crit_edge ], [ %call.i228, %si4713_write_property.exit ], [ 0, %if.then56 ], [ 0, %sw.bb45.for.inc_crit_edge ], [ %retval.0.i221, %si4713_set_rds_radio_text.exit ], [ 0, %if.end.i.for.inc_crit_edge ], [ 0, %si4713_write_property.exit68.i ], [ %call.i261, %if.end110 ]
  %inc = add i32 %c.0344, 1
  %tobool29.not = icmp eq i32 %ret.5, 0
  br i1 %tobool29.not, label %for.inc.land.rhs_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %si4713_write_property.exit270.thread, %si4713_read_property.exit, %usecs_to_dev.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %if.then88.cleanup_crit_edge, %si4713_tx_tune_power.exit.cleanup_crit_edge, %si4713_tx_tune_power.exit.thread, %si4713_write_property.exit68.thread.i, %si4713_write_property.exit.thread.i, %si4713_tx_rds_ps.exit.i, %if.end39.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end17.thread284, %if.end10.cleanup_crit_edge, %if.then7, %si4713_set_mute.exit.cleanup_crit_edge, %si4713_set_mute.exit.thread277, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i.i, %si4713_set_mute.exit.cleanup_crit_edge ], [ %call8, %if.then7 ], [ %call.i, %if.end21.cleanup_crit_edge ], [ 0, %if.end25.cleanup_crit_edge ], [ %call.i.i, %si4713_set_mute.exit.thread277 ], [ %call.i.i183, %if.end17.thread284 ], [ %call.i.i183, %if.end17.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ], [ %call.i261, %si4713_write_property.exit270.thread ], [ %call.i223, %si4713_tx_tune_power.exit.thread ], [ %call.i59.i, %si4713_write_property.exit68.thread.i ], [ %call.i52.i, %si4713_write_property.exit.thread.i ], [ %call.i.i204, %si4713_tx_rds_ps.exit.i ], [ %call.i244, %si4713_read_property.exit ], [ -22, %for.cond.i.cleanup_crit_edge ], [ %223, %usecs_to_dev.exit.cleanup_crit_edge ], [ %call25.i, %si4713_tx_tune_power.exit.cleanup_crit_edge ], [ -22, %if.then88.cleanup_crit_edge ], [ -22, %if.end39.cleanup_crit_edge ], [ 0, %land.rhs.cleanup_crit_edge ], [ %ret.5, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si4713_tx_rds_buff(ptr noundef %sdev, i8 noundef zeroext %mode, i16 noundef zeroext %rdsb, i16 noundef zeroext %rdsc, i16 noundef zeroext %rdsd, ptr nocapture noundef writeonly %cbleft) unnamed_addr #2 align 64 {
entry:
  %val = alloca [6 x i8], align 1
  %args = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %val) #7
  %0 = getelementptr inbounds [6 x i8], ptr %val, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %val, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i8], ptr %val, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i8], ptr %val, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %val, i32 0, i32 5
  %5 = call ptr @memset(ptr %val, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %args) #7
  %6 = getelementptr inbounds [7 x i8], ptr %args, i32 0, i32 1
  %7 = getelementptr inbounds [7 x i8], ptr %args, i32 0, i32 2
  %8 = getelementptr inbounds [7 x i8], ptr %args, i32 0, i32 3
  %9 = getelementptr inbounds [7 x i8], ptr %args, i32 0, i32 4
  %10 = getelementptr inbounds [7 x i8], ptr %args, i32 0, i32 5
  %11 = getelementptr inbounds [7 x i8], ptr %args, i32 0, i32 6
  %12 = and i8 %mode, -121
  %13 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %args, align 1
  %14 = lshr i16 %rdsb, 8
  %conv3 = trunc i16 %14 to i8
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv3, ptr %6, align 1
  %conv7 = trunc i16 %rdsb to i8
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv7, ptr %7, align 1
  %17 = lshr i16 %rdsc, 8
  %conv11 = trunc i16 %17 to i8
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv11, ptr %8, align 1
  %conv15 = trunc i16 %rdsc to i8
  %19 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv15, ptr %9, align 1
  %20 = lshr i16 %rdsd, 8
  %conv19 = trunc i16 %20 to i8
  %21 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv19, ptr %10, align 1
  %conv23 = trunc i16 %rdsd to i8
  %22 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv23, ptr %11, align 1
  %call = call fastcc i32 @si4713_send_command(ptr noundef %sdev, i8 noundef zeroext 53, ptr noundef nonnull %args, i32 noundef 7, ptr noundef nonnull %val, i32 noundef 6, i32 noundef 500)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %entry.if.end63_crit_edge

entry.if.end63_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

do.body:                                          ; preds = %entry
  %23 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp = icmp sgt i32 %23, 0
  br i1 %cmp, label %do.end, label %do.body.do.end32_crit_edge

do.body.do.end32_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end32

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sdev, i32 0, i32 9
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %val, align 1
  %conv29 = zext i8 %25 to i32
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %name, ptr noundef nonnull @.str.83, i32 noundef %conv29) #10
  br label %do.end32

do.end32:                                         ; preds = %do.end, %do.body.do.end32_crit_edge
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %1, align 1
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %2, align 1
  %sub = sub i8 %27, %29
  %30 = ptrtoint ptr %cbleft to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %sub, ptr %cbleft, align 1
  %31 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp39 = icmp sgt i32 %31, 0
  br i1 %cmp39, label %do.end44, label %do.end32.if.end63_crit_edge

do.end32.if.end63_crit_edge:                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

do.end44:                                         ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #9
  %name47 = getelementptr inbounds %struct.v4l2_subdev, ptr %sdev, i32 0, i32 9
  %32 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %0, align 1
  %conv50 = zext i8 %33 to i32
  %conv52 = zext i8 %27 to i32
  %conv54 = zext i8 %29 to i32
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %3, align 1
  %conv56 = zext i8 %35 to i32
  %36 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %4, align 1
  %conv58 = zext i8 %37 to i32
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %name47, ptr noundef nonnull @.str.83, i32 noundef %conv50, i32 noundef %conv52, i32 noundef %conv54, i32 noundef %conv56, i32 noundef %conv58) #10
  br label %if.end63

if.end63:                                         ; preds = %do.end44, %do.end32.if.end63_crit_edge, %entry.if.end63_crit_edge
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %args) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %val) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 107)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 107)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !23, !24, !26, !28, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !84, !85, !87, !88, !89, !90, !91, !92, !94, !96, !97, !98, !100, !102, !103, !105, !107, !108, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !131, !133, !135, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !151, !153, !154, !155, !157, !159, !160, !161, !162, !164, !166, !167, !168, !170, !171, !173, !175, !176, !177, !179, !181, !182, !183, !185, !186, !187, !189, !190, !191, !192, !194, !196, !198, !200, !202, !203, !204, !205, !207, !208, !209, !210, !212, !213, !214, !216}
!llvm.module.flags = !{!218, !219, !220, !221, !222, !223, !224, !225}
!llvm.ident = !{!226}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/radio/si4713/si4713.c", i32 27, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype292, !1, !"__UNIQUE_ID_debugtype292", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug293, !4, !"__UNIQUE_ID_debug293", i1 false, i1 false}
!4 = !{!"../drivers/media/radio/si4713/si4713.c", i32 28, i32 1}
!5 = !{ptr @__UNIQUE_ID_file294, !6, !"__UNIQUE_ID_file294", i1 false, i1 false}
!6 = !{!"../drivers/media/radio/si4713/si4713.c", i32 30, i32 1}
!7 = !{ptr @__UNIQUE_ID_license295, !6, !"__UNIQUE_ID_license295", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author296, !9, !"__UNIQUE_ID_author296", i1 false, i1 false}
!9 = !{!"../drivers/media/radio/si4713/si4713.c", i32 31, i32 1}
!10 = !{ptr @__UNIQUE_ID_description297, !11, !"__UNIQUE_ID_description297", i1 false, i1 false}
!11 = !{!"../drivers/media/radio/si4713/si4713.c", i32 32, i32 1}
!12 = !{ptr @__UNIQUE_ID_version298, !13, !"__UNIQUE_ID_version298", i1 false, i1 false}
!13 = !{!"../drivers/media/radio/si4713/si4713.c", i32 33, i32 1}
!14 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @__modver_attr, !13, !"__modver_attr", i1 false, i1 false}
!18 = !{ptr @__initcall__kmod_si4713__305_1667_si4713_i2c_driver_init6, !19, !"__initcall__kmod_si4713__305_1667_si4713_i2c_driver_init6", i1 false, i1 false}
!19 = !{!"../drivers/media/radio/si4713/si4713.c", i32 1667, i32 1}
!20 = !{ptr @__exitcall_si4713_i2c_driver_exit, !19, !"__exitcall_si4713_i2c_driver_exit", i1 false, i1 false}
!21 = !{ptr @debug, !22, !"debug", i1 false, i1 false}
!22 = !{!"../drivers/media/radio/si4713/si4713.c", i32 26, i32 12}
!23 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!24 = !{ptr @si4713_i2c_driver, !25, !"si4713_i2c_driver", i1 false, i1 false}
!25 = !{!"../drivers/media/radio/si4713/si4713.c", i32 1657, i32 26}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/radio/si4713/si4713.c", i32 360, i32 4}
!28 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @si4713_powerup._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @si4713_powerup._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/radio/si4713/si4713.c", i32 368, i32 4}
!34 = !{ptr @si4713_powerup._entry.6, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @si4713_powerup._entry_ptr.8, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/radio/si4713/si4713.c", i32 387, i32 3}
!38 = !{ptr @si4713_powerup._entry.9, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @si4713_powerup._entry_ptr.11, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/radio/si4713/si4713.c", i32 389, i32 3}
!42 = !{ptr @si4713_powerup._entry.12, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @si4713_powerup._entry_ptr.14, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/radio/si4713/si4713.c", i32 403, i32 4}
!46 = !{ptr @si4713_powerup._entry.15, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @si4713_powerup._entry_ptr.17, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/radio/si4713/si4713.c", i32 409, i32 4}
!50 = !{ptr @si4713_powerup._entry.18, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @si4713_powerup._entry_ptr.20, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/radio/si4713/si4713.c", i32 212, i32 3}
!54 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @si4713_send_command._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @si4713_send_command._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/radio/si4713/si4713.c", i32 223, i32 4}
!59 = !{ptr @si4713_send_command._entry.23, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @si4713_send_command._entry_ptr.25, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/radio/si4713/si4713.c", i32 231, i32 4}
!63 = !{ptr @si4713_send_command._entry.26, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @si4713_send_command._entry_ptr.28, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/radio/si4713/si4713.c", i32 322, i32 2}
!67 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @si4713_write_property._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @si4713_write_property._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/radio/si4713/si4713.c", i32 433, i32 3}
!72 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @si4713_powerdown._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @si4713_powerdown._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/radio/si4713/si4713.c", i32 435, i32 3}
!77 = !{ptr @si4713_powerdown._entry.33, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @si4713_powerdown._entry_ptr.35, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @si4713_powerdown._entry.36, !80, !"_entry", i1 false, i1 false}
!80 = !{!"../drivers/media/radio/si4713/si4713.c", i32 442, i32 5}
!81 = !{ptr @si4713_powerdown._entry_ptr.37, !80, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @si4713_powerdown._entry.38, !83, !"_entry", i1 false, i1 false}
!83 = !{!"../drivers/media/radio/si4713/si4713.c", i32 450, i32 5}
!84 = !{ptr @si4713_powerdown._entry_ptr.39, !83, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/radio/si4713/si4713.c", i32 1442, i32 3}
!87 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @si4713_probe._entry, !86, !"_entry", i1 false, i1 false}
!91 = !{ptr @si4713_probe._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/radio/si4713/si4713.c", i32 1447, i32 59}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/radio/si4713/si4713.c", i32 1451, i32 3}
!96 = !{ptr @si4713_probe._entry.45, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @si4713_probe._entry_ptr.47, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/radio/si4713/si4713.c", i32 1455, i32 56}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/radio/si4713/si4713.c", i32 1461, i32 3}
!102 = !{ptr @si4713_probe.__UNIQUE_ID_ddebug303, !101, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!103 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/radio/si4713/si4713.c", i32 1465, i32 56}
!105 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/radio/si4713/si4713.c", i32 1471, i32 3}
!107 = !{ptr @si4713_probe.__UNIQUE_ID_ddebug304, !106, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!108 = !{ptr @si4713_probe._key, !109, !"_key", i1 false, i1 false}
!109 = !{!"../drivers/media/radio/si4713/si4713.c", i32 1480, i32 2}
!110 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/radio/si4713/si4713.c", i32 1579, i32 4}
!113 = !{ptr @si4713_probe._entry.53, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @si4713_probe._entry_ptr.55, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.57, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/radio/si4713/si4713.c", i32 1582, i32 3}
!117 = !{ptr @si4713_probe._entry.56, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @si4713_probe._entry_ptr.58, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.60, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/radio/si4713/si4713.c", i32 1584, i32 3}
!121 = !{ptr @si4713_probe._entry.59, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @si4713_probe._entry_ptr.61, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.63, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/radio/si4713/si4713.c", i32 1589, i32 3}
!125 = !{ptr @si4713_probe._entry.62, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @si4713_probe._entry_ptr.64, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.65, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/radio/si4713/si4713.c", i32 1596, i32 38}
!129 = !{ptr @si4713_subdev_ops, !130, !"si4713_subdev_ops", i1 false, i1 false}
!130 = !{!"../drivers/media/radio/si4713/si4713.c", i32 1410, i32 37}
!131 = !{ptr @si4713_subdev_core_ops, !132, !"si4713_subdev_core_ops", i1 false, i1 false}
!132 = !{!"../drivers/media/radio/si4713/si4713.c", i32 1399, i32 42}
!133 = !{ptr @.str.66, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/radio/si4713/si4713.c", i32 660, i32 2}
!135 = !{ptr @.str.67, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @si4713_tx_tune_measure._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @si4713_tx_tune_measure._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.68, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/radio/si4713/si4713.c", i32 503, i32 3}
!140 = !{ptr @si4713_wait_stc._entry, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @si4713_wait_stc._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.70, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/radio/si4713/si4713.c", i32 515, i32 4}
!144 = !{ptr @si4713_wait_stc._entry.69, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @si4713_wait_stc._entry_ptr.71, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.72, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/radio/si4713/si4713.c", i32 699, i32 3}
!148 = !{ptr @.str.73, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @si4713_tx_tune_status._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @si4713_tx_tune_status._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.75, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/radio/si4713/si4713.c", i32 706, i32 3}
!153 = !{ptr @si4713_tx_tune_status._entry.74, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @si4713_tx_tune_status._entry_ptr.76, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @si4713_subdev_tuner_ops, !156, !"si4713_subdev_tuner_ops", i1 false, i1 false}
!156 = !{!"../drivers/media/radio/si4713/si4713.c", i32 1403, i32 43}
!157 = !{ptr @.str.77, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/radio/si4713/si4713.c", i32 560, i32 2}
!159 = !{ptr @.str.78, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @si4713_tx_tune_freq._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @si4713_tx_tune_freq._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.79, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/radio/si4713/si4713.c", i32 1266, i32 20}
!164 = !{ptr @.str.80, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/radio/si4713/si4713.c", i32 282, i32 2}
!166 = !{ptr @si4713_read_property._entry, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @si4713_read_property._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @init_completion.__key, !169, !"__key", i1 false, i1 false}
!169 = !{!"../include/linux/completion.h", i32 87, i32 2}
!170 = !{ptr @.str.81, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @si4713_ctrl_ops, !172, !"si4713_ctrl_ops", i1 false, i1 false}
!172 = !{!"../drivers/media/radio/si4713/si4713.c", i32 1395, i32 35}
!173 = !{ptr @.str.82, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/media/radio/si4713/si4713.c", i32 783, i32 2}
!175 = !{ptr @si4713_tx_rds_ps._entry, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @si4713_tx_rds_ps._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @si4713_set_rds_radio_text.cr, !178, !"cr", i1 false, i1 false}
!178 = !{!"../drivers/media/radio/si4713/si4713.c", i32 850, i32 20}
!179 = !{ptr @.str.83, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/media/radio/si4713/si4713.c", i32 745, i32 3}
!181 = !{ptr @si4713_tx_rds_buff._entry, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @si4713_tx_rds_buff._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.85, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/radio/si4713/si4713.c", i32 748, i32 3}
!185 = !{ptr @si4713_tx_rds_buff._entry.84, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @si4713_tx_rds_buff._entry_ptr.86, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.87, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/media/radio/si4713/si4713.c", i32 611, i32 2}
!189 = !{ptr @.str.88, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @si4713_tx_tune_power._entry, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @si4713_tx_tune_power._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @limiter_times, !193, !"limiter_times", i1 false, i1 false}
!193 = !{!"../drivers/media/radio/si4713/si4713.c", i32 109, i32 13}
!194 = !{ptr @acomp_rtimes, !195, !"acomp_rtimes", i1 false, i1 false}
!195 = !{!"../drivers/media/radio/si4713/si4713.c", i32 137, i32 22}
!196 = !{ptr @preemphasis_values, !197, !"preemphasis_values", i1 false, i1 false}
!197 = !{!"../drivers/media/radio/si4713/si4713.c", i32 150, i32 22}
!198 = !{ptr @si4713_alt_freqs_ctrl, !199, !"si4713_alt_freqs_ctrl", i1 false, i1 false}
!199 = !{!"../drivers/media/radio/si4713/si4713.c", i32 1415, i32 38}
!200 = !{ptr @.str.89, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/radio/si4713/si4713.c", i32 176, i32 2}
!202 = !{ptr @.str.90, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @si4713_handler._entry, !201, !"_entry", i1 false, i1 false}
!204 = !{ptr @si4713_handler._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.91, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/media/radio/si4713/si4713.c", i32 479, i32 3}
!207 = !{ptr @.str.92, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @si4713_checkrev._entry, !206, !"_entry", i1 false, i1 false}
!209 = !{ptr @si4713_checkrev._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.94, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/media/radio/si4713/si4713.c", i32 482, i32 3}
!212 = !{ptr @si4713_checkrev._entry.93, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @si4713_checkrev._entry_ptr.95, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @si4713_of_match, !215, !"si4713_of_match", i1 false, i1 false}
!215 = !{!"../drivers/media/radio/si4713/si4713.c", i32 1650, i32 34}
!216 = !{ptr @si4713_id, !217, !"si4713_id", i1 false, i1 false}
!217 = !{!"../drivers/media/radio/si4713/si4713.c", i32 1643, i32 35}
!218 = !{i32 1, !"wchar_size", i32 2}
!219 = !{i32 1, !"min_enum_size", i32 4}
!220 = !{i32 8, !"branch-target-enforcement", i32 0}
!221 = !{i32 8, !"sign-return-address", i32 0}
!222 = !{i32 8, !"sign-return-address-all", i32 0}
!223 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!224 = !{i32 7, !"uwtable", i32 1}
!225 = !{i32 7, !"frame-pointer", i32 2}
!226 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!227 = !{!"auto-init"}
!228 = !{i64 2148356476, i64 2148356481, i64 2148356494, i64 2148356538, i64 2148356572, i64 2148356593}
!229 = !{i8 0, i8 2}
