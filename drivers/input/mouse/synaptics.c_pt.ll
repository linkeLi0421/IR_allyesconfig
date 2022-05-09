; ModuleID = '/llk/IR_all_yes/drivers/input/mouse/synaptics.c_pt.bc'
source_filename = "../drivers/input/mouse/synaptics.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.72 }
%union.anon.72 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.psmouse_attribute = type { %struct.device_attribute, ptr, ptr, ptr, i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.min_max_quirk = type { ptr, %struct.anon.85, i32, i32, i32, i32 }
%struct.anon.85 = type { i32, i32 }
%struct.atomic_t = type { i32 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.psmouse = type { ptr, ptr, %struct.ps2dev, %struct.delayed_work, ptr, ptr, ptr, [8 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, [64 x i8], [32 x i8], i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ps2dev = type { ptr, %struct.mutex, %struct.wait_queue_head, i32, [8 x i8], i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.synaptics_device_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.rmi_device_platform_data = type { i32, i32, %struct.rmi_device_platform_data_spi, %struct.rmi_2d_sensor_platform_data, %struct.rmi_f01_power_management, %struct.rmi_gpio_data }
%struct.rmi_device_platform_data_spi = type { i32, i32, i32, i32, i32, i32, i32, i8, i16, ptr, ptr }
%struct.rmi_2d_sensor_platform_data = type { %struct.rmi_2d_axis_alignment, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32 }
%struct.rmi_2d_axis_alignment = type { i8, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8 }
%struct.rmi_f01_power_management = type { i32, i8, i8, i8 }
%struct.rmi_gpio_data = type { i8, i8, i8 }
%union.anon.87 = type { i32 }
%struct.synaptics_data = type { %struct.synaptics_device_info, i32, i8, i32, i8, i8, ptr, %struct.synaptics_hw_state, i32, i32, i8, i8, i8 }
%struct.synaptics_hw_state = type { i32, i32, i32, i32, i8, i8, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_mt_pos = type { i16, i16 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Synaptics\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TouchPad\00", [23 x i8] zeroinitializer }, align 32
@__param_str_synaptics_intertouch = internal constant [29 x i8] c"psmouse.synaptics_intertouch\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@synaptics_intertouch = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_synaptics_intertouch = internal constant %struct.kernel_param { ptr @__param_str_synaptics_intertouch, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.72 { ptr @synaptics_intertouch } }, section "__param", align 4
@__UNIQUE_ID_synaptics_intertouchtype301 = internal constant [42 x i8] c"psmouse.parmtype=synaptics_intertouch:int\00", section ".modinfo", align 1
@__UNIQUE_ID_synaptics_intertouch302 = internal constant [80 x i8] c"psmouse.parm=synaptics_intertouch:Use a secondary bus for the Synaptics device.\00", section ".modinfo", align 1
@synaptics_init_smbus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1827, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"synaptics: Unable to query device: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"synaptics_init_smbus\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/input/mouse/synaptics.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@synaptics_init_smbus._entry_ptr = internal global ptr @synaptics_init_smbus._entry, section ".printk_index", align 4
@synaptics_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.7, ptr @.str.4, i32 1867, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"synaptics_init\00", [17 x i8] zeroinitializer }, align 32
@synaptics_init._entry_ptr = internal global ptr @synaptics_init._entry, section ".printk_index", align 4
@__synaptics_init._entry = internal constant %struct.pi_entry { ptr @.str.2, ptr @.str.8, ptr @.str.4, i32 1671, ptr @.str.5, ptr @.str.6 }, align 1
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__synaptics_init\00", [47 x i8] zeroinitializer }, align 32
@__synaptics_init._entry_ptr = internal global ptr @__synaptics_init._entry, section ".printk_index", align 4
@forcepad_pnp_ids = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.43, ptr @.str.44, ptr null], [20 x i8] zeroinitializer }, align 32
@synaptics_init_ps2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.4, i32 1581, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"synaptics: Unable to initialize device.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"synaptics_init_ps2\00", [45 x i8] zeroinitializer }, align 32
@synaptics_init_ps2._entry_ptr = internal global ptr @synaptics_init_ps2._entry, section ".printk_index", align 4
@synaptics_init_ps2._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.4, i32 1594, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"synaptics: Touchpad model: %lu, fw: %lu.%lu, id: %#x, caps: %#x/%#x/%#x/%#x, board id: %u, fw id: %u\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@synaptics_init_ps2._entry_ptr.14 = internal global ptr @synaptics_init_ps2._entry.11, section ".printk_index", align 4
@synaptics_init_ps2._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.10, ptr @.str.4, i32 1599, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"synaptics: failed to set up capabilities: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@synaptics_init_ps2._entry_ptr.17 = internal global ptr @synaptics_init_ps2._entry.15, section ".printk_index", align 4
@synaptics_init_ps2._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.10, ptr @.str.4, i32 1640, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"synaptics: Toshiba %s detected, limiting rate to 40pps.\0A\00", [39 x i8] zeroinitializer }, align 32
@synaptics_init_ps2._entry_ptr.20 = internal global ptr @synaptics_init_ps2._entry.18, section ".printk_index", align 4
@psmouse_attr_disable_gesture = internal global { %struct.psmouse_attribute, [52 x i8] } { %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.91, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr null, ptr @synaptics_show_disable_gesture, ptr @synaptics_set_disable_gesture, i8 1 }, [52 x i8] zeroinitializer }, align 32
@synaptics_init_ps2._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.10, ptr @.str.4, i32 1650, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"synaptics: Failed to create disable_gesture attribute (%d)\00", [37 x i8] zeroinitializer }, align 32
@synaptics_init_ps2._entry_ptr.23 = internal global ptr @synaptics_init_ps2._entry.21, section ".printk_index", align 4
@min_max_pnpid_table = internal constant { [8 x %struct.min_max_quirk], [32 x i8] } { [8 x %struct.min_max_quirk] [%struct.min_max_quirk { ptr @.compoundliteral, %struct.anon.85 zeroinitializer, i32 1024, i32 5052, i32 2258, i32 4832 }, %struct.min_max_quirk { ptr @.compoundliteral.28, %struct.anon.85 zeroinitializer, i32 1232, i32 5710, i32 1156, i32 4696 }, %struct.min_max_quirk { ptr @.compoundliteral.35, %struct.anon.85 { i32 0, i32 2961 }, i32 1024, i32 5112, i32 2024, i32 4832 }, %struct.min_max_quirk { ptr @.compoundliteral.37, %struct.anon.85 zeroinitializer, i32 1024, i32 5113, i32 2021, i32 4832 }, %struct.min_max_quirk { ptr @.compoundliteral.39, %struct.anon.85 zeroinitializer, i32 1024, i32 5022, i32 2508, i32 4832 }, %struct.min_max_quirk { ptr @.compoundliteral.41, %struct.anon.85 { i32 2691, i32 2691 }, i32 1024, i32 5045, i32 2457, i32 4832 }, %struct.min_max_quirk { ptr @.compoundliteral.42, %struct.anon.85 zeroinitializer, i32 1264, i32 5675, i32 1171, i32 4688 }, %struct.min_max_quirk zeroinitializer], [32 x i8] zeroinitializer }, align 32
@synaptics_apply_quirks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 551, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"synaptics: quirked min/max coordinates: x [%d..%d], y [%d..%d]\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"synaptics_apply_quirks\00", [41 x i8] zeroinitializer }, align 32
@synaptics_apply_quirks._entry_ptr = internal global ptr @synaptics_apply_quirks._entry, section ".printk_index", align 4
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN0033\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.26, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN0042\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.27, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN0034\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN0036\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN0037\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN0039\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN2002\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN2004\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr null], [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN2000\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.36, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN2001\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.39 = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.38, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN2006\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.41 = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.40, ptr null], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.42 = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.40, ptr null], [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SYN300D\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SYN3014\00", [24 x i8] zeroinitializer }, align 32
@synaptics_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.4, i32 602, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"synaptics: Advanced gesture mode init failed: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"synaptics_set_mode\00", [45 x i8] zeroinitializer }, align 32
@synaptics_set_mode._entry_ptr = internal global ptr @synaptics_set_mode._entry, section ".printk_index", align 4
@synaptics_set_advanced_gesture_mode.param = internal global { i8, [31 x i8] } { i8 -56, [31 x i8] zeroinitializer }, align 32
@topbuttonpad_pnp_ids = internal constant { [33 x ptr], [60 x i8] } { [33 x ptr] [ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.26, ptr @.str.29, ptr @.str.56, ptr @.str.30, ptr @.str.31, ptr @.str.57, ptr @.str.32, ptr @.str.58, ptr @.str.27, ptr @.str.59, ptr @.str.60, ptr @.str.36, ptr @.str.38, ptr @.str.33, ptr @.str.61, ptr @.str.34, ptr @.str.62, ptr @.str.40, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr null], [60 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN0017\00", [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN0018\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN0019\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN0023\00", [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN002A\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN002B\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN002C\00", [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN002D\00", [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN002E\00", [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN0035\00", [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN0038\00", [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN0041\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN0045\00", [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN0047\00", [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN2003\00", [24 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN2005\00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN2007\00", [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN2008\00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN2009\00", [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN200A\00", [24 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN200B\00", [24 x i8] zeroinitializer }, align 32
@synaptics_detect_pkt_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.4, i32 1200, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"synaptics: using relaxed packet validation\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"synaptics_detect_pkt_type\00", [38 x i8] zeroinitializer }, align 32
@synaptics_detect_pkt_type._entry_ptr = internal global ptr @synaptics_detect_pkt_type._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@synaptics_validate_byte.newabs_mask = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\C8\00\00\C8\00", [27 x i8] zeroinitializer }, align 32
@synaptics_validate_byte.newabs_rel_mask = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\C0\00\00\C0\00", [27 x i8] zeroinitializer }, align 32
@synaptics_validate_byte.newabs_rslt = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\80\00\00\C0\00", [27 x i8] zeroinitializer }, align 32
@synaptics_validate_byte.oldabs_mask = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\C0`\00\C0`", [27 x i8] zeroinitializer }, align 32
@synaptics_validate_byte.oldabs_rslt = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\C0\00\00\80\00", [27 x i8] zeroinitializer }, align 32
@synaptics_validate_byte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.4, i32 1188, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"synaptics: unknown packet type %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"synaptics_validate_byte\00", [40 x i8] zeroinitializer }, align 32
@synaptics_validate_byte._entry_ptr = internal global ptr @synaptics_validate_byte._entry, section ".printk_index", align 4
@synaptics_reconnect.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.72, ptr @.str.73, ptr @.str.4, ptr @.str.74, i8 1, i8 106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"psmouse\00", [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"synaptics_reconnect\00", [44 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"synaptics: reconnected after %d tries\0A\00", [57 x i8] zeroinitializer }, align 32
@synaptics_reconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.4, i32 1455, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"synaptics: Unable to query device.\0A\00", [60 x i8] zeroinitializer }, align 32
@synaptics_reconnect._entry_ptr = internal global ptr @synaptics_reconnect._entry, section ".printk_index", align 4
@synaptics_reconnect._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.73, ptr @.str.4, i32 1461, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@synaptics_reconnect._entry_ptr.77 = internal global ptr @synaptics_reconnect._entry.76, section ".printk_index", align 4
@synaptics_reconnect._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.73, ptr @.str.4, i32 1474, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"synaptics: hardware appears to be different: id(%u-%u), model(%u-%u), caps(%x-%x), ext(%x-%x).\0A\00", [32 x i8] zeroinitializer }, align 32
@synaptics_reconnect._entry_ptr.80 = internal global ptr @synaptics_reconnect._entry.78, section ".printk_index", align 4
@synaptics_pt_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.4, i32 712, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"synaptics: not enough memory for pass-through port\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"synaptics_pt_create\00", [44 x i8] zeroinitializer }, align 32
@synaptics_pt_create._entry_ptr = internal global ptr @synaptics_pt_create._entry, section ".printk_index", align 4
@.str.83 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Synaptics pass-through\00", [41 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"synaptics-pt/serio0\00", [44 x i8] zeroinitializer }, align 32
@synaptics_pt_create._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.82, ptr @.str.4, i32 727, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"synaptics: serio: %s port at %s\0A\00", [63 x i8] zeroinitializer }, align 32
@synaptics_pt_create._entry_ptr.87 = internal global ptr @synaptics_pt_create._entry.85, section ".printk_index", align 4
@synaptics_pt_activate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.4, i32 701, ptr @.str.90, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"synaptics: failed to switch guest protocol\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"synaptics_pt_activate\00", [42 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@synaptics_pt_activate._entry_ptr = internal global ptr @synaptics_pt_activate._entry, section ".printk_index", align 4
@.str.91 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"disable_gesture\00", [16 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%c\0A\00", [28 x i8] zeroinitializer }, align 32
@synaptics_capability._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.4, i32 335, ptr @.str.90, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"synaptics: device claims to have extended capabilities, but I'm not able to read them.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"synaptics_capability\00", [43 x i8] zeroinitializer }, align 32
@synaptics_capability._entry_ptr = internal global ptr @synaptics_capability._entry, section ".printk_index", align 4
@synaptics_capability._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.94, ptr @.str.4, i32 351, ptr @.str.90, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"synaptics: device claims to have extended capability 0x0c, but I'm not able to read it.\0A\00", [39 x i8] zeroinitializer }, align 32
@synaptics_capability._entry_ptr.97 = internal global ptr @synaptics_capability._entry.95, section ".printk_index", align 4
@synaptics_resolution._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.4, i32 384, ptr @.str.90, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"synaptics: device claims to have max coordinates query, but I'm not able to read it.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"synaptics_resolution\00", [43 x i8] zeroinitializer }, align 32
@synaptics_resolution._entry_ptr = internal global ptr @synaptics_resolution._entry, section ".printk_index", align 4
@synaptics_resolution._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.4, i32 390, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"synaptics: queried max coordinates: x [..%d], y [..%d]\0A\00", [40 x i8] zeroinitializer }, align 32
@synaptics_resolution._entry_ptr.102 = internal global ptr @synaptics_resolution._entry.100, section ".printk_index", align 4
@synaptics_resolution._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.99, ptr @.str.4, i32 406, ptr @.str.90, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"synaptics: device claims to have min coordinates query, but I'm not able to read it.\0A\00", [42 x i8] zeroinitializer }, align 32
@synaptics_resolution._entry_ptr.105 = internal global ptr @synaptics_resolution._entry.103, section ".printk_index", align 4
@synaptics_resolution._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.99, ptr @.str.4, i32 412, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"synaptics: queried min coordinates: x [%d..], y [%d..]\0A\00", [40 x i8] zeroinitializer }, align 32
@synaptics_resolution._entry_ptr.108 = internal global ptr @synaptics_resolution._entry.106, section ".printk_index", align 4
@__const.synaptics_create_intertouch.intertouch_board = private unnamed_addr constant %struct.i2c_board_info { [20 x i8] c"rmi4_smbus\00\00\00\00\00\00\00\00\00\00", i16 64, i16 44, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, align 4
@smbus_pnp_ids = internal constant { [29 x ptr], [44 x i8] } { [29 x ptr] [ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr null], [44 x i8] zeroinitializer }, align 32
@synaptics_setup_intertouch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.4, i32 1797, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [217 x i8], [39 x i8] } { [217 x i8] c"synaptics: Your touchpad (%s) says it can support a different bus. If i2c-hid and hid-rmi are not used, you might want to try setting psmouse.synaptics_intertouch to 1 and report this to linux-input@vger.kernel.org.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"synaptics_setup_intertouch\00", [37 x i8] zeroinitializer }, align 32
@synaptics_setup_intertouch._entry_ptr = internal global ptr @synaptics_setup_intertouch._entry, section ".printk_index", align 4
@synaptics_setup_intertouch._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.110, ptr @.str.4, i32 1803, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"synaptics: Trying to set up SMBus access\0A\00", [54 x i8] zeroinitializer }, align 32
@synaptics_setup_intertouch._entry_ptr.113 = internal global ptr @synaptics_setup_intertouch._entry.111, section ".printk_index", align 4
@synaptics_setup_intertouch._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.110, ptr @.str.4, i32 1808, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"synaptics: SMbus companion is not ready yet\0A\00", [51 x i8] zeroinitializer }, align 32
@synaptics_setup_intertouch._entry_ptr.116 = internal global ptr @synaptics_setup_intertouch._entry.114, section ".printk_index", align 4
@synaptics_setup_intertouch._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.110, ptr @.str.4, i32 1810, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"synaptics: unable to create intertouch device\0A\00", [49 x i8] zeroinitializer }, align 32
@synaptics_setup_intertouch._entry_ptr.119 = internal global ptr @synaptics_setup_intertouch._entry.117, section ".printk_index", align 4
@.str.120 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN0048\00", [24 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN0046\00", [24 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN0049\00", [24 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN004a\00", [24 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN005b\00", [24 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN005e\00", [24 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN006c\00", [24 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN007a\00", [24 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN0071\00", [24 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN0072\00", [24 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN0073\00", [24 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN0091\00", [24 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN0092\00", [24 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN0093\00", [24 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN0096\00", [24 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN0097\00", [24 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN0099\00", [24 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN009b\00", [24 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN0402\00", [24 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN200f\00", [24 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN2044\00", [24 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN2054\00", [24 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN2055\00", [24 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEN2068\00", [24 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SYN3052\00", [24 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SYN3221\00", [24 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SYN323d\00", [24 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SYN3257\00", [24 x i8] zeroinitializer }, align 32
@synaptics_setup_ps2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.149, ptr @.str.4, i32 1702, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"synaptics: OLPC XO detected, forcing relative protocol.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"synaptics_setup_ps2\00", [44 x i8] zeroinitializer }, align 32
@synaptics_setup_ps2._entry_ptr = internal global ptr @synaptics_setup_ps2._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.150 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.151 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.152 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.153 = internal global [16 x i64] [i64 14, i64 32, i64 0, i64 1, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.154 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 111, i32 21 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 112, i32 19 }
@___asan_gen_.161 = private unnamed_addr constant [21 x i8] c"synaptics_intertouch\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1741, i32 12 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1827, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1867, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1671, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant [17 x i8] c"forcepad_pnp_ids\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 197, i32 27 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1581, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1588, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1598, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1638, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant [29 x i8] c"psmouse_attr_disable_gesture\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1648, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant [20 x i8] c"min_max_pnpid_table\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 468, i32 35 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 548, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 470, i32 27 }
@___asan_gen_.248 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 475, i32 27 }
@___asan_gen_.252 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 480, i32 27 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 480, i32 38 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 480, i32 49 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 481, i32 6 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 481, i32 17 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 481, i32 28 }
@___asan_gen_.271 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 487, i32 27 }
@___asan_gen_.275 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 492, i32 27 }
@___asan_gen_.279 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 497, i32 27 }
@___asan_gen_.283 = private unnamed_addr constant [20 x i8] c".compoundliteral.41\00", align 1
@___asan_gen_.284 = private unnamed_addr constant [20 x i8] c".compoundliteral.42\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 198, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 199, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 600, i32 4 }
@___asan_gen_.300 = private unnamed_addr constant [6 x i8] c"param\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 564, i32 12 }
@___asan_gen_.303 = private unnamed_addr constant [21 x i8] c"topbuttonpad_pnp_ids\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 128, i32 27 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 129, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 130, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 131, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 132, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 133, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 134, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 135, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 136, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 137, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 140, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 143, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 145, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 147, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 148, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 152, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 154, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 156, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 157, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 158, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 159, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 160, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1200, i32 4 }
@___asan_gen_.378 = private unnamed_addr constant [12 x i8] c"newabs_mask\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1165, i32 18 }
@___asan_gen_.381 = private unnamed_addr constant [16 x i8] c"newabs_rel_mask\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1166, i32 18 }
@___asan_gen_.384 = private unnamed_addr constant [12 x i8] c"newabs_rslt\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1167, i32 18 }
@___asan_gen_.387 = private unnamed_addr constant [12 x i8] c"oldabs_mask\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1168, i32 18 }
@___asan_gen_.390 = private unnamed_addr constant [12 x i8] c"oldabs_rslt\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1169, i32 18 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1188, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1451, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1455, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1461, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1469, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 711, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 717, i32 23 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 718, i32 23 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 726, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 700, i32 4 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1399, i32 1 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1366, i32 22 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 334, i32 4 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 350, i32 4 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 383, i32 4 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 388, i32 4 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 405, i32 4 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 410, i32 4 }
@___asan_gen_.507 = private unnamed_addr constant [14 x i8] c"smbus_pnp_ids\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 164, i32 27 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1794, i32 5 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1803, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1808, i32 4 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1810, i32 4 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 166, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 167, i32 2 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 168, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 169, i32 2 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 170, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 171, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 172, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 173, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 174, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 175, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 176, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 177, i32 2 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 178, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 179, i32 2 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 180, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 181, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 182, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 183, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 184, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 185, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 186, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 187, i32 2 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 188, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 189, i32 2 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 190, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 191, i32 2 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 192, i32 2 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 193, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.627 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.628 = private constant [35 x i8] c"../drivers/input/mouse/synaptics.c\00", align 1
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1701, i32 3 }
@llvm.compiler.used = appending global [196 x ptr] [ptr @__UNIQUE_ID_synaptics_intertouch302, ptr @__UNIQUE_ID_synaptics_intertouchtype301, ptr @__param_synaptics_intertouch, ptr @__synaptics_init._entry, ptr @__synaptics_init._entry_ptr, ptr @synaptics_apply_quirks._entry, ptr @synaptics_apply_quirks._entry_ptr, ptr @synaptics_capability._entry, ptr @synaptics_capability._entry.95, ptr @synaptics_capability._entry_ptr, ptr @synaptics_capability._entry_ptr.97, ptr @synaptics_detect_pkt_type._entry, ptr @synaptics_detect_pkt_type._entry_ptr, ptr @synaptics_init._entry, ptr @synaptics_init._entry_ptr, ptr @synaptics_init_ps2._entry, ptr @synaptics_init_ps2._entry.11, ptr @synaptics_init_ps2._entry.15, ptr @synaptics_init_ps2._entry.18, ptr @synaptics_init_ps2._entry.21, ptr @synaptics_init_ps2._entry_ptr, ptr @synaptics_init_ps2._entry_ptr.14, ptr @synaptics_init_ps2._entry_ptr.17, ptr @synaptics_init_ps2._entry_ptr.20, ptr @synaptics_init_ps2._entry_ptr.23, ptr @synaptics_init_smbus._entry, ptr @synaptics_init_smbus._entry_ptr, ptr @synaptics_pt_activate._entry, ptr @synaptics_pt_activate._entry_ptr, ptr @synaptics_pt_create._entry, ptr @synaptics_pt_create._entry.85, ptr @synaptics_pt_create._entry_ptr, ptr @synaptics_pt_create._entry_ptr.87, ptr @synaptics_reconnect._entry, ptr @synaptics_reconnect._entry.76, ptr @synaptics_reconnect._entry.78, ptr @synaptics_reconnect._entry_ptr, ptr @synaptics_reconnect._entry_ptr.77, ptr @synaptics_reconnect._entry_ptr.80, ptr @synaptics_resolution._entry, ptr @synaptics_resolution._entry.100, ptr @synaptics_resolution._entry.103, ptr @synaptics_resolution._entry.106, ptr @synaptics_resolution._entry_ptr, ptr @synaptics_resolution._entry_ptr.102, ptr @synaptics_resolution._entry_ptr.105, ptr @synaptics_resolution._entry_ptr.108, ptr @synaptics_set_mode._entry, ptr @synaptics_set_mode._entry_ptr, ptr @synaptics_setup_intertouch._entry, ptr @synaptics_setup_intertouch._entry.111, ptr @synaptics_setup_intertouch._entry.114, ptr @synaptics_setup_intertouch._entry.117, ptr @synaptics_setup_intertouch._entry_ptr, ptr @synaptics_setup_intertouch._entry_ptr.113, ptr @synaptics_setup_intertouch._entry_ptr.116, ptr @synaptics_setup_intertouch._entry_ptr.119, ptr @synaptics_setup_ps2._entry, ptr @synaptics_setup_ps2._entry_ptr, ptr @synaptics_validate_byte._entry, ptr @synaptics_validate_byte._entry_ptr, ptr @.str, ptr @.str.1, ptr @synaptics_intertouch, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @forcepad_pnp_ids, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @psmouse_attr_disable_gesture, ptr @.str.22, ptr @min_max_pnpid_table, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.compoundliteral, ptr @.str.27, ptr @.compoundliteral.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.compoundliteral.35, ptr @.str.36, ptr @.compoundliteral.37, ptr @.str.38, ptr @.compoundliteral.39, ptr @.str.40, ptr @.compoundliteral.41, ptr @.compoundliteral.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @synaptics_set_advanced_gesture_mode.param, ptr @topbuttonpad_pnp_ids, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @synaptics_validate_byte.newabs_mask, ptr @synaptics_validate_byte.newabs_rel_mask, ptr @synaptics_validate_byte.newabs_rslt, ptr @synaptics_validate_byte.oldabs_mask, ptr @synaptics_validate_byte.oldabs_rslt, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @.str.104, ptr @.str.107, ptr @smbus_pnp_ids, ptr @.str.109, ptr @.str.110, ptr @.str.112, ptr @.str.115, ptr @.str.118, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149], section "llvm.metadata"
@0 = internal global [163 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synaptics_intertouch to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synaptics_init_smbus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synaptics_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @forcepad_pnp_ids to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synaptics_init_ps2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synaptics_init_ps2._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synaptics_init_ps2._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synaptics_init_ps2._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_attr_disable_gesture to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synaptics_init_ps2._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_max_pnpid_table to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synaptics_apply_quirks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synaptics_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synaptics_set_advanced_gesture_mode.param to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @topbuttonpad_pnp_ids to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synaptics_detect_pkt_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synaptics_validate_byte.newabs_mask to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synaptics_validate_byte.newabs_rel_mask to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synaptics_validate_byte.newabs_rslt to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synaptics_validate_byte.oldabs_mask to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synaptics_validate_byte.oldabs_rslt to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synaptics_validate_byte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synaptics_reconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synaptics_reconnect._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synaptics_reconnect._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synaptics_pt_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synaptics_pt_create._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synaptics_pt_activate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synaptics_capability._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synaptics_capability._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synaptics_resolution._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synaptics_resolution._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synaptics_resolution._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synaptics_resolution._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbus_pnp_ids to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synaptics_setup_intertouch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 217, i32 256, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synaptics_setup_intertouch._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synaptics_setup_intertouch._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synaptics_setup_intertouch._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synaptics_setup_ps2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @synaptics_detect(ptr noundef %psmouse, i1 noundef zeroext %set_properties) local_unnamed_addr #0 align 64 {
entry:
  %param = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ps2dev1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param) #10
  %0 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %param, align 4
  %call = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4328) #10
  %call3 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4328) #10
  %call5 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4328) #10
  %call7 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4328) #10
  %call9 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 1001) #10
  %arrayidx = getelementptr inbounds [4 x i8], ptr %param, i32 0, i32 1
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 71, i8 %2)
  %cmp.not = icmp ne i8 %2, 71
  %set_properties.not = xor i1 %set_properties, true
  %brmerge = or i1 %cmp.not, %set_properties.not
  %.mux = select i1 %cmp.not, i32 -19, i32 0
  br i1 %brmerge, label %entry.cleanup_crit_edge, label %if.then11

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %vendor = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 4
  %3 = ptrtoint ptr %vendor to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str, ptr %vendor, align 4
  %name = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 5
  %4 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.1, ptr %name, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %.mux, %entry.cleanup_crit_edge ], [ 0, %if.then11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ps2_command(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @synaptics_reset(ptr noundef %psmouse) #0 align 64 {
entry:
  %param.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param.i) #10
  %ps2dev.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %call.i = tail call i32 @ps2_sliced_command(ptr noundef %ps2dev.i, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.synaptics_mode_cmd.exit_crit_edge

entry.synaptics_mode_cmd.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %synaptics_mode_cmd.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 20, ptr %param.i, align 1
  %call2.i = call i32 @ps2_command(ptr noundef %ps2dev.i, ptr noundef nonnull %param.i, i32 noundef 4339) #10
  br label %synaptics_mode_cmd.exit

synaptics_mode_cmd.exit:                          ; preds = %if.end.i, %entry.synaptics_mode_cmd.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param.i) #10
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @synaptics_module_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @synaptics_init_absolute(ptr noundef %psmouse) local_unnamed_addr #0 align 64 {
entry:
  %info.i = alloca %struct.synaptics_device_info, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %info.i) #10
  %0 = call ptr @memset(ptr %info.i, i32 255, i32 56)
  %call.i = tail call i32 @psmouse_reset(ptr noundef %psmouse) #10
  %call1.i = call fastcc i32 @synaptics_query_hardware(ptr noundef %psmouse, ptr noundef nonnull %info.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ps2dev.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %1 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ps2dev.i, align 4
  %dev.i = getelementptr inbounds %struct.serio, ptr %2, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.2, i32 noundef %call1.i) #13
  br label %__synaptics_init.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = call fastcc i32 @synaptics_init_ps2(ptr noundef %psmouse, ptr noundef nonnull %info.i, i1 noundef zeroext true) #10
  br label %__synaptics_init.exit

__synaptics_init.exit:                            ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %call1.i, %do.end.i ], [ %call3.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %info.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @synaptics_init_relative(ptr noundef %psmouse) local_unnamed_addr #0 align 64 {
entry:
  %info.i = alloca %struct.synaptics_device_info, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %info.i) #10
  %0 = call ptr @memset(ptr %info.i, i32 255, i32 56)
  %call.i = tail call i32 @psmouse_reset(ptr noundef %psmouse) #10
  %call1.i = call fastcc i32 @synaptics_query_hardware(ptr noundef %psmouse, ptr noundef nonnull %info.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ps2dev.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %1 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ps2dev.i, align 4
  %dev.i = getelementptr inbounds %struct.serio, ptr %2, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.2, i32 noundef %call1.i) #13
  br label %__synaptics_init.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = call fastcc i32 @synaptics_init_ps2(ptr noundef %psmouse, ptr noundef nonnull %info.i, i1 noundef zeroext false) #10
  br label %__synaptics_init.exit

__synaptics_init.exit:                            ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %call1.i, %do.end.i ], [ %call3.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %info.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @synaptics_init_smbus(ptr noundef %psmouse) local_unnamed_addr #0 align 64 {
entry:
  %pdata.i = alloca %struct.rmi_device_platform_data, align 4
  %intertouch_board.i = alloca %struct.i2c_board_info, align 4
  %info = alloca %struct.synaptics_device_info, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %info) #10
  %0 = call ptr @memset(ptr %info, i32 255, i32 56)
  %call = tail call i32 @psmouse_reset(ptr noundef %psmouse) #10
  %call1 = call fastcc i32 @synaptics_query_hardware(ptr noundef %psmouse, ptr noundef nonnull %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %1 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ps2dev, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %2, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %call1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %ext_cap_0c = getelementptr inbounds %struct.synaptics_device_info, ptr %info, i32 0, i32 5
  %3 = ptrtoint ptr %ext_cap_0c to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ext_cap_0c, align 4
  %and = and i32 %4, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call.i = tail call zeroext i1 @psmouse_matches_pnp_id(ptr noundef %psmouse, ptr noundef nonnull @topbuttonpad_pnp_ids) #10
  br i1 %call.i, label %land.rhs.i, label %if.end4.synaptics_create_intertouch.exit_crit_edge

if.end4.synaptics_create_intertouch.exit_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %synaptics_create_intertouch.exit

land.rhs.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %ext_cap_10.i = getelementptr inbounds %struct.synaptics_device_info, ptr %info, i32 0, i32 6
  %5 = ptrtoint ptr %ext_cap_10.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ext_cap_10.i, align 4
  %and.i = and i32 %6, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br label %synaptics_create_intertouch.exit

synaptics_create_intertouch.exit:                 ; preds = %land.rhs.i, %if.end4.synaptics_create_intertouch.exit_crit_edge
  %7 = phi i1 [ false, %if.end4.synaptics_create_intertouch.exit_crit_edge ], [ %tobool.not.i, %land.rhs.i ]
  %frombool1.i = zext i1 %7 to i8
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %pdata.i) #10
  %8 = call ptr @memset(ptr %pdata.i, i32 0, i32 112)
  %flip_y.i = getelementptr inbounds %struct.rmi_device_platform_data, ptr %pdata.i, i32 0, i32 3, i32 0, i32 2
  %9 = ptrtoint ptr %flip_y.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %flip_y.i, align 2
  %sensor_type.i = getelementptr inbounds %struct.rmi_device_platform_data, ptr %pdata.i, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %sensor_type.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %sensor_type.i, align 4
  %topbuttonpad2.i = getelementptr inbounds %struct.rmi_device_platform_data, ptr %pdata.i, i32 0, i32 3, i32 6
  %11 = ptrtoint ptr %topbuttonpad2.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool1.i, ptr %topbuttonpad2.i, align 2
  %gpio_data.i = getelementptr inbounds %struct.rmi_device_platform_data, ptr %pdata.i, i32 0, i32 5
  %and5.i = lshr i32 %4, 20
  %12 = trunc i32 %and5.i to i8
  %13 = and i8 %12, 1
  %14 = ptrtoint ptr %gpio_data.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %gpio_data.i, align 4
  %trackstick_buttons.i = getelementptr inbounds %struct.rmi_device_platform_data, ptr %pdata.i, i32 0, i32 5, i32 1
  %ext_cap_108.i = getelementptr inbounds %struct.synaptics_device_info, ptr %info, i32 0, i32 6
  %15 = ptrtoint ptr %ext_cap_108.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ext_cap_108.i, align 4
  %and9.i = lshr i32 %16, 16
  %17 = trunc i32 %and9.i to i8
  %18 = and i8 %17, 1
  %19 = ptrtoint ptr %trackstick_buttons.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %trackstick_buttons.i, align 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %intertouch_board.i) #10
  %20 = call ptr @memcpy(ptr %intertouch_board.i, ptr @__const.synaptics_create_intertouch.intertouch_board, i32 56)
  %call15.i = call i32 @psmouse_smbus_init(ptr noundef %psmouse, ptr noundef nonnull %intertouch_board.i, ptr noundef nonnull %pdata.i, i32 noundef 112, i1 noundef zeroext true, i1 noundef zeroext false) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %intertouch_board.i) #10
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %pdata.i) #10
  br label %cleanup

cleanup:                                          ; preds = %synaptics_create_intertouch.exit, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %call15.i, %synaptics_create_intertouch.exit ], [ -6, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %info) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psmouse_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @synaptics_query_hardware(ptr noundef %psmouse, ptr nocapture noundef %info) unnamed_addr #0 align 64 {
entry:
  %resp.i83.i = alloca %union.anon.87, align 4
  %resp.i72.i = alloca %union.anon.87, align 4
  %resp.i.i73 = alloca %union.anon.87, align 4
  %resp.i.i61 = alloca %union.anon.87, align 4
  %bid.i = alloca [3 x i8], align 1
  %resp.i.i51 = alloca %union.anon.87, align 4
  %resp.i.i43 = alloca %union.anon.87, align 4
  %resp.i.i = alloca %union.anon.87, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %info, i32 0, i32 56)
  %identity.i = getelementptr inbounds %struct.synaptics_device_info, ptr %info, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp.i.i) #10
  %1 = ptrtoint ptr %resp.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %resp.i.i, align 4
  %ps2dev.i.i.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %call.i.i.i = tail call i32 @ps2_sliced_command(ptr noundef %ps2dev.i.i.i, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %synaptics_send_cmd.exit.i.i, label %entry.synaptics_query_int.exit.thread.i_crit_edge

entry.synaptics_query_int.exit.thread.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %synaptics_query_int.exit.thread.i

synaptics_send_cmd.exit.i.i:                      ; preds = %entry
  %add.ptr.i.i = getelementptr inbounds i8, ptr %resp.i.i, i32 1
  %call2.i.i.i = call i32 @ps2_command(ptr noundef %ps2dev.i.i.i, ptr noundef %add.ptr.i.i, i32 noundef 1001) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %synaptics_send_cmd.exit.i.i.synaptics_query_int.exit.thread.i_crit_edge

synaptics_send_cmd.exit.i.i.synaptics_query_int.exit.thread.i_crit_edge: ; preds = %synaptics_send_cmd.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %synaptics_query_int.exit.thread.i

synaptics_query_int.exit.thread.i:                ; preds = %synaptics_send_cmd.exit.i.i.synaptics_query_int.exit.thread.i_crit_edge, %entry.synaptics_query_int.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call.i.i.i, %entry.synaptics_query_int.exit.thread.i_crit_edge ], [ %call2.i.i.i, %synaptics_send_cmd.exit.i.i.synaptics_query_int.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp.i.i) #10
  br label %cleanup

if.end.i:                                         ; preds = %synaptics_send_cmd.exit.i.i
  %2 = ptrtoint ptr %resp.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %resp.i.i, align 4
  %4 = ptrtoint ptr %identity.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %identity.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp.i.i) #10
  %and.i = and i32 %3, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 18176, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 18176
  br i1 %cmp.i, label %if.end, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp.i.i43) #10
  %5 = ptrtoint ptr %resp.i.i43 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %resp.i.i43, align 4
  %call.i.i.i45 = call i32 @ps2_sliced_command(ptr noundef %ps2dev.i.i.i, i8 noundef zeroext 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i45)
  %tobool.not.i.i.i46 = icmp eq i32 %call.i.i.i45, 0
  br i1 %tobool.not.i.i.i46, label %synaptics_send_cmd.exit.i.i50, label %if.end.synaptics_model_id.exit.thread_crit_edge

if.end.synaptics_model_id.exit.thread_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %synaptics_model_id.exit.thread

synaptics_send_cmd.exit.i.i50:                    ; preds = %if.end
  %add.ptr.i.i47 = getelementptr inbounds i8, ptr %resp.i.i43, i32 1
  %call2.i.i.i48 = call i32 @ps2_command(ptr noundef %ps2dev.i.i.i, ptr noundef %add.ptr.i.i47, i32 noundef 1001) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i48)
  %tobool.not.i.i49 = icmp eq i32 %call2.i.i.i48, 0
  br i1 %tobool.not.i.i49, label %if.end4, label %synaptics_send_cmd.exit.i.i50.synaptics_model_id.exit.thread_crit_edge

synaptics_send_cmd.exit.i.i50.synaptics_model_id.exit.thread_crit_edge: ; preds = %synaptics_send_cmd.exit.i.i50
  call void @__sanitizer_cov_trace_pc() #12
  br label %synaptics_model_id.exit.thread

synaptics_model_id.exit.thread:                   ; preds = %synaptics_send_cmd.exit.i.i50.synaptics_model_id.exit.thread_crit_edge, %if.end.synaptics_model_id.exit.thread_crit_edge
  %retval.0.i.i.ph = phi i32 [ %call.i.i.i45, %if.end.synaptics_model_id.exit.thread_crit_edge ], [ %call2.i.i.i48, %synaptics_send_cmd.exit.i.i50.synaptics_model_id.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp.i.i43) #10
  br label %cleanup

if.end4:                                          ; preds = %synaptics_send_cmd.exit.i.i50
  %6 = ptrtoint ptr %resp.i.i43 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %resp.i.i43, align 4
  %8 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %info, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp.i.i43) #10
  %firmware_id.i = getelementptr inbounds %struct.synaptics_device_info, ptr %info, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp.i.i51) #10
  %9 = ptrtoint ptr %resp.i.i51 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %resp.i.i51, align 4
  %call.i.i.i53 = call i32 @ps2_sliced_command(ptr noundef %ps2dev.i.i.i, i8 noundef zeroext 10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i53)
  %tobool.not.i.i.i54 = icmp eq i32 %call.i.i.i53, 0
  br i1 %tobool.not.i.i.i54, label %synaptics_send_cmd.exit.i.i58, label %if.end4.synaptics_firmware_id.exit.thread_crit_edge

if.end4.synaptics_firmware_id.exit.thread_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %synaptics_firmware_id.exit.thread

synaptics_send_cmd.exit.i.i58:                    ; preds = %if.end4
  %add.ptr.i.i55 = getelementptr inbounds i8, ptr %resp.i.i51, i32 1
  %call2.i.i.i56 = call i32 @ps2_command(ptr noundef %ps2dev.i.i.i, ptr noundef %add.ptr.i.i55, i32 noundef 1001) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i56)
  %tobool.not.i.i57 = icmp eq i32 %call2.i.i.i56, 0
  br i1 %tobool.not.i.i57, label %if.end8, label %synaptics_send_cmd.exit.i.i58.synaptics_firmware_id.exit.thread_crit_edge

synaptics_send_cmd.exit.i.i58.synaptics_firmware_id.exit.thread_crit_edge: ; preds = %synaptics_send_cmd.exit.i.i58
  call void @__sanitizer_cov_trace_pc() #12
  br label %synaptics_firmware_id.exit.thread

synaptics_firmware_id.exit.thread:                ; preds = %synaptics_send_cmd.exit.i.i58.synaptics_firmware_id.exit.thread_crit_edge, %if.end4.synaptics_firmware_id.exit.thread_crit_edge
  %retval.0.i.i60.ph = phi i32 [ %call.i.i.i53, %if.end4.synaptics_firmware_id.exit.thread_crit_edge ], [ %call2.i.i.i56, %synaptics_send_cmd.exit.i.i58.synaptics_firmware_id.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp.i.i51) #10
  br label %cleanup

if.end8:                                          ; preds = %synaptics_send_cmd.exit.i.i58
  %10 = ptrtoint ptr %resp.i.i51 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %resp.i.i51, align 4
  %12 = ptrtoint ptr %firmware_id.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %firmware_id.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp.i.i51) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %bid.i) #10
  %13 = ptrtoint ptr %bid.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %bid.i, align 1, !annotation !323
  %14 = getelementptr inbounds [3 x i8], ptr %bid.i, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %14, align 1, !annotation !323
  %16 = getelementptr inbounds [3 x i8], ptr %bid.i, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %16, align 1, !annotation !323
  %18 = ptrtoint ptr %identity.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %identity.i, align 4
  %and.i63 = shl i32 %19, 8
  %shl.i = and i32 %and.i63, 3840
  %and2.i = lshr i32 %19, 16
  %shr3.i = and i32 %and2.i, 255
  %or.i = or i32 %shl.i, %shr3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1797, i32 %or.i)
  %cmp.i64 = icmp ult i32 %or.i, 1797
  br i1 %cmp.i64, label %if.end8.synaptics_query_modes.exit.thread_crit_edge, label %if.end.i66

if.end8.synaptics_query_modes.exit.thread_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %synaptics_query_modes.exit.thread

if.end.i66:                                       ; preds = %if.end8
  %call.i.i = call i32 @ps2_sliced_command(ptr noundef %ps2dev.i.i.i, i8 noundef zeroext 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i65 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i65, label %synaptics_send_cmd.exit.i, label %if.end.i66.synaptics_query_modes.exit.thread101_crit_edge

if.end.i66.synaptics_query_modes.exit.thread101_crit_edge: ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %synaptics_query_modes.exit.thread101

synaptics_send_cmd.exit.i:                        ; preds = %if.end.i66
  %call2.i.i = call i32 @ps2_command(ptr noundef %ps2dev.i.i.i, ptr noundef nonnull %bid.i, i32 noundef 1001) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i, label %if.end5.i, label %synaptics_send_cmd.exit.i.synaptics_query_modes.exit.thread101_crit_edge

synaptics_send_cmd.exit.i.synaptics_query_modes.exit.thread101_crit_edge: ; preds = %synaptics_send_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %synaptics_query_modes.exit.thread101

if.end5.i:                                        ; preds = %synaptics_send_cmd.exit.i
  %20 = ptrtoint ptr %bid.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bid.i, align 1
  %22 = and i8 %21, -4
  %and6.i = zext i8 %22 to i32
  %shl7.i = shl nuw nsw i32 %and6.i, 6
  %23 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %14, align 1
  %conv9.i = zext i8 %24 to i32
  %or10.i = or i32 %shl7.i, %conv9.i
  %board_id.i = getelementptr inbounds %struct.synaptics_device_info, ptr %info, i32 0, i32 2
  %25 = ptrtoint ptr %board_id.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or10.i, ptr %board_id.i, align 4
  %26 = and i8 %21, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool14.not.i = icmp eq i8 %26, 0
  br i1 %tobool14.not.i, label %if.end5.i.synaptics_query_modes.exit.thread_crit_edge, label %if.then15.i

if.end5.i.synaptics_query_modes.exit.thread_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %synaptics_query_modes.exit.thread

if.then15.i:                                      ; preds = %if.end5.i
  %ext_cap_10.i = getelementptr inbounds %struct.synaptics_device_info, ptr %info, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp.i.i61) #10
  %27 = ptrtoint ptr %resp.i.i61 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %resp.i.i61, align 4
  %call.i.i.i67 = call i32 @ps2_sliced_command(ptr noundef %ps2dev.i.i.i, i8 noundef zeroext 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i67)
  %tobool.not.i.i.i68 = icmp eq i32 %call.i.i.i67, 0
  br i1 %tobool.not.i.i.i68, label %synaptics_send_cmd.exit.i.i71, label %if.then15.i.synaptics_query_modes.exit.thread105_crit_edge

if.then15.i.synaptics_query_modes.exit.thread105_crit_edge: ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %synaptics_query_modes.exit.thread105

synaptics_send_cmd.exit.i.i71:                    ; preds = %if.then15.i
  %add.ptr.i.i69 = getelementptr inbounds i8, ptr %resp.i.i61, i32 1
  %call2.i.i.i70 = call i32 @ps2_command(ptr noundef %ps2dev.i.i.i, ptr noundef %add.ptr.i.i69, i32 noundef 1001) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i70)
  %tobool.not.i24.i = icmp eq i32 %call2.i.i.i70, 0
  br i1 %tobool.not.i24.i, label %synaptics_query_modes.exit, label %synaptics_send_cmd.exit.i.i71.synaptics_query_modes.exit.thread105_crit_edge

synaptics_send_cmd.exit.i.i71.synaptics_query_modes.exit.thread105_crit_edge: ; preds = %synaptics_send_cmd.exit.i.i71
  call void @__sanitizer_cov_trace_pc() #12
  br label %synaptics_query_modes.exit.thread105

synaptics_query_modes.exit.thread:                ; preds = %if.end5.i.synaptics_query_modes.exit.thread_crit_edge, %if.end8.synaptics_query_modes.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %bid.i) #10
  br label %if.end12

synaptics_query_modes.exit.thread101:             ; preds = %synaptics_send_cmd.exit.i.synaptics_query_modes.exit.thread101_crit_edge, %if.end.i66.synaptics_query_modes.exit.thread101_crit_edge
  %retval.0.i72.ph = phi i32 [ %call.i.i, %if.end.i66.synaptics_query_modes.exit.thread101_crit_edge ], [ %call2.i.i, %synaptics_send_cmd.exit.i.synaptics_query_modes.exit.thread101_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %bid.i) #10
  br label %cleanup

synaptics_query_modes.exit.thread105:             ; preds = %synaptics_send_cmd.exit.i.i71.synaptics_query_modes.exit.thread105_crit_edge, %if.then15.i.synaptics_query_modes.exit.thread105_crit_edge
  %retval.0.i26.i.ph = phi i32 [ %call.i.i.i67, %if.then15.i.synaptics_query_modes.exit.thread105_crit_edge ], [ %call2.i.i.i70, %synaptics_send_cmd.exit.i.i71.synaptics_query_modes.exit.thread105_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp.i.i61) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %bid.i) #10
  br label %cleanup

synaptics_query_modes.exit:                       ; preds = %synaptics_send_cmd.exit.i.i71
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %resp.i.i61 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %resp.i.i61, align 4
  %30 = ptrtoint ptr %ext_cap_10.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %ext_cap_10.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp.i.i61) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %bid.i) #10
  br label %if.end12

if.end12:                                         ; preds = %synaptics_query_modes.exit, %synaptics_query_modes.exit.thread
  %capabilities.i = getelementptr inbounds %struct.synaptics_device_info, ptr %info, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp.i.i73) #10
  %31 = ptrtoint ptr %resp.i.i73 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %resp.i.i73, align 4
  %call.i.i.i75 = call i32 @ps2_sliced_command(ptr noundef %ps2dev.i.i.i, i8 noundef zeroext 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i75)
  %tobool.not.i.i.i76 = icmp eq i32 %call.i.i.i75, 0
  br i1 %tobool.not.i.i.i76, label %synaptics_send_cmd.exit.i.i80, label %if.end12.synaptics_query_int.exit.thread.i82_crit_edge

if.end12.synaptics_query_int.exit.thread.i82_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %synaptics_query_int.exit.thread.i82

synaptics_send_cmd.exit.i.i80:                    ; preds = %if.end12
  %add.ptr.i.i77 = getelementptr inbounds i8, ptr %resp.i.i73, i32 1
  %call2.i.i.i78 = call i32 @ps2_command(ptr noundef %ps2dev.i.i.i, ptr noundef %add.ptr.i.i77, i32 noundef 1001) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i78)
  %tobool.not.i.i79 = icmp eq i32 %call2.i.i.i78, 0
  br i1 %tobool.not.i.i79, label %if.end.i90, label %synaptics_send_cmd.exit.i.i80.synaptics_query_int.exit.thread.i82_crit_edge

synaptics_send_cmd.exit.i.i80.synaptics_query_int.exit.thread.i82_crit_edge: ; preds = %synaptics_send_cmd.exit.i.i80
  call void @__sanitizer_cov_trace_pc() #12
  br label %synaptics_query_int.exit.thread.i82

synaptics_query_int.exit.thread.i82:              ; preds = %synaptics_send_cmd.exit.i.i80.synaptics_query_int.exit.thread.i82_crit_edge, %if.end12.synaptics_query_int.exit.thread.i82_crit_edge
  %retval.0.i.ph.i81 = phi i32 [ %call.i.i.i75, %if.end12.synaptics_query_int.exit.thread.i82_crit_edge ], [ %call2.i.i.i78, %synaptics_send_cmd.exit.i.i80.synaptics_query_int.exit.thread.i82_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp.i.i73) #10
  br label %cleanup

if.end.i90:                                       ; preds = %synaptics_send_cmd.exit.i.i80
  %32 = ptrtoint ptr %resp.i.i73 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %resp.i.i73, align 4
  %34 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %capabilities.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp.i.i73) #10
  %ext_cap_0c.i = getelementptr inbounds %struct.synaptics_device_info, ptr %info, i32 0, i32 5
  %35 = ptrtoint ptr %ext_cap_0c.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %ext_cap_0c.i, align 4
  %ext_cap.i = getelementptr inbounds %struct.synaptics_device_info, ptr %info, i32 0, i32 4
  %36 = ptrtoint ptr %ext_cap.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %ext_cap.i, align 4
  %37 = ptrtoint ptr %identity.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %identity.i, align 4
  %and.i84 = shl i32 %38, 8
  %shl.i85 = and i32 %and.i84, 3840
  %and2.i86 = lshr i32 %38, 16
  %shr3.i87 = and i32 %and2.i86, 255
  %or.i88 = or i32 %shl.i85, %shr3.i87
  call void @__sanitizer_cov_trace_const_cmp4(i32 1796, i32 %or.i88)
  %cmp.i89 = icmp ugt i32 %or.i88, 1796
  %39 = and i32 %33, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 18176, i32 %39)
  %cmp7.not.i = icmp eq i32 %39, 18176
  %or.cond = select i1 %cmp.i89, i1 true, i1 %cmp7.not.i
  br i1 %or.cond, label %if.end9.i, label %if.end.i90.cleanup_crit_edge

if.end.i90.cleanup_crit_edge:                     ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9.i:                                        ; preds = %if.end.i90
  %and11.i = and i32 %33, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.then13.i, label %if.end9.i.if.end15.i_crit_edge

if.end9.i.if.end15.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.then13.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %capabilities.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then13.i, %if.end9.i.if.end15.i_crit_edge
  %41 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %capabilities.i, align 4
  %43 = and i32 %42, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp19.not.i = icmp eq i32 %43, 0
  br i1 %cmp19.not.i, label %if.end15.i.if.end34.i_crit_edge, label %if.then20.i

if.end15.i.if.end34.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i

if.then20.i:                                      ; preds = %if.end15.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp.i72.i) #10
  %44 = ptrtoint ptr %resp.i72.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %resp.i72.i, align 4
  %call.i.i74.i = call i32 @ps2_sliced_command(ptr noundef %ps2dev.i.i.i, i8 noundef zeroext 9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i74.i)
  %tobool.not.i.i75.i = icmp eq i32 %call.i.i74.i, 0
  br i1 %tobool.not.i.i75.i, label %synaptics_send_cmd.exit.i79.i, label %if.then20.i.do.end.i_crit_edge

if.then20.i.do.end.i_crit_edge:                   ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

synaptics_send_cmd.exit.i79.i:                    ; preds = %if.then20.i
  %add.ptr.i76.i = getelementptr inbounds i8, ptr %resp.i72.i, i32 1
  %call2.i.i77.i = call i32 @ps2_command(ptr noundef %ps2dev.i.i.i, ptr noundef %add.ptr.i76.i, i32 noundef 1001) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i77.i)
  %tobool.not.i78.i = icmp eq i32 %call2.i.i77.i, 0
  br i1 %tobool.not.i78.i, label %if.else.i, label %synaptics_send_cmd.exit.i79.i.do.end.i_crit_edge

synaptics_send_cmd.exit.i79.i.do.end.i_crit_edge: ; preds = %synaptics_send_cmd.exit.i79.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

do.end.i:                                         ; preds = %synaptics_send_cmd.exit.i79.i.do.end.i_crit_edge, %if.then20.i.do.end.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp.i72.i) #10
  %45 = ptrtoint ptr %ps2dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ps2dev.i.i.i, align 4
  %dev.i = getelementptr inbounds %struct.serio, ptr %46, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.93) #13
  br label %if.end34.i

if.else.i:                                        ; preds = %synaptics_send_cmd.exit.i79.i
  %47 = ptrtoint ptr %resp.i72.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %resp.i72.i, align 4
  %49 = ptrtoint ptr %ext_cap.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %ext_cap.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp.i72.i) #10
  %50 = and i32 %48, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %50)
  %cmp28.i = icmp ugt i32 %50, 32768
  br i1 %cmp28.i, label %if.then29.i, label %if.else.i.if.end34.i_crit_edge

if.else.i.if.end34.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i

if.then29.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %and31.i = and i32 %48, -61441
  %51 = ptrtoint ptr %ext_cap.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %and31.i, ptr %ext_cap.i, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then29.i, %if.else.i.if.end34.i_crit_edge, %do.end.i, %if.end15.i.if.end34.i_crit_edge
  %52 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %capabilities.i, align 4
  %54 = and i32 %53, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp38.not.i = icmp eq i32 %54, 0
  br i1 %cmp38.not.i, label %if.end34.i.if.end16_crit_edge, label %if.then39.i

if.end34.i.if.end16_crit_edge:                    ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then39.i:                                      ; preds = %if.end34.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp.i83.i) #10
  %55 = ptrtoint ptr %resp.i83.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %resp.i83.i, align 4
  %call.i.i85.i = call i32 @ps2_sliced_command(ptr noundef %ps2dev.i.i.i, i8 noundef zeroext 12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i85.i)
  %tobool.not.i.i86.i = icmp eq i32 %call.i.i85.i, 0
  br i1 %tobool.not.i.i86.i, label %synaptics_send_cmd.exit.i90.i, label %if.then39.i.do.end46.i_crit_edge

if.then39.i.do.end46.i_crit_edge:                 ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end46.i

synaptics_send_cmd.exit.i90.i:                    ; preds = %if.then39.i
  %add.ptr.i87.i = getelementptr inbounds i8, ptr %resp.i83.i, i32 1
  %call2.i.i88.i = call i32 @ps2_command(ptr noundef %ps2dev.i.i.i, ptr noundef %add.ptr.i87.i, i32 noundef 1001) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i88.i)
  %tobool.not.i89.i = icmp eq i32 %call2.i.i88.i, 0
  br i1 %tobool.not.i89.i, label %synaptics_query_int.exit93.i, label %synaptics_send_cmd.exit.i90.i.do.end46.i_crit_edge

synaptics_send_cmd.exit.i90.i.do.end46.i_crit_edge: ; preds = %synaptics_send_cmd.exit.i90.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end46.i

synaptics_query_int.exit93.i:                     ; preds = %synaptics_send_cmd.exit.i90.i
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %resp.i83.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %resp.i83.i, align 4
  %58 = ptrtoint ptr %ext_cap_0c.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %ext_cap_0c.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp.i83.i) #10
  br label %if.end16

do.end46.i:                                       ; preds = %synaptics_send_cmd.exit.i90.i.do.end46.i_crit_edge, %if.then39.i.do.end46.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp.i83.i) #10
  %59 = ptrtoint ptr %ps2dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ps2dev.i.i.i, align 4
  %dev49.i = getelementptr inbounds %struct.serio, ptr %60, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev49.i, ptr noundef nonnull @.str.96) #13
  br label %if.end16

if.end16:                                         ; preds = %do.end46.i, %synaptics_query_int.exit93.i, %if.end34.i.if.end16_crit_edge
  call fastcc void @synaptics_resolution(ptr noundef %psmouse, ptr noundef %info)
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.i90.cleanup_crit_edge, %synaptics_query_int.exit.thread.i82, %synaptics_query_modes.exit.thread105, %synaptics_query_modes.exit.thread101, %synaptics_firmware_id.exit.thread, %synaptics_model_id.exit.thread, %if.end.i.cleanup_crit_edge, %synaptics_query_int.exit.thread.i
  %retval.0 = phi i32 [ 0, %if.end16 ], [ %retval.0.i.i.ph, %synaptics_model_id.exit.thread ], [ %retval.0.i.i60.ph, %synaptics_firmware_id.exit.thread ], [ %retval.0.i72.ph, %synaptics_query_modes.exit.thread101 ], [ %retval.0.i26.i.ph, %synaptics_query_modes.exit.thread105 ], [ %retval.0.i.ph.i81, %synaptics_query_int.exit.thread.i82 ], [ %retval.0.i.ph.i, %synaptics_query_int.exit.thread.i ], [ -6, %if.end.i.cleanup_crit_edge ], [ -6, %if.end.i90.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @synaptics_init(ptr noundef %psmouse) local_unnamed_addr #0 align 64 {
entry:
  %pdata.i.i = alloca %struct.rmi_device_platform_data, align 4
  %intertouch_board.i.i = alloca %struct.i2c_board_info, align 4
  %info = alloca %struct.synaptics_device_info, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %info) #10
  %0 = call ptr @memset(ptr %info, i32 255, i32 56)
  %call = tail call i32 @psmouse_reset(ptr noundef %psmouse) #10
  %call2 = call fastcc i32 @synaptics_query_hardware(ptr noundef %psmouse, ptr noundef nonnull %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %1 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ps2dev, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %2, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %call2) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %ext_cap_0c = getelementptr inbounds %struct.synaptics_device_info, ptr %info, i32 0, i32 5
  %3 = ptrtoint ptr %ext_cap_0c to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ext_cap_0c, align 4
  %and = and i32 %4, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.if.end9_crit_edge, label %if.then4

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then4:                                         ; preds = %if.end
  %5 = load i32, ptr @synaptics_intertouch, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %if.then4.do.end14.i_crit_edge [
    i32 0, label %if.then4.if.end9_crit_edge
    i32 -1, label %if.then2.i
  ]

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then4.do.end14.i_crit_edge:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14.i

if.then2.i:                                       ; preds = %if.then4
  %call.i = tail call zeroext i1 @psmouse_matches_pnp_id(ptr noundef %psmouse, ptr noundef nonnull @topbuttonpad_pnp_ids) #10
  br i1 %call.i, label %if.then2.i.do.end14.i_crit_edge, label %land.lhs.true.i

if.then2.i.do.end14.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14.i

land.lhs.true.i:                                  ; preds = %if.then2.i
  %call3.i = tail call zeroext i1 @psmouse_matches_pnp_id(ptr noundef %psmouse, ptr noundef nonnull @smbus_pnp_ids) #10
  br i1 %call3.i, label %land.lhs.true.i.do.end14.i_crit_edge, label %if.then4.i

land.lhs.true.i.do.end14.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  %call5.i = tail call zeroext i1 @psmouse_matches_pnp_id(ptr noundef %psmouse, ptr noundef nonnull @forcepad_pnp_ids) #10
  br i1 %call5.i, label %if.then4.i.if.end9_crit_edge, label %do.end.i

if.then4.i.if.end9_crit_edge:                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

do.end.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  %ps2dev.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %7 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ps2dev.i, align 4
  %dev.i = getelementptr inbounds %struct.serio, ptr %8, i32 0, i32 18
  %firmware_id.i = getelementptr inbounds %struct.serio, ptr %8, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.109, ptr noundef %firmware_id.i) #13
  br label %if.end9

do.end14.i:                                       ; preds = %land.lhs.true.i.do.end14.i_crit_edge, %if.then2.i.do.end14.i_crit_edge, %if.then4.do.end14.i_crit_edge
  %ps2dev15.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %9 = ptrtoint ptr %ps2dev15.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ps2dev15.i, align 4
  %dev17.i = getelementptr inbounds %struct.serio, ptr %10, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev17.i, ptr noundef nonnull @.str.112) #13
  %call.i.i = tail call zeroext i1 @psmouse_matches_pnp_id(ptr noundef %psmouse, ptr noundef nonnull @topbuttonpad_pnp_ids) #10
  br i1 %call.i.i, label %land.rhs.i.i, label %do.end14.i.synaptics_create_intertouch.exit.i_crit_edge

do.end14.i.synaptics_create_intertouch.exit.i_crit_edge: ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %synaptics_create_intertouch.exit.i

land.rhs.i.i:                                     ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %ext_cap_10.i.i = getelementptr inbounds %struct.synaptics_device_info, ptr %info, i32 0, i32 6
  %11 = ptrtoint ptr %ext_cap_10.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ext_cap_10.i.i, align 4
  %and.i.i = and i32 %12, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br label %synaptics_create_intertouch.exit.i

synaptics_create_intertouch.exit.i:               ; preds = %land.rhs.i.i, %do.end14.i.synaptics_create_intertouch.exit.i_crit_edge
  %13 = phi i1 [ false, %do.end14.i.synaptics_create_intertouch.exit.i_crit_edge ], [ %tobool.not.i.i, %land.rhs.i.i ]
  %frombool1.i.i = zext i1 %13 to i8
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %pdata.i.i) #10
  %14 = call ptr @memset(ptr %pdata.i.i, i32 0, i32 112)
  %flip_y.i.i = getelementptr inbounds %struct.rmi_device_platform_data, ptr %pdata.i.i, i32 0, i32 3, i32 0, i32 2
  %15 = ptrtoint ptr %flip_y.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %flip_y.i.i, align 2
  %sensor_type.i.i = getelementptr inbounds %struct.rmi_device_platform_data, ptr %pdata.i.i, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %sensor_type.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %sensor_type.i.i, align 4
  %topbuttonpad2.i.i = getelementptr inbounds %struct.rmi_device_platform_data, ptr %pdata.i.i, i32 0, i32 3, i32 6
  %17 = ptrtoint ptr %topbuttonpad2.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %frombool1.i.i, ptr %topbuttonpad2.i.i, align 2
  %gpio_data.i.i = getelementptr inbounds %struct.rmi_device_platform_data, ptr %pdata.i.i, i32 0, i32 5
  %and5.i.i = lshr i32 %4, 20
  %18 = trunc i32 %and5.i.i to i8
  %19 = and i8 %18, 1
  %20 = ptrtoint ptr %gpio_data.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %gpio_data.i.i, align 4
  %trackstick_buttons.i.i = getelementptr inbounds %struct.rmi_device_platform_data, ptr %pdata.i.i, i32 0, i32 5, i32 1
  %ext_cap_108.i.i = getelementptr inbounds %struct.synaptics_device_info, ptr %info, i32 0, i32 6
  %21 = ptrtoint ptr %ext_cap_108.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ext_cap_108.i.i, align 4
  %and9.i.i = lshr i32 %22, 16
  %23 = trunc i32 %and9.i.i to i8
  %24 = and i8 %23, 1
  %25 = ptrtoint ptr %trackstick_buttons.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %trackstick_buttons.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %intertouch_board.i.i) #10
  %26 = call ptr @memcpy(ptr %intertouch_board.i.i, ptr @__const.synaptics_create_intertouch.intertouch_board, i32 56)
  %call15.i.i = call i32 @psmouse_smbus_init(ptr noundef %psmouse, ptr noundef nonnull %intertouch_board.i.i, ptr noundef nonnull %pdata.i.i, i32 noundef 112, i1 noundef zeroext true, i1 noundef zeroext true) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %intertouch_board.i.i) #10
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %pdata.i.i) #10
  %27 = zext i32 %call15.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %call15.i.i, label %synaptics_setup_intertouch.exit [
    i32 0, label %synaptics_create_intertouch.exit.i.cleanup_crit_edge
    i32 -11, label %do.end25.i
  ]

synaptics_create_intertouch.exit.i.cleanup_crit_edge: ; preds = %synaptics_create_intertouch.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end25.i:                                       ; preds = %synaptics_create_intertouch.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %ps2dev15.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ps2dev15.i, align 4
  %dev28.i = getelementptr inbounds %struct.serio, ptr %29, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev28.i, ptr noundef nonnull @.str.115) #13
  br label %if.end9

synaptics_setup_intertouch.exit:                  ; preds = %synaptics_create_intertouch.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %ps2dev15.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ps2dev15.i, align 4
  %dev34.i = getelementptr inbounds %struct.serio, ptr %31, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev34.i, ptr noundef nonnull @.str.118) #13
  br label %if.end9

if.end9:                                          ; preds = %synaptics_setup_intertouch.exit, %do.end25.i, %do.end.i, %if.then4.i.if.end9_crit_edge, %if.then4.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %call.i24 = call fastcc i32 @synaptics_init_ps2(ptr noundef %psmouse, ptr noundef nonnull %info, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool2.not.i = icmp eq i32 %call.i24, 0
  %retval.0.i25 = select i1 %tobool2.not.i, i32 7, i32 %call.i24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i25)
  %cmp = icmp slt i32 %retval.0.i25, 0
  br i1 %cmp, label %if.then11, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  call void @psmouse_smbus_cleanup(ptr noundef %psmouse) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end9.cleanup_crit_edge, %synaptics_create_intertouch.exit.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call.i24, %if.then11 ], [ %retval.0.i25, %if.end9.cleanup_crit_edge ], [ 21, %synaptics_create_intertouch.exit.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %info) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @psmouse_smbus_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ps2_sliced_command(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @synaptics_init_ps2(ptr noundef %psmouse, ptr nocapture noundef %info, i1 noundef zeroext %absolute_mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %board_id4.i = getelementptr inbounds %struct.synaptics_device_info, ptr %info, i32 0, i32 2
  %call.i = tail call zeroext i1 @psmouse_matches_pnp_id(ptr noundef %psmouse, ptr noundef nonnull @.compoundliteral) #10
  br i1 %call.i, label %entry.if.end21.i_crit_edge, label %for.inc.i

entry.if.end21.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.end21.i:                                       ; preds = %for.inc.5.i.if.end21.i_crit_edge, %land.lhs.true.5.i.if.end21.i_crit_edge, %for.inc.3.i.if.end21.i_crit_edge, %for.inc.2.i.if.end21.i_crit_edge, %land.lhs.true14.2.i.if.end21.i_crit_edge, %for.inc.i.if.end21.i_crit_edge, %entry.if.end21.i_crit_edge
  %i.057.lcssa.i = phi i32 [ 2, %land.lhs.true14.2.i.if.end21.i_crit_edge ], [ 0, %entry.if.end21.i_crit_edge ], [ 1, %for.inc.i.if.end21.i_crit_edge ], [ 3, %for.inc.2.i.if.end21.i_crit_edge ], [ 4, %for.inc.3.i.if.end21.i_crit_edge ], [ 6, %for.inc.5.i.if.end21.i_crit_edge ], [ 5, %land.lhs.true.5.i.if.end21.i_crit_edge ]
  %x_min.i = getelementptr [8 x %struct.min_max_quirk], ptr @min_max_pnpid_table, i32 0, i32 %i.057.lcssa.i, i32 2
  %0 = ptrtoint ptr %x_min.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %x_min.i, align 4
  %x_min23.i = getelementptr inbounds %struct.synaptics_device_info, ptr %info, i32 0, i32 12
  %2 = ptrtoint ptr %x_min23.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %x_min23.i, align 4
  %x_max.i = getelementptr [8 x %struct.min_max_quirk], ptr @min_max_pnpid_table, i32 0, i32 %i.057.lcssa.i, i32 3
  %3 = ptrtoint ptr %x_max.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %x_max.i, align 4
  %x_max25.i = getelementptr inbounds %struct.synaptics_device_info, ptr %info, i32 0, i32 10
  %5 = ptrtoint ptr %x_max25.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %x_max25.i, align 4
  %y_min.i = getelementptr [8 x %struct.min_max_quirk], ptr @min_max_pnpid_table, i32 0, i32 %i.057.lcssa.i, i32 4
  %6 = ptrtoint ptr %y_min.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %y_min.i, align 4
  %y_min27.i = getelementptr inbounds %struct.synaptics_device_info, ptr %info, i32 0, i32 13
  %8 = ptrtoint ptr %y_min27.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %y_min27.i, align 4
  %y_max.i = getelementptr [8 x %struct.min_max_quirk], ptr @min_max_pnpid_table, i32 0, i32 %i.057.lcssa.i, i32 5
  %9 = ptrtoint ptr %y_max.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %y_max.i, align 4
  %y_max29.i = getelementptr inbounds %struct.synaptics_device_info, ptr %info, i32 0, i32 11
  %11 = ptrtoint ptr %y_max29.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %y_max29.i, align 4
  %ps2dev.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %12 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ps2dev.i, align 4
  %dev.i = getelementptr inbounds %struct.serio, ptr %13, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.24, i32 noundef %1, i32 noundef %4, i32 noundef %7, i32 noundef %10) #13
  br label %synaptics_apply_quirks.exit

for.inc.i:                                        ; preds = %entry
  %call.1.i = tail call zeroext i1 @psmouse_matches_pnp_id(ptr noundef %psmouse, ptr noundef nonnull @.compoundliteral.28) #10
  br i1 %call.1.i, label %for.inc.i.if.end21.i_crit_edge, label %for.inc.1.i

for.inc.i.if.end21.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %call.2.i = tail call zeroext i1 @psmouse_matches_pnp_id(ptr noundef %psmouse, ptr noundef nonnull @.compoundliteral.35) #10
  br i1 %call.2.i, label %land.lhs.true14.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2.i

land.lhs.true14.2.i:                              ; preds = %for.inc.1.i
  %14 = ptrtoint ptr %board_id4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %board_id4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2961, i32 %15)
  %cmp19.2.i = icmp ugt i32 %15, 2961
  br i1 %cmp19.2.i, label %land.lhs.true14.2.i.for.inc.2.i_crit_edge, label %land.lhs.true14.2.i.if.end21.i_crit_edge

land.lhs.true14.2.i.if.end21.i_crit_edge:         ; preds = %land.lhs.true14.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

land.lhs.true14.2.i.for.inc.2.i_crit_edge:        ; preds = %land.lhs.true14.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %land.lhs.true14.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %call.3.i = tail call zeroext i1 @psmouse_matches_pnp_id(ptr noundef %psmouse, ptr noundef nonnull @.compoundliteral.37) #10
  br i1 %call.3.i, label %for.inc.2.i.if.end21.i_crit_edge, label %for.inc.3.i

for.inc.2.i.if.end21.i_crit_edge:                 ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %call.4.i = tail call zeroext i1 @psmouse_matches_pnp_id(ptr noundef %psmouse, ptr noundef nonnull @.compoundliteral.39) #10
  br i1 %call.4.i, label %for.inc.3.i.if.end21.i_crit_edge, label %for.inc.4.i

for.inc.3.i.if.end21.i_crit_edge:                 ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %call.5.i = tail call zeroext i1 @psmouse_matches_pnp_id(ptr noundef %psmouse, ptr noundef nonnull @.compoundliteral.41) #10
  br i1 %call.5.i, label %land.lhs.true.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5.i

land.lhs.true.5.i:                                ; preds = %for.inc.4.i
  %16 = ptrtoint ptr %board_id4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %board_id4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2691, i32 %17)
  %.not = icmp eq i32 %17, 2691
  br i1 %.not, label %land.lhs.true.5.i.if.end21.i_crit_edge, label %land.lhs.true.5.i.for.inc.5.i_crit_edge

land.lhs.true.5.i.for.inc.5.i_crit_edge:          ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5.i

land.lhs.true.5.i.if.end21.i_crit_edge:           ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

for.inc.5.i:                                      ; preds = %land.lhs.true.5.i.for.inc.5.i_crit_edge, %for.inc.4.i.for.inc.5.i_crit_edge
  %call.6.i = tail call zeroext i1 @psmouse_matches_pnp_id(ptr noundef %psmouse, ptr noundef nonnull @.compoundliteral.42) #10
  br i1 %call.6.i, label %for.inc.5.i.if.end21.i_crit_edge, label %for.inc.5.i.synaptics_apply_quirks.exit_crit_edge

for.inc.5.i.synaptics_apply_quirks.exit_crit_edge: ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %synaptics_apply_quirks.exit

for.inc.5.i.if.end21.i_crit_edge:                 ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

synaptics_apply_quirks.exit:                      ; preds = %for.inc.5.i.synaptics_apply_quirks.exit_crit_edge, %if.end21.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 108) #14
  %19 = ptrtoint ptr %psmouse to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i, ptr %psmouse, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %synaptics_apply_quirks.exit.cleanup90_crit_edge, label %if.end

synaptics_apply_quirks.exit.cleanup90_crit_edge:  ; preds = %synaptics_apply_quirks.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup90

if.end:                                           ; preds = %synaptics_apply_quirks.exit
  %frombool = zext i1 %absolute_mode to i8
  %20 = call ptr @memcpy(ptr %call7.i.i, ptr %info, i32 56)
  %absolute_mode3 = getelementptr inbounds %struct.synaptics_data, ptr %call7.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %absolute_mode3 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %frombool, ptr %absolute_mode3, align 4
  %identity = getelementptr inbounds %struct.synaptics_device_info, ptr %info, i32 0, i32 7
  %22 = ptrtoint ptr %identity to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %identity, align 4
  %and = and i32 %23, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %disable_gesture = getelementptr inbounds %struct.synaptics_data, ptr %call7.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %disable_gesture to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %disable_gesture, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %call7 = tail call zeroext i1 @psmouse_matches_pnp_id(ptr noundef %psmouse, ptr noundef nonnull @forcepad_pnp_ids) #10
  %is_forcepad = getelementptr inbounds %struct.synaptics_data, ptr %call7.i.i, i32 0, i32 12
  %frombool8 = zext i1 %call7 to i8
  %25 = ptrtoint ptr %is_forcepad to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %frombool8, ptr %is_forcepad, align 2
  %call9 = tail call fastcc i32 @synaptics_set_mode(ptr noundef %psmouse)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %do.end

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %26 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ps2dev, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %27, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #13
  br label %init_fail

if.end12:                                         ; preds = %if.end6
  %28 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %info, align 4
  %and13 = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %cond = select i1 %tobool14.not, i32 3, i32 0
  %pkt_type = getelementptr inbounds %struct.synaptics_data, ptr %call7.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %cond, ptr %pkt_type, align 8
  %ps2dev18 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %31 = ptrtoint ptr %ps2dev18 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ps2dev18, align 4
  %dev20 = getelementptr inbounds %struct.serio, ptr %32, i32 0, i32 18
  %33 = ptrtoint ptr %identity to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %identity, align 4
  %and22 = lshr i32 %34, 4
  %shr23 = and i32 %and22, 15
  %and25 = and i32 %34, 15
  %and28 = lshr i32 %34, 16
  %shr29 = and i32 %and28, 255
  %capabilities = getelementptr inbounds %struct.synaptics_device_info, ptr %info, i32 0, i32 3
  %35 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %capabilities, align 4
  %ext_cap = getelementptr inbounds %struct.synaptics_device_info, ptr %info, i32 0, i32 4
  %37 = ptrtoint ptr %ext_cap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ext_cap, align 4
  %ext_cap_0c = getelementptr inbounds %struct.synaptics_device_info, ptr %info, i32 0, i32 5
  %39 = ptrtoint ptr %ext_cap_0c to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ext_cap_0c, align 4
  %ext_cap_10 = getelementptr inbounds %struct.synaptics_device_info, ptr %info, i32 0, i32 6
  %41 = ptrtoint ptr %ext_cap_10 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ext_cap_10, align 4
  %43 = ptrtoint ptr %board_id4.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %board_id4.i, align 4
  %firmware_id = getelementptr inbounds %struct.synaptics_device_info, ptr %info, i32 0, i32 1
  %45 = ptrtoint ptr %firmware_id to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %firmware_id, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev20, ptr noundef nonnull @.str.12, i32 noundef %shr23, i32 noundef %and25, i32 noundef %shr29, i32 noundef %29, i32 noundef %36, i32 noundef %38, i32 noundef %40, i32 noundef %42, i32 noundef %44, i32 noundef %46) #13
  %dev1.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 1
  %47 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev1.i, align 4
  %evbit.i = getelementptr inbounds %struct.input_dev, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %evbit.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %evbit.i, align 4
  %and.i.i = and i32 %50, -5
  store i32 %and.i.i, ptr %evbit.i, align 4
  %keybit.i = getelementptr inbounds %struct.input_dev, ptr %48, i32 0, i32 6
  %propbit.i = getelementptr inbounds %struct.input_dev, ptr %48, i32 0, i32 4
  %51 = call ptr @memset(ptr %keybit.i, i32 0, i32 100)
  %52 = ptrtoint ptr %propbit.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %propbit.i, align 4
  %or.i.i = or i32 %53, 1
  store i32 %or.i.i, ptr %propbit.i, align 4
  tail call void @input_set_capability(ptr noundef %48, i32 noundef 1, i32 noundef 272) #10
  %ext_cap_0c.i = getelementptr inbounds %struct.synaptics_device_info, ptr %call7.i.i, i32 0, i32 5
  %54 = ptrtoint ptr %ext_cap_0c.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ext_cap_0c.i, align 4
  %and.i = and i32 %55, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end12.if.end9.i_crit_edge

if.end12.if.end9.i_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.then.i:                                        ; preds = %if.end12
  tail call void @input_set_capability(ptr noundef %48, i32 noundef 1, i32 noundef 273) #10
  %capabilities.i = getelementptr inbounds %struct.synaptics_device_info, ptr %call7.i.i, i32 0, i32 3
  %56 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %capabilities.i, align 4
  %and6.i = and i32 %57, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.then.i.if.end9.i_crit_edge, label %if.then8.i

if.then.i.if.end9.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.then8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @input_set_capability(ptr noundef %48, i32 noundef 1, i32 noundef 274) #10
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then8.i, %if.then.i.if.end9.i_crit_edge, %if.end12.if.end9.i_crit_edge
  %58 = ptrtoint ptr %absolute_mode3 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %absolute_mode3, align 4, !range !324
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool10.not.i = icmp eq i8 %59, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end12.i

if.then11.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @input_set_capability(ptr noundef %48, i32 noundef 2, i32 noundef 0) #10
  tail call void @input_set_capability(ptr noundef %48, i32 noundef 2, i32 noundef 1) #10
  br label %if.end40

if.end12.i:                                       ; preds = %if.end9.i
  tail call fastcc void @set_abs_position_params(ptr noundef %48, ptr noundef nonnull %call7.i.i, i32 noundef 0, i32 noundef 1) #10
  tail call void @input_set_abs_params(ptr noundef %48, i32 noundef 24, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #10
  %60 = ptrtoint ptr %ext_cap_0c.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ext_cap_0c.i, align 4
  %and18.i = and i32 %61, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.else.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.end12.i
  tail call fastcc void @set_abs_position_params(ptr noundef %48, ptr noundef nonnull %call7.i.i, i32 noundef 53, i32 noundef 54) #10
  tail call void @input_set_abs_params(ptr noundef %48, i32 noundef 58, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #10
  %call.i146 = tail call i32 @input_mt_init_slots(ptr noundef %48, i32 noundef 2, i32 noundef 9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %tobool21.not.i = icmp eq i32 %call.i146, 0
  br i1 %tobool21.not.i, label %if.end23.i, label %if.then20.i.do.end36_crit_edge

if.then20.i.do.end36_crit_edge:                   ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end36

if.end23.i:                                       ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @input_set_capability(ptr noundef %48, i32 noundef 1, i32 noundef 335) #10
  tail call void @input_set_capability(ptr noundef %48, i32 noundef 1, i32 noundef 328) #10
  br label %if.end38.i

if.else.i:                                        ; preds = %if.end12.i
  %and25.i = and i32 %61, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.else.i.if.end38.i_crit_edge, label %if.then27.i

if.else.i.if.end38.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38.i

if.then27.i:                                      ; preds = %if.else.i
  tail call fastcc void @set_abs_position_params(ptr noundef %48, ptr noundef nonnull %call7.i.i, i32 noundef 53, i32 noundef 54) #10
  %call29.i = tail call i32 @input_mt_init_slots(ptr noundef %48, i32 noundef 2, i32 noundef 17) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.then34.i, label %if.then27.i.do.end36_crit_edge

if.then27.i.do.end36_crit_edge:                   ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end36

if.then34.i:                                      ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @set_abs_position_params(ptr noundef %48, ptr noundef nonnull %call7.i.i, i32 noundef 0, i32 noundef 1) #10
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then34.i, %if.else.i.if.end38.i_crit_edge, %if.end23.i
  %capabilities39.i = getelementptr inbounds %struct.synaptics_device_info, ptr %call7.i.i, i32 0, i32 3
  %62 = ptrtoint ptr %capabilities39.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %capabilities39.i, align 4
  %and40.i = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  br i1 %tobool41.not.i, label %if.end38.i.if.end43.i_crit_edge, label %if.then42.i

if.end38.i.if.end43.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.i

if.then42.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @input_set_abs_params(ptr noundef %48, i32 noundef 28, i32 noundef 0, i32 noundef 15, i32 noundef 0, i32 noundef 0) #10
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then42.i, %if.end38.i.if.end43.i_crit_edge
  tail call void @input_set_capability(ptr noundef %48, i32 noundef 1, i32 noundef 330) #10
  tail call void @input_set_capability(ptr noundef %48, i32 noundef 1, i32 noundef 325) #10
  %64 = ptrtoint ptr %capabilities39.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %capabilities39.i, align 4
  %and.i131.i = and i32 %65, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i131.i)
  %tobool.not.i.i = icmp eq i32 %and.i131.i, 0
  br i1 %tobool.not.i.i, label %synaptics_has_multifinger.exit.i, label %if.end43.i.if.then45.i_crit_edge

if.end43.i.if.then45.i_crit_edge:                 ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then45.i

synaptics_has_multifinger.exit.i:                 ; preds = %if.end43.i
  %66 = ptrtoint ptr %ext_cap_0c.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ext_cap_0c.i, align 4
  %68 = and i32 %67, 526336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %.not.i = icmp eq i32 %68, 0
  br i1 %.not.i, label %synaptics_has_multifinger.exit.i.if.end46.i_crit_edge, label %synaptics_has_multifinger.exit.i.if.then45.i_crit_edge

synaptics_has_multifinger.exit.i.if.then45.i_crit_edge: ; preds = %synaptics_has_multifinger.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then45.i

synaptics_has_multifinger.exit.i.if.end46.i_crit_edge: ; preds = %synaptics_has_multifinger.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46.i

if.then45.i:                                      ; preds = %synaptics_has_multifinger.exit.i.if.then45.i_crit_edge, %if.end43.i.if.then45.i_crit_edge
  tail call void @input_set_capability(ptr noundef %48, i32 noundef 1, i32 noundef 333) #10
  tail call void @input_set_capability(ptr noundef %48, i32 noundef 1, i32 noundef 334) #10
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then45.i, %synaptics_has_multifinger.exit.i.if.end46.i_crit_edge
  %69 = ptrtoint ptr %capabilities39.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %capabilities39.i, align 4
  %71 = and i32 %70, 262152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %if.end46.i.if.end54.i_crit_edge, label %if.then53.i

if.end46.i.if.end54.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54.i

if.then53.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @input_set_capability(ptr noundef %48, i32 noundef 1, i32 noundef 277) #10
  tail call void @input_set_capability(ptr noundef %48, i32 noundef 1, i32 noundef 278) #10
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then53.i, %if.end46.i.if.end54.i_crit_edge
  %ext_cap_10.i = getelementptr inbounds %struct.synaptics_device_info, ptr %call7.i.i, i32 0, i32 6
  %73 = ptrtoint ptr %ext_cap_10.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ext_cap_10.i, align 8
  %and55.i = and i32 %74, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool56.not.i = icmp eq i32 %and55.i, 0
  br i1 %tobool56.not.i, label %for.cond.preheader.i, label %if.end54.i.if.end59.i_crit_edge

if.end54.i.if.end59.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59.i

for.cond.preheader.i:                             ; preds = %if.end54.i
  %ext_cap.i = getelementptr inbounds %struct.synaptics_device_info, ptr %call7.i.i, i32 0, i32 4
  %75 = ptrtoint ptr %ext_cap.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ext_cap.i, align 8
  %77 = and i32 %76, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp135.not.i = icmp eq i32 %77, 0
  br i1 %cmp135.not.i, label %for.cond.preheader.i.if.end59.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end59.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0136.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %add.i = add nuw nsw i32 %i.0136.i, 256
  tail call void @input_set_capability(ptr noundef %48, i32 noundef 1, i32 noundef %add.i) #10
  %inc.i = add nuw nsw i32 %i.0136.i, 1
  %78 = ptrtoint ptr %ext_cap.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ext_cap.i, align 8
  %and58.i = lshr i32 %79, 12
  %shr.i = and i32 %and58.i, 15
  %cmp.i = icmp ult i32 %inc.i, %shr.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end59.i_crit_edge

for.body.i.if.end59.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end59.i:                                       ; preds = %for.body.i.if.end59.i_crit_edge, %for.cond.preheader.i.if.end59.i_crit_edge, %if.end54.i.if.end59.i_crit_edge
  %80 = ptrtoint ptr %ext_cap_0c.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %ext_cap_0c.i, align 4
  %and61.i = and i32 %81, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i)
  %tobool62.not.i = icmp eq i32 %and61.i, 0
  br i1 %tobool62.not.i, label %if.end59.i.if.end40_crit_edge, label %if.then63.i

if.end59.i.if.end40_crit_edge:                    ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then63.i:                                      ; preds = %if.end59.i
  %82 = ptrtoint ptr %propbit.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %propbit.i, align 4
  %or.i129.i = or i32 %83, 4
  store i32 %or.i129.i, ptr %propbit.i, align 4
  %call66.i = tail call zeroext i1 @psmouse_matches_pnp_id(ptr noundef %psmouse, ptr noundef nonnull @topbuttonpad_pnp_ids) #10
  br i1 %call66.i, label %land.lhs.true.i, label %if.then63.i.if.end40_crit_edge

if.then63.i.if.end40_crit_edge:                   ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

land.lhs.true.i:                                  ; preds = %if.then63.i
  %84 = ptrtoint ptr %ext_cap_10.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %ext_cap_10.i, align 8
  %and68.i = and i32 %85, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68.i)
  %tobool69.not.i = icmp eq i32 %and68.i, 0
  br i1 %tobool69.not.i, label %if.then70.i, label %land.lhs.true.i.if.end40_crit_edge

land.lhs.true.i.if.end40_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then70.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %86 = ptrtoint ptr %propbit.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %propbit.i, align 4
  %or.i130.i = or i32 %87, 16
  store i32 %or.i130.i, ptr %propbit.i, align 4
  br label %if.end40

do.end36:                                         ; preds = %if.then27.i.do.end36_crit_edge, %if.then20.i.do.end36_crit_edge
  %retval.0.i = phi i32 [ %call.i146, %if.then20.i.do.end36_crit_edge ], [ %call29.i, %if.then27.i.do.end36_crit_edge ]
  %88 = ptrtoint ptr %ps2dev18 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ps2dev18, align 4
  %dev39 = getelementptr inbounds %struct.serio, ptr %89, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev39, ptr noundef nonnull @.str.16, i32 noundef %retval.0.i) #13
  br label %init_fail

if.end40:                                         ; preds = %if.then70.i, %land.lhs.true.i.if.end40_crit_edge, %if.then63.i.if.end40_crit_edge, %if.end59.i.if.end40_crit_edge, %if.then11.i
  %90 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %info, align 4
  %and42 = lshr i32 %91, 8
  %shr43 = and i32 %and42, 65280
  %and45 = and i32 %91, 255
  %or = or i32 %shr43, %and45
  %model = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 14
  %92 = ptrtoint ptr %model to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %or, ptr %model, align 4
  %spec.select = select i1 %absolute_mode, ptr @synaptics_process_byte, ptr @psmouse_process_byte
  %spec.select149 = select i1 %absolute_mode, i8 6, i8 3
  %93 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 26
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %spec.select, ptr %93, align 4
  %95 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 10
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %spec.select149, ptr %95, align 2
  %set_rate = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 27
  %97 = ptrtoint ptr %set_rate to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @synaptics_set_rate, ptr %set_rate, align 4
  %disconnect = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 32
  %98 = ptrtoint ptr %disconnect to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @synaptics_disconnect, ptr %disconnect, align 4
  %reconnect = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 30
  %99 = ptrtoint ptr %reconnect to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @synaptics_reconnect, ptr %reconnect, align 4
  %cleanup = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 33
  %100 = ptrtoint ptr %cleanup to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @synaptics_reset, ptr %cleanup, align 4
  %resync_time = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 24
  %101 = ptrtoint ptr %resync_time to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %resync_time, align 4
  %102 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %capabilities, align 4
  %and52 = and i32 %103, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end40.if.end55_crit_edge, label %if.then54

if.end40.if.end55_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then54:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @synaptics_pt_create(ptr noundef %psmouse)
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.end40.if.end55_crit_edge
  %104 = ptrtoint ptr %absolute_mode3 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %absolute_mode3, align 4, !range !324
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool69.not = icmp eq i8 %105, 0
  br i1 %tobool69.not, label %land.lhs.true70, label %if.end55.cleanup90_crit_edge

if.end55.cleanup90_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup90

land.lhs.true70:                                  ; preds = %if.end55
  %106 = ptrtoint ptr %identity to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %identity, align 4
  %and72 = and i32 %107, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %cmp74.not = icmp eq i32 %and72, 0
  br i1 %cmp74.not, label %land.lhs.true70.cleanup90_crit_edge, label %if.then75

land.lhs.true70.cleanup90_crit_edge:              ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup90

if.then75:                                        ; preds = %land.lhs.true70
  %108 = ptrtoint ptr %ps2dev18 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ps2dev18, align 4
  %dev78 = getelementptr inbounds %struct.serio, ptr %109, i32 0, i32 18
  %call79 = tail call i32 @device_create_file(ptr noundef %dev78, ptr noundef nonnull @psmouse_attr_disable_gesture) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.then75.cleanup90_crit_edge, label %do.end84

if.then75.cleanup90_crit_edge:                    ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup90

do.end84:                                         ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #12
  %110 = ptrtoint ptr %ps2dev18 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ps2dev18, align 4
  %dev87 = getelementptr inbounds %struct.serio, ptr %111, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev87, ptr noundef nonnull @.str.22, i32 noundef %call79) #13
  br label %init_fail

init_fail:                                        ; preds = %do.end84, %do.end36, %do.end
  %err.0 = phi i32 [ %call9, %do.end ], [ %retval.0.i, %do.end36 ], [ %call79, %do.end84 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup90

cleanup90:                                        ; preds = %init_fail, %if.then75.cleanup90_crit_edge, %land.lhs.true70.cleanup90_crit_edge, %if.end55.cleanup90_crit_edge, %synaptics_apply_quirks.exit.cleanup90_crit_edge
  %retval.0 = phi i32 [ %err.0, %init_fail ], [ -12, %synaptics_apply_quirks.exit.cleanup90_crit_edge ], [ 0, %if.then75.cleanup90_crit_edge ], [ 0, %land.lhs.true70.cleanup90_crit_edge ], [ 0, %if.end55.cleanup90_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @psmouse_matches_pnp_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @synaptics_set_mode(ptr noundef %psmouse) unnamed_addr #0 align 64 {
entry:
  %param.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  %mode = getelementptr inbounds %struct.synaptics_data, ptr %1, i32 0, i32 2
  %absolute_mode = getelementptr inbounds %struct.synaptics_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %absolute_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %absolute_mode, align 4, !range !324
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %spec.store.select = select i1 %tobool.not, i8 0, i8 -128
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %spec.store.select, ptr %mode, align 4
  %disable_gesture = getelementptr inbounds %struct.synaptics_data, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %disable_gesture to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %disable_gesture, align 1, !range !324
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not = icmp eq i8 %6, 0
  br i1 %tobool3.not, label %entry.if.end9_crit_edge, label %if.then4

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = or i8 %spec.store.select, 4
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %mode, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %entry.if.end9_crit_edge
  %rate = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 21
  %9 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %10)
  %cmp = icmp ugt i32 %10, 79
  br i1 %cmp, label %if.then11, label %if.end9.if.end16_crit_edge

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mode, align 4
  %13 = or i8 %12, 64
  store i8 %13, ptr %mode, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.end9.if.end16_crit_edge
  %capabilities = getelementptr inbounds %struct.synaptics_device_info, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %capabilities, align 4
  %and = and i32 %15, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.end16.if.end23_crit_edge, label %if.then18

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mode, align 4
  %18 = or i8 %17, 1
  store i8 %18, ptr %mode, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.end16.if.end23_crit_edge
  %19 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %mode, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param.i) #10
  %ps2dev.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %call.i = tail call i32 @ps2_sliced_command(ptr noundef %ps2dev.i, i8 noundef zeroext %20) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %synaptics_mode_cmd.exit, label %synaptics_mode_cmd.exit.thread

synaptics_mode_cmd.exit.thread:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param.i) #10
  br label %cleanup

synaptics_mode_cmd.exit:                          ; preds = %if.end23
  %21 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 20, ptr %param.i, align 1
  %call2.i = call i32 @ps2_command(ptr noundef %ps2dev.i, ptr noundef nonnull %param.i, i32 noundef 4339) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool25.not = icmp eq i32 %call2.i, 0
  br i1 %tobool25.not, label %if.end27, label %synaptics_mode_cmd.exit.cleanup_crit_edge

synaptics_mode_cmd.exit.cleanup_crit_edge:        ; preds = %synaptics_mode_cmd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end27:                                         ; preds = %synaptics_mode_cmd.exit
  %22 = ptrtoint ptr %absolute_mode to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %absolute_mode, align 4, !range !324
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool29.not = icmp eq i8 %23, 0
  br i1 %tobool29.not, label %if.end27.cleanup_crit_edge, label %land.lhs.true

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end27
  %ext_cap_0c.i = getelementptr inbounds %struct.synaptics_device_info, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %ext_cap_0c.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ext_cap_0c.i, align 4
  %26 = and i32 %25, 526336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %.not = icmp eq i32 %26, 0
  br i1 %.not, label %land.lhs.true.cleanup_crit_edge, label %if.then33

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then33:                                        ; preds = %land.lhs.true
  %call.i59 = call i32 @ps2_sliced_command(ptr noundef %ps2dev.i, i8 noundef zeroext 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59)
  %tobool.not.i60 = icmp eq i32 %call.i59, 0
  br i1 %tobool.not.i60, label %synaptics_set_advanced_gesture_mode.exit, label %if.then33.do.end_crit_edge

if.then33.do.end_crit_edge:                       ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

synaptics_set_advanced_gesture_mode.exit:         ; preds = %if.then33
  %call2.i61 = call i32 @ps2_command(ptr noundef %ps2dev.i, ptr noundef nonnull @synaptics_set_advanced_gesture_mode.param, i32 noundef 4339) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i61)
  %tobool35.not = icmp eq i32 %call2.i61, 0
  br i1 %tobool35.not, label %synaptics_set_advanced_gesture_mode.exit.cleanup_crit_edge, label %synaptics_set_advanced_gesture_mode.exit.do.end_crit_edge

synaptics_set_advanced_gesture_mode.exit.do.end_crit_edge: ; preds = %synaptics_set_advanced_gesture_mode.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

synaptics_set_advanced_gesture_mode.exit.cleanup_crit_edge: ; preds = %synaptics_set_advanced_gesture_mode.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %synaptics_set_advanced_gesture_mode.exit.do.end_crit_edge, %if.then33.do.end_crit_edge
  %retval.0.i6368 = phi i32 [ %call2.i61, %synaptics_set_advanced_gesture_mode.exit.do.end_crit_edge ], [ %call.i59, %if.then33.do.end_crit_edge ]
  %27 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ps2dev.i, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %28, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45, i32 noundef %retval.0.i6368) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %synaptics_set_advanced_gesture_mode.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %synaptics_mode_cmd.exit.cleanup_crit_edge, %synaptics_mode_cmd.exit.thread
  %retval.0 = phi i32 [ %retval.0.i6368, %do.end ], [ %call2.i, %synaptics_mode_cmd.exit.cleanup_crit_edge ], [ 0, %synaptics_set_advanced_gesture_mode.exit.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end27.cleanup_crit_edge ], [ %call.i, %synaptics_mode_cmd.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @synaptics_process_byte(ptr noundef readonly %psmouse) #0 align 64 {
entry:
  %hw.i.i.i = alloca [2 x ptr], align 4
  %pos.i.i.i = alloca [2 x %struct.input_mt_pos], align 8
  %slot.i.i.i = alloca [2 x i32], align 4
  %hw.i = alloca %struct.synaptics_hw_state, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  %pktcnt = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 9
  %2 = ptrtoint ptr %pktcnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pktcnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %3)
  %cmp = icmp ugt i8 %3, 5
  br i1 %cmp, label %if.then, label %if.end18

if.then:                                          ; preds = %entry
  %pkt_type = getelementptr inbounds %struct.synaptics_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pkt_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2 = icmp eq i32 %5, 0
  br i1 %cmp2, label %if.then5, label %if.then.if.end_crit_edge, !prof !325

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call fastcc i32 @synaptics_detect_pkt_type(ptr noundef %psmouse)
  %6 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call, ptr %pkt_type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %capabilities = getelementptr inbounds %struct.synaptics_device_info, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %capabilities, align 4
  %and = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %packet = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 7
  %9 = ptrtoint ptr %packet to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %packet, align 1
  %11 = and i8 %10, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %11)
  %cmp.i = icmp eq i8 %11, -124
  br i1 %cmp.i, label %synaptics_is_pt_packet.exit, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

synaptics_is_pt_packet.exit:                      ; preds = %land.lhs.true
  %arrayidx2.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 3
  %12 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx2.i, align 1
  %14 = and i8 %13, -52
  call void @__sanitizer_cov_trace_const_cmp1(i8 -60, i8 %14)
  %cmp5.i.not = icmp eq i8 %14, -60
  br i1 %cmp5.i.not, label %if.then10, label %synaptics_is_pt_packet.exit.if.else_crit_edge

synaptics_is_pt_packet.exit.if.else_crit_edge:    ; preds = %synaptics_is_pt_packet.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then10:                                        ; preds = %synaptics_is_pt_packet.exit
  %pt_port = getelementptr inbounds %struct.synaptics_data, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %pt_port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pt_port, align 4
  %tobool11.not = icmp eq ptr %16, null
  br i1 %tobool11.not, label %if.then10.cleanup_crit_edge, label %if.then12

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then12:                                        ; preds = %if.then10
  %driver_data.i.i.i = getelementptr inbounds %struct.serio, ptr %16, i32 0, i32 18, i32 8
  %17 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i.i.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.then12.if.end13.sink.split.i_crit_edge, label %land.lhs.true.i

if.then12.if.end13.sink.split.i_crit_edge:        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.sink.split.i

land.lhs.true.i:                                  ; preds = %if.then12
  %state.i = getelementptr inbounds %struct.psmouse, ptr %18, i32 0, i32 18
  %19 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %cmp.i36 = icmp eq i32 %20, 4
  br i1 %cmp.i36, label %if.then.i, label %land.lhs.true.i.if.end13.sink.split.i_crit_edge

land.lhs.true.i.if.end13.sink.split.i_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.sink.split.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %arrayidx.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 1
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i, align 1
  %call1.i = tail call i32 @serio_interrupt(ptr noundef nonnull %16, i8 noundef zeroext %22, i32 noundef 0) #10
  %arrayidx2.i37 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 4
  %23 = ptrtoint ptr %arrayidx2.i37 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx2.i37, align 1
  %call3.i = tail call i32 @serio_interrupt(ptr noundef nonnull %16, i8 noundef zeroext %24, i32 noundef 0) #10
  %arrayidx4.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 5
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx4.i, align 1
  %call5.i = tail call i32 @serio_interrupt(ptr noundef nonnull %16, i8 noundef zeroext %26, i32 noundef 0) #10
  %pktsize.i = getelementptr inbounds %struct.psmouse, ptr %18, i32 0, i32 10
  %27 = ptrtoint ptr %pktsize.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %pktsize.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %28)
  %cmp6.i = icmp eq i8 %28, 4
  br i1 %cmp6.i, label %if.then.i.if.end13.sink.split.i_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i.if.end13.sink.split.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.sink.split.i

if.end13.sink.split.i:                            ; preds = %if.then.i.if.end13.sink.split.i_crit_edge, %land.lhs.true.i.if.end13.sink.split.i_crit_edge, %if.then12.if.end13.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 2, %if.then.i.if.end13.sink.split.i_crit_edge ], [ 1, %land.lhs.true.i.if.end13.sink.split.i_crit_edge ], [ 1, %if.then12.if.end13.sink.split.i_crit_edge ]
  %arrayidx9.i = getelementptr i8, ptr %packet, i32 %.sink.i
  %29 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx9.i, align 1
  %call10.i = tail call i32 @serio_interrupt(ptr noundef nonnull %16, i8 noundef zeroext %30, i32 noundef 0) #10
  br label %cleanup

if.else:                                          ; preds = %synaptics_is_pt_packet.exit.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %dev1.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 1
  %31 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev1.i, align 4
  %33 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %hw.i) #10
  %packet.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 7
  %35 = call ptr @memset(ptr %hw.i, i32 0, i32 20)
  %36 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %34, align 4
  %and.i.i = and i32 %37, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else196.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.else
  %38 = ptrtoint ptr %packet.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %packet.i, align 1
  %conv.i.i = zext i8 %39 to i32
  %and1.i.i = lshr i32 %conv.i.i, 2
  %40 = and i32 %and1.i.i, 12
  %and4.i.i = lshr i32 %conv.i.i, 1
  %41 = and i32 %and4.i.i, 2
  %or.i.i = or i32 %40, %41
  %arrayidx6.i.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 3
  %42 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx6.i.i, align 1
  %44 = lshr i8 %43, 2
  %45 = and i8 %44, 1
  %46 = zext i8 %45 to i32
  %or10.i.i = or i32 %or.i.i, %46
  %w.i.i = getelementptr inbounds %struct.synaptics_hw_state, ptr %hw.i, i32 0, i32 3
  %47 = ptrtoint ptr %w.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or10.i.i, ptr %w.i.i, align 4
  %ext_cap_0c.i.i.i = getelementptr inbounds %struct.synaptics_device_info, ptr %34, i32 0, i32 5
  %48 = ptrtoint ptr %ext_cap_0c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ext_cap_0c.i.i.i, align 4
  %50 = and i32 %49, 526336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %51 = icmp ne i32 %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %or10.i.i)
  %cmp.i.i = icmp eq i32 %or10.i.i, 2
  %or.cond.i.i = select i1 %51, i1 %cmp.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then14.i.i, label %if.end.i.i

if.then14.i.i:                                    ; preds = %if.then.i.i
  %arrayidx.i.i.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 5
  %52 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.i.i.i, align 1
  %54 = lshr i8 %53, 4
  %55 = and i8 %54, 3
  %56 = zext i8 %55 to i32
  %57 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %56, label %if.then14.i.i.synaptics_process_packet.exit_crit_edge [
    i32 1, label %sw.bb.i.i.i
    i32 2, label %sw.bb25.i.i.i
  ]

if.then14.i.i.synaptics_process_packet.exit_crit_edge: ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %synaptics_process_packet.exit

sw.bb.i.i.i:                                      ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %agm1.i.i.i = getelementptr inbounds %struct.synaptics_data, ptr %34, i32 0, i32 7
  %w2.i.i.i = getelementptr inbounds %struct.synaptics_data, ptr %34, i32 0, i32 7, i32 3
  %58 = ptrtoint ptr %w2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 2, ptr %w2.i.i.i, align 4
  %arrayidx3.i.i.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 4
  %59 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx3.i.i.i, align 1
  %61 = and i8 %60, 15
  %and5.i.i.i = zext i8 %61 to i32
  %arrayidx6.i.i.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 1
  %62 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx6.i.i.i, align 1
  %conv7.i.i.i = zext i8 %63 to i32
  %64 = shl nuw nsw i32 %and5.i.i.i, 9
  %65 = shl nuw nsw i32 %conv7.i.i.i, 1
  %shl8.i.i.i = or i32 %64, %65
  %66 = ptrtoint ptr %agm1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %shl8.i.i.i, ptr %agm1.i.i.i, align 4
  %67 = load i8, ptr %arrayidx3.i.i.i, align 1
  %68 = and i8 %67, -16
  %and11.i.i.i = zext i8 %68 to i32
  %arrayidx13.i.i.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 2
  %69 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx13.i.i.i, align 1
  %conv14.i.i.i = zext i8 %70 to i32
  %71 = shl nuw nsw i32 %and11.i.i.i, 5
  %72 = shl nuw nsw i32 %conv14.i.i.i, 1
  %shl16.i.i.i = or i32 %71, %72
  %y.i.i.i = getelementptr inbounds %struct.synaptics_data, ptr %34, i32 0, i32 7, i32 1
  %73 = ptrtoint ptr %y.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %shl16.i.i.i, ptr %y.i.i.i, align 4
  %74 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx6.i.i, align 1
  %76 = and i8 %75, 48
  %77 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx.i.i.i, align 1
  %79 = and i8 %78, 15
  %or2339.i.i.i = or i8 %79, %76
  %80 = shl nuw nsw i8 %or2339.i.i.i, 1
  %shl24.i.i.i = zext i8 %80 to i32
  %z.i.i.i = getelementptr inbounds %struct.synaptics_data, ptr %34, i32 0, i32 7, i32 2
  %81 = ptrtoint ptr %z.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %shl24.i.i.i, ptr %z.i.i.i, align 4
  br label %synaptics_process_packet.exit

sw.bb25.i.i.i:                                    ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx26.i.i.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 1
  %82 = ptrtoint ptr %arrayidx26.i.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx26.i.i.i, align 1
  %conv27.i.i.i = zext i8 %83 to i32
  %agm_count.i.i.i = getelementptr inbounds %struct.synaptics_data, ptr %34, i32 0, i32 8
  %84 = ptrtoint ptr %agm_count.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %conv27.i.i.i, ptr %agm_count.i.i.i, align 4
  br label %synaptics_process_packet.exit

if.end.i.i:                                       ; preds = %if.then.i.i
  %85 = and i8 %43, 16
  %arrayidx18.i.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 1
  %86 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx18.i.i, align 1
  %88 = and i8 %87, 15
  %shl374375.i.i = or i8 %88, %85
  %shl374.i.i = zext i8 %shl374375.i.i to i32
  %or22.i.i = shl nuw nsw i32 %shl374.i.i, 8
  %arrayidx23.i.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 4
  %89 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx23.i.i, align 1
  %conv24.i.i = zext i8 %90 to i32
  %or25.i.i = or i32 %or22.i.i, %conv24.i.i
  %91 = ptrtoint ptr %hw.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %or25.i.i, ptr %hw.i, align 4
  %92 = and i8 %43, 32
  %and28.i.i = zext i8 %92 to i32
  %shl29.i.i = shl nuw nsw i32 %and28.i.i, 7
  %93 = and i8 %87, -16
  %and32.i.i = zext i8 %93 to i32
  %shl33.i.i = shl nuw nsw i32 %and32.i.i, 4
  %or34.i.i = or i32 %shl33.i.i, %shl29.i.i
  %arrayidx35.i.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 5
  %94 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx35.i.i, align 1
  %conv36.i.i = zext i8 %95 to i32
  %or37.i.i = or i32 %or34.i.i, %conv36.i.i
  %y.i.i = getelementptr inbounds %struct.synaptics_hw_state, ptr %hw.i, i32 0, i32 1
  %96 = ptrtoint ptr %y.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %or37.i.i, ptr %y.i.i, align 4
  %arrayidx38.i.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 2
  %97 = ptrtoint ptr %arrayidx38.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx38.i.i, align 1
  %conv39.i.i = zext i8 %98 to i32
  %z.i.i = getelementptr inbounds %struct.synaptics_hw_state, ptr %hw.i, i32 0, i32 2
  %99 = ptrtoint ptr %z.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %conv39.i.i, ptr %z.i.i, align 4
  %left.i.i = getelementptr inbounds %struct.synaptics_hw_state, ptr %hw.i, i32 0, i32 4
  %100 = ptrtoint ptr %left.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %bf.load.i.i = load i8, ptr %left.i.i, align 4
  %bf.shl.i.i = shl i8 %39, 7
  %bf.clear.i.i = and i8 %bf.load.i.i, 63
  %bf.set.i.i = or i8 %bf.clear.i.i, %bf.shl.i.i
  %101 = shl i8 %39, 5
  %bf.shl51.i.i = and i8 %101, 64
  %bf.set53.i.i = or i8 %bf.set.i.i, %bf.shl51.i.i
  store i8 %bf.set53.i.i, ptr %left.i.i, align 4
  %is_forcepad.i.i = getelementptr inbounds %struct.synaptics_data, ptr %34, i32 0, i32 12
  %102 = ptrtoint ptr %is_forcepad.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %is_forcepad.i.i, align 2, !range !324
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool55.not.i.i = icmp eq i8 %103, 0
  br i1 %tobool55.not.i.i, label %if.else99.i.i, label %if.then56.i.i

if.then56.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %cmp58.i.i = icmp eq i8 %98, 0
  br i1 %cmp58.i.i, label %if.then60.i.i, label %if.else.i.i

if.then60.i.i:                                    ; preds = %if.then56.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %report_press.i.i = getelementptr inbounds %struct.synaptics_data, ptr %34, i32 0, i32 11
  %104 = ptrtoint ptr %report_press.i.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %report_press.i.i, align 1
  %press.i.i = getelementptr inbounds %struct.synaptics_data, ptr %34, i32 0, i32 10
  %105 = ptrtoint ptr %press.i.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %press.i.i, align 4
  br label %if.end88.i.i

if.else.i.i:                                      ; preds = %if.then56.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %or10.i.i)
  %cmp62.i.i = icmp ugt i32 %or10.i.i, 3
  br i1 %cmp62.i.i, label %land.lhs.true64.i.i, label %if.else.i.i.if.else85.i.i_crit_edge

if.else.i.i.if.else85.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else85.i.i

land.lhs.true64.i.i:                              ; preds = %if.else.i.i
  %xor381.i.i = xor i8 %43, %39
  %106 = and i8 %xor381.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool70.not.i.i = icmp eq i8 %106, 0
  br i1 %tobool70.not.i.i, label %land.lhs.true64.i.i.if.else85.i.i_crit_edge, label %if.then71.i.i

land.lhs.true64.i.i.if.else85.i.i_crit_edge:      ; preds = %land.lhs.true64.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else85.i.i

if.then71.i.i:                                    ; preds = %land.lhs.true64.i.i
  %press72.i.i = getelementptr inbounds %struct.synaptics_data, ptr %34, i32 0, i32 10
  %107 = ptrtoint ptr %press72.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %press72.i.i, align 4, !range !324
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool73.not.i.i = icmp eq i8 %108, 0
  br i1 %tobool73.not.i.i, label %if.then74.i.i, label %if.else76.i.i

if.then74.i.i:                                    ; preds = %if.then71.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %109 = load volatile i32, ptr @jiffies, align 128
  %press_start.i.i = getelementptr inbounds %struct.synaptics_data, ptr %34, i32 0, i32 9
  %110 = ptrtoint ptr %press_start.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %press_start.i.i, align 4
  %111 = ptrtoint ptr %press72.i.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 1, ptr %press72.i.i, align 4
  br label %if.end88.i.i

if.else76.i.i:                                    ; preds = %if.then71.i.i
  %press_start77.i.i = getelementptr inbounds %struct.synaptics_data, ptr %34, i32 0, i32 9
  %112 = ptrtoint ptr %press_start77.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %press_start77.i.i, align 4
  %add.i.i = add i32 %113, 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %114 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp79.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp79.i.i, label %if.then81.i.i, label %if.else76.i.i.if.end88.i.i_crit_edge

if.else76.i.i.if.end88.i.i_crit_edge:             ; preds = %if.else76.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88.i.i

if.then81.i.i:                                    ; preds = %if.else76.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %report_press82.i.i = getelementptr inbounds %struct.synaptics_data, ptr %34, i32 0, i32 11
  %115 = ptrtoint ptr %report_press82.i.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 1, ptr %report_press82.i.i, align 1
  br label %if.end88.i.i

if.else85.i.i:                                    ; preds = %land.lhs.true64.i.i.if.else85.i.i_crit_edge, %if.else.i.i.if.else85.i.i_crit_edge
  %press86.i.i = getelementptr inbounds %struct.synaptics_data, ptr %34, i32 0, i32 10
  %116 = ptrtoint ptr %press86.i.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %press86.i.i, align 4
  br label %if.end88.i.i

if.end88.i.i:                                     ; preds = %if.else85.i.i, %if.then81.i.i, %if.else76.i.i.if.end88.i.i_crit_edge, %if.then74.i.i, %if.then60.i.i
  %report_press89.i.i = getelementptr inbounds %struct.synaptics_data, ptr %34, i32 0, i32 11
  %117 = ptrtoint ptr %report_press89.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %report_press89.i.i, align 1, !range !324
  %bf.shl95.i.i = shl nuw i8 %118, 7
  %bf.clear96.i.i = and i8 %bf.set53.i.i, 127
  %bf.set97.i.i = or i8 %bf.shl95.i.i, %bf.clear96.i.i
  %119 = ptrtoint ptr %left.i.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %bf.set97.i.i, ptr %left.i.i, align 4
  br label %if.end146.i.i

if.else99.i.i:                                    ; preds = %if.end.i.i
  %and101.i.i = and i32 %49, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101.i.i)
  %tobool102.not.i.i = icmp eq i32 %and101.i.i, 0
  br i1 %tobool102.not.i.i, label %if.else119.i.i, label %if.then103.i.i

if.then103.i.i:                                   ; preds = %if.else99.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %xor108380.i.i = xor i8 %43, %39
  %bf.shl115.i.i = shl i8 %xor108380.i.i, 7
  %bf.clear116.i.i = and i8 %bf.set53.i.i, 127
  %bf.set117.i.i = or i8 %bf.clear116.i.i, %bf.shl115.i.i
  %120 = ptrtoint ptr %left.i.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %bf.set117.i.i, ptr %left.i.i, align 4
  br label %if.end146.i.i

if.else119.i.i:                                   ; preds = %if.else99.i.i
  %capabilities.i.i = getelementptr inbounds %struct.synaptics_device_info, ptr %34, i32 0, i32 3
  %121 = ptrtoint ptr %capabilities.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %capabilities.i.i, align 4
  %and121.i.i = and i32 %122, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121.i.i)
  %tobool122.not.i.i = icmp eq i32 %and121.i.i, 0
  br i1 %tobool122.not.i.i, label %if.else119.i.i.if.end146.i.i_crit_edge, label %if.then123.i.i

if.else119.i.i.if.end146.i.i_crit_edge:           ; preds = %if.else119.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end146.i.i

if.then123.i.i:                                   ; preds = %if.else119.i.i
  %xor128379.i.i = xor i8 %43, %39
  %123 = shl i8 %xor128379.i.i, 5
  %bf.shl134.i.i = and i8 %123, 32
  %bf.clear135.i.i = and i8 %bf.set53.i.i, -33
  %bf.set136.i.i = or i8 %bf.clear135.i.i, %bf.shl134.i.i
  %124 = ptrtoint ptr %left.i.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %bf.set136.i.i, ptr %left.i.i, align 4
  br i1 %cmp.i.i, label %if.then141.i.i, label %if.then123.i.i.if.end146.i.i_crit_edge

if.then123.i.i.if.end146.i.i_crit_edge:           ; preds = %if.then123.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end146.i.i

if.then141.i.i:                                   ; preds = %if.then123.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %scroll.i.i = getelementptr inbounds %struct.synaptics_hw_state, ptr %hw.i, i32 0, i32 6
  %125 = ptrtoint ptr %scroll.i.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %87, ptr %scroll.i.i, align 2
  br label %if.end146.i.i

if.end146.i.i:                                    ; preds = %if.then141.i.i, %if.then123.i.i.if.end146.i.i_crit_edge, %if.else119.i.i.if.end146.i.i_crit_edge, %if.then103.i.i, %if.end88.i.i
  %capabilities148.i.i = getelementptr inbounds %struct.synaptics_device_info, ptr %34, i32 0, i32 3
  %126 = ptrtoint ptr %capabilities148.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %capabilities148.i.i, align 4
  %and149.i.i = and i32 %127, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149.i.i)
  %tobool150.not.i.i = icmp eq i32 %and149.i.i, 0
  br i1 %tobool150.not.i.i, label %if.end146.i.i.if.end180.i.i_crit_edge, label %if.then151.i.i

if.end146.i.i.if.end180.i.i_crit_edge:            ; preds = %if.end146.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end180.i.i

if.then151.i.i:                                   ; preds = %if.end146.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %128 = ptrtoint ptr %packet.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %packet.i, align 1
  %130 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx6.i.i, align 1
  %xor156377.i.i = xor i8 %131, %129
  %132 = ptrtoint ptr %left.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %bf.load160.i.i = load i8, ptr %left.i.i, align 4
  %133 = shl i8 %xor156377.i.i, 4
  %bf.shl162.i.i = and i8 %133, 16
  %bf.clear163.i.i = and i8 %bf.load160.i.i, -25
  %bf.set164.i.i = or i8 %bf.shl162.i.i, %bf.clear163.i.i
  %134 = shl i8 %xor156377.i.i, 2
  %bf.shl176.i.i = and i8 %134, 8
  %bf.set178.i.i = or i8 %bf.set164.i.i, %bf.shl176.i.i
  store i8 %bf.set178.i.i, ptr %left.i.i, align 4
  br label %if.end180.i.i

if.end180.i.i:                                    ; preds = %if.then151.i.i, %if.end146.i.i.if.end180.i.i_crit_edge
  %ext_cap.i.i = getelementptr inbounds %struct.synaptics_device_info, ptr %34, i32 0, i32 4
  %135 = ptrtoint ptr %ext_cap.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %ext_cap.i.i, align 4
  %137 = and i32 %136, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %cmp184.not.i.i = icmp eq i32 %137, 0
  br i1 %cmp184.not.i.i, label %if.end180.i.i.if.end256.i.i_crit_edge, label %land.lhs.true186.i.i

if.end180.i.i.if.end256.i.i_crit_edge:            ; preds = %if.end180.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end256.i.i

land.lhs.true186.i.i:                             ; preds = %if.end180.i.i
  %138 = ptrtoint ptr %packet.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %packet.i, align 1
  %140 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx6.i.i, align 1
  %xor191376.i.i = xor i8 %141, %139
  %142 = and i8 %xor191376.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool193.not.i.i = icmp eq i8 %142, 0
  br i1 %tobool193.not.i.i, label %land.lhs.true186.i.i.if.end256.i.i_crit_edge, label %if.then194.i.i

land.lhs.true186.i.i.if.end256.i.i_crit_edge:     ; preds = %land.lhs.true186.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end256.i.i

if.then194.i.i:                                   ; preds = %land.lhs.true186.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and.i.i.i = lshr i32 %136, 12
  %shr.i.i.i = and i32 %and.i.i.i, 15
  %add.i.i.i = add nuw nsw i32 %shr.i.i.i, 1
  %shr1.i.i.i = lshr i32 %add.i.i.i, 1
  %sub2.i.i.i = sub nuw nsw i32 32, %shr1.i.i.i
  %shr3.i.i.i = lshr i32 -1, %sub2.i.i.i
  %143 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx23.i.i, align 1
  %145 = trunc i32 %shr3.i.i.i to i8
  %conv7.i383.i.i = and i8 %144, %145
  %ext_buttons.i.i.i = getelementptr inbounds %struct.synaptics_hw_state, ptr %hw.i, i32 0, i32 5
  %146 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx35.i.i, align 1
  %conv9.i.i.i = zext i8 %147 to i32
  %and10.i.i.i = and i32 %shr3.i.i.i, %conv9.i.i.i
  %shl.i.i.i = shl nuw nsw i32 %and10.i.i.i, %shr1.i.i.i
  %148 = trunc i32 %shl.i.i.i to i8
  %conv13.i.i.i = or i8 %conv7.i383.i.i, %148
  %149 = ptrtoint ptr %ext_buttons.i.i.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %conv13.i.i.i, ptr %ext_buttons.i.i.i, align 1
  br label %if.end256.i.i

if.else196.i.i:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx197.i.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 1
  %150 = ptrtoint ptr %arrayidx197.i.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx197.i.i, align 1
  %152 = and i8 %151, 31
  %and199.i.i = zext i8 %152 to i32
  %shl200.i.i = shl nuw nsw i32 %and199.i.i, 8
  %arrayidx201.i.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 2
  %153 = ptrtoint ptr %arrayidx201.i.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx201.i.i, align 1
  %conv202.i.i = zext i8 %154 to i32
  %or203.i.i = or i32 %shl200.i.i, %conv202.i.i
  %155 = ptrtoint ptr %hw.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %or203.i.i, ptr %hw.i, align 4
  %arrayidx205.i.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 4
  %156 = ptrtoint ptr %arrayidx205.i.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx205.i.i, align 1
  %158 = and i8 %157, 31
  %and207.i.i = zext i8 %158 to i32
  %shl208.i.i = shl nuw nsw i32 %and207.i.i, 8
  %arrayidx209.i.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 5
  %159 = ptrtoint ptr %arrayidx209.i.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %arrayidx209.i.i, align 1
  %conv210.i.i = zext i8 %160 to i32
  %or211.i.i = or i32 %shl208.i.i, %conv210.i.i
  %y212.i.i = getelementptr inbounds %struct.synaptics_hw_state, ptr %hw.i, i32 0, i32 1
  %161 = ptrtoint ptr %y212.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %or211.i.i, ptr %y212.i.i, align 4
  %162 = ptrtoint ptr %packet.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %packet.i, align 1
  %164 = shl i8 %163, 2
  %165 = and i8 %164, -64
  %arrayidx217.i.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 3
  %166 = ptrtoint ptr %arrayidx217.i.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %arrayidx217.i.i, align 1
  %168 = and i8 %167, 63
  %or220372.i.i = or i8 %165, %168
  %or220.i.i = zext i8 %or220372.i.i to i32
  %z221.i.i = getelementptr inbounds %struct.synaptics_hw_state, ptr %hw.i, i32 0, i32 2
  %169 = ptrtoint ptr %z221.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %or220.i.i, ptr %z221.i.i, align 4
  %170 = lshr i8 %151, 4
  %171 = and i8 %170, 8
  %172 = lshr i8 %163, 1
  %173 = and i8 %172, 2
  %or230373.i.i = or i8 %173, %171
  %or230.i.i = zext i8 %or230373.i.i to i32
  %w231.i.i = getelementptr inbounds %struct.synaptics_hw_state, ptr %hw.i, i32 0, i32 3
  %174 = ptrtoint ptr %w231.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %or230.i.i, ptr %w231.i.i, align 4
  %left237.i.i = getelementptr inbounds %struct.synaptics_hw_state, ptr %hw.i, i32 0, i32 4
  %175 = ptrtoint ptr %left237.i.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %bf.load238.i.i = load i8, ptr %left237.i.i, align 4
  %bf.shl240.i.i = shl i8 %163, 7
  %bf.clear241.i.i = and i8 %bf.load238.i.i, 63
  %bf.set242.i.i = or i8 %bf.clear241.i.i, %bf.shl240.i.i
  %176 = shl i8 %163, 5
  %bf.shl252.i.i = and i8 %176, 64
  %bf.set254.i.i = or i8 %bf.set242.i.i, %bf.shl252.i.i
  store i8 %bf.set254.i.i, ptr %left237.i.i, align 4
  br label %if.end256.i.i

if.end256.i.i:                                    ; preds = %if.else196.i.i, %if.then194.i.i, %land.lhs.true186.i.i.if.end256.i.i_crit_edge, %if.end180.i.i.if.end256.i.i_crit_edge
  %177 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %hw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8176, i32 %178)
  %cmp258.i.i = icmp sgt i32 %178, 8176
  br i1 %cmp258.i.i, label %if.then260.i.i, label %if.else263.i.i

if.then260.i.i:                                   ; preds = %if.end256.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub262.i.i = add nsw i32 %178, -8192
  br label %if.end270.sink.split.i.i

if.else263.i.i:                                   ; preds = %if.end256.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8176, i32 %178)
  %cmp265.i.i = icmp eq i32 %178, 8176
  br i1 %cmp265.i.i, label %if.else263.i.i.if.end270.sink.split.i.i_crit_edge, label %if.else263.i.i.if.end270.i.i_crit_edge

if.else263.i.i.if.end270.i.i_crit_edge:           ; preds = %if.else263.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end270.i.i

if.else263.i.i.if.end270.sink.split.i.i_crit_edge: ; preds = %if.else263.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end270.sink.split.i.i

if.end270.sink.split.i.i:                         ; preds = %if.else263.i.i.if.end270.sink.split.i.i_crit_edge, %if.then260.i.i
  %.sink.i.i = phi i32 [ %sub262.i.i, %if.then260.i.i ], [ 6143, %if.else263.i.i.if.end270.sink.split.i.i_crit_edge ]
  %179 = ptrtoint ptr %hw.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %.sink.i.i, ptr %hw.i, align 4
  br label %if.end270.i.i

if.end270.i.i:                                    ; preds = %if.end270.sink.split.i.i, %if.else263.i.i.if.end270.i.i_crit_edge
  %y271.i.i = getelementptr inbounds %struct.synaptics_hw_state, ptr %hw.i, i32 0, i32 1
  %180 = ptrtoint ptr %y271.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %y271.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8176, i32 %181)
  %cmp272.i.i = icmp sgt i32 %181, 8176
  br i1 %cmp272.i.i, label %if.then274.i.i, label %if.else277.i.i

if.then274.i.i:                                   ; preds = %if.end270.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub276.i.i = add nsw i32 %181, -8192
  br label %if.end.sink.split.i

if.else277.i.i:                                   ; preds = %if.end270.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8176, i32 %181)
  %cmp279.i.i = icmp eq i32 %181, 8176
  br i1 %cmp279.i.i, label %if.else277.i.i.if.end.sink.split.i_crit_edge, label %if.else277.i.i.if.end.i_crit_edge

if.else277.i.i.if.end.i_crit_edge:                ; preds = %if.else277.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.else277.i.i.if.end.sink.split.i_crit_edge:     ; preds = %if.else277.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split.i

if.end.sink.split.i:                              ; preds = %if.else277.i.i.if.end.sink.split.i_crit_edge, %if.then274.i.i
  %.sink.i38 = phi i32 [ %sub276.i.i, %if.then274.i.i ], [ 6143, %if.else277.i.i.if.end.sink.split.i_crit_edge ]
  %182 = ptrtoint ptr %y271.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %.sink.i38, ptr %y271.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.sink.split.i, %if.else277.i.i.if.end.i_crit_edge
  %ext_cap_0c.i = getelementptr inbounds %struct.synaptics_device_info, ptr %34, i32 0, i32 5
  %183 = ptrtoint ptr %ext_cap_0c.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %ext_cap_0c.i, align 4
  %and.i = and i32 %184, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  %185 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %psmouse, align 4
  %z.i148.i = getelementptr inbounds %struct.synaptics_hw_state, ptr %hw.i, i32 0, i32 2
  %187 = ptrtoint ptr %z.i148.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %z.i148.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %cmp.i149.i = icmp eq i32 %188, 0
  br i1 %cmp.i149.i, label %if.then4.i.if.end15.i.i_crit_edge, label %if.else.i151.i

if.then4.i.if.end15.i.i_crit_edge:                ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i.i

if.else.i151.i:                                   ; preds = %if.then4.i
  %w.i150.i = getelementptr inbounds %struct.synaptics_hw_state, ptr %hw.i, i32 0, i32 3
  %189 = ptrtoint ptr %w.i150.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %w.i150.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %190)
  %cmp1.i.i = icmp sgt i32 %190, 3
  br i1 %cmp1.i.i, label %if.else.i151.i.if.end15.i.i_crit_edge, label %if.else3.i.i

if.else.i151.i.if.end15.i.i_crit_edge:            ; preds = %if.else.i151.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i.i

if.else3.i.i:                                     ; preds = %if.else.i151.i
  %191 = zext i32 %190 to i64
  call void @__sanitizer_cov_trace_switch(i64 %191, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %190, label %if.else12.i.i [
    i32 0, label %if.else3.i.i.if.end15.i.i_crit_edge
    i32 1, label %if.then10.i.i
  ]

if.else3.i.i.if.end15.i.i_crit_edge:              ; preds = %if.else3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i.i

if.then10.i.i:                                    ; preds = %if.else3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %agm_count.i.i = getelementptr inbounds %struct.synaptics_data, ptr %186, i32 0, i32 8
  %192 = ptrtoint ptr %agm_count.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %agm_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %tobool.not.i152.i = icmp eq i32 %193, 0
  %spec.select.i.i = select i1 %tobool.not.i152.i, i32 3, i32 %193
  br label %if.end15.i.i

if.else12.i.i:                                    ; preds = %if.else3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.else12.i.i, %if.then10.i.i, %if.else3.i.i.if.end15.i.i_crit_edge, %if.else.i151.i.if.end15.i.i_crit_edge, %if.then4.i.if.end15.i.i_crit_edge
  %num_fingers.0.i.i = phi i32 [ %spec.select.i.i, %if.then10.i.i ], [ 4, %if.else12.i.i ], [ 0, %if.then4.i.if.end15.i.i_crit_edge ], [ 1, %if.else.i151.i.if.end15.i.i_crit_edge ], [ 2, %if.else3.i.i.if.end15.i.i_crit_edge ]
  %194 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %dev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hw.i.i.i) #10
  %196 = getelementptr inbounds [2 x ptr], ptr %hw.i.i.i, i32 0, i32 1
  %197 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %hw.i, ptr %hw.i.i.i, align 4
  %agm.i.i.i = getelementptr inbounds %struct.synaptics_data, ptr %186, i32 0, i32 7
  %198 = ptrtoint ptr %196 to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %agm.i.i.i, ptr %196, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos.i.i.i) #10
  %199 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store8_noabort(i32 %199)
  store i64 -1, ptr %pos.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %slot.i.i.i) #10
  %200 = ptrtoint ptr %slot.i.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 -1, ptr %slot.i.i.i, align 4, !annotation !323
  %201 = getelementptr inbounds [2 x i32], ptr %slot.i.i.i, i32 0, i32 1
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 -1, ptr %201, align 4, !annotation !323
  %203 = call i32 @llvm.smax.i32(i32 %num_fingers.0.i.i, i32 0) #10
  %204 = call i32 @llvm.umin.i32(i32 %203, i32 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %cmp864.not.i.i.i = icmp eq i32 %204, 0
  br i1 %cmp864.not.i.i.i, label %for.end.thread.i.i.i, label %for.body.i.i.i

for.end.thread.i.i.i:                             ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %x_res69.i.i.i = getelementptr inbounds %struct.synaptics_device_info, ptr %186, i32 0, i32 8
  %205 = ptrtoint ptr %x_res69.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %x_res69.i.i.i, align 4
  %mul70.i.i.i = mul i32 %206, 10
  %call1671.i.i.i = call i32 @input_mt_assign_slots(ptr noundef %195, ptr noundef nonnull %slot.i.i.i, ptr noundef nonnull %pos.i.i.i, i32 noundef 0, i32 noundef %mul70.i.i.i) #10
  br label %synaptics_image_sensor_process.exit.i

for.body.i.i.i:                                   ; preds = %if.end15.i.i
  %207 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %hw.i.i.i, align 4
  %209 = ptrtoint ptr %208 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %208, align 4
  %conv.i.i.i = trunc i32 %210 to i16
  %211 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store2_noabort(i32 %211)
  store i16 %conv.i.i.i, ptr %pos.i.i.i, align 8
  %y.i.i154.i = getelementptr inbounds %struct.synaptics_hw_state, ptr %208, i32 0, i32 1
  %212 = ptrtoint ptr %y.i.i154.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %y.i.i154.i, align 4
  %214 = trunc i32 %213 to i16
  %conv12.i.i.i = sub i16 5856, %214
  %y14.i.i.i = getelementptr inbounds [2 x %struct.input_mt_pos], ptr %pos.i.i.i, i32 0, i32 0, i32 1
  %215 = ptrtoint ptr %y14.i.i.i to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 %conv12.i.i.i, ptr %y14.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %204)
  %exitcond.not.i.i.i = icmp eq i32 %204, 1
  br i1 %exitcond.not.i.i.i, label %for.body.i.i.i.for.body20.i.preheader.i.i_crit_edge, label %for.body.i.i.i.1

for.body.i.i.i.for.body20.i.preheader.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body20.i.preheader.i.i

for.body.i.i.i.1:                                 ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i153.i.1 = getelementptr inbounds [2 x ptr], ptr %hw.i.i.i, i32 0, i32 1
  %216 = ptrtoint ptr %arrayidx.i.i153.i.1 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %arrayidx.i.i153.i.1, align 4
  %218 = ptrtoint ptr %217 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %217, align 4
  %conv.i.i.i.1 = trunc i32 %219 to i16
  %arrayidx9.i.i.i.1 = getelementptr inbounds [2 x %struct.input_mt_pos], ptr %pos.i.i.i, i32 0, i32 1
  %220 = ptrtoint ptr %arrayidx9.i.i.i.1 to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 %conv.i.i.i.1, ptr %arrayidx9.i.i.i.1, align 4
  %y.i.i154.i.1 = getelementptr inbounds %struct.synaptics_hw_state, ptr %217, i32 0, i32 1
  %221 = ptrtoint ptr %y.i.i154.i.1 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %y.i.i154.i.1, align 4
  %223 = trunc i32 %222 to i16
  %conv12.i.i.i.1 = sub i16 5856, %223
  %y14.i.i.i.1 = getelementptr inbounds [2 x %struct.input_mt_pos], ptr %pos.i.i.i, i32 0, i32 1, i32 1
  %224 = ptrtoint ptr %y14.i.i.i.1 to i32
  call void @__asan_store2_noabort(i32 %224)
  store i16 %conv12.i.i.i.1, ptr %y14.i.i.i.1, align 2
  br label %for.body20.i.preheader.i.i

for.body20.i.preheader.i.i:                       ; preds = %for.body.i.i.i.1, %for.body.i.i.i.for.body20.i.preheader.i.i_crit_edge
  %x_res.i.i.i = getelementptr inbounds %struct.synaptics_device_info, ptr %186, i32 0, i32 8
  %225 = ptrtoint ptr %x_res.i.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %x_res.i.i.i, align 4
  %mul.i.i.i = mul i32 %226, 10
  %call16.i.i.i = call i32 @input_mt_assign_slots(ptr noundef %195, ptr noundef nonnull %slot.i.i.i, ptr noundef nonnull %pos.i.i.i, i32 noundef %204, i32 noundef %mul.i.i.i) #10
  br label %for.body20.i.i.i

for.body20.i.i.i:                                 ; preds = %for.body20.i.i.i.for.body20.i.i.i_crit_edge, %for.body20.i.preheader.i.i
  %i.167.i.i.i = phi i32 [ %inc31.i.i.i, %for.body20.i.i.i.for.body20.i.i.i_crit_edge ], [ 0, %for.body20.i.preheader.i.i ]
  %arrayidx21.i.i.i = getelementptr [2 x i32], ptr %slot.i.i.i, i32 0, i32 %i.167.i.i.i
  %227 = ptrtoint ptr %arrayidx21.i.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %arrayidx21.i.i.i, align 4
  call void @input_event(ptr noundef %195, i32 noundef 3, i32 noundef 47, i32 noundef %228) #10
  %call22.i.i.i = call zeroext i1 @input_mt_report_slot_state(ptr noundef %195, i32 noundef 0, i1 noundef zeroext true) #10
  %arrayidx23.i.i.i = getelementptr [2 x %struct.input_mt_pos], ptr %pos.i.i.i, i32 0, i32 %i.167.i.i.i
  %229 = ptrtoint ptr %arrayidx23.i.i.i to i32
  call void @__asan_load2_noabort(i32 %229)
  %230 = load i16, ptr %arrayidx23.i.i.i, align 4
  %conv25.i.i.i = sext i16 %230 to i32
  call void @input_event(ptr noundef %195, i32 noundef 3, i32 noundef 53, i32 noundef %conv25.i.i.i) #10
  %y27.i.i.i = getelementptr [2 x %struct.input_mt_pos], ptr %pos.i.i.i, i32 0, i32 %i.167.i.i.i, i32 1
  %231 = ptrtoint ptr %y27.i.i.i to i32
  call void @__asan_load2_noabort(i32 %231)
  %232 = load i16, ptr %y27.i.i.i, align 2
  %conv28.i.i.i = sext i16 %232 to i32
  call void @input_event(ptr noundef %195, i32 noundef 3, i32 noundef 54, i32 noundef %conv28.i.i.i) #10
  %arrayidx29.i.i.i = getelementptr [2 x ptr], ptr %hw.i.i.i, i32 0, i32 %i.167.i.i.i
  %233 = ptrtoint ptr %arrayidx29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %arrayidx29.i.i.i, align 4
  %z.i.i155.i = getelementptr inbounds %struct.synaptics_hw_state, ptr %234, i32 0, i32 2
  %235 = ptrtoint ptr %z.i.i155.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %z.i.i155.i, align 4
  call void @input_event(ptr noundef %195, i32 noundef 3, i32 noundef 58, i32 noundef %236) #10
  %inc31.i.i.i = add nuw nsw i32 %i.167.i.i.i, 1
  %exitcond68.not.i.i.i = icmp eq i32 %inc31.i.i.i, %204
  br i1 %exitcond68.not.i.i.i, label %for.body20.i.i.i.synaptics_image_sensor_process.exit.i_crit_edge, label %for.body20.i.i.i.for.body20.i.i.i_crit_edge

for.body20.i.i.i.for.body20.i.i.i_crit_edge:      ; preds = %for.body20.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body20.i.i.i

for.body20.i.i.i.synaptics_image_sensor_process.exit.i_crit_edge: ; preds = %for.body20.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %synaptics_image_sensor_process.exit.i

synaptics_image_sensor_process.exit.i:            ; preds = %for.body20.i.i.i.synaptics_image_sensor_process.exit.i_crit_edge, %for.end.thread.i.i.i
  call void @input_mt_drop_unused(ptr noundef %195) #10
  call void @input_mt_report_pointer_emulation(ptr noundef %195, i1 noundef zeroext false) #10
  call void @input_mt_report_finger_count(ptr noundef %195, i32 noundef %num_fingers.0.i.i) #10
  call fastcc void @synaptics_report_buttons(ptr noundef %psmouse, ptr noundef nonnull %hw.i) #10
  call void @input_event(ptr noundef %195, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %slot.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hw.i.i.i) #10
  br label %synaptics_process_packet.exit

if.end5.i:                                        ; preds = %if.end.i
  %scroll.i = getelementptr inbounds %struct.synaptics_hw_state, ptr %hw.i, i32 0, i32 6
  %237 = ptrtoint ptr %scroll.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %scroll.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %238)
  %tobool6.not.i = icmp eq i8 %238, 0
  br i1 %tobool6.not.i, label %if.end39.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end5.i
  %conv.i = sext i8 %238 to i32
  %scroll9.i = getelementptr inbounds %struct.synaptics_data, ptr %34, i32 0, i32 3
  %239 = ptrtoint ptr %scroll9.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %scroll9.i, align 4
  %add.i = add i32 %240, %conv.i
  store i32 %add.i, ptr %scroll9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add.i)
  %cmp192.i = icmp sgt i32 %add.i, 3
  br i1 %cmp192.i, label %while.body.lr.ph.i, label %if.then7.i.while.cond19.preheader.i_crit_edge

if.then7.i.while.cond19.preheader.i_crit_edge:    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond19.preheader.i

while.body.lr.ph.i:                               ; preds = %if.then7.i
  %down.i = getelementptr inbounds %struct.synaptics_hw_state, ptr %hw.i, i32 0, i32 4
  %241 = ptrtoint ptr %down.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %bf.load.i = load i8, ptr %down.i, align 4
  %242 = lshr i8 %bf.load.i, 3
  %.lobit190.i = and i8 %242, 1
  %243 = xor i8 %.lobit190.i, 1
  %244 = zext i8 %243 to i32
  br label %while.body.i

while.cond19.preheader.i:                         ; preds = %while.body.i.while.cond19.preheader.i_crit_edge, %if.then7.i.while.cond19.preheader.i_crit_edge
  %storemerge.lcssa.i = phi i32 [ %add.i, %if.then7.i.while.cond19.preheader.i_crit_edge ], [ %sub.i, %while.body.i.while.cond19.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %storemerge.lcssa.i)
  %cmp21193.i = icmp slt i32 %storemerge.lcssa.i, -3
  br i1 %cmp21193.i, label %while.body23.lr.ph.i, label %while.cond19.preheader.i.synaptics_process_packet.exit_crit_edge

while.cond19.preheader.i.synaptics_process_packet.exit_crit_edge: ; preds = %while.cond19.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %synaptics_process_packet.exit

while.body23.lr.ph.i:                             ; preds = %while.cond19.preheader.i
  %up.i = getelementptr inbounds %struct.synaptics_hw_state, ptr %hw.i, i32 0, i32 4
  %245 = ptrtoint ptr %up.i to i32
  call void @__asan_load1_noabort(i32 %245)
  %bf.load24.i = load i8, ptr %up.i, align 4
  %246 = lshr i8 %bf.load24.i, 4
  %.lobit.i = and i8 %246, 1
  %247 = xor i8 %.lobit.i, 1
  %248 = zext i8 %247 to i32
  br label %while.body23.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  tail call void @input_event(ptr noundef %32, i32 noundef 1, i32 noundef 278, i32 noundef %244) #10
  tail call void @input_event(ptr noundef %32, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  %249 = ptrtoint ptr %down.i to i32
  call void @__asan_load1_noabort(i32 %249)
  %bf.load14.i = load i8, ptr %down.i, align 4
  %250 = lshr i8 %bf.load14.i, 3
  %.lobit191.i = and i8 %250, 1
  %251 = zext i8 %.lobit191.i to i32
  tail call void @input_event(ptr noundef %32, i32 noundef 1, i32 noundef 278, i32 noundef %251) #10
  tail call void @input_event(ptr noundef %32, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  %252 = ptrtoint ptr %scroll9.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %scroll9.i, align 4
  %sub.i = add i32 %253, -4
  store i32 %sub.i, ptr %scroll9.i, align 4
  %cmp.i39 = icmp sgt i32 %sub.i, 3
  br i1 %cmp.i39, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.cond19.preheader.i_crit_edge

while.body.i.while.cond19.preheader.i_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond19.preheader.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body23.i:                                   ; preds = %while.body23.i.while.body23.i_crit_edge, %while.body23.lr.ph.i
  tail call void @input_event(ptr noundef %32, i32 noundef 1, i32 noundef 277, i32 noundef %248) #10
  tail call void @input_event(ptr noundef %32, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  %254 = ptrtoint ptr %up.i to i32
  call void @__asan_load1_noabort(i32 %254)
  %bf.load32.i = load i8, ptr %up.i, align 4
  %255 = lshr i8 %bf.load32.i, 4
  %.lobit189.i = and i8 %255, 1
  %256 = zext i8 %.lobit189.i to i32
  tail call void @input_event(ptr noundef %32, i32 noundef 1, i32 noundef 277, i32 noundef %256) #10
  tail call void @input_event(ptr noundef %32, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  %257 = ptrtoint ptr %scroll9.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %scroll9.i, align 4
  %add37.i = add i32 %258, 4
  store i32 %add37.i, ptr %scroll9.i, align 4
  %cmp21.i = icmp slt i32 %add37.i, -3
  br i1 %cmp21.i, label %while.body23.i.while.body23.i_crit_edge, label %while.body23.i.synaptics_process_packet.exit_crit_edge

while.body23.i.synaptics_process_packet.exit_crit_edge: ; preds = %while.body23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %synaptics_process_packet.exit

while.body23.i.while.body23.i_crit_edge:          ; preds = %while.body23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body23.i

if.end39.i:                                       ; preds = %if.end5.i
  %z.i = getelementptr inbounds %struct.synaptics_hw_state, ptr %hw.i, i32 0, i32 2
  %259 = ptrtoint ptr %z.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %z.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %260)
  %cmp40.i = icmp sgt i32 %260, 0
  br i1 %cmp40.i, label %land.lhs.true.i40, label %if.end39.i.if.end64.i_crit_edge

if.end39.i.if.end64.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64.i

land.lhs.true.i40:                                ; preds = %if.end39.i
  %261 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %hw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %262)
  %cmp42.i = icmp sgt i32 %262, 1
  br i1 %cmp42.i, label %if.then44.i, label %land.lhs.true.i40.if.end64.i_crit_edge

land.lhs.true.i40.if.end64.i_crit_edge:           ; preds = %land.lhs.true.i40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64.i

if.then44.i:                                      ; preds = %land.lhs.true.i40
  %capabilities.i = getelementptr inbounds %struct.synaptics_device_info, ptr %34, i32 0, i32 3
  %263 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %capabilities.i, align 4
  %and45.i = and i32 %264, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %if.then44.i.if.end64.i_crit_edge, label %if.then47.i

if.then44.i.if.end64.i_crit_edge:                 ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64.i

if.then47.i:                                      ; preds = %if.then44.i
  %w.i = getelementptr inbounds %struct.synaptics_hw_state, ptr %hw.i, i32 0, i32 3
  %265 = ptrtoint ptr %w.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %w.i, align 4
  %267 = zext i32 %266 to i64
  call void @__sanitizer_cov_trace_switch(i64 %267, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %266, label %if.then47.i.if.end64.i_crit_edge [
    i32 0, label %if.then47.i.sw.bb.i_crit_edge
    i32 1, label %if.then47.i.sw.bb.i_crit_edge47
    i32 15, label %if.then47.i.sw.bb53.i_crit_edge
    i32 4, label %if.then47.i.sw.bb53.i_crit_edge48
    i32 5, label %if.then47.i.sw.bb53.i_crit_edge49
    i32 6, label %if.then47.i.sw.bb53.i_crit_edge50
    i32 7, label %if.then47.i.sw.bb53.i_crit_edge51
    i32 8, label %if.then47.i.sw.bb53.i_crit_edge52
    i32 9, label %if.then47.i.sw.bb53.i_crit_edge53
    i32 10, label %if.then47.i.sw.bb53.i_crit_edge54
    i32 11, label %if.then47.i.sw.bb53.i_crit_edge55
    i32 12, label %if.then47.i.sw.bb53.i_crit_edge56
    i32 13, label %if.then47.i.sw.bb53.i_crit_edge57
    i32 14, label %if.then47.i.sw.bb53.i_crit_edge58
  ]

if.then47.i.sw.bb53.i_crit_edge58:                ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb53.i

if.then47.i.sw.bb53.i_crit_edge57:                ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb53.i

if.then47.i.sw.bb53.i_crit_edge56:                ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb53.i

if.then47.i.sw.bb53.i_crit_edge55:                ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb53.i

if.then47.i.sw.bb53.i_crit_edge54:                ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb53.i

if.then47.i.sw.bb53.i_crit_edge53:                ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb53.i

if.then47.i.sw.bb53.i_crit_edge52:                ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb53.i

if.then47.i.sw.bb53.i_crit_edge51:                ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb53.i

if.then47.i.sw.bb53.i_crit_edge50:                ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb53.i

if.then47.i.sw.bb53.i_crit_edge49:                ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb53.i

if.then47.i.sw.bb53.i_crit_edge48:                ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb53.i

if.then47.i.sw.bb53.i_crit_edge:                  ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb53.i

if.then47.i.sw.bb.i_crit_edge47:                  ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.then47.i.sw.bb.i_crit_edge:                    ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.then47.i.if.end64.i_crit_edge:                 ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64.i

sw.bb.i:                                          ; preds = %if.then47.i.sw.bb.i_crit_edge, %if.then47.i.sw.bb.i_crit_edge47
  %and.i163.i = and i32 %264, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i163.i)
  %tobool.not.i164.i = icmp ne i32 %and.i163.i, 0
  %268 = and i32 %184, 526336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %268)
  %269 = icmp ne i32 %268, 0
  %or.cond.i = select i1 %tobool.not.i164.i, i1 true, i1 %269
  %add51.i = add nuw nsw i32 %266, 2
  %spec.select188.i = select i1 %or.cond.i, i32 %add51.i, i32 1
  br label %if.end64.i

sw.bb53.i:                                        ; preds = %if.then47.i.sw.bb53.i_crit_edge, %if.then47.i.sw.bb53.i_crit_edge48, %if.then47.i.sw.bb53.i_crit_edge49, %if.then47.i.sw.bb53.i_crit_edge50, %if.then47.i.sw.bb53.i_crit_edge51, %if.then47.i.sw.bb53.i_crit_edge52, %if.then47.i.sw.bb53.i_crit_edge53, %if.then47.i.sw.bb53.i_crit_edge54, %if.then47.i.sw.bb53.i_crit_edge55, %if.then47.i.sw.bb53.i_crit_edge56, %if.then47.i.sw.bb53.i_crit_edge57, %if.then47.i.sw.bb53.i_crit_edge58
  %and55.i = and i32 %264, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool56.not.i = icmp eq i32 %and55.i, 0
  %spec.select.i = select i1 %tobool56.not.i, i32 5, i32 %266
  br label %if.end64.i

if.end64.i:                                       ; preds = %sw.bb53.i, %sw.bb.i, %if.then47.i.if.end64.i_crit_edge, %if.then44.i.if.end64.i_crit_edge, %land.lhs.true.i40.if.end64.i_crit_edge, %if.end39.i.if.end64.i_crit_edge
  %num_fingers.0.i = phi i32 [ 1, %if.then47.i.if.end64.i_crit_edge ], [ 1, %if.then44.i.if.end64.i_crit_edge ], [ 0, %land.lhs.true.i40.if.end64.i_crit_edge ], [ 0, %if.end39.i.if.end64.i_crit_edge ], [ 1, %sw.bb53.i ], [ %spec.select188.i, %sw.bb.i ]
  %finger_width.0.i = phi i32 [ 5, %if.then47.i.if.end64.i_crit_edge ], [ 5, %if.then44.i.if.end64.i_crit_edge ], [ 0, %land.lhs.true.i40.if.end64.i_crit_edge ], [ 0, %if.end39.i.if.end64.i_crit_edge ], [ %spec.select.i, %sw.bb53.i ], [ 5, %sw.bb.i ]
  %and66.i = and i32 %184, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.i)
  %tobool67.not.i = icmp eq i32 %and66.i, 0
  br i1 %tobool67.not.i, label %if.end64.i.if.end69.i_crit_edge, label %if.then68.i

if.end64.i.if.end69.i_crit_edge:                  ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69.i

if.then68.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_fingers.0.i)
  %cmp.i168.i = icmp ugt i32 %num_fingers.0.i, 1
  br i1 %cmp.i168.i, label %if.then.i170.i, label %if.else.i171.i

if.then.i170.i:                                   ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #12
  %agm.i = getelementptr inbounds %struct.synaptics_data, ptr %34, i32 0, i32 7
  %270 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %hw.i, align 4
  %272 = ptrtoint ptr %agm.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %agm.i, align 4
  %274 = tail call i32 @llvm.smin.i32(i32 %271, i32 %273) #10
  %275 = ptrtoint ptr %y271.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %y271.i.i, align 4
  %y3.i.i = getelementptr inbounds %struct.synaptics_data, ptr %34, i32 0, i32 7, i32 1
  %277 = ptrtoint ptr %y3.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %y3.i.i, align 4
  %279 = tail call i32 @llvm.smin.i32(i32 %276, i32 %278) #10
  tail call void @input_event(ptr noundef %32, i32 noundef 3, i32 noundef 47, i32 noundef 0) #10
  %call.i.i.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %32, i32 noundef 0, i1 noundef zeroext true) #10
  tail call void @input_event(ptr noundef %32, i32 noundef 3, i32 noundef 53, i32 noundef %274) #10
  %sub.i.i.i.i = sub i32 5856, %279
  tail call void @input_event(ptr noundef %32, i32 noundef 3, i32 noundef 54, i32 noundef %sub.i.i.i.i) #10
  %280 = ptrtoint ptr %agm.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %agm.i, align 4
  %282 = tail call i32 @llvm.smax.i32(i32 %271, i32 %281) #10
  %283 = ptrtoint ptr %y3.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %y3.i.i, align 4
  %285 = tail call i32 @llvm.smax.i32(i32 %276, i32 %284) #10
  tail call void @input_event(ptr noundef %32, i32 noundef 3, i32 noundef 47, i32 noundef 1) #10
  %call.i61.i.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %32, i32 noundef 0, i1 noundef zeroext true) #10
  tail call void @input_event(ptr noundef %32, i32 noundef 3, i32 noundef 53, i32 noundef %282) #10
  %sub.i.i62.i.i = sub i32 5856, %285
  tail call void @input_event(ptr noundef %32, i32 noundef 3, i32 noundef 54, i32 noundef %sub.i.i62.i.i) #10
  br label %if.end69.i

if.else.i171.i:                                   ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_fingers.0.i)
  %cmp26.i.i = icmp eq i32 %num_fingers.0.i, 1
  br i1 %cmp26.i.i, label %if.then27.i.i, label %if.else30.i.i

if.then27.i.i:                                    ; preds = %if.else.i171.i
  call void @__sanitizer_cov_trace_pc() #12
  %286 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %hw.i, align 4
  %288 = ptrtoint ptr %y271.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %y271.i.i, align 4
  tail call void @input_event(ptr noundef %32, i32 noundef 3, i32 noundef 47, i32 noundef 0) #10
  %call.i63.i.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %32, i32 noundef 0, i1 noundef zeroext true) #10
  tail call void @input_event(ptr noundef %32, i32 noundef 3, i32 noundef 53, i32 noundef %287) #10
  %sub.i.i64.i.i = sub i32 5856, %289
  tail call void @input_event(ptr noundef %32, i32 noundef 3, i32 noundef 54, i32 noundef %sub.i.i64.i.i) #10
  tail call void @input_event(ptr noundef %32, i32 noundef 3, i32 noundef 47, i32 noundef 1) #10
  %call.i65.i.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %32, i32 noundef 0, i1 noundef zeroext false) #10
  br label %if.end69.i

if.else30.i.i:                                    ; preds = %if.else.i171.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @input_event(ptr noundef %32, i32 noundef 3, i32 noundef 47, i32 noundef 0) #10
  %call.i66.i.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %32, i32 noundef 0, i1 noundef zeroext false) #10
  tail call void @input_event(ptr noundef %32, i32 noundef 3, i32 noundef 47, i32 noundef 1) #10
  %call.i67.i.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %32, i32 noundef 0, i1 noundef zeroext false) #10
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.else30.i.i, %if.then27.i.i, %if.then.i170.i, %if.end64.i.if.end69.i_crit_edge
  %290 = ptrtoint ptr %z.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %z.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %291)
  %cmp71.i = icmp sgt i32 %291, 30
  br i1 %cmp71.i, label %if.then73.i, label %if.end69.i.if.end74.i_crit_edge

if.end69.i.if.end74.i_crit_edge:                  ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74.i

if.then73.i:                                      ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @input_event(ptr noundef %32, i32 noundef 1, i32 noundef 330, i32 noundef 1) #10
  %292 = ptrtoint ptr %z.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %.pr.i = load i32, ptr %z.i, align 4
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.then73.i, %if.end69.i.if.end74.i_crit_edge
  %293 = phi i32 [ %.pr.i, %if.then73.i ], [ %291, %if.end69.i.if.end74.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %293)
  %cmp76.i = icmp slt i32 %293, 25
  br i1 %cmp76.i, label %if.then78.i, label %if.end74.i.if.end79.i_crit_edge

if.end74.i.if.end79.i_crit_edge:                  ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79.i

if.then78.i:                                      ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @input_event(ptr noundef %32, i32 noundef 1, i32 noundef 330, i32 noundef 0) #10
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.then78.i, %if.end74.i.if.end79.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_fingers.0.i)
  %cmp80.not.i = icmp eq i32 %num_fingers.0.i, 0
  br i1 %cmp80.not.i, label %if.end79.i.if.end85.i_crit_edge, label %if.then82.i

if.end79.i.if.end85.i_crit_edge:                  ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85.i

if.then82.i:                                      ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #12
  %294 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %hw.i, align 4
  tail call void @input_event(ptr noundef %32, i32 noundef 3, i32 noundef 0, i32 noundef %295) #10
  %296 = ptrtoint ptr %y271.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %y271.i.i, align 4
  %sub.i172.i = sub i32 5856, %297
  tail call void @input_event(ptr noundef %32, i32 noundef 3, i32 noundef 1, i32 noundef %sub.i172.i) #10
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.then82.i, %if.end79.i.if.end85.i_crit_edge
  %298 = ptrtoint ptr %z.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %z.i, align 4
  tail call void @input_event(ptr noundef %32, i32 noundef 3, i32 noundef 24, i32 noundef %299) #10
  %capabilities87.i = getelementptr inbounds %struct.synaptics_device_info, ptr %34, i32 0, i32 3
  %300 = ptrtoint ptr %capabilities87.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %capabilities87.i, align 4
  %and88.i = and i32 %301, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88.i)
  %tobool89.not.i = icmp eq i32 %and88.i, 0
  br i1 %tobool89.not.i, label %if.end85.i.if.end91.i_crit_edge, label %if.then90.i

if.end85.i.if.end91.i_crit_edge:                  ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91.i

if.then90.i:                                      ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @input_event(ptr noundef %32, i32 noundef 3, i32 noundef 28, i32 noundef %finger_width.0.i) #10
  br label %if.end91.i

if.end91.i:                                       ; preds = %if.then90.i, %if.end85.i.if.end91.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_fingers.0.i)
  %cmp92.i = icmp eq i32 %num_fingers.0.i, 1
  %lnot.ext.i173.i = zext i1 %cmp92.i to i32
  tail call void @input_event(ptr noundef %32, i32 noundef 1, i32 noundef 325, i32 noundef %lnot.ext.i173.i) #10
  %302 = ptrtoint ptr %capabilities87.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %capabilities87.i, align 4
  %and.i175.i = and i32 %303, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i175.i)
  %tobool.not.i176.i = icmp eq i32 %and.i175.i, 0
  br i1 %tobool.not.i176.i, label %synaptics_has_multifinger.exit180.i, label %if.end91.i.if.then95.i_crit_edge

if.end91.i.if.then95.i_crit_edge:                 ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then95.i

synaptics_has_multifinger.exit180.i:              ; preds = %if.end91.i
  %304 = ptrtoint ptr %ext_cap_0c.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %ext_cap_0c.i, align 4
  %306 = and i32 %305, 526336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %306)
  %.not.i = icmp eq i32 %306, 0
  br i1 %.not.i, label %synaptics_has_multifinger.exit180.i.if.end100.i_crit_edge, label %synaptics_has_multifinger.exit180.i.if.then95.i_crit_edge

synaptics_has_multifinger.exit180.i.if.then95.i_crit_edge: ; preds = %synaptics_has_multifinger.exit180.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then95.i

synaptics_has_multifinger.exit180.i.if.end100.i_crit_edge: ; preds = %synaptics_has_multifinger.exit180.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end100.i

if.then95.i:                                      ; preds = %synaptics_has_multifinger.exit180.i.if.then95.i_crit_edge, %if.end91.i.if.then95.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %num_fingers.0.i)
  %cmp96.i = icmp eq i32 %num_fingers.0.i, 2
  %lnot.ext.i181.i = zext i1 %cmp96.i to i32
  tail call void @input_event(ptr noundef %32, i32 noundef 1, i32 noundef 333, i32 noundef %lnot.ext.i181.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %num_fingers.0.i)
  %cmp98.i = icmp eq i32 %num_fingers.0.i, 3
  %lnot.ext.i182.i = zext i1 %cmp98.i to i32
  tail call void @input_event(ptr noundef %32, i32 noundef 1, i32 noundef 334, i32 noundef %lnot.ext.i182.i) #10
  br label %if.end100.i

if.end100.i:                                      ; preds = %if.then95.i, %synaptics_has_multifinger.exit180.i.if.end100.i_crit_edge
  call fastcc void @synaptics_report_buttons(ptr noundef %psmouse, ptr noundef nonnull %hw.i) #10
  tail call void @input_event(ptr noundef %32, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  br label %synaptics_process_packet.exit

synaptics_process_packet.exit:                    ; preds = %if.end100.i, %while.body23.i.synaptics_process_packet.exit_crit_edge, %while.cond19.preheader.i.synaptics_process_packet.exit_crit_edge, %synaptics_image_sensor_process.exit.i, %sw.bb25.i.i.i, %sw.bb.i.i.i, %if.then14.i.i.synaptics_process_packet.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %hw.i) #10
  br label %cleanup

if.end18:                                         ; preds = %entry
  %conv = zext i8 %3 to i32
  %sub = add nsw i32 %conv, -1
  %pkt_type21 = getelementptr inbounds %struct.synaptics_data, ptr %1, i32 0, i32 1
  %307 = ptrtoint ptr %pkt_type21 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %pkt_type21, align 4
  %packet1.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i41 = icmp eq i8 %3, 0
  br i1 %cmp.i41, label %if.end18.synaptics_validate_byte.exit_crit_edge, label %if.end.i42

if.end18.synaptics_validate_byte.exit_crit_edge:  ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %synaptics_validate_byte.exit

if.end.i42:                                       ; preds = %if.end18
  %309 = zext i32 %308 to i64
  call void @__sanitizer_cov_trace_switch(i64 %309, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %308, label %do.end.i [
    i32 0, label %if.end.i42.sw.bb.i45_crit_edge
    i32 2, label %if.end.i42.sw.bb.i45_crit_edge59
    i32 1, label %sw.bb9.i
    i32 3, label %sw.bb19.i
  ]

if.end.i42.sw.bb.i45_crit_edge59:                 ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i45

if.end.i42.sw.bb.i45_crit_edge:                   ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i45

sw.bb.i45:                                        ; preds = %if.end.i42.sw.bb.i45_crit_edge, %if.end.i42.sw.bb.i45_crit_edge59
  %arrayidx.i43 = getelementptr i8, ptr %packet1.i, i32 %sub
  %310 = ptrtoint ptr %arrayidx.i43 to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %arrayidx.i43, align 1
  %arrayidx3.i = getelementptr [5 x i8], ptr @synaptics_validate_byte.newabs_rel_mask, i32 0, i32 %sub
  %312 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %arrayidx3.i, align 1
  %and45.i44 = and i8 %313, %311
  %arrayidx5.i = getelementptr [5 x i8], ptr @synaptics_validate_byte.newabs_rslt, i32 0, i32 %sub
  %314 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %arrayidx5.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %and45.i44, i8 %315)
  %cmp7.i = icmp eq i8 %and45.i44, %315
  br label %synaptics_validate_byte.exit

sw.bb9.i:                                         ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx10.i = getelementptr i8, ptr %packet1.i, i32 %sub
  %316 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %arrayidx10.i, align 1
  %arrayidx12.i = getelementptr [5 x i8], ptr @synaptics_validate_byte.newabs_mask, i32 0, i32 %sub
  %318 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %arrayidx12.i, align 1
  %and1444.i = and i8 %319, %317
  %arrayidx15.i = getelementptr [5 x i8], ptr @synaptics_validate_byte.newabs_rslt, i32 0, i32 %sub
  %320 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %arrayidx15.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %and1444.i, i8 %321)
  %cmp17.i = icmp eq i8 %and1444.i, %321
  br label %synaptics_validate_byte.exit

sw.bb19.i:                                        ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx20.i = getelementptr i8, ptr %packet1.i, i32 %sub
  %322 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %arrayidx20.i, align 1
  %arrayidx22.i = getelementptr [5 x i8], ptr @synaptics_validate_byte.oldabs_mask, i32 0, i32 %sub
  %324 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %arrayidx22.i, align 1
  %and2443.i = and i8 %325, %323
  %arrayidx25.i = getelementptr [5 x i8], ptr @synaptics_validate_byte.oldabs_rslt, i32 0, i32 %sub
  %326 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %arrayidx25.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %and2443.i, i8 %327)
  %cmp27.i = icmp eq i8 %and2443.i, %327
  br label %synaptics_validate_byte.exit

do.end.i:                                         ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #12
  %ps2dev.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %328 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %ps2dev.i, align 4
  %dev.i = getelementptr inbounds %struct.serio, ptr %329, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.70, i32 noundef %308) #13
  br label %synaptics_validate_byte.exit

synaptics_validate_byte.exit:                     ; preds = %do.end.i, %sw.bb19.i, %sw.bb9.i, %sw.bb.i45, %if.end18.synaptics_validate_byte.exit_crit_edge
  %retval.0.i = phi i1 [ false, %do.end.i ], [ %cmp27.i, %sw.bb19.i ], [ %cmp17.i, %sw.bb9.i ], [ %cmp7.i, %sw.bb.i45 ], [ false, %if.end18.synaptics_validate_byte.exit_crit_edge ]
  %cond = zext i1 %retval.0.i to i32
  br label %cleanup

cleanup:                                          ; preds = %synaptics_validate_byte.exit, %synaptics_process_packet.exit, %if.end13.sink.split.i, %if.then.i.cleanup_crit_edge, %if.then10.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %synaptics_validate_byte.exit ], [ 2, %if.then10.cleanup_crit_edge ], [ 2, %synaptics_process_packet.exit ], [ 2, %if.then.i.cleanup_crit_edge ], [ 2, %if.end13.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psmouse_process_byte(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @synaptics_set_rate(ptr noundef %psmouse, i32 noundef %rate) #0 align 64 {
entry:
  %param.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %rate)
  %cmp = icmp ugt i32 %rate, 79
  %mode = getelementptr inbounds %struct.synaptics_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mode, align 4
  %4 = and i8 %3, -65
  %masksel = select i1 %cmp, i8 64, i8 0
  %.sink13 = or i8 %4, %masksel
  %.sink = select i1 %cmp, i32 80, i32 40
  store i8 %.sink13, ptr %mode, align 4
  %5 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 21
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink, ptr %5, align 4
  %mode7 = getelementptr inbounds %struct.synaptics_data, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %mode7 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mode7, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param.i) #10
  %ps2dev.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %call.i = tail call i32 @ps2_sliced_command(ptr noundef %ps2dev.i, i8 noundef zeroext %8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.synaptics_mode_cmd.exit_crit_edge

entry.synaptics_mode_cmd.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %synaptics_mode_cmd.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 20, ptr %param.i, align 1
  %call2.i = call i32 @ps2_command(ptr noundef %ps2dev.i, ptr noundef nonnull %param.i, i32 noundef 4339) #10
  br label %synaptics_mode_cmd.exit

synaptics_mode_cmd.exit:                          ; preds = %if.end.i, %entry.synaptics_mode_cmd.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @synaptics_disconnect(ptr noundef %psmouse) #0 align 64 {
entry:
  %param.i.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  tail call void @psmouse_smbus_cleanup(ptr noundef %psmouse) #10
  %absolute_mode = getelementptr inbounds %struct.synaptics_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %absolute_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %absolute_mode, align 4, !range !324
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %identity = getelementptr inbounds %struct.synaptics_device_info, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %identity to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %identity, align 4
  %and = and i32 %5, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %6 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ps2dev, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %7, i32 0, i32 18
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @psmouse_attr_disable_gesture) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param.i.i) #10
  %ps2dev.i.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %call.i.i = tail call i32 @ps2_sliced_command(ptr noundef %ps2dev.i.i, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.synaptics_reset.exit_crit_edge

if.end.synaptics_reset.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %synaptics_reset.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %param.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 20, ptr %param.i.i, align 1
  %call2.i.i = call i32 @ps2_command(ptr noundef %ps2dev.i.i, ptr noundef nonnull %param.i.i, i32 noundef 4339) #10
  br label %synaptics_reset.exit

synaptics_reset.exit:                             ; preds = %if.end.i.i, %if.end.synaptics_reset.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param.i.i) #10
  call void @kfree(ptr noundef %1) #10
  %9 = ptrtoint ptr %psmouse to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %psmouse, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @synaptics_reconnect(ptr noundef %psmouse) #0 align 64 {
if.end:
  %param.i = alloca [4 x i8], align 4
  %info = alloca %struct.synaptics_device_info, align 4
  %param = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %info) #10
  %2 = call ptr @memset(ptr %info, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %param) #10
  %3 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %param, align 1, !annotation !323
  %4 = getelementptr inbounds [2 x i8], ptr %param, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %4, align 1, !annotation !323
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %arrayidx.i = getelementptr inbounds [4 x i8], ptr %param.i, i32 0, i32 1
  %call = call i32 @psmouse_reset(ptr noundef %psmouse) #10
  %call1 = call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef nonnull %param, i32 noundef 754) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param.i) #10
  %6 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %param.i, align 4
  %call.i = call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef nonnull %param.i, i32 noundef 4328) #10
  %call3.i = call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef nonnull %param.i, i32 noundef 4328) #10
  %call5.i = call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef nonnull %param.i, i32 noundef 4328) #10
  %call7.i = call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef nonnull %param.i, i32 noundef 4328) #10
  %call9.i = call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef nonnull %param.i, i32 noundef 1001) #10
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 71, i8 %8)
  %cmp.not.i.not = icmp eq i8 %8, 71
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i) #10
  br i1 %cmp.not.i.not, label %if.end.if.end19_crit_edge, label %if.end.1

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.end.1:                                         ; preds = %if.end
  %call.1 = call i32 @psmouse_reset(ptr noundef %psmouse) #10
  call void @msleep(i32 noundef 1000) #10
  %call1.1 = call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef nonnull %param, i32 noundef 754) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param.i) #10
  %9 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %param.i, align 4
  %call.i.1 = call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef nonnull %param.i, i32 noundef 4328) #10
  %call3.i.1 = call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef nonnull %param.i, i32 noundef 4328) #10
  %call5.i.1 = call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef nonnull %param.i, i32 noundef 4328) #10
  %call7.i.1 = call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef nonnull %param.i, i32 noundef 4328) #10
  %call9.i.1 = call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef nonnull %param.i, i32 noundef 1001) #10
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 71, i8 %11)
  %cmp.not.i.not.1 = icmp eq i8 %11, 71
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i) #10
  br i1 %cmp.not.i.not.1, label %if.end.1.if.end19_crit_edge, label %if.end.2

if.end.1.if.end19_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.end.2:                                         ; preds = %if.end.1
  %call.2 = call i32 @psmouse_reset(ptr noundef %psmouse) #10
  call void @msleep(i32 noundef 1000) #10
  %call1.2 = call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef nonnull %param, i32 noundef 754) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param.i) #10
  %12 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %param.i, align 4
  %call.i.2 = call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef nonnull %param.i, i32 noundef 4328) #10
  %call3.i.2 = call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef nonnull %param.i, i32 noundef 4328) #10
  %call5.i.2 = call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef nonnull %param.i, i32 noundef 4328) #10
  %call7.i.2 = call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef nonnull %param.i, i32 noundef 4328) #10
  %call9.i.2 = call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef nonnull %param.i, i32 noundef 1001) #10
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 71, i8 %14)
  %cmp.not.i.not.2 = icmp eq i8 %14, 71
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i) #10
  br i1 %cmp.not.i.not.2, label %do.body9, label %if.end.2.cleanup_crit_edge

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body9:                                         ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @synaptics_reconnect.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@synaptics_reconnect, %if.then14)) #10
          to label %if.end19 [label %if.then14], !srcloc !326

if.then14:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ps2dev, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %16, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @synaptics_reconnect.__UNIQUE_ID_ddebug300, ptr noundef %dev, ptr noundef nonnull @.str.74, i32 noundef 2) #10
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %do.body9, %if.end.1.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %call20 = call fastcc i32 @synaptics_query_hardware(ptr noundef %psmouse, ptr noundef nonnull %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end29, label %do.end25

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ps2dev, align 4
  %dev28 = getelementptr inbounds %struct.serio, ptr %18, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28, ptr noundef nonnull @.str.75) #13
  br label %cleanup

if.end29:                                         ; preds = %if.end19
  %call30 = call fastcc i32 @synaptics_set_mode(ptr noundef %psmouse)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end39, label %do.end35

do.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ps2dev, align 4
  %dev38 = getelementptr inbounds %struct.serio, ptr %20, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev38, ptr noundef nonnull @.str.9) #13
  br label %cleanup

if.end39:                                         ; preds = %if.end29
  %identity = getelementptr inbounds %struct.synaptics_device_info, ptr %info, i32 0, i32 7
  %21 = ptrtoint ptr %identity to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %identity, align 4
  %identity41 = getelementptr inbounds %struct.synaptics_device_info, ptr %1, i32 0, i32 7
  %23 = ptrtoint ptr %identity41 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %identity41, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp42.not = icmp eq i32 %22, %24
  br i1 %cmp42.not, label %lor.lhs.false, label %if.end39.do.end57_crit_edge

if.end39.do.end57_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end57

lor.lhs.false:                                    ; preds = %if.end39
  %25 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %info, align 4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp45.not = icmp eq i32 %26, %28
  br i1 %cmp45.not, label %lor.lhs.false46, label %lor.lhs.false.do.end57_crit_edge

lor.lhs.false.do.end57_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end57

lor.lhs.false46:                                  ; preds = %lor.lhs.false
  %capabilities = getelementptr inbounds %struct.synaptics_device_info, ptr %info, i32 0, i32 3
  %29 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %capabilities, align 4
  %capabilities48 = getelementptr inbounds %struct.synaptics_device_info, ptr %1, i32 0, i32 3
  %31 = ptrtoint ptr %capabilities48 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %capabilities48, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp49.not = icmp eq i32 %30, %32
  br i1 %cmp49.not, label %lor.lhs.false50, label %lor.lhs.false46.do.end57_crit_edge

lor.lhs.false46.do.end57_crit_edge:               ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end57

lor.lhs.false50:                                  ; preds = %lor.lhs.false46
  %ext_cap = getelementptr inbounds %struct.synaptics_device_info, ptr %info, i32 0, i32 4
  %33 = ptrtoint ptr %ext_cap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ext_cap, align 4
  %ext_cap52 = getelementptr inbounds %struct.synaptics_device_info, ptr %1, i32 0, i32 4
  %35 = ptrtoint ptr %ext_cap52 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ext_cap52, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp53.not = icmp eq i32 %34, %36
  br i1 %cmp53.not, label %lor.lhs.false50.cleanup_crit_edge, label %lor.lhs.false50.do.end57_crit_edge

lor.lhs.false50.do.end57_crit_edge:               ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end57

lor.lhs.false50.cleanup_crit_edge:                ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end57:                                         ; preds = %lor.lhs.false50.do.end57_crit_edge, %lor.lhs.false46.do.end57_crit_edge, %lor.lhs.false.do.end57_crit_edge, %if.end39.do.end57_crit_edge
  %37 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ps2dev, align 4
  %dev60 = getelementptr inbounds %struct.serio, ptr %38, i32 0, i32 18
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %1, align 4
  %41 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %info, align 4
  %capabilities68 = getelementptr inbounds %struct.synaptics_device_info, ptr %1, i32 0, i32 3
  %43 = ptrtoint ptr %capabilities68 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %capabilities68, align 4
  %capabilities69 = getelementptr inbounds %struct.synaptics_device_info, ptr %info, i32 0, i32 3
  %45 = ptrtoint ptr %capabilities69 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %capabilities69, align 4
  %ext_cap71 = getelementptr inbounds %struct.synaptics_device_info, ptr %1, i32 0, i32 4
  %47 = ptrtoint ptr %ext_cap71 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ext_cap71, align 4
  %ext_cap72 = getelementptr inbounds %struct.synaptics_device_info, ptr %info, i32 0, i32 4
  %49 = ptrtoint ptr %ext_cap72 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ext_cap72, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev60, ptr noundef nonnull @.str.79, i32 noundef %24, i32 noundef %22, i32 noundef %40, i32 noundef %42, i32 noundef %44, i32 noundef %46, i32 noundef %48, i32 noundef %50) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end57, %lor.lhs.false50.cleanup_crit_edge, %do.end35, %do.end25, %if.end.2.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %do.end25 ], [ %call30, %do.end35 ], [ -6, %do.end57 ], [ 0, %lor.lhs.false50.cleanup_crit_edge ], [ -19, %if.end.2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %param) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %info) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @synaptics_pt_create(ptr noundef %psmouse) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1336) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %1 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ps2dev, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %2, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.81) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %id = getelementptr inbounds %struct.serio, ptr %call7.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 5, ptr %id, align 1
  %name = getelementptr inbounds %struct.serio, ptr %call7.i.i, i32 0, i32 1
  %call2 = tail call i32 @strlcpy(ptr noundef %name, ptr noundef nonnull @.str.83, i32 noundef 32) #10
  %phys = getelementptr inbounds %struct.serio, ptr %call7.i.i, i32 0, i32 2
  %call4 = tail call i32 @strlcpy(ptr noundef %phys, ptr noundef nonnull @.str.84, i32 noundef 32) #10
  %write = getelementptr inbounds %struct.serio, ptr %call7.i.i, i32 0, i32 7
  %4 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @synaptics_pt_write, ptr %write, align 8
  %start = getelementptr inbounds %struct.serio, ptr %call7.i.i, i32 0, i32 10
  %5 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @synaptics_pt_start, ptr %start, align 4
  %stop = getelementptr inbounds %struct.serio, ptr %call7.i.i, i32 0, i32 11
  %6 = ptrtoint ptr %stop to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @synaptics_pt_stop, ptr %stop, align 8
  %ps2dev5 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %7 = ptrtoint ptr %ps2dev5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ps2dev5, align 4
  %parent = getelementptr inbounds %struct.serio, ptr %call7.i.i, i32 0, i32 12
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %parent, align 4
  %pt_activate = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 35
  %10 = ptrtoint ptr %pt_activate to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @synaptics_pt_activate, ptr %pt_activate, align 4
  %dev12 = getelementptr inbounds %struct.serio, ptr %8, i32 0, i32 18
  %phys15 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 20
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev12, ptr noundef nonnull @.str.86, ptr noundef %name, ptr noundef %phys15) #13
  tail call void @__serio_register_port(ptr noundef nonnull %call7.i.i, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_abs_position_params(ptr noundef %dev, ptr nocapture noundef readonly %info, i32 noundef %x_code, i32 noundef %y_code) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %x_min1 = getelementptr inbounds %struct.synaptics_device_info, ptr %info, i32 0, i32 12
  %0 = ptrtoint ptr %x_min1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %x_min1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %. = select i1 %tobool.not, i32 1472, i32 %1
  %x_max2 = getelementptr inbounds %struct.synaptics_device_info, ptr %info, i32 0, i32 10
  %2 = ptrtoint ptr %x_max2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %x_max2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  %cond7 = select i1 %tobool3.not, i32 5472, i32 %3
  %y_min8 = getelementptr inbounds %struct.synaptics_device_info, ptr %info, i32 0, i32 13
  %4 = ptrtoint ptr %y_min8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %y_min8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool9.not = icmp eq i32 %5, 0
  %cond13 = select i1 %tobool9.not, i32 1408, i32 %5
  %y_max14 = getelementptr inbounds %struct.synaptics_device_info, ptr %info, i32 0, i32 11
  %6 = ptrtoint ptr %y_max14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %y_max14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool15.not = icmp eq i32 %7, 0
  %cond19 = select i1 %tobool15.not, i32 4448, i32 %7
  %ext_cap_0c = getelementptr inbounds %struct.synaptics_device_info, ptr %info, i32 0, i32 5
  %8 = ptrtoint ptr %ext_cap_0c to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ext_cap_0c, align 4
  %and = lshr i32 %9, 7
  %10 = and i32 %and, 8
  tail call void @input_set_abs_params(ptr noundef %dev, i32 noundef %x_code, i32 noundef %., i32 noundef %cond7, i32 noundef %10, i32 noundef 0) #10
  tail call void @input_set_abs_params(ptr noundef %dev, i32 noundef %y_code, i32 noundef %cond13, i32 noundef %cond19, i32 noundef %10, i32 noundef 0) #10
  %x_res = getelementptr inbounds %struct.synaptics_device_info, ptr %info, i32 0, i32 8
  %11 = ptrtoint ptr %x_res to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %x_res, align 4
  tail call void @input_alloc_absinfo(ptr noundef %dev) #10
  %absinfo.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 26
  %13 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %entry.input_abs_set_res.exit_crit_edge, label %if.then.i

entry.input_abs_set_res.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %input_abs_set_res.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %resolution.i = getelementptr %struct.input_absinfo, ptr %14, i32 %x_code, i32 5
  %15 = ptrtoint ptr %resolution.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %12, ptr %resolution.i, align 4
  br label %input_abs_set_res.exit

input_abs_set_res.exit:                           ; preds = %if.then.i, %entry.input_abs_set_res.exit_crit_edge
  %y_res = getelementptr inbounds %struct.synaptics_device_info, ptr %info, i32 0, i32 9
  %16 = ptrtoint ptr %y_res to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %y_res, align 4
  tail call void @input_alloc_absinfo(ptr noundef %dev) #10
  %18 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i35 = icmp eq ptr %19, null
  br i1 %tobool.not.i35, label %input_abs_set_res.exit.input_abs_set_res.exit38_crit_edge, label %if.then.i37

input_abs_set_res.exit.input_abs_set_res.exit38_crit_edge: ; preds = %input_abs_set_res.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %input_abs_set_res.exit38

if.then.i37:                                      ; preds = %input_abs_set_res.exit
  call void @__sanitizer_cov_trace_pc() #12
  %resolution.i36 = getelementptr %struct.input_absinfo, ptr %19, i32 %y_code, i32 5
  %20 = ptrtoint ptr %resolution.i36 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %17, ptr %resolution.i36, align 4
  br label %input_abs_set_res.exit38

input_abs_set_res.exit38:                         ; preds = %if.then.i37, %input_abs_set_res.exit.input_abs_set_res.exit38_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @synaptics_detect_pkt_type(ptr nocapture noundef readonly %psmouse) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %packet1.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 7
  %0 = ptrtoint ptr %packet1.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %packet1.i, align 1
  %and1444.i = and i8 %1, -56
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %and1444.i)
  %cmp17.i = icmp eq i8 %and1444.i, -128
  br i1 %cmp17.i, label %for.cond.2, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.cond.2:                                       ; preds = %entry
  %arrayidx10.i.3 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %arrayidx10.i.3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx10.i.3, align 1
  %and1444.i.3 = and i8 %3, -56
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %and1444.i.3)
  %cmp17.i.3 = icmp eq i8 %and1444.i.3, -64
  br i1 %cmp17.i.3, label %for.cond.2.cleanup_crit_edge, label %for.cond.2.do.end_crit_edge

for.cond.2.do.end_crit_edge:                      ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %for.cond.2.do.end_crit_edge, %entry.do.end_crit_edge
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %4 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ps2dev, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %5, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.68) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.cond.2.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %do.end ], [ 1, %for.cond.2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serio_interrupt(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @synaptics_report_buttons(ptr nocapture noundef readonly %psmouse, ptr nocapture noundef readonly %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %2 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %psmouse, align 4
  %left = getelementptr inbounds %struct.synaptics_hw_state, ptr %hw, i32 0, i32 4
  %4 = ptrtoint ptr %left to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %left, align 4
  %bf.load.lobit = lshr i8 %bf.load, 7
  %5 = zext i8 %bf.load.lobit to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 272, i32 noundef %5) #10
  %6 = ptrtoint ptr %left to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load2 = load i8, ptr %left, align 4
  %7 = lshr i8 %bf.load2, 6
  %.lobit = and i8 %7, 1
  %8 = zext i8 %.lobit to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 273, i32 noundef %8) #10
  %capabilities = getelementptr inbounds %struct.synaptics_device_info, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %capabilities, align 4
  %and = and i32 %10, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %left to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load5 = load i8, ptr %left, align 4
  %12 = lshr i8 %bf.load5, 5
  %.lobit43 = and i8 %12, 1
  %13 = zext i8 %.lobit43 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 274, i32 noundef %13) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %capabilities, align 4
  %and11 = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end.if.end22_crit_edge, label %if.then13

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %left to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load14 = load i8, ptr %left, align 4
  %17 = lshr i8 %bf.load14, 4
  %.lobit44 = and i8 %17, 1
  %18 = zext i8 %.lobit44 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 277, i32 noundef %18) #10
  %19 = ptrtoint ptr %left to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load18 = load i8, ptr %left, align 4
  %20 = lshr i8 %bf.load18, 3
  %.lobit45 = and i8 %20, 1
  %21 = zext i8 %.lobit45 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 278, i32 noundef %21) #10
  br label %if.end22

if.end22:                                         ; preds = %if.then13, %if.end.if.end22_crit_edge
  %22 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev1, align 4
  %24 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %psmouse, align 4
  %ext_cap.i = getelementptr inbounds %struct.synaptics_device_info, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %ext_cap.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ext_cap.i, align 4
  %and.i = lshr i32 %27, 12
  %shr.i = and i32 %and.i, 15
  %add.i = add nuw nsw i32 %shr.i, 1
  %shr2.i = lshr i32 %add.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %tobool.not.i = icmp eq i32 %shr.i, 0
  br i1 %tobool.not.i, label %if.end22.synaptics_report_ext_buttons.exit_crit_edge, label %if.end.i

if.end22.synaptics_report_ext_buttons.exit_crit_edge: ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %synaptics_report_ext_buttons.exit

if.end.i:                                         ; preds = %if.end22
  %identity.i = getelementptr inbounds %struct.synaptics_device_info, ptr %25, i32 0, i32 7
  %28 = ptrtoint ptr %identity.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %identity.i, align 4
  %and8.i = shl i32 %29, 8
  %shl.i = and i32 %and8.i, 3840
  %and12.i = lshr i32 %29, 16
  %shr13.i = and i32 %and12.i, 255
  %or.i = add nuw nsw i32 %shr13.i, -2049
  %or.off.i = add nsw i32 %or.i, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %or.off.i)
  %switch.i = icmp ult i32 %or.off.i, 2
  br i1 %switch.i, label %land.lhs.true.i, label %if.end.i.if.end31.i_crit_edge

if.end.i.if.end31.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %packet.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 7
  %30 = ptrtoint ptr %packet.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %packet.i, align 4
  %arrayidx26.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 3
  %32 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx26.i, align 1
  %xor99.i = xor i8 %33, %31
  %34 = and i8 %xor99.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool29.not.i = icmp eq i8 %34, 0
  br i1 %tobool29.not.i, label %land.lhs.true.i.synaptics_report_ext_buttons.exit_crit_edge, label %land.lhs.true.i.if.end31.i_crit_edge

land.lhs.true.i.if.end31.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i

land.lhs.true.i.synaptics_report_ext_buttons.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %synaptics_report_ext_buttons.exit

if.end31.i:                                       ; preds = %land.lhs.true.i.if.end31.i_crit_edge, %if.end.i.if.end31.i_crit_edge
  %ext_cap_10.i = getelementptr inbounds %struct.synaptics_device_info, ptr %25, i32 0, i32 6
  %35 = ptrtoint ptr %ext_cap_10.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ext_cap_10.i, align 4
  %and33.i = and i32 %36, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %for.body.lr.ph.i, label %if.end49.i

for.body.lr.ph.i:                                 ; preds = %if.end31.i
  %ext_buttons.i = getelementptr inbounds %struct.synaptics_hw_state, ptr %hw, i32 0, i32 5
  %umax.i = tail call i32 @llvm.umax.i32(i32 %shr2.i, i32 1) #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0103.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %mul.i = shl nuw i32 %i.0103.i, 1
  %add38.i = add nuw nsw i32 %mul.i, 256
  %37 = ptrtoint ptr %ext_buttons.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ext_buttons.i, align 1
  %conv39.i = zext i8 %38 to i32
  %39 = lshr i32 %conv39.i, %i.0103.i
  %40 = and i32 %39, 1
  tail call void @input_event(ptr noundef %23, i32 noundef 1, i32 noundef %add38.i, i32 noundef %40) #10
  %add43.i = add nuw nsw i32 %mul.i, 257
  %41 = ptrtoint ptr %ext_buttons.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ext_buttons.i, align 1
  %conv45.i = zext i8 %42 to i32
  %add46.i = add nuw nsw i32 %i.0103.i, %shr2.i
  %43 = lshr i32 %conv45.i, %add46.i
  %44 = and i32 %43, 1
  tail call void @input_event(ptr noundef %23, i32 noundef 1, i32 noundef %add43.i, i32 noundef %44) #10
  %inc.i = add nuw nsw i32 %i.0103.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.body.i.synaptics_report_ext_buttons.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.synaptics_report_ext_buttons.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %synaptics_report_ext_buttons.exit

if.end49.i:                                       ; preds = %if.end31.i
  %pt_port.i = getelementptr inbounds %struct.synaptics_data, ptr %25, i32 0, i32 6
  %45 = ptrtoint ptr %pt_port.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pt_port.i, align 4
  %tobool50.not.i = icmp eq ptr %46, null
  br i1 %tobool50.not.i, label %if.end49.i.synaptics_report_ext_buttons.exit_crit_edge, label %if.then51.i

if.end49.i.synaptics_report_ext_buttons.exit_crit_edge: ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %synaptics_report_ext_buttons.exit

if.then51.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #12
  %ext_buttons52.i = getelementptr inbounds %struct.synaptics_hw_state, ptr %hw, i32 0, i32 5
  %47 = ptrtoint ptr %ext_buttons52.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %ext_buttons52.i, align 1
  %and54.i = and i8 %48, 1
  %49 = lshr i8 %48, 1
  %shl60.i = and i8 %49, 2
  %or61.i = or i8 %shl60.i, %and54.i
  %50 = shl i8 %48, 1
  %shl66.i = and i8 %50, 4
  %or67.i = or i8 %or61.i, %shl66.i
  %call.i = tail call i32 @serio_interrupt(ptr noundef nonnull %46, i8 noundef zeroext 1, i32 noundef 8) #10
  %51 = ptrtoint ptr %pt_port.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pt_port.i, align 4
  %call71.i = tail call i32 @serio_interrupt(ptr noundef %52, i8 noundef zeroext %or67.i, i32 noundef 8) #10
  br label %synaptics_report_ext_buttons.exit

synaptics_report_ext_buttons.exit:                ; preds = %if.then51.i, %if.end49.i.synaptics_report_ext_buttons.exit_crit_edge, %for.body.i.synaptics_report_ext_buttons.exit_crit_edge, %land.lhs.true.i.synaptics_report_ext_buttons.exit_crit_edge, %if.end22.synaptics_report_ext_buttons.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_assign_slots(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_drop_unused(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_report_pointer_emulation(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_report_finger_count(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @synaptics_pt_write(ptr nocapture noundef readonly %serio, i8 noundef zeroext %c) #0 align 64 {
entry:
  %rate_param = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent1 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 12
  %0 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 18, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rate_param) #10
  %4 = ptrtoint ptr %rate_param to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 40, ptr %rate_param, align 1
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %3, i32 0, i32 2
  %call2 = tail call i32 @ps2_sliced_command(ptr noundef %ps2dev, i8 noundef zeroext %c) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef nonnull %rate_param, i32 noundef 4339) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rate_param) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @synaptics_pt_start(ptr noundef %serio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent1 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 12
  %0 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 18, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ps2dev, align 4
  %lock.i = getelementptr inbounds %struct.serio, ptr %7, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #10
  %pt_port = getelementptr inbounds %struct.synaptics_data, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %pt_port to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %serio, ptr %pt_port, align 4
  %9 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ps2dev, align 4
  %lock.i8 = getelementptr inbounds %struct.serio, ptr %10, i32 0, i32 6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i8) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @synaptics_pt_stop(ptr nocapture noundef readonly %serio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent1 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 12
  %0 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 18, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ps2dev, align 4
  %lock.i = getelementptr inbounds %struct.serio, ptr %7, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #10
  %pt_port = getelementptr inbounds %struct.synaptics_data, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %pt_port to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %pt_port, align 4
  %9 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ps2dev, align 4
  %lock.i7 = getelementptr inbounds %struct.serio, ptr %10, i32 0, i32 6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i7) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @synaptics_pt_activate(ptr noundef %psmouse) #0 align 64 {
entry:
  %param.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  %pt_port = getelementptr inbounds %struct.synaptics_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %pt_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pt_port, align 4
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %3, i32 0, i32 18, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then:                                          ; preds = %entry
  %pktsize = getelementptr inbounds %struct.psmouse, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %pktsize to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pktsize, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %7)
  %cmp = icmp eq i8 %7, 4
  %mode = getelementptr inbounds %struct.synaptics_data, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mode, align 4
  %10 = and i8 %9, -3
  %masksel = select i1 %cmp, i8 2, i8 0
  %.sink = or i8 %10, %masksel
  store i8 %.sink, ptr %mode, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param.i) #10
  %ps2dev.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %call.i = tail call i32 @ps2_sliced_command(ptr noundef %ps2dev.i, i8 noundef zeroext %.sink) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %synaptics_mode_cmd.exit, label %synaptics_mode_cmd.exit.thread

synaptics_mode_cmd.exit.thread:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param.i) #10
  br label %do.end

synaptics_mode_cmd.exit:                          ; preds = %if.then
  %11 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 20, ptr %param.i, align 1
  %call2.i = call i32 @ps2_command(ptr noundef %ps2dev.i, ptr noundef nonnull %param.i, i32 noundef 4339) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool10.not = icmp eq i32 %call2.i, 0
  br i1 %tobool10.not, label %synaptics_mode_cmd.exit.if.end13_crit_edge, label %synaptics_mode_cmd.exit.do.end_crit_edge

synaptics_mode_cmd.exit.do.end_crit_edge:         ; preds = %synaptics_mode_cmd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

synaptics_mode_cmd.exit.if.end13_crit_edge:       ; preds = %synaptics_mode_cmd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

do.end:                                           ; preds = %synaptics_mode_cmd.exit.do.end_crit_edge, %synaptics_mode_cmd.exit.thread
  %12 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ps2dev.i, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %13, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.88) #13
  br label %if.end13

if.end13:                                         ; preds = %do.end, %synaptics_mode_cmd.exit.if.end13_crit_edge, %entry.if.end13_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__serio_register_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psmouse_attr_show_helper(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psmouse_attr_set_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @synaptics_show_disable_gesture(ptr nocapture noundef readonly %psmouse, ptr nocapture noundef readnone %data, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  %disable_gesture = getelementptr inbounds %struct.synaptics_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %disable_gesture to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %disable_gesture, align 1, !range !324
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %cond = select i1 %tobool.not, i32 48, i32 49
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.92, i32 noundef %cond)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @synaptics_set_disable_gesture(ptr noundef %psmouse, ptr nocapture noundef readnone %data, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %param.i = alloca [1 x i8], align 1
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #10
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !323
  %call = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp ugt i32 %4, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %disable_gesture = getelementptr inbounds %struct.synaptics_data, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %disable_gesture to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %disable_gesture, align 1, !range !324
  %7 = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %7)
  %cmp4 = icmp eq i32 %4, %7
  br i1 %cmp4, label %if.end2.cleanup_crit_edge, label %if.end7

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool8 = icmp ne i32 %4, 0
  %frombool = zext i1 %tobool8 to i8
  %8 = ptrtoint ptr %disable_gesture to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %disable_gesture, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool10.not = icmp eq i32 %4, 0
  %mode14 = getelementptr inbounds %struct.synaptics_data, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %mode14 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mode14, align 4
  %11 = and i8 %10, -5
  %masksel = select i1 %tobool10.not, i8 0, i8 4
  %.sink = or i8 %11, %masksel
  store i8 %.sink, ptr %mode14, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param.i) #10
  %ps2dev.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %call.i = call i32 @ps2_sliced_command(ptr noundef %ps2dev.i, i8 noundef zeroext %.sink) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end7.synaptics_mode_cmd.exit_crit_edge

if.end7.synaptics_mode_cmd.exit_crit_edge:        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %synaptics_mode_cmd.exit

if.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 20, ptr %param.i, align 1
  %call2.i = call i32 @ps2_command(ptr noundef %ps2dev.i, ptr noundef nonnull %param.i, i32 noundef 4339) #10
  br label %synaptics_mode_cmd.exit

synaptics_mode_cmd.exit:                          ; preds = %if.end.i, %if.end7.synaptics_mode_cmd.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end7.synaptics_mode_cmd.exit_crit_edge ], [ %call2.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool20.not = icmp eq i32 %retval.0.i, 0
  %len. = select i1 %tobool20.not, i32 %len, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %synaptics_mode_cmd.exit, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %len, %if.end2.cleanup_crit_edge ], [ %len., %synaptics_mode_cmd.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @synaptics_resolution(ptr noundef %psmouse, ptr nocapture noundef %info) unnamed_addr #0 align 64 {
entry:
  %resp = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %resp) #10
  %0 = ptrtoint ptr %resp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %resp, align 1, !annotation !323
  %1 = getelementptr inbounds [3 x i8], ptr %resp, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !323
  %3 = getelementptr inbounds [3 x i8], ptr %resp, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !323
  %identity = getelementptr inbounds %struct.synaptics_device_info, ptr %info, i32 0, i32 7
  %5 = ptrtoint ptr %identity to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %identity, align 4
  %and = and i32 %6, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ps2dev.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %call.i = tail call i32 @ps2_sliced_command(ptr noundef %ps2dev.i, i8 noundef zeroext 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %synaptics_send_cmd.exit, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

synaptics_send_cmd.exit:                          ; preds = %if.end
  %call2.i = call i32 @ps2_command(ptr noundef %ps2dev.i, ptr noundef nonnull %resp, i32 noundef 1001) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not = icmp eq i32 %call2.i, 0
  br i1 %tobool.not, label %if.then1, label %synaptics_send_cmd.exit.if.end19_crit_edge

synaptics_send_cmd.exit.if.end19_crit_edge:       ; preds = %synaptics_send_cmd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then1:                                         ; preds = %synaptics_send_cmd.exit
  %7 = ptrtoint ptr %resp to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %resp, align 1
  %conv = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp2.not = icmp eq i8 %8, 0
  br i1 %cmp2.not, label %if.then1.if.end19_crit_edge, label %land.lhs.true

if.then1.if.end19_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

land.lhs.true:                                    ; preds = %if.then1
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %10)
  %tobool7.not = icmp sgt i8 %10, -1
  br i1 %tobool7.not, label %land.lhs.true.if.end19_crit_edge, label %land.lhs.true8

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

land.lhs.true8:                                   ; preds = %land.lhs.true
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp11.not = icmp eq i8 %12, 0
  br i1 %cmp11.not, label %land.lhs.true8.if.end19_crit_edge, label %if.then13

land.lhs.true8.if.end19_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then13:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  %x_res = getelementptr inbounds %struct.synaptics_device_info, ptr %info, i32 0, i32 8
  %13 = ptrtoint ptr %x_res to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %x_res, align 4
  %conv17 = zext i8 %12 to i32
  %y_res = getelementptr inbounds %struct.synaptics_device_info, ptr %info, i32 0, i32 9
  %14 = ptrtoint ptr %y_res to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv17, ptr %y_res, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then13, %land.lhs.true8.if.end19_crit_edge, %land.lhs.true.if.end19_crit_edge, %if.then1.if.end19_crit_edge, %synaptics_send_cmd.exit.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %capabilities = getelementptr inbounds %struct.synaptics_device_info, ptr %info, i32 0, i32 3
  %15 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %capabilities, align 4
  %17 = and i32 %16, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %17)
  %cmp22 = icmp ugt i32 %17, 4194304
  br i1 %cmp22, label %land.lhs.true24, label %if.end19.if.end55_crit_edge

if.end19.if.end55_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

land.lhs.true24:                                  ; preds = %if.end19
  %ext_cap_0c = getelementptr inbounds %struct.synaptics_device_info, ptr %info, i32 0, i32 5
  %18 = ptrtoint ptr %ext_cap_0c to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ext_cap_0c, align 4
  %and25 = and i32 %19, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %land.lhs.true24.if.end55_crit_edge, label %if.then27

land.lhs.true24.if.end55_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then27:                                        ; preds = %land.lhs.true24
  %call29 = call fastcc i32 @synaptics_send_cmd(ptr noundef %psmouse, i8 noundef zeroext 13, ptr noundef nonnull %resp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ps2dev.i, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %21, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.98) #13
  br label %if.end55

if.else:                                          ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %resp to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %resp, align 1
  %conv33 = zext i8 %23 to i32
  %shl = shl nuw nsw i32 %conv33, 5
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %1, align 1
  %26 = shl i8 %25, 1
  %27 = and i8 %26, 30
  %shl37 = zext i8 %27 to i32
  %or = or i32 %shl, %shl37
  %x_max = getelementptr inbounds %struct.synaptics_device_info, ptr %info, i32 0, i32 10
  %28 = ptrtoint ptr %x_max to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or, ptr %x_max, align 4
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %3, align 1
  %conv39 = zext i8 %30 to i32
  %shl40 = shl nuw nsw i32 %conv39, 5
  %31 = lshr i8 %25, 3
  %32 = and i8 %31, 30
  %33 = zext i8 %32 to i32
  %or45 = or i32 %shl40, %33
  %y_max = getelementptr inbounds %struct.synaptics_device_info, ptr %info, i32 0, i32 11
  %34 = ptrtoint ptr %y_max to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or45, ptr %y_max, align 4
  %35 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ps2dev.i, align 4
  %dev51 = getelementptr inbounds %struct.serio, ptr %36, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev51, ptr noundef nonnull @.str.101, i32 noundef %or, i32 noundef %or45) #13
  br label %if.end55

if.end55:                                         ; preds = %if.else, %do.end, %land.lhs.true24.if.end55_crit_edge, %if.end19.if.end55_crit_edge
  %ext_cap_0c56 = getelementptr inbounds %struct.synaptics_device_info, ptr %info, i32 0, i32 5
  %37 = ptrtoint ptr %ext_cap_0c56 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ext_cap_0c56, align 4
  %and57 = and i32 %38, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end55.cleanup_crit_edge, label %land.lhs.true59

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true59:                                  ; preds = %if.end55
  %39 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %capabilities, align 4
  %41 = and i32 %40, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 7340032, i32 %41)
  %cmp63 = icmp eq i32 %41, 7340032
  br i1 %cmp63, label %land.lhs.true59.if.then75_crit_edge, label %lor.lhs.false

land.lhs.true59.if.then75_crit_edge:              ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then75

lor.lhs.false:                                    ; preds = %land.lhs.true59
  %42 = ptrtoint ptr %identity to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %identity, align 4
  %and66 = shl i32 %43, 8
  %shl68 = and i32 %and66, 3840
  %and70 = lshr i32 %43, 16
  %shr71 = and i32 %and70, 255
  %or72 = or i32 %shl68, %shr71
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %or72)
  %cmp73 = icmp eq i32 %or72, 2049
  br i1 %cmp73, label %lor.lhs.false.if.then75_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.if.then75_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then75

if.then75:                                        ; preds = %lor.lhs.false.if.then75_crit_edge, %land.lhs.true59.if.then75_crit_edge
  %call.i2 = call i32 @ps2_sliced_command(ptr noundef %ps2dev.i, i8 noundef zeroext 15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %tobool.not.i3 = icmp eq i32 %call.i2, 0
  br i1 %tobool.not.i3, label %synaptics_send_cmd.exit7, label %if.then75.do.end82_crit_edge

if.then75.do.end82_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end82

synaptics_send_cmd.exit7:                         ; preds = %if.then75
  %call2.i4 = call i32 @ps2_command(ptr noundef %ps2dev.i, ptr noundef nonnull %resp, i32 noundef 1001) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i4)
  %tobool78.not = icmp eq i32 %call2.i4, 0
  br i1 %tobool78.not, label %if.else86, label %synaptics_send_cmd.exit7.do.end82_crit_edge

synaptics_send_cmd.exit7.do.end82_crit_edge:      ; preds = %synaptics_send_cmd.exit7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end82

do.end82:                                         ; preds = %synaptics_send_cmd.exit7.do.end82_crit_edge, %if.then75.do.end82_crit_edge
  %44 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ps2dev.i, align 4
  %dev85 = getelementptr inbounds %struct.serio, ptr %45, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev85, ptr noundef nonnull @.str.104) #13
  br label %cleanup

if.else86:                                        ; preds = %synaptics_send_cmd.exit7
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %resp to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %resp, align 1
  %conv88 = zext i8 %47 to i32
  %shl89 = shl nuw nsw i32 %conv88, 5
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %1, align 1
  %50 = shl i8 %49, 1
  %51 = and i8 %50, 30
  %shl93 = zext i8 %51 to i32
  %or94 = or i32 %shl89, %shl93
  %x_min = getelementptr inbounds %struct.synaptics_device_info, ptr %info, i32 0, i32 12
  %52 = ptrtoint ptr %x_min to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or94, ptr %x_min, align 4
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %3, align 1
  %conv96 = zext i8 %54 to i32
  %shl97 = shl nuw nsw i32 %conv96, 5
  %55 = lshr i8 %49, 3
  %56 = and i8 %55, 30
  %57 = zext i8 %56 to i32
  %or102 = or i32 %shl97, %57
  %y_min = getelementptr inbounds %struct.synaptics_device_info, ptr %info, i32 0, i32 13
  %58 = ptrtoint ptr %y_min to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or102, ptr %y_min, align 4
  %59 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ps2dev.i, align 4
  %dev108 = getelementptr inbounds %struct.serio, ptr %60, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev108, ptr noundef nonnull @.str.107, i32 noundef %or94, i32 noundef %or102) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else86, %do.end82, %lor.lhs.false.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %resp) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @synaptics_send_cmd(ptr noundef %psmouse, i8 noundef zeroext %cmd, ptr noundef %param) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %call = tail call i32 @ps2_sliced_command(ptr noundef %ps2dev, i8 noundef zeroext %cmd) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef %param, i32 noundef 1001) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psmouse_smbus_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 163)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 163)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !13, !14, !15, !16, !17, !19, !20, !21, !23, !25, !27, !29, !31, !33, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !97, !98, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !148, !149, !150, !152, !154, !156, !158, !160, !162, !163, !164, !165, !167, !168, !169, !170, !172, !173, !174, !176, !177, !179, !180, !181, !183, !184, !185, !186, !188, !190, !192, !193, !194, !196, !197, !198, !199, !200, !202, !203, !205, !206, !208, !210, !211, !212, !213, !215, !216, !217, !219, !220, !221, !222, !224, !225, !226, !228, !229, !230, !232, !233, !234, !236, !237, !238, !239, !241, !242, !243, !245, !246, !247, !249, !250, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !312, !313}
!llvm.module.flags = !{!314, !315, !316, !317, !318, !319, !320, !321}
!llvm.ident = !{!322}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/input/mouse/synaptics.c", i32 111, i32 21}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/input/mouse/synaptics.c", i32 112, i32 19}
!4 = !{ptr @__param_synaptics_intertouch, !5, !"__param_synaptics_intertouch", i1 false, i1 false}
!5 = !{!"../drivers/input/mouse/synaptics.c", i32 1743, i32 1}
!6 = !{ptr @__UNIQUE_ID_synaptics_intertouchtype301, !5, !"__UNIQUE_ID_synaptics_intertouchtype301", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_synaptics_intertouch302, !8, !"__UNIQUE_ID_synaptics_intertouch302", i1 false, i1 false}
!8 = !{!"../drivers/input/mouse/synaptics.c", i32 1744, i32 1}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/input/mouse/synaptics.c", i32 1827, i32 3}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @synaptics_init_smbus._entry, !10, !"_entry", i1 false, i1 false}
!16 = !{ptr @synaptics_init_smbus._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/input/mouse/synaptics.c", i32 1867, i32 3}
!19 = !{ptr @synaptics_init._entry, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @synaptics_init._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!21 = distinct !{null, !22, !"cr48_profile_sensor", i1 false, i1 false}
!22 = !{!"../drivers/input/mouse/synaptics.c", i32 457, i32 13}
!23 = distinct !{null, !24, !"impaired_toshiba_kbc", i1 false, i1 false}
!24 = !{!"../drivers/input/mouse/synaptics.c", i32 1481, i32 13}
!25 = distinct !{null, !26, !"broken_olpc_ec", i1 false, i1 false}
!26 = !{!"../drivers/input/mouse/synaptics.c", i32 1520, i32 13}
!27 = distinct !{null, !28, !"toshiba_dmi_table", i1 false, i1 false}
!28 = !{!"../drivers/input/mouse/synaptics.c", i32 1483, i32 35}
!29 = distinct !{null, !30, !"olpc_dmi_table", i1 false, i1 false}
!30 = !{!"../drivers/input/mouse/synaptics.c", i32 1522, i32 35}
!31 = distinct !{null, !32, !"cr48_dmi_table", i1 false, i1 false}
!32 = !{!"../drivers/input/mouse/synaptics.c", i32 1535, i32 47}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/input/mouse/synaptics.c", i32 1671, i32 3}
!35 = !{ptr @__synaptics_init._entry, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @__synaptics_init._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/mouse/synaptics.c", i32 1581, i32 3}
!39 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @synaptics_init_ps2._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @synaptics_init_ps2._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/mouse/synaptics.c", i32 1588, i32 2}
!44 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @synaptics_init_ps2._entry.11, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @synaptics_init_ps2._entry_ptr.14, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/input/mouse/synaptics.c", i32 1598, i32 3}
!49 = !{ptr @synaptics_init_ps2._entry.15, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @synaptics_init_ps2._entry_ptr.17, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/input/mouse/synaptics.c", i32 1638, i32 3}
!53 = !{ptr @synaptics_init_ps2._entry.18, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @synaptics_init_ps2._entry_ptr.20, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/input/mouse/synaptics.c", i32 1648, i32 4}
!57 = !{ptr @synaptics_init_ps2._entry.21, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @synaptics_init_ps2._entry_ptr.23, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/input/mouse/synaptics.c", i32 548, i32 3}
!61 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @synaptics_apply_quirks._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @synaptics_apply_quirks._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/input/mouse/synaptics.c", i32 470, i32 27}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/input/mouse/synaptics.c", i32 475, i32 27}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/input/mouse/synaptics.c", i32 480, i32 27}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/input/mouse/synaptics.c", i32 480, i32 38}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/input/mouse/synaptics.c", i32 480, i32 49}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/input/mouse/synaptics.c", i32 481, i32 6}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/input/mouse/synaptics.c", i32 481, i32 17}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/input/mouse/synaptics.c", i32 481, i32 28}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/input/mouse/synaptics.c", i32 487, i32 27}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/input/mouse/synaptics.c", i32 492, i32 27}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/input/mouse/synaptics.c", i32 497, i32 27}
!86 = !{ptr @min_max_pnpid_table, !87, !"min_max_pnpid_table", i1 false, i1 false}
!87 = !{!"../drivers/input/mouse/synaptics.c", i32 468, i32 35}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/input/mouse/synaptics.c", i32 198, i32 2}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/input/mouse/synaptics.c", i32 199, i32 2}
!92 = !{ptr @forcepad_pnp_ids, !93, !"forcepad_pnp_ids", i1 false, i1 false}
!93 = !{!"../drivers/input/mouse/synaptics.c", i32 197, i32 27}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/input/mouse/synaptics.c", i32 600, i32 4}
!96 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @synaptics_set_mode._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @synaptics_set_mode._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @synaptics_set_advanced_gesture_mode.param, !100, !"param", i1 false, i1 false}
!100 = !{!"../drivers/input/mouse/synaptics.c", i32 564, i32 12}
!101 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/input/mouse/synaptics.c", i32 129, i32 2}
!103 = !{ptr @.str.48, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/input/mouse/synaptics.c", i32 130, i32 2}
!105 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/input/mouse/synaptics.c", i32 131, i32 2}
!107 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/input/mouse/synaptics.c", i32 132, i32 2}
!109 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/input/mouse/synaptics.c", i32 133, i32 2}
!111 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/input/mouse/synaptics.c", i32 134, i32 2}
!113 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/input/mouse/synaptics.c", i32 135, i32 2}
!115 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/input/mouse/synaptics.c", i32 136, i32 2}
!117 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/input/mouse/synaptics.c", i32 137, i32 2}
!119 = !{ptr @.str.56, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/input/mouse/synaptics.c", i32 140, i32 2}
!121 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/input/mouse/synaptics.c", i32 143, i32 2}
!123 = !{ptr @.str.58, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/input/mouse/synaptics.c", i32 145, i32 2}
!125 = !{ptr @.str.59, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/input/mouse/synaptics.c", i32 147, i32 2}
!127 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/input/mouse/synaptics.c", i32 148, i32 2}
!129 = !{ptr @.str.61, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/input/mouse/synaptics.c", i32 152, i32 2}
!131 = !{ptr @.str.62, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/input/mouse/synaptics.c", i32 154, i32 2}
!133 = !{ptr @.str.63, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/input/mouse/synaptics.c", i32 156, i32 2}
!135 = !{ptr @.str.64, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/input/mouse/synaptics.c", i32 157, i32 2}
!137 = !{ptr @.str.65, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/input/mouse/synaptics.c", i32 158, i32 2}
!139 = !{ptr @.str.66, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/input/mouse/synaptics.c", i32 159, i32 2}
!141 = !{ptr @.str.67, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/input/mouse/synaptics.c", i32 160, i32 2}
!143 = !{ptr @topbuttonpad_pnp_ids, !144, !"topbuttonpad_pnp_ids", i1 false, i1 false}
!144 = !{!"../drivers/input/mouse/synaptics.c", i32 128, i32 27}
!145 = !{ptr @.str.68, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/input/mouse/synaptics.c", i32 1200, i32 4}
!147 = !{ptr @.str.69, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @synaptics_detect_pkt_type._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @synaptics_detect_pkt_type._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @synaptics_validate_byte.newabs_mask, !151, !"newabs_mask", i1 false, i1 false}
!151 = !{!"../drivers/input/mouse/synaptics.c", i32 1165, i32 18}
!152 = !{ptr @synaptics_validate_byte.newabs_rel_mask, !153, !"newabs_rel_mask", i1 false, i1 false}
!153 = !{!"../drivers/input/mouse/synaptics.c", i32 1166, i32 18}
!154 = !{ptr @synaptics_validate_byte.newabs_rslt, !155, !"newabs_rslt", i1 false, i1 false}
!155 = !{!"../drivers/input/mouse/synaptics.c", i32 1167, i32 18}
!156 = !{ptr @synaptics_validate_byte.oldabs_mask, !157, !"oldabs_mask", i1 false, i1 false}
!157 = !{!"../drivers/input/mouse/synaptics.c", i32 1168, i32 18}
!158 = !{ptr @synaptics_validate_byte.oldabs_rslt, !159, !"oldabs_rslt", i1 false, i1 false}
!159 = !{!"../drivers/input/mouse/synaptics.c", i32 1169, i32 18}
!160 = !{ptr @.str.70, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/input/mouse/synaptics.c", i32 1188, i32 3}
!162 = !{ptr @.str.71, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @synaptics_validate_byte._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @synaptics_validate_byte._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.72, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/input/mouse/synaptics.c", i32 1451, i32 3}
!167 = !{ptr @.str.73, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.74, !166, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @synaptics_reconnect.__UNIQUE_ID_ddebug300, !166, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!170 = !{ptr @.str.75, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/input/mouse/synaptics.c", i32 1455, i32 3}
!172 = !{ptr @synaptics_reconnect._entry, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @synaptics_reconnect._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @synaptics_reconnect._entry.76, !175, !"_entry", i1 false, i1 false}
!175 = !{!"../drivers/input/mouse/synaptics.c", i32 1461, i32 3}
!176 = !{ptr @synaptics_reconnect._entry_ptr.77, !175, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.79, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/input/mouse/synaptics.c", i32 1469, i32 3}
!179 = !{ptr @synaptics_reconnect._entry.78, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @synaptics_reconnect._entry_ptr.80, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.81, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/input/mouse/synaptics.c", i32 711, i32 3}
!183 = !{ptr @.str.82, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @synaptics_pt_create._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @synaptics_pt_create._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.83, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/input/mouse/synaptics.c", i32 717, i32 23}
!188 = !{ptr @.str.84, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/input/mouse/synaptics.c", i32 718, i32 23}
!190 = !{ptr @.str.86, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/input/mouse/synaptics.c", i32 726, i32 2}
!192 = !{ptr @synaptics_pt_create._entry.85, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @synaptics_pt_create._entry_ptr.87, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.88, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/input/mouse/synaptics.c", i32 700, i32 4}
!196 = !{ptr @.str.89, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.90, !195, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @synaptics_pt_activate._entry, !195, !"_entry", i1 false, i1 false}
!199 = !{ptr @synaptics_pt_activate._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.91, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/input/mouse/synaptics.c", i32 1399, i32 1}
!202 = !{ptr @psmouse_attr_disable_gesture, !201, !"psmouse_attr_disable_gesture", i1 false, i1 false}
!203 = !{ptr @.str.92, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/input/mouse/synaptics.c", i32 1366, i32 22}
!205 = !{ptr @__param_str_synaptics_intertouch, !5, !"__param_str_synaptics_intertouch", i1 false, i1 false}
!206 = !{ptr @synaptics_intertouch, !207, !"synaptics_intertouch", i1 false, i1 false}
!207 = !{!"../drivers/input/mouse/synaptics.c", i32 1741, i32 12}
!208 = !{ptr @.str.93, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/input/mouse/synaptics.c", i32 334, i32 4}
!210 = !{ptr @.str.94, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @synaptics_capability._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @synaptics_capability._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.96, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/input/mouse/synaptics.c", i32 350, i32 4}
!215 = !{ptr @synaptics_capability._entry.95, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @synaptics_capability._entry_ptr.97, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.98, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/input/mouse/synaptics.c", i32 383, i32 4}
!219 = !{ptr @.str.99, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @synaptics_resolution._entry, !218, !"_entry", i1 false, i1 false}
!221 = !{ptr @synaptics_resolution._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.101, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/input/mouse/synaptics.c", i32 388, i32 4}
!224 = !{ptr @synaptics_resolution._entry.100, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @synaptics_resolution._entry_ptr.102, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.104, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/input/mouse/synaptics.c", i32 405, i32 4}
!228 = !{ptr @synaptics_resolution._entry.103, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @synaptics_resolution._entry_ptr.105, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.107, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/input/mouse/synaptics.c", i32 410, i32 4}
!232 = !{ptr @synaptics_resolution._entry.106, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @synaptics_resolution._entry_ptr.108, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.109, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/input/mouse/synaptics.c", i32 1794, i32 5}
!236 = !{ptr @.str.110, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @synaptics_setup_intertouch._entry, !235, !"_entry", i1 false, i1 false}
!238 = !{ptr @synaptics_setup_intertouch._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.112, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/input/mouse/synaptics.c", i32 1803, i32 2}
!241 = !{ptr @synaptics_setup_intertouch._entry.111, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @synaptics_setup_intertouch._entry_ptr.113, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.115, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/input/mouse/synaptics.c", i32 1808, i32 4}
!245 = !{ptr @synaptics_setup_intertouch._entry.114, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @synaptics_setup_intertouch._entry_ptr.116, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.118, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/input/mouse/synaptics.c", i32 1810, i32 4}
!249 = !{ptr @synaptics_setup_intertouch._entry.117, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @synaptics_setup_intertouch._entry_ptr.119, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.120, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/input/mouse/synaptics.c", i32 166, i32 2}
!253 = !{ptr @.str.121, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/input/mouse/synaptics.c", i32 167, i32 2}
!255 = !{ptr @.str.122, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/input/mouse/synaptics.c", i32 168, i32 2}
!257 = !{ptr @.str.123, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/input/mouse/synaptics.c", i32 169, i32 2}
!259 = !{ptr @.str.124, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/input/mouse/synaptics.c", i32 170, i32 2}
!261 = !{ptr @.str.125, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/input/mouse/synaptics.c", i32 171, i32 2}
!263 = !{ptr @.str.126, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/input/mouse/synaptics.c", i32 172, i32 2}
!265 = !{ptr @.str.127, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/input/mouse/synaptics.c", i32 173, i32 2}
!267 = !{ptr @.str.128, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/input/mouse/synaptics.c", i32 174, i32 2}
!269 = !{ptr @.str.129, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/input/mouse/synaptics.c", i32 175, i32 2}
!271 = !{ptr @.str.130, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/input/mouse/synaptics.c", i32 176, i32 2}
!273 = !{ptr @.str.131, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/input/mouse/synaptics.c", i32 177, i32 2}
!275 = !{ptr @.str.132, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/input/mouse/synaptics.c", i32 178, i32 2}
!277 = !{ptr @.str.133, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/input/mouse/synaptics.c", i32 179, i32 2}
!279 = !{ptr @.str.134, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/input/mouse/synaptics.c", i32 180, i32 2}
!281 = !{ptr @.str.135, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/input/mouse/synaptics.c", i32 181, i32 2}
!283 = !{ptr @.str.136, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/input/mouse/synaptics.c", i32 182, i32 2}
!285 = !{ptr @.str.137, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/input/mouse/synaptics.c", i32 183, i32 2}
!287 = !{ptr @.str.138, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/input/mouse/synaptics.c", i32 184, i32 2}
!289 = !{ptr @.str.139, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/input/mouse/synaptics.c", i32 185, i32 2}
!291 = !{ptr @.str.140, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/input/mouse/synaptics.c", i32 186, i32 2}
!293 = !{ptr @.str.141, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/input/mouse/synaptics.c", i32 187, i32 2}
!295 = !{ptr @.str.142, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/input/mouse/synaptics.c", i32 188, i32 2}
!297 = !{ptr @.str.143, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/input/mouse/synaptics.c", i32 189, i32 2}
!299 = !{ptr @.str.144, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/input/mouse/synaptics.c", i32 190, i32 2}
!301 = !{ptr @.str.145, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/input/mouse/synaptics.c", i32 191, i32 2}
!303 = !{ptr @.str.146, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/input/mouse/synaptics.c", i32 192, i32 2}
!305 = !{ptr @.str.147, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/input/mouse/synaptics.c", i32 193, i32 2}
!307 = !{ptr @smbus_pnp_ids, !308, !"smbus_pnp_ids", i1 false, i1 false}
!308 = !{!"../drivers/input/mouse/synaptics.c", i32 164, i32 27}
!309 = !{ptr @.str.148, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/input/mouse/synaptics.c", i32 1701, i32 3}
!311 = !{ptr @.str.149, !310, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @synaptics_setup_ps2._entry, !310, !"_entry", i1 false, i1 false}
!313 = !{ptr @synaptics_setup_ps2._entry_ptr, !310, !"_entry_ptr", i1 false, i1 false}
!314 = !{i32 1, !"wchar_size", i32 2}
!315 = !{i32 1, !"min_enum_size", i32 4}
!316 = !{i32 8, !"branch-target-enforcement", i32 0}
!317 = !{i32 8, !"sign-return-address", i32 0}
!318 = !{i32 8, !"sign-return-address-all", i32 0}
!319 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!320 = !{i32 7, !"uwtable", i32 1}
!321 = !{i32 7, !"frame-pointer", i32 2}
!322 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!323 = !{!"auto-init"}
!324 = !{i8 0, i8 2}
!325 = !{!"branch_weights", i32 1, i32 2000}
!326 = !{i64 2149002384, i64 2149002389, i64 2149002402, i64 2149002446, i64 2149002480, i64 2149002501}
