; ModuleID = '/llk/IR_all_yes/drivers/input/mouse/elantech.c_pt.bc'
source_filename = "../drivers/input/mouse/elantech.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.72 }
%union.anon.72 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.psmouse_attribute = type { %struct.device_attribute, ptr, ptr, ptr, i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.elantech_attr_data = type { i32, i8 }
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
%struct.elantech_device_info = type { [3 x i8], [3 x i8], i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, ptr }
%struct.property_entry = type { ptr, i32, i8, i32, %union.anon.86 }
%union.anon.86 = type { %union.anon.87 }
%union.anon.87 = type { [1 x i64] }
%struct.elantech_data = type { ptr, [32 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, [5 x %struct.finger_pos], [256 x i8], %struct.elantech_device_info, ptr }
%struct.finger_pos = type { i32, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }

@elantech_detect.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"psmouse\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"elantech_detect\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/input/mouse/elantech.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"elantech: sending Elantech magic knock failed.\0A\00", [48 x i8] zeroinitializer }, align 32
@elantech_detect.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 1, i8 100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"elantech: unexpected magic knock result 0x%02x, 0x%02x, 0x%02x.\0A\00", [63 x i8] zeroinitializer }, align 32
@elantech_detect.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 1, i8 102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"elantech: failed to query firmware version.\0A\00", [51 x i8] zeroinitializer }, align 32
@elantech_detect.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 1, i8 104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"elantech: Elantech version query result 0x%02x, 0x%02x, 0x%02x.\0A\00", [63 x i8] zeroinitializer }, align 32
@elantech_detect.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 1, i8 105, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"elantech: Probably not a real Elantech touchpad. Aborting.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Elantech\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Touchpad\00", [23 x i8] zeroinitializer }, align 32
@__param_str_elantech_smbus = internal constant [23 x i8] c"psmouse.elantech_smbus\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@elantech_smbus = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_elantech_smbus = internal constant %struct.kernel_param { ptr @__param_str_elantech_smbus, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.72 { ptr @elantech_smbus } }, section "__param", align 4
@__UNIQUE_ID_elantech_smbustype293 = internal constant [36 x i8] c"psmouse.parmtype=elantech_smbus:int\00", section ".modinfo", align 1
@__UNIQUE_ID_elantech_smbus294 = internal constant [73 x i8] c"psmouse.parm=elantech_smbus:Use a secondary bus for the Elantech device.\00", section ".modinfo", align 1
@synaptics_send_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 40, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"elantech: %s query 0x%02x failed.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"synaptics_send_cmd\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@synaptics_send_cmd._entry_ptr = internal global ptr @synaptics_send_cmd._entry, section ".printk_index", align 4
@elantech_query_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.14, ptr @.str.2, i32 1690, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"elantech_query_info\00", [44 x i8] zeroinitializer }, align 32
@elantech_query_info._entry_ptr = internal global ptr @elantech_query_info._entry, section ".printk_index", align 4
@elantech_query_info._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 1696, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"elantech: unknown hardware version, aborting...\0A\00", [47 x i8] zeroinitializer }, align 32
@elantech_query_info._entry_ptr.17 = internal global ptr @elantech_query_info._entry.15, section ".printk_index", align 4
@elantech_query_info._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.2, i32 1701, ptr @.str.20, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"elantech: assuming hardware version %d (with firmware version 0x%02x%02x%02x)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@elantech_query_info._entry_ptr.21 = internal global ptr @elantech_query_info._entry.18, section ".printk_index", align 4
@elantech_query_info._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.14, ptr @.str.2, i32 1705, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"elantech: failed to query capabilities.\0A\00", [55 x i8] zeroinitializer }, align 32
@elantech_query_info._entry_ptr.24 = internal global ptr @elantech_query_info._entry.22, section ".printk_index", align 4
@elantech_query_info._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.14, ptr @.str.2, i32 1711, ptr @.str.20, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"elantech: Synaptics capabilities query result 0x%02x, 0x%02x, 0x%02x.\0A\00", [57 x i8] zeroinitializer }, align 32
@elantech_query_info._entry_ptr.27 = internal global ptr @elantech_query_info._entry.25, section ".printk_index", align 4
@elantech_query_info._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.14, ptr @.str.2, i32 1715, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"elantech: failed to query sample data\0A\00", [57 x i8] zeroinitializer }, align 32
@elantech_query_info._entry_ptr.30 = internal global ptr @elantech_query_info._entry.28, section ".printk_index", align 4
@elantech_query_info._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.14, ptr @.str.2, i32 1722, ptr @.str.20, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"elantech: Elan sample query result %02x, %02x, %02x\0A\00", [43 x i8] zeroinitializer }, align 32
@elantech_query_info._entry_ptr.33 = internal global ptr @elantech_query_info._entry.31, section ".printk_index", align 4
@elantech_query_info._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.14, ptr @.str.2, i32 1727, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"elantech: failed to query ic body\0A\00", [61 x i8] zeroinitializer }, align 32
@elantech_query_info._entry_ptr.36 = internal global ptr @elantech_query_info._entry.34, section ".printk_index", align 4
@elantech_query_info._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.14, ptr @.str.2, i32 1733, ptr @.str.20, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"elantech: Elan ic body: %#04x, current fw version: %#02x\0A\00", [38 x i8] zeroinitializer }, align 32
@elantech_query_info._entry_ptr.39 = internal global ptr @elantech_query_info._entry.37, section ".printk_index", align 4
@elantech_query_info._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.14, ptr @.str.2, i32 1747, ptr @.str.20, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"elantech: absolute mode broken, forcing standard PS/2 protocol\0A\00", [32 x i8] zeroinitializer }, align 32
@elantech_query_info._entry_ptr.42 = internal global ptr @elantech_query_info._entry.40, section ".printk_index", align 4
@elantech_query_info._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.14, ptr @.str.2, i32 1766, ptr @.str.20, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"elantech: Trackpoint report is broken, forcing standard PS/2 protocol\0A\00", [57 x i8] zeroinitializer }, align 32
@elantech_query_info._entry_ptr.45 = internal global ptr @elantech_query_info._entry.43, section ".printk_index", align 4
@elantech_query_info._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.14, ptr @.str.2, i32 1779, ptr @.str.48, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"elantech: failed to query resolution data.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@elantech_query_info._entry_ptr.49 = internal global ptr @elantech_query_info._entry.46, section ".printk_index", align 4
@elantech_send_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.50, ptr @.str.2, i32 58, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"elantech_send_cmd\00", [46 x i8] zeroinitializer }, align 32
@elantech_send_cmd._entry_ptr = internal global ptr @elantech_send_cmd._entry, section ".printk_index", align 4
@__const.elantech_change_report_id.param = private unnamed_addr constant [3 x i8] c"\10\03\00", align 1
@elantech_change_report_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 1602, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"elantech: Unable to change report ID to 0x5f.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"elantech_change_report_id\00", [38 x i8] zeroinitializer }, align 32
@elantech_change_report_id._entry_ptr = internal global ptr @elantech_change_report_id._entry, section ".printk_index", align 4
@elantech_write_reg_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 126, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"elantech: failed to write register %#02x with value %#02x%#02x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"elantech_write_reg_params\00", [38 x i8] zeroinitializer }, align 32
@elantech_write_reg_params._entry_ptr = internal global ptr @elantech_write_reg_params._entry, section ".printk_index", align 4
@elantech_ps2_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 82, ptr @.str.57, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"elantech: retrying ps2 command 0x%02x (%d).\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"elantech_ps2_command\00", [43 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@elantech_ps2_command._entry_ptr = internal global ptr @elantech_ps2_command._entry, section ".printk_index", align 4
@elantech_ps2_command._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.56, ptr @.str.2, i32 87, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"elantech: ps2 command 0x%02x failed.\0A\00", [58 x i8] zeroinitializer }, align 32
@elantech_ps2_command._entry_ptr.60 = internal global ptr @elantech_ps2_command._entry.58, section ".printk_index", align 4
@elantech_read_reg_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 103, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"elantech: failed to read register %#02x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"elantech_read_reg_params\00", [39 x i8] zeroinitializer }, align 32
@elantech_read_reg_params._entry_ptr = internal global ptr @elantech_read_reg_params._entry, section ".printk_index", align 4
@__const.elantech_create_smbus.smbus_board = private unnamed_addr constant %struct.i2c_board_info { [20 x i8] c"elan_i2c\00\00\00\00\00\00\00\00\00\00\00\00", i16 64, i16 21, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, align 4
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"touchscreen-size-x\00", [45 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"touchscreen-size-y\00", [45 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"touchscreen-min-x\00", [46 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"touchscreen-min-y\00", [46 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"touchscreen-x-mm\00", [47 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"touchscreen-y-mm\00", [47 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"elan,trackpoint\00", [16 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"elan,middle-button\00", [45 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"elan,x_traces\00", [18 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"elan,y_traces\00", [18 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"elan,clickpad\00", [18 x i8] zeroinitializer }, align 32
@elantech_setup_ps2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 2057, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"elantech: failed to put touchpad into absolute mode.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"elantech_setup_ps2\00", [45 x i8] zeroinitializer }, align 32
@elantech_setup_ps2._entry_ptr = internal global ptr @elantech_setup_ps2._entry, section ".printk_index", align 4
@elantech_setup_ps2._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.2, i32 2067, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"elantech: failed to query touchpad range.\0A\00", [53 x i8] zeroinitializer }, align 32
@elantech_setup_ps2._entry_ptr.78 = internal global ptr @elantech_setup_ps2._entry.76, section ".printk_index", align 4
@elantech_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @elantech_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@elantech_setup_ps2._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.75, ptr @.str.2, i32 2076, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"elantech: failed to create sysfs attributes, error: %d.\0A\00", [39 x i8] zeroinitializer }, align 32
@elantech_setup_ps2._entry_ptr.81 = internal global ptr @elantech_setup_ps2._entry.79, section ".printk_index", align 4
@.str.82 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s/input1\00", [22 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ETPS/2 Elantech TrackPoint\00", [37 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@elantech_set_absolute_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.2, i32 1072, ptr @.str.57, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"elantech: retrying read (%d).\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"elantech_set_absolute_mode\00", [37 x i8] zeroinitializer }, align 32
@elantech_set_absolute_mode._entry_ptr = internal global ptr @elantech_set_absolute_mode._entry, section ".printk_index", align 4
@elantech_set_absolute_mode._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.2, i32 1078, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"elantech: failed to read back register 0x10.\0A\00", [50 x i8] zeroinitializer }, align 32
@elantech_set_absolute_mode._entry_ptr.88 = internal global ptr @elantech_set_absolute_mode._entry.86, section ".printk_index", align 4
@elantech_set_absolute_mode._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.85, ptr @.str.2, i32 1082, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"elantech: touchpad refuses to switch to absolute mode.\0A\00", [40 x i8] zeroinitializer }, align 32
@elantech_set_absolute_mode._entry_ptr.91 = internal global ptr @elantech_set_absolute_mode._entry.89, section ".printk_index", align 4
@elantech_set_absolute_mode._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.85, ptr @.str.2, i32 1089, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"elantech: failed to initialise registers.\0A\00", [53 x i8] zeroinitializer }, align 32
@elantech_set_absolute_mode._entry_ptr.94 = internal global ptr @elantech_set_absolute_mode._entry.92, section ".printk_index", align 4
@elantech_write_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.2, i32 256, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"elantech: failed to write register 0x%02x with value 0x%02x.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"elantech_write_reg\00", [45 x i8] zeroinitializer }, align 32
@elantech_write_reg._entry_ptr = internal global ptr @elantech_write_reg._entry, section ".printk_index", align 4
@elantech_read_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.2, i32 180, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"elantech: failed to read register 0x%02x.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"elantech_read_reg\00", [46 x i8] zeroinitializer }, align 32
@elantech_read_reg._entry_ptr = internal global ptr @elantech_read_reg._entry, section ".printk_index", align 4
@elantech_set_rate_restore_reg_07._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.2, i32 1006, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"elantech: restoring reg_07 failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"elantech_set_rate_restore_reg_07\00", [63 x i8] zeroinitializer }, align 32
@elantech_set_rate_restore_reg_07._entry_ptr = internal global ptr @elantech_set_rate_restore_reg_07._entry, section ".printk_index", align 4
@elantech_attrs = internal global { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr @psmouse_attr_reg_07, ptr @psmouse_attr_reg_10, ptr @psmouse_attr_reg_11, ptr @psmouse_attr_reg_20, ptr @psmouse_attr_reg_21, ptr @psmouse_attr_reg_22, ptr @psmouse_attr_reg_23, ptr @psmouse_attr_reg_24, ptr @psmouse_attr_reg_25, ptr @psmouse_attr_reg_26, ptr @psmouse_attr_debug, ptr @psmouse_attr_paritycheck, ptr @psmouse_attr_crc_enabled, ptr null], [40 x i8] zeroinitializer }, align 32
@psmouse_attr_reg_07 = internal global { %struct.psmouse_attribute, [52 x i8] } { %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.101, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @elantech_attr_reg_07, ptr @elantech_show_int_attr, ptr @elantech_set_int_attr, i8 1 }, [52 x i8] zeroinitializer }, align 32
@psmouse_attr_reg_10 = internal global { %struct.psmouse_attribute, [52 x i8] } { %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.103, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @elantech_attr_reg_10, ptr @elantech_show_int_attr, ptr @elantech_set_int_attr, i8 1 }, [52 x i8] zeroinitializer }, align 32
@psmouse_attr_reg_11 = internal global { %struct.psmouse_attribute, [52 x i8] } { %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.104, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @elantech_attr_reg_11, ptr @elantech_show_int_attr, ptr @elantech_set_int_attr, i8 1 }, [52 x i8] zeroinitializer }, align 32
@psmouse_attr_reg_20 = internal global { %struct.psmouse_attribute, [52 x i8] } { %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.105, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @elantech_attr_reg_20, ptr @elantech_show_int_attr, ptr @elantech_set_int_attr, i8 1 }, [52 x i8] zeroinitializer }, align 32
@psmouse_attr_reg_21 = internal global { %struct.psmouse_attribute, [52 x i8] } { %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.106, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @elantech_attr_reg_21, ptr @elantech_show_int_attr, ptr @elantech_set_int_attr, i8 1 }, [52 x i8] zeroinitializer }, align 32
@psmouse_attr_reg_22 = internal global { %struct.psmouse_attribute, [52 x i8] } { %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.107, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @elantech_attr_reg_22, ptr @elantech_show_int_attr, ptr @elantech_set_int_attr, i8 1 }, [52 x i8] zeroinitializer }, align 32
@psmouse_attr_reg_23 = internal global { %struct.psmouse_attribute, [52 x i8] } { %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.108, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @elantech_attr_reg_23, ptr @elantech_show_int_attr, ptr @elantech_set_int_attr, i8 1 }, [52 x i8] zeroinitializer }, align 32
@psmouse_attr_reg_24 = internal global { %struct.psmouse_attribute, [52 x i8] } { %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.109, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @elantech_attr_reg_24, ptr @elantech_show_int_attr, ptr @elantech_set_int_attr, i8 1 }, [52 x i8] zeroinitializer }, align 32
@psmouse_attr_reg_25 = internal global { %struct.psmouse_attribute, [52 x i8] } { %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.110, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @elantech_attr_reg_25, ptr @elantech_show_int_attr, ptr @elantech_set_int_attr, i8 1 }, [52 x i8] zeroinitializer }, align 32
@psmouse_attr_reg_26 = internal global { %struct.psmouse_attribute, [52 x i8] } { %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.111, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @elantech_attr_reg_26, ptr @elantech_show_int_attr, ptr @elantech_set_int_attr, i8 1 }, [52 x i8] zeroinitializer }, align 32
@psmouse_attr_debug = internal global { %struct.psmouse_attribute, [52 x i8] } { %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.112, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @elantech_attr_debug, ptr @elantech_show_int_attr, ptr @elantech_set_int_attr, i8 1 }, [52 x i8] zeroinitializer }, align 32
@psmouse_attr_paritycheck = internal global { %struct.psmouse_attribute, [52 x i8] } { %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.113, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @elantech_attr_paritycheck, ptr @elantech_show_int_attr, ptr @elantech_set_int_attr, i8 1 }, [52 x i8] zeroinitializer }, align 32
@psmouse_attr_crc_enabled = internal global { %struct.psmouse_attribute, [52 x i8] } { %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.114, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @elantech_attr_crc_enabled, ptr @elantech_show_int_attr, ptr @elantech_set_int_attr, i8 1 }, [52 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"reg_07\00", [25 x i8] zeroinitializer }, align 32
@elantech_attr_reg_07 = internal global { %struct.elantech_attr_data, [24 x i8] } { %struct.elantech_attr_data { i32 36, i8 7 }, [24 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%02x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"reg_10\00", [25 x i8] zeroinitializer }, align 32
@elantech_attr_reg_10 = internal global { %struct.elantech_attr_data, [24 x i8] } { %struct.elantech_attr_data { i32 37, i8 16 }, [24 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"reg_11\00", [25 x i8] zeroinitializer }, align 32
@elantech_attr_reg_11 = internal global { %struct.elantech_attr_data, [24 x i8] } { %struct.elantech_attr_data { i32 38, i8 17 }, [24 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"reg_20\00", [25 x i8] zeroinitializer }, align 32
@elantech_attr_reg_20 = internal global { %struct.elantech_attr_data, [24 x i8] } { %struct.elantech_attr_data { i32 39, i8 32 }, [24 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"reg_21\00", [25 x i8] zeroinitializer }, align 32
@elantech_attr_reg_21 = internal global { %struct.elantech_attr_data, [24 x i8] } { %struct.elantech_attr_data { i32 40, i8 33 }, [24 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"reg_22\00", [25 x i8] zeroinitializer }, align 32
@elantech_attr_reg_22 = internal global { %struct.elantech_attr_data, [24 x i8] } { %struct.elantech_attr_data { i32 41, i8 34 }, [24 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"reg_23\00", [25 x i8] zeroinitializer }, align 32
@elantech_attr_reg_23 = internal global { %struct.elantech_attr_data, [24 x i8] } { %struct.elantech_attr_data { i32 42, i8 35 }, [24 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"reg_24\00", [25 x i8] zeroinitializer }, align 32
@elantech_attr_reg_24 = internal global { %struct.elantech_attr_data, [24 x i8] } { %struct.elantech_attr_data { i32 43, i8 36 }, [24 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"reg_25\00", [25 x i8] zeroinitializer }, align 32
@elantech_attr_reg_25 = internal global { %struct.elantech_attr_data, [24 x i8] } { %struct.elantech_attr_data { i32 44, i8 37 }, [24 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"reg_26\00", [25 x i8] zeroinitializer }, align 32
@elantech_attr_reg_26 = internal global { %struct.elantech_attr_data, [24 x i8] } { %struct.elantech_attr_data { i32 45, i8 38 }, [24 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"debug\00", [26 x i8] zeroinitializer }, align 32
@elantech_attr_debug = internal global { %struct.elantech_attr_data, [24 x i8] } { %struct.elantech_attr_data { i32 362, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"paritycheck\00", [20 x i8] zeroinitializer }, align 32
@elantech_attr_paritycheck = internal global { %struct.elantech_attr_data, [24 x i8] } { %struct.elantech_attr_data { i32 420, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"crc_enabled\00", [20 x i8] zeroinitializer }, align 32
@elantech_attr_crc_enabled = internal global { %struct.elantech_attr_data, [24 x i8] } { %struct.elantech_attr_data { i32 423, i8 0 }, [24 x i8] zeroinitializer }, align 32
@elantech_packet_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.2, i32 267, ptr @.str.57, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"elantech: PS/2 packet [%*ph]\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"elantech_packet_dump\00", [43 x i8] zeroinitializer }, align 32
@elantech_packet_dump._entry_ptr = internal global ptr @elantech_packet_dump._entry, section ".printk_index", align 4
@elantech_report_absolute_v1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.2, i32 348, ptr @.str.57, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"elantech: discarding packet\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"elantech_report_absolute_v1\00", [36 x i8] zeroinitializer }, align 32
@elantech_report_absolute_v1._entry_ptr = internal global ptr @elantech_report_absolute_v1._entry, section ".printk_index", align 4
@elantech_debounce_check_v2.debounce_packet = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\84\FF\FF\02\FF\FF", [26 x i8] zeroinitializer }, align 32
@elantech_packet_check_v3.debounce_packet = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\C4\FF\FF\02\FF\FF", [26 x i8] zeroinitializer }, align 32
@elantech_report_trackpoint._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.2, i32 529, ptr @.str.57, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"elantech: discarding packet [%6ph]\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"elantech_report_trackpoint\00", [37 x i8] zeroinitializer }, align 32
@elantech_report_trackpoint._entry_ptr = internal global ptr @elantech_report_trackpoint._entry, section ".printk_index", align 4
@elantech_reconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.2, i32 1490, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"elantech: failed to put touchpad back into absolute mode.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"elantech_reconnect\00", [45 x i8] zeroinitializer }, align 32
@elantech_reconnect._entry_ptr = internal global ptr @elantech_reconnect._entry, section ".printk_index", align 4
@elantech_use_host_notify.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.123, ptr @.str.2, ptr @.str.124, i8 1, i8 -13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"elantech_use_host_notify\00", [39 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"elantech: Ignoring SMBus provider through alert protocol.\0A\00", [37 x i8] zeroinitializer }, align 32
@elantech_use_host_notify.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.123, ptr @.str.2, ptr @.str.125, i8 1, i8 -11, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"elantech: Ignoring SMBus bus provider %d.\0A\00", [53 x i8] zeroinitializer }, align 32
@i2c_blacklist_pnp_ids = internal constant { [1 x ptr], [28 x i8] } zeroinitializer, align 32
@elantech_setup_smbus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.2, i32 1970, ptr @.str.20, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"elantech: Trying to set up SMBus access\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"elantech_setup_smbus\00", [43 x i8] zeroinitializer }, align 32
@elantech_setup_smbus._entry_ptr = internal global ptr @elantech_setup_smbus._entry, section ".printk_index", align 4
@elantech_setup_smbus._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.127, ptr @.str.2, i32 1975, ptr @.str.20, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"elantech: SMbus companion is not ready yet\0A\00", [52 x i8] zeroinitializer }, align 32
@elantech_setup_smbus._entry_ptr.130 = internal global ptr @elantech_setup_smbus._entry.128, section ".printk_index", align 4
@elantech_setup_smbus._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.127, ptr @.str.2, i32 1977, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"elantech: unable to create intertouch device\0A\00", [50 x i8] zeroinitializer }, align 32
@elantech_setup_smbus._entry_ptr.133 = internal global ptr @elantech_setup_smbus._entry.131, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 200]
@__sancov_gen_cov_switch_values.134 = internal global [9 x i64] [i64 7, i64 8, i64 10, i64 20, i64 40, i64 60, i64 80, i64 100, i64 200]
@__sancov_gen_cov_switch_values.135 = internal global [15 x i64] [i64 13, i64 32, i64 2, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.136 = internal global [6 x i64] [i64 4, i64 32, i64 8, i64 9, i64 13, i64 14]
@__sancov_gen_cov_switch_values.137 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.138 = internal global [5 x i64] [i64 3, i64 32, i64 131120, i64 133120, i64 133888]
@__sancov_gen_cov_switch_values.139 = internal global [5 x i64] [i64 3, i64 32, i64 262677, i64 262678, i64 262681]
@__sancov_gen_cov_switch_values.140 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.141 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.142 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.143 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.144 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.145 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.146 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.147 = internal global [4 x i64] [i64 2, i64 4, i64 4, i64 12]
@__sancov_gen_cov_switch_values.148 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.149 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.150 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.151 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.152 = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 17]
@__sancov_gen_cov_switch_values.153 = internal global [6 x i64] [i64 4, i64 32, i64 100663344, i64 369131552, i64 645922832, i64 914391040]
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1413, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1423, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1435, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1439, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1444, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1450, i32 21 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1451, i32 19 }
@___asan_gen_.184 = private unnamed_addr constant [15 x i8] c"elantech_smbus\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1883, i32 12 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 40, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1690, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1696, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1699, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1705, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1708, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1715, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1718, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1727, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1731, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1746, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1765, i32 4 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1778, i32 4 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 58, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1602, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 124, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 81, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 87, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 102, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1907, i32 21 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1909, i32 21 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1911, i32 21 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1913, i32 21 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1916, i32 22 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1919, i32 22 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1923, i32 22 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1926, i32 22 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1929, i32 22 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1932, i32 22 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1936, i32 22 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 2056, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 2067, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant [20 x i8] c"elantech_attr_group\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1368, i32 37 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 2074, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 2089, i32 48 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 2092, i32 18 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1072, i32 4 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1077, i32 4 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1081, i32 4 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1089, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 254, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 180, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1006, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant [15 x i8] c"elantech_attrs\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1351, i32 26 }
@___asan_gen_.451 = private unnamed_addr constant [20 x i8] c"psmouse_attr_reg_07\00", align 1
@___asan_gen_.454 = private unnamed_addr constant [20 x i8] c"psmouse_attr_reg_10\00", align 1
@___asan_gen_.457 = private unnamed_addr constant [20 x i8] c"psmouse_attr_reg_11\00", align 1
@___asan_gen_.460 = private unnamed_addr constant [20 x i8] c"psmouse_attr_reg_20\00", align 1
@___asan_gen_.463 = private unnamed_addr constant [20 x i8] c"psmouse_attr_reg_21\00", align 1
@___asan_gen_.466 = private unnamed_addr constant [20 x i8] c"psmouse_attr_reg_22\00", align 1
@___asan_gen_.469 = private unnamed_addr constant [20 x i8] c"psmouse_attr_reg_23\00", align 1
@___asan_gen_.472 = private unnamed_addr constant [20 x i8] c"psmouse_attr_reg_24\00", align 1
@___asan_gen_.475 = private unnamed_addr constant [20 x i8] c"psmouse_attr_reg_25\00", align 1
@___asan_gen_.478 = private unnamed_addr constant [20 x i8] c"psmouse_attr_reg_26\00", align 1
@___asan_gen_.481 = private unnamed_addr constant [19 x i8] c"psmouse_attr_debug\00", align 1
@___asan_gen_.484 = private unnamed_addr constant [25 x i8] c"psmouse_attr_paritycheck\00", align 1
@___asan_gen_.487 = private unnamed_addr constant [25 x i8] c"psmouse_attr_crc_enabled\00", align 1
@___asan_gen_.493 = private unnamed_addr constant [21 x i8] c"elantech_attr_reg_07\00", align 1
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1337, i32 1 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1281, i32 22 }
@___asan_gen_.502 = private unnamed_addr constant [21 x i8] c"elantech_attr_reg_10\00", align 1
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1338, i32 1 }
@___asan_gen_.508 = private unnamed_addr constant [21 x i8] c"elantech_attr_reg_11\00", align 1
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1339, i32 1 }
@___asan_gen_.514 = private unnamed_addr constant [21 x i8] c"elantech_attr_reg_20\00", align 1
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1340, i32 1 }
@___asan_gen_.520 = private unnamed_addr constant [21 x i8] c"elantech_attr_reg_21\00", align 1
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1341, i32 1 }
@___asan_gen_.526 = private unnamed_addr constant [21 x i8] c"elantech_attr_reg_22\00", align 1
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1342, i32 1 }
@___asan_gen_.532 = private unnamed_addr constant [21 x i8] c"elantech_attr_reg_23\00", align 1
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1343, i32 1 }
@___asan_gen_.538 = private unnamed_addr constant [21 x i8] c"elantech_attr_reg_24\00", align 1
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1344, i32 1 }
@___asan_gen_.544 = private unnamed_addr constant [21 x i8] c"elantech_attr_reg_25\00", align 1
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1345, i32 1 }
@___asan_gen_.550 = private unnamed_addr constant [21 x i8] c"elantech_attr_reg_26\00", align 1
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1346, i32 1 }
@___asan_gen_.556 = private unnamed_addr constant [20 x i8] c"elantech_attr_debug\00", align 1
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1347, i32 1 }
@___asan_gen_.562 = private unnamed_addr constant [26 x i8] c"elantech_attr_paritycheck\00", align 1
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1348, i32 1 }
@___asan_gen_.568 = private unnamed_addr constant [26 x i8] c"elantech_attr_crc_enabled\00", align 1
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1349, i32 1 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 266, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 348, i32 4 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 795, i32 18 }
@___asan_gen_.592 = private unnamed_addr constant [16 x i8] c"debounce_packet\00", align 1
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 838, i32 18 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 529, i32 4 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1489, i32 3 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1997, i32 3 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 2003, i32 3 }
@___asan_gen_.622 = private unnamed_addr constant [22 x i8] c"i2c_blacklist_pnp_ids\00", align 1
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1888, i32 27 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1970, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1975, i32 4 }
@___asan_gen_.640 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.643 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.644 = private constant [34 x i8] c"../drivers/input/mouse/elantech.c\00", align 1
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1977, i32 4 }
@llvm.compiler.used = appending global [203 x ptr] [ptr @__UNIQUE_ID_elantech_smbus294, ptr @__UNIQUE_ID_elantech_smbustype293, ptr @__param_elantech_smbus, ptr @elantech_change_report_id._entry, ptr @elantech_change_report_id._entry_ptr, ptr @elantech_packet_dump._entry, ptr @elantech_packet_dump._entry_ptr, ptr @elantech_ps2_command._entry, ptr @elantech_ps2_command._entry.58, ptr @elantech_ps2_command._entry_ptr, ptr @elantech_ps2_command._entry_ptr.60, ptr @elantech_query_info._entry, ptr @elantech_query_info._entry.15, ptr @elantech_query_info._entry.18, ptr @elantech_query_info._entry.22, ptr @elantech_query_info._entry.25, ptr @elantech_query_info._entry.28, ptr @elantech_query_info._entry.31, ptr @elantech_query_info._entry.34, ptr @elantech_query_info._entry.37, ptr @elantech_query_info._entry.40, ptr @elantech_query_info._entry.43, ptr @elantech_query_info._entry.46, ptr @elantech_query_info._entry_ptr, ptr @elantech_query_info._entry_ptr.17, ptr @elantech_query_info._entry_ptr.21, ptr @elantech_query_info._entry_ptr.24, ptr @elantech_query_info._entry_ptr.27, ptr @elantech_query_info._entry_ptr.30, ptr @elantech_query_info._entry_ptr.33, ptr @elantech_query_info._entry_ptr.36, ptr @elantech_query_info._entry_ptr.39, ptr @elantech_query_info._entry_ptr.42, ptr @elantech_query_info._entry_ptr.45, ptr @elantech_query_info._entry_ptr.49, ptr @elantech_read_reg._entry, ptr @elantech_read_reg._entry_ptr, ptr @elantech_read_reg_params._entry, ptr @elantech_read_reg_params._entry_ptr, ptr @elantech_reconnect._entry, ptr @elantech_reconnect._entry_ptr, ptr @elantech_report_absolute_v1._entry, ptr @elantech_report_absolute_v1._entry_ptr, ptr @elantech_report_trackpoint._entry, ptr @elantech_report_trackpoint._entry_ptr, ptr @elantech_send_cmd._entry, ptr @elantech_send_cmd._entry_ptr, ptr @elantech_set_absolute_mode._entry, ptr @elantech_set_absolute_mode._entry.86, ptr @elantech_set_absolute_mode._entry.89, ptr @elantech_set_absolute_mode._entry.92, ptr @elantech_set_absolute_mode._entry_ptr, ptr @elantech_set_absolute_mode._entry_ptr.88, ptr @elantech_set_absolute_mode._entry_ptr.91, ptr @elantech_set_absolute_mode._entry_ptr.94, ptr @elantech_set_rate_restore_reg_07._entry, ptr @elantech_set_rate_restore_reg_07._entry_ptr, ptr @elantech_setup_ps2._entry, ptr @elantech_setup_ps2._entry.76, ptr @elantech_setup_ps2._entry.79, ptr @elantech_setup_ps2._entry_ptr, ptr @elantech_setup_ps2._entry_ptr.78, ptr @elantech_setup_ps2._entry_ptr.81, ptr @elantech_setup_smbus._entry, ptr @elantech_setup_smbus._entry.128, ptr @elantech_setup_smbus._entry.131, ptr @elantech_setup_smbus._entry_ptr, ptr @elantech_setup_smbus._entry_ptr.130, ptr @elantech_setup_smbus._entry_ptr.133, ptr @elantech_write_reg._entry, ptr @elantech_write_reg._entry_ptr, ptr @elantech_write_reg_params._entry, ptr @elantech_write_reg_params._entry_ptr, ptr @synaptics_send_cmd._entry, ptr @synaptics_send_cmd._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @elantech_smbus, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @elantech_attr_group, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @elantech_attrs, ptr @psmouse_attr_reg_07, ptr @psmouse_attr_reg_10, ptr @psmouse_attr_reg_11, ptr @psmouse_attr_reg_20, ptr @psmouse_attr_reg_21, ptr @psmouse_attr_reg_22, ptr @psmouse_attr_reg_23, ptr @psmouse_attr_reg_24, ptr @psmouse_attr_reg_25, ptr @psmouse_attr_reg_26, ptr @psmouse_attr_debug, ptr @psmouse_attr_paritycheck, ptr @psmouse_attr_crc_enabled, ptr @.str.101, ptr @elantech_attr_reg_07, ptr @.str.102, ptr @.str.103, ptr @elantech_attr_reg_10, ptr @.str.104, ptr @elantech_attr_reg_11, ptr @.str.105, ptr @elantech_attr_reg_20, ptr @.str.106, ptr @elantech_attr_reg_21, ptr @.str.107, ptr @elantech_attr_reg_22, ptr @.str.108, ptr @elantech_attr_reg_23, ptr @.str.109, ptr @elantech_attr_reg_24, ptr @.str.110, ptr @elantech_attr_reg_25, ptr @.str.111, ptr @elantech_attr_reg_26, ptr @.str.112, ptr @elantech_attr_debug, ptr @.str.113, ptr @elantech_attr_paritycheck, ptr @.str.114, ptr @elantech_attr_crc_enabled, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @elantech_debounce_check_v2.debounce_packet, ptr @elantech_packet_check_v3.debounce_packet, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @i2c_blacklist_pnp_ids, ptr @.str.126, ptr @.str.127, ptr @.str.129, ptr @.str.132], section "llvm.metadata"
@0 = internal global [164 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_smbus to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synaptics_send_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_query_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_query_info._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_query_info._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_query_info._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_query_info._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_query_info._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_query_info._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_query_info._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_query_info._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_query_info._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_query_info._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_query_info._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_send_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_change_report_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_write_reg_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_ps2_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_ps2_command._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_read_reg_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_setup_ps2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_setup_ps2._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_setup_ps2._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_set_absolute_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_set_absolute_mode._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_set_absolute_mode._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_set_absolute_mode._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_write_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_read_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_set_rate_restore_reg_07._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_attrs to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_attr_reg_07 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_attr_reg_10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_attr_reg_11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_attr_reg_20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_attr_reg_21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_attr_reg_22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_attr_reg_23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_attr_reg_24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_attr_reg_25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_attr_reg_26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_attr_debug to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_attr_paritycheck to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_attr_crc_enabled to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_attr_reg_07 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_attr_reg_10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_attr_reg_11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_attr_reg_20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_attr_reg_21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_attr_reg_22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_attr_reg_23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_attr_reg_24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_attr_reg_25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_attr_reg_26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_attr_debug to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_attr_paritycheck to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_attr_crc_enabled to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_packet_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_report_absolute_v1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_debounce_check_v2.debounce_packet to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_packet_check_v3.debounce_packet to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_report_trackpoint._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_reconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_blacklist_pnp_ids to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_setup_smbus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_setup_smbus._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elantech_setup_smbus._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @elantech_detect(ptr noundef %psmouse, i1 noundef zeroext %set_properties) local_unnamed_addr #0 align 64 {
entry:
  %param = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ps2dev1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param) #9
  %0 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %param, align 1, !annotation !308
  %1 = getelementptr inbounds [3 x i8], ptr %param, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !308
  %3 = getelementptr inbounds [3 x i8], ptr %param, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !308
  %call = tail call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef 246) #9
  %call2 = tail call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef 245) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %call3 = tail call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef 230) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %lor.lhs.false5, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef 230) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %lor.lhs.false8, label %lor.lhs.false5.do.body_crit_edge

lor.lhs.false5.do.body_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false8:                                   ; preds = %lor.lhs.false5
  %call9 = tail call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef 230) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %lor.lhs.false11, label %lor.lhs.false8.do.body_crit_edge

lor.lhs.false8.do.body_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false11:                                  ; preds = %lor.lhs.false8
  %call12 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 1001) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end21, label %lor.lhs.false11.do.body_crit_edge

lor.lhs.false11.do.body_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false11.do.body_crit_edge, %lor.lhs.false8.do.body_crit_edge, %lor.lhs.false5.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @elantech_detect.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@elantech_detect, %if.then19)) #9
          to label %cleanup [label %if.then19], !srcloc !309

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ps2dev1, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %6, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @elantech_detect.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.3) #9
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false11
  %7 = ptrtoint ptr %param to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %param, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 60, i8 %8)
  %cmp.not = icmp eq i8 %8, 60
  br i1 %cmp.not, label %lor.lhs.false23, label %if.end21.do.body38_crit_edge

if.end21.do.body38_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body38

lor.lhs.false23:                                  ; preds = %if.end21
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %10)
  %cmp26.not = icmp eq i8 %10, 3
  br i1 %cmp26.not, label %lor.lhs.false28, label %lor.lhs.false23.do.body38_crit_edge

lor.lhs.false23.do.body38_crit_edge:              ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body38

lor.lhs.false28:                                  ; preds = %lor.lhs.false23
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %3, align 1
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i8 %12, label %lor.lhs.false28.do.body38_crit_edge [
    i8 -56, label %lor.lhs.false28.if.end63_crit_edge
    i8 0, label %lor.lhs.false28.if.end63_crit_edge170
  ]

lor.lhs.false28.if.end63_crit_edge170:            ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

lor.lhs.false28.if.end63_crit_edge:               ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

lor.lhs.false28.do.body38_crit_edge:              ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body38

do.body38:                                        ; preds = %lor.lhs.false28.do.body38_crit_edge, %lor.lhs.false23.do.body38_crit_edge, %if.end21.do.body38_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @elantech_detect.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@elantech_detect, %if.then50)) #9
          to label %cleanup [label %if.then50], !srcloc !309

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ps2dev1, align 4
  %dev53 = getelementptr inbounds %struct.serio, ptr %15, i32 0, i32 18
  %16 = ptrtoint ptr %param to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %param, align 1
  %conv55 = zext i8 %17 to i32
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %1, align 1
  %conv57 = zext i8 %19 to i32
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %3, align 1
  %conv59 = zext i8 %21 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @elantech_detect.__UNIQUE_ID_ddebug289, ptr noundef %dev53, ptr noundef nonnull @.str.4, i32 noundef %conv55, i32 noundef %conv57, i32 noundef %conv59) #9
  br label %cleanup

if.end63:                                         ; preds = %lor.lhs.false28.if.end63_crit_edge, %lor.lhs.false28.if.end63_crit_edge170
  %call65 = call i32 @synaptics_send_cmd(ptr noundef %psmouse, i8 noundef zeroext 1, ptr noundef nonnull %param)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %do.body88, label %do.body68

do.body68:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @elantech_detect.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@elantech_detect, %if.then80)) #9
          to label %cleanup [label %if.then80], !srcloc !309

if.then80:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ps2dev1, align 4
  %dev83 = getelementptr inbounds %struct.serio, ptr %23, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @elantech_detect.__UNIQUE_ID_ddebug290, ptr noundef %dev83, ptr noundef nonnull @.str.5) #9
  br label %cleanup

do.body88:                                        ; preds = %if.end63
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @elantech_detect.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@elantech_detect, %if.then100)) #9
          to label %do.end112 [label %if.then100], !srcloc !309

if.then100:                                       ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ps2dev1, align 4
  %dev103 = getelementptr inbounds %struct.serio, ptr %25, i32 0, i32 18
  %26 = ptrtoint ptr %param to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %param, align 1
  %conv105 = zext i8 %27 to i32
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %1, align 1
  %conv107 = zext i8 %29 to i32
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %3, align 1
  %conv109 = zext i8 %31 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @elantech_detect.__UNIQUE_ID_ddebug291, ptr noundef %dev103, ptr noundef nonnull @.str.6, i32 noundef %conv105, i32 noundef %conv107, i32 noundef %conv109) #9
  br label %do.end112

do.end112:                                        ; preds = %if.then100, %do.body88
  %call114 = call fastcc zeroext i1 @elantech_is_signature_valid(ptr noundef nonnull %param)
  br i1 %call114, label %if.end135, label %do.body116

do.body116:                                       ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @elantech_detect.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@elantech_detect, %if.then128)) #9
          to label %cleanup [label %if.then128], !srcloc !309

if.then128:                                       ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ps2dev1, align 4
  %dev131 = getelementptr inbounds %struct.serio, ptr %33, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @elantech_detect.__UNIQUE_ID_ddebug292, ptr noundef %dev131, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end135:                                        ; preds = %do.end112
  br i1 %set_properties, label %if.then137, label %if.end135.cleanup_crit_edge

if.end135.cleanup_crit_edge:                      ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then137:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #11
  %vendor = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 4
  %34 = ptrtoint ptr %vendor to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.8, ptr %vendor, align 4
  %name = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 5
  %35 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.9, ptr %name, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then137, %if.end135.cleanup_crit_edge, %if.then128, %do.body116, %if.then80, %do.body68, %if.then50, %do.body38, %if.then19, %do.body
  %retval.0 = phi i32 [ -1, %if.then19 ], [ -1, %if.then50 ], [ -1, %if.then80 ], [ -1, %if.then128 ], [ 0, %if.then137 ], [ 0, %if.end135.cleanup_crit_edge ], [ -1, %do.body ], [ -1, %do.body38 ], [ -1, %do.body68 ], [ -1, %do.body116 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ps2_command(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @synaptics_send_cmd(ptr noundef %psmouse, i8 noundef zeroext %c, ptr noundef %param) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %call = tail call i32 @ps2_sliced_command(ptr noundef %ps2dev, i8 noundef zeroext %c) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef %param, i32 noundef 1001) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %0 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps2dev, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 18
  %conv = zext i8 %c to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %conv) #12
  br label %return

return:                                           ; preds = %do.end, %lor.lhs.false.return_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %lor.lhs.false.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @elantech_is_signature_valid(ptr nocapture noundef readonly %param) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %param to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %param, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx2 = getelementptr i8, ptr %param, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp4 = icmp eq i8 %3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %4 = and i8 %1, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %4)
  %cmp10 = icmp ugt i8 %4, 5
  %5 = and i8 %3, -81
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %5)
  %cmp15 = icmp eq i8 %5, 15
  %or.cond = select i1 %cmp10, i1 %cmp15, i1 false
  br i1 %or.cond, label %land.lhs.true17, label %if.end7.if.end23_crit_edge

if.end7.if.end23_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

land.lhs.true17:                                  ; preds = %if.end7
  %arrayidx18 = getelementptr i8, ptr %param, i32 2
  %6 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %7)
  %cmp20 = icmp ult i8 %7, 40
  br i1 %cmp20, label %land.lhs.true17.cleanup_crit_edge, label %land.lhs.true17.if.end23_crit_edge

land.lhs.true17.if.end23_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

land.lhs.true17.cleanup_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %land.lhs.true17.if.end23_crit_edge, %if.end7.if.end23_crit_edge
  %arrayidx26 = getelementptr i8, ptr %param, i32 2
  %8 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx26, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.134)
  switch i8 %9, label %for.cond.6 [
    i8 -56, label %if.end23.cleanup_crit_edge
    i8 100, label %if.end23.cleanup_crit_edge42
    i8 80, label %if.end23.cleanup_crit_edge43
    i8 60, label %if.end23.cleanup_crit_edge44
    i8 40, label %if.end23.cleanup_crit_edge45
    i8 20, label %if.end23.cleanup_crit_edge46
    i8 10, label %if.end23.cleanup_crit_edge47
  ]

if.end23.cleanup_crit_edge47:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23.cleanup_crit_edge46:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23.cleanup_crit_edge45:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23.cleanup_crit_edge44:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23.cleanup_crit_edge43:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23.cleanup_crit_edge42:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.6:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.cond.6, %if.end23.cleanup_crit_edge, %if.end23.cleanup_crit_edge42, %if.end23.cleanup_crit_edge43, %if.end23.cleanup_crit_edge44, %if.end23.cleanup_crit_edge45, %if.end23.cleanup_crit_edge46, %if.end23.cleanup_crit_edge47, %land.lhs.true17.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ], [ true, %land.lhs.true17.cleanup_crit_edge ], [ false, %if.end23.cleanup_crit_edge ], [ true, %for.cond.6 ], [ false, %if.end23.cleanup_crit_edge42 ], [ false, %if.end23.cleanup_crit_edge43 ], [ false, %if.end23.cleanup_crit_edge44 ], [ false, %if.end23.cleanup_crit_edge45 ], [ false, %if.end23.cleanup_crit_edge46 ], [ false, %if.end23.cleanup_crit_edge47 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @elantech_init_smbus(ptr noundef %psmouse) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.elantech_device_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %info) #9
  %0 = call ptr @memset(ptr %info, i32 255, i32 76)
  %call = tail call i32 @psmouse_reset(ptr noundef %psmouse) #9
  %call1 = call fastcc i32 @elantech_query_info(ptr noundef %psmouse, ptr noundef nonnull %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.init_fail_crit_edge

entry.init_fail_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %init_fail

if.end:                                           ; preds = %entry
  %hw_version = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 3
  %1 = ptrtoint ptr %hw_version to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %hw_version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %2)
  %cmp = icmp ult i8 %2, 4
  br i1 %cmp, label %if.end.init_fail_crit_edge, label %if.end4

if.end.init_fail_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %init_fail

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = call fastcc i32 @elantech_create_smbus(ptr noundef %psmouse, ptr noundef nonnull %info, i1 noundef zeroext false)
  br label %cleanup

init_fail:                                        ; preds = %if.end.init_fail_crit_edge, %entry.init_fail_crit_edge
  %error.0 = phi i32 [ %call1, %entry.init_fail_crit_edge ], [ -6, %if.end.init_fail_crit_edge ]
  %call6 = call i32 @psmouse_reset(ptr noundef %psmouse) #9
  br label %cleanup

cleanup:                                          ; preds = %init_fail, %if.end4
  %retval.0 = phi i32 [ %error.0, %init_fail ], [ %call5, %if.end4 ]
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %info) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psmouse_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @elantech_query_info(ptr noundef %psmouse, ptr noundef %info) unnamed_addr #0 align 64 {
entry:
  %param.i = alloca [3 x i8], align 1
  %param = alloca [3 x i8], align 1
  %ic_body = alloca [3 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param) #9
  %0 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %param, align 1, !annotation !308
  %1 = getelementptr inbounds [3 x i8], ptr %param, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !308
  %3 = getelementptr inbounds [3 x i8], ptr %param, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !308
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %ic_body) #9
  %5 = ptrtoint ptr %ic_body to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %ic_body, align 2, !annotation !308
  %6 = getelementptr inbounds [3 x i8], ptr %ic_body, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %6, align 1, !annotation !308
  %8 = getelementptr inbounds [3 x i8], ptr %ic_body, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %8, align 2, !annotation !308
  %10 = call ptr @memset(ptr %info, i32 0, i32 76)
  %ps2dev.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %call.i = tail call i32 @ps2_sliced_command(ptr noundef %ps2dev.i, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false.i:                                  ; preds = %entry
  %call2.i = call i32 @ps2_command(ptr noundef %ps2dev.i, ptr noundef nonnull %param, i32 noundef 1001) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end, label %lor.lhs.false.i.do.end_crit_edge

lor.lhs.false.i.do.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.i.do.end_crit_edge, %entry.do.end_crit_edge
  %11 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ps2dev.i, align 4
  %dev.i = getelementptr inbounds %struct.serio, ptr %12, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 1) #12
  %13 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ps2dev.i, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %14, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #12
  br label %cleanup396

if.end:                                           ; preds = %lor.lhs.false.i
  %15 = ptrtoint ptr %param to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %param, align 1
  %conv = zext i8 %16 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %1, align 1
  %conv2 = zext i8 %18 to i32
  %shl3 = shl nuw nsw i32 %conv2, 8
  %or = or i32 %shl3, %shl
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %3, align 1
  %conv5 = zext i8 %20 to i32
  %or6 = or i32 %or, %conv5
  %fw_version = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 5
  %21 = ptrtoint ptr %fw_version to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or6, ptr %fw_version, align 4
  %shr.i = and i32 %conv, 15
  %ic_version.i = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 6
  %22 = ptrtoint ptr %ic_version.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shr.i, ptr %ic_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131120, i32 %or6)
  %cmp.i = icmp ult i32 %or6, 131120
  call void @__sanitizer_cov_trace_const_cmp4(i32 132608, i32 %or6)
  %cmp3.i = icmp eq i32 %or6, 132608
  %or.cond.i = or i1 %cmp.i, %cmp3.i
  br i1 %or.cond.i, label %if.end.if.end.i_crit_edge, label %if.else.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.else.i:                                        ; preds = %if.end
  %23 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %shr.i, label %do.end12 [
    i32 2, label %if.else.i.if.end.thread.i_crit_edge
    i32 4, label %if.else.i.if.end.thread.i_crit_edge550
    i32 5, label %sw.bb6.i
    i32 6, label %if.else.i.if.end.i_crit_edge
    i32 7, label %if.else.i.if.end.i_crit_edge551
    i32 8, label %if.else.i.if.end.i_crit_edge552
    i32 9, label %if.else.i.if.end.i_crit_edge553
    i32 10, label %if.else.i.if.end.i_crit_edge554
    i32 11, label %if.else.i.if.end.i_crit_edge555
    i32 12, label %if.else.i.if.end.i_crit_edge556
    i32 13, label %if.else.i.if.end.i_crit_edge557
    i32 14, label %if.else.i.if.end.i_crit_edge558
    i32 15, label %if.else.i.if.end.i_crit_edge559
  ]

if.else.i.if.end.i_crit_edge559:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.else.i.if.end.i_crit_edge558:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.else.i.if.end.i_crit_edge557:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.else.i.if.end.i_crit_edge556:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.else.i.if.end.i_crit_edge555:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.else.i.if.end.i_crit_edge554:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.else.i.if.end.i_crit_edge553:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.else.i.if.end.i_crit_edge552:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.else.i.if.end.i_crit_edge551:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.else.i.if.end.thread.i_crit_edge550:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.thread.i

if.else.i.if.end.thread.i_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.thread.i

sw.bb6.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.thread.i

if.end.thread.i:                                  ; preds = %sw.bb6.i, %if.else.i.if.end.thread.i_crit_edge, %if.else.i.if.end.thread.i_crit_edge550
  %.sink.i = phi i8 [ 3, %sw.bb6.i ], [ 2, %if.else.i.if.end.thread.i_crit_edge ], [ 2, %if.else.i.if.end.thread.i_crit_edge550 ]
  %hw_version5.i = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 3
  %24 = ptrtoint ptr %hw_version5.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %.sink.i, ptr %hw_version5.i, align 1
  %pattern78.i = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 4
  %25 = ptrtoint ptr %pattern78.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %pattern78.i, align 4
  br label %if.end19.i

if.end.i:                                         ; preds = %if.else.i.if.end.i_crit_edge, %if.else.i.if.end.i_crit_edge551, %if.else.i.if.end.i_crit_edge552, %if.else.i.if.end.i_crit_edge553, %if.else.i.if.end.i_crit_edge554, %if.else.i.if.end.i_crit_edge555, %if.else.i.if.end.i_crit_edge556, %if.else.i.if.end.i_crit_edge557, %if.else.i.if.end.i_crit_edge558, %if.else.i.if.end.i_crit_edge559, %if.end.if.end.i_crit_edge
  %.sink81.i = phi i8 [ 1, %if.end.if.end.i_crit_edge ], [ 4, %if.else.i.if.end.i_crit_edge ], [ 4, %if.else.i.if.end.i_crit_edge551 ], [ 4, %if.else.i.if.end.i_crit_edge552 ], [ 4, %if.else.i.if.end.i_crit_edge553 ], [ 4, %if.else.i.if.end.i_crit_edge554 ], [ 4, %if.else.i.if.end.i_crit_edge555 ], [ 4, %if.else.i.if.end.i_crit_edge556 ], [ 4, %if.else.i.if.end.i_crit_edge557 ], [ 4, %if.else.i.if.end.i_crit_edge558 ], [ 4, %if.else.i.if.end.i_crit_edge559 ]
  %hw_version9.i = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 3
  %26 = ptrtoint ptr %hw_version9.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %.sink81.i, ptr %hw_version9.i, align 1
  %pattern.i = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %shr.i)
  %cmp11.i = icmp eq i32 %shr.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %20)
  %cmp14.i = icmp ult i8 %20, 3
  %or.cond80.i = select i1 %cmp11.i, i1 %cmp14.i, i1 false
  %spec.store.select = select i1 %or.cond80.i, i8 %20, i8 0
  %27 = ptrtoint ptr %pattern.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %spec.store.select, ptr %pattern.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.end.i, %if.end.thread.i
  %hw_version20.i = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 3
  %28 = ptrtoint ptr %hw_version20.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %hw_version20.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %29)
  %cmp22.i = icmp ugt i8 %29, 2
  %cond.i = select i1 %cmp22.i, ptr @elantech_send_cmd, ptr @synaptics_send_cmd
  %send_cmd.i = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 25
  %30 = ptrtoint ptr %send_cmd.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %cond.i, ptr %send_cmd.i, align 4
  %paritycheck.i = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 18
  %31 = ptrtoint ptr %paritycheck.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %paritycheck.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131106, i32 %or6)
  %cmp25.i = icmp eq i32 %or6, 131106
  %spec.select.i = or i1 %cmp25.i, %cmp3.i
  %jumpy_cursor.i = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 19
  %frombool.i = zext i1 %spec.select.i to i8
  %32 = ptrtoint ptr %jumpy_cursor.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %frombool.i, ptr %jumpy_cursor.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp32.i = icmp ugt i8 %29, 1
  br i1 %cmp32.i, label %if.then34.i, label %if.end19.i.do.end19_crit_edge

if.end19.i.do.end19_crit_edge:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end19

if.then34.i:                                      ; preds = %if.end19.i
  %debug.i = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 2
  %33 = ptrtoint ptr %debug.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %debug.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 133119, i32 %or6)
  %cmp36.i = icmp ugt i32 %or6, 133119
  br i1 %cmp36.i, label %if.then38.i, label %if.then34.i.do.end19_crit_edge

if.then34.i.do.end19_crit_edge:                   ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end19

if.then38.i:                                      ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #11
  %reports_pressure.i = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 20
  %34 = ptrtoint ptr %reports_pressure.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %reports_pressure.i, align 2
  br label %do.end19

do.end12:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ps2dev.i, align 4
  %dev15 = getelementptr inbounds %struct.serio, ptr %36, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.16) #12
  br label %cleanup396

do.end19:                                         ; preds = %if.then38.i, %if.then34.i.do.end19_crit_edge, %if.end19.i.do.end19_crit_edge
  %crc_enabled.i = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 21
  %and42.i = lshr i8 %18, 6
  %37 = and i8 %and42.i, 1
  %38 = ptrtoint ptr %crc_enabled.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %crc_enabled.i, align 1
  %set_hw_resolution.i = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 22
  %39 = ptrtoint ptr %set_hw_resolution.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %set_hw_resolution.i, align 4
  %40 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ps2dev.i, align 4
  %dev22 = getelementptr inbounds %struct.serio, ptr %41, i32 0, i32 18
  %42 = ptrtoint ptr %hw_version20.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %hw_version20.i, align 1
  %conv23 = zext i8 %43 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev22, ptr noundef nonnull @.str.19, i32 noundef %conv23, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv5) #12
  %44 = ptrtoint ptr %send_cmd.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %send_cmd.i, align 4
  %call31 = call i32 %45(ptr noundef %psmouse, i8 noundef zeroext 2, ptr noundef %info) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  %46 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ps2dev.i, align 4
  %dev46 = getelementptr inbounds %struct.serio, ptr %47, i32 0, i32 18
  br i1 %tobool32.not, label %do.end43, label %do.end36

do.end36:                                         ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev46, ptr noundef nonnull @.str.23) #12
  br label %cleanup396

do.end43:                                         ; preds = %do.end19
  %48 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %info, align 4
  %conv49 = zext i8 %49 to i32
  %arrayidx51 = getelementptr [3 x i8], ptr %info, i32 0, i32 1
  %50 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %51 to i32
  %arrayidx54 = getelementptr [3 x i8], ptr %info, i32 0, i32 2
  %52 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx54, align 2
  %conv55 = zext i8 %53 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev46, ptr noundef nonnull @.str.26, i32 noundef %conv49, i32 noundef %conv52, i32 noundef %conv55) #12
  %54 = ptrtoint ptr %hw_version20.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %hw_version20.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %55)
  %cmp.not = icmp eq i8 %55, 1
  br i1 %cmp.not, label %do.end43.if.end87_crit_edge, label %if.then59

do.end43.if.end87_crit_edge:                      ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

if.then59:                                        ; preds = %do.end43
  %56 = ptrtoint ptr %send_cmd.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %send_cmd.i, align 4
  %samples = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 1
  %call62 = call i32 %57(ptr noundef %psmouse, i8 noundef zeroext 3, ptr noundef %samples) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  %58 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ps2dev.i, align 4
  %dev77 = getelementptr inbounds %struct.serio, ptr %59, i32 0, i32 18
  br i1 %tobool63.not, label %do.end74, label %do.end67

do.end67:                                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev77, ptr noundef nonnull @.str.29) #12
  br label %cleanup396

do.end74:                                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %samples to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %samples, align 1
  %conv80 = zext i8 %61 to i32
  %arrayidx82 = getelementptr %struct.elantech_device_info, ptr %info, i32 0, i32 1, i32 1
  %62 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx82, align 1
  %conv83 = zext i8 %63 to i32
  %arrayidx85 = getelementptr %struct.elantech_device_info, ptr %info, i32 0, i32 1, i32 2
  %64 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx85, align 1
  %conv86 = zext i8 %65 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev77, ptr noundef nonnull @.str.32, i32 noundef %conv80, i32 noundef %conv83, i32 noundef %conv86) #12
  br label %if.end87

if.end87:                                         ; preds = %do.end74, %do.end43.if.end87_crit_edge
  %pattern = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 4
  %66 = ptrtoint ptr %pattern to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %pattern, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %cmp89.not = icmp eq i8 %67, 0
  br i1 %cmp89.not, label %if.end119.thread, label %land.lhs.true

if.end119.thread:                                 ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  %samples120533 = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 1
  %68 = ptrtoint ptr %samples120533 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %samples120533, align 2
  %conv123534 = zext i16 %69 to i32
  %product_id535 = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 7
  br label %if.then128

land.lhs.true:                                    ; preds = %if.end87
  %70 = ptrtoint ptr %ic_version.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ic_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %71)
  %cmp91 = icmp eq i32 %71, 15
  br i1 %cmp91, label %if.then93, label %if.end119.thread540

if.end119.thread540:                              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %samples120541 = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 1
  %72 = ptrtoint ptr %samples120541 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %samples120541, align 2
  %conv123542 = zext i16 %73 to i32
  %product_id543 = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 7
  %74 = ptrtoint ptr %product_id543 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %conv123542, ptr %product_id543, align 4
  br label %if.end130

if.then93:                                        ; preds = %land.lhs.true
  %75 = ptrtoint ptr %send_cmd.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %send_cmd.i, align 4
  %call96 = call i32 %76(ptr noundef %psmouse, i8 noundef zeroext 5, ptr noundef nonnull %ic_body) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end119, label %do.end101

do.end101:                                        ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ps2dev.i, align 4
  %dev104 = getelementptr inbounds %struct.serio, ptr %78, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev104, ptr noundef nonnull @.str.35) #12
  br label %cleanup396

if.end119:                                        ; preds = %if.then93
  %79 = ptrtoint ptr %ic_body to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %ic_body, align 2
  %conv108 = zext i16 %80 to i32
  %81 = ptrtoint ptr %ic_version.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %conv108, ptr %ic_version.i, align 4
  %82 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ps2dev.i, align 4
  %dev115 = getelementptr inbounds %struct.serio, ptr %83, i32 0, i32 18
  %84 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %8, align 2
  %conv118 = zext i8 %85 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev115, ptr noundef nonnull @.str.38, i32 noundef %conv108, i32 noundef %conv118) #12
  %86 = ptrtoint ptr %pattern to i32
  call void @__asan_load1_noabort(i32 %86)
  %.pr = load i8, ptr %pattern, align 4
  %samples120 = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 1
  %87 = ptrtoint ptr %samples120 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %samples120, align 2
  %conv123 = zext i16 %88 to i32
  %product_id = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 7
  %89 = ptrtoint ptr %product_id to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %conv123, ptr %product_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %cmp126 = icmp eq i8 %.pr, 0
  br i1 %cmp126, label %if.end119.if.then128_crit_edge, label %if.end119.if.end130_crit_edge

if.end119.if.end130_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end130

if.end119.if.then128_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then128

if.then128:                                       ; preds = %if.end119.if.then128_crit_edge, %if.end119.thread
  %product_id538 = phi ptr [ %product_id535, %if.end119.thread ], [ %product_id, %if.end119.if.then128_crit_edge ]
  %conv123537 = phi i32 [ %conv123534, %if.end119.thread ], [ %conv123, %if.end119.if.then128_crit_edge ]
  %and = and i32 %conv123537, 255
  %90 = ptrtoint ptr %product_id538 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %and, ptr %product_id538, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.then128, %if.end119.if.end130_crit_edge, %if.end119.thread540
  %product_id539 = phi ptr [ %product_id538, %if.then128 ], [ %product_id, %if.end119.if.end130_crit_edge ], [ %product_id543, %if.end119.thread540 ]
  %arrayidx132 = getelementptr %struct.elantech_device_info, ptr %info, i32 0, i32 1, i32 1
  %91 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx132, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 116, i8 %92)
  %cmp134 = icmp eq i8 %92, 116
  br i1 %cmp134, label %land.lhs.true136, label %if.end130.if.end148_crit_edge

if.end130.if.end148_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end148

land.lhs.true136:                                 ; preds = %if.end130
  %93 = ptrtoint ptr %hw_version20.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %hw_version20.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %94)
  %cmp139 = icmp eq i8 %94, 3
  br i1 %cmp139, label %do.end144, label %land.lhs.true136.if.end148_crit_edge

land.lhs.true136.if.end148_crit_edge:             ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end148

do.end144:                                        ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #11
  %95 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ps2dev.i, align 4
  %dev147 = getelementptr inbounds %struct.serio, ptr %96, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev147, ptr noundef nonnull @.str.41) #12
  br label %cleanup396

if.end148:                                        ; preds = %land.lhs.true136.if.end148_crit_edge, %if.end130.if.end148_crit_edge
  %97 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %cmp153 = icmp slt i8 %98, 0
  %has_trackpoint = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 23
  %.lobit = lshr i8 %98, 7
  %99 = ptrtoint ptr %has_trackpoint to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %.lobit, ptr %has_trackpoint, align 1
  br i1 %cmp153, label %land.lhs.true158, label %if.end148.if.end188_crit_edge

if.end148.if.end188_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end188

land.lhs.true158:                                 ; preds = %if.end148
  %100 = ptrtoint ptr %ic_version.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %ic_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %101)
  %cmp160 = icmp eq i32 %101, 17
  br i1 %cmp160, label %land.lhs.true162, label %land.lhs.true158.if.end188_crit_edge

land.lhs.true158.if.end188_crit_edge:             ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end188

land.lhs.true162:                                 ; preds = %land.lhs.true158
  %102 = ptrtoint ptr %product_id539 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %product_id539, align 4
  %104 = zext i32 %103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %103, label %land.lhs.true162.if.end188_crit_edge [
    i32 8, label %land.lhs.true162.if.then177_crit_edge
    i32 9, label %land.lhs.true162.if.then177_crit_edge560
    i32 13, label %land.lhs.true162.if.then177_crit_edge561
    i32 14, label %land.lhs.true162.if.then177_crit_edge562
  ]

land.lhs.true162.if.then177_crit_edge562:         ; preds = %land.lhs.true162
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then177

land.lhs.true162.if.then177_crit_edge561:         ; preds = %land.lhs.true162
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then177

land.lhs.true162.if.then177_crit_edge560:         ; preds = %land.lhs.true162
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then177

land.lhs.true162.if.then177_crit_edge:            ; preds = %land.lhs.true162
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then177

land.lhs.true162.if.end188_crit_edge:             ; preds = %land.lhs.true162
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end188

if.then177:                                       ; preds = %land.lhs.true162.if.then177_crit_edge, %land.lhs.true162.if.then177_crit_edge560, %land.lhs.true162.if.then177_crit_edge561, %land.lhs.true162.if.then177_crit_edge562
  %call178 = call fastcc i32 @elantech_change_report_id(ptr noundef %psmouse)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178)
  %tobool179.not = icmp eq i32 %call178, 0
  br i1 %tobool179.not, label %if.then177.if.end188_crit_edge, label %do.end183

if.then177.if.end188_crit_edge:                   ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end188

do.end183:                                        ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #11
  %105 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ps2dev.i, align 4
  %dev186 = getelementptr inbounds %struct.serio, ptr %106, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev186, ptr noundef nonnull @.str.44) #12
  br label %cleanup396

if.end188:                                        ; preds = %if.then177.if.end188_crit_edge, %land.lhs.true162.if.end188_crit_edge, %land.lhs.true158.if.end188_crit_edge, %if.end148.if.end188_crit_edge
  %x_res = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 12
  %107 = ptrtoint ptr %x_res to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 31, ptr %x_res, align 4
  %y_res = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 13
  %108 = ptrtoint ptr %y_res to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 31, ptr %y_res, align 4
  %109 = ptrtoint ptr %hw_version20.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %hw_version20.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %110)
  %cmp191 = icmp eq i8 %110, 4
  br i1 %cmp191, label %if.then193, label %if.end188.if.end206_crit_edge

if.end188.if.end206_crit_edge:                    ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end206

if.then193:                                       ; preds = %if.end188
  %bus = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param.i) #9
  %111 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 -1, ptr %param.i, align 1, !annotation !308
  %112 = getelementptr inbounds [3 x i8], ptr %param.i, i32 0, i32 1
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 -1, ptr %112, align 1, !annotation !308
  %114 = getelementptr inbounds [3 x i8], ptr %param.i, i32 0, i32 2
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 -1, ptr %114, align 1, !annotation !308
  %call.i.i = call i32 @ps2_command(ptr noundef %ps2dev.i, ptr noundef null, i32 noundef 248) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.then193.do.end201_crit_edge

if.then193.do.end201_crit_edge:                   ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end201

lor.lhs.false.i.i:                                ; preds = %if.then193
  %call2.i.i = call i32 @ps2_command(ptr noundef %ps2dev.i, ptr noundef null, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %lor.lhs.false4.i.i, label %lor.lhs.false.i.i.do.end201_crit_edge

lor.lhs.false.i.i.do.end201_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end201

lor.lhs.false4.i.i:                               ; preds = %lor.lhs.false.i.i
  %call5.i.i = call i32 @ps2_command(ptr noundef %ps2dev.i, ptr noundef nonnull %param.i, i32 noundef 1001) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %elantech_get_resolution_v4.exit.thread, label %lor.lhs.false4.i.i.do.end201_crit_edge

lor.lhs.false4.i.i.do.end201_crit_edge:           ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end201

elantech_get_resolution_v4.exit.thread:           ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %116 = ptrtoint ptr %112 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %112, align 1
  %118 = and i8 %117, 15
  %and.i524 = zext i8 %118 to i16
  %119 = mul nuw nsw i16 %and.i524, 100
  %mul1.i.i = add nuw nsw i16 %119, 7900
  %div.i12.i = udiv i16 %mul1.i.i, 254
  %div.i.zext.i = zext i16 %div.i12.i to i32
  %120 = ptrtoint ptr %x_res to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %div.i.zext.i, ptr %x_res, align 4
  %121 = lshr i8 %117, 4
  %122 = zext i8 %121 to i16
  %123 = mul nuw nsw i16 %122, 100
  %mul1.i8.i = add nuw nsw i16 %123, 7900
  %div.i913.i = udiv i16 %mul1.i8.i, 254
  %div.i9.zext.i = zext i16 %div.i913.i to i32
  %124 = ptrtoint ptr %y_res to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %div.i9.zext.i, ptr %y_res, align 4
  %125 = ptrtoint ptr %114 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %114, align 1
  %conv7.i = zext i8 %126 to i32
  %127 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %conv7.i, ptr %bus, align 4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param.i) #9
  br label %if.end206thread-pre-split

do.end201:                                        ; preds = %lor.lhs.false4.i.i.do.end201_crit_edge, %lor.lhs.false.i.i.do.end201_crit_edge, %if.then193.do.end201_crit_edge
  %128 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ps2dev.i, align 4
  %dev.i.i = getelementptr inbounds %struct.serio, ptr %129, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.50, i32 noundef 4) #12
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param.i) #9
  %130 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %ps2dev.i, align 4
  %dev204 = getelementptr inbounds %struct.serio, ptr %131, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev204, ptr noundef nonnull @.str.47) #12
  br label %if.end206thread-pre-split

if.end206thread-pre-split:                        ; preds = %do.end201, %elantech_get_resolution_v4.exit.thread
  %132 = ptrtoint ptr %hw_version20.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %.pr547 = load i8, ptr %hw_version20.i, align 1
  br label %if.end206

if.end206:                                        ; preds = %if.end206thread-pre-split, %if.end188.if.end206_crit_edge
  %133 = phi i8 [ %.pr547, %if.end206thread-pre-split ], [ %110, %if.end188.if.end206_crit_edge ]
  %134 = zext i8 %133 to i64
  call void @__sanitizer_cov_trace_switch(i64 %134, ptr @__sancov_gen_cov_switch_values.137)
  switch i8 %133, label %if.end206.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb209
    i8 3, label %sw.bb304
    i8 4, label %sw.bb327
  ]

if.end206.sw.epilog_crit_edge:                    ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #11
  %x_min = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 8
  %135 = ptrtoint ptr %x_min to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 32, ptr %x_min, align 4
  %y_min = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 9
  %136 = ptrtoint ptr %y_min to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 32, ptr %y_min, align 4
  %x_max = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 10
  %137 = ptrtoint ptr %x_max to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 544, ptr %x_max, align 4
  %y_max = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 11
  %138 = ptrtoint ptr %y_max to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 352, ptr %y_max, align 4
  br label %sw.epilog

sw.bb209:                                         ; preds = %if.end206
  %139 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %fw_version, align 4
  %141 = zext i32 %140 to i64
  call void @__sanitizer_cov_trace_switch(i64 %141, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %140, label %if.else [
    i32 133120, label %sw.bb209.if.then221_crit_edge
    i32 133888, label %sw.bb209.if.then221_crit_edge563
    i32 131120, label %sw.bb209.if.then221_crit_edge564
  ]

sw.bb209.if.then221_crit_edge564:                 ; preds = %sw.bb209
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then221

sw.bb209.if.then221_crit_edge563:                 ; preds = %sw.bb209
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then221

sw.bb209.if.then221_crit_edge:                    ; preds = %sw.bb209
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then221

if.then221:                                       ; preds = %sw.bb209.if.then221_crit_edge, %sw.bb209.if.then221_crit_edge563, %sw.bb209.if.then221_crit_edge564
  %x_min222 = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 8
  %142 = ptrtoint ptr %x_min222 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 0, ptr %x_min222, align 4
  %y_min223 = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 9
  %143 = ptrtoint ptr %y_min223 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 0, ptr %y_min223, align 4
  %x_max224 = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 10
  %144 = ptrtoint ptr %x_max224 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 1152, ptr %x_max224, align 4
  %y_max225 = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 11
  %145 = ptrtoint ptr %y_max225 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 768, ptr %y_max225, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb209
  %146 = add i32 %140, -133121
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %146)
  %147 = icmp ult i32 %146, 255
  %148 = select i1 %147, i32 1, i32 2
  %149 = ptrtoint ptr %send_cmd.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %send_cmd.i, align 4
  %call234 = call i32 %150(ptr noundef %psmouse, i8 noundef zeroext 0, ptr noundef nonnull %param) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call234)
  %tobool235.not = icmp eq i32 %call234, 0
  br i1 %tobool235.not, label %if.end237, label %if.else.cleanup396_crit_edge

if.else.cleanup396_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup396

if.end237:                                        ; preds = %if.else
  %151 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %fw_version, align 4
  %shr.mask = and i32 %152, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1310720, i32 %shr.mask)
  %cmp242 = icmp eq i32 %shr.mask, 1310720
  br i1 %cmp242, label %land.lhs.true244, label %if.end237.if.else268_crit_edge

if.end237.if.else268_crit_edge:                   ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else268

land.lhs.true244:                                 ; preds = %if.end237
  %153 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %1, align 1
  %155 = and i8 %154, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool245.not = icmp eq i8 %155, 0
  br i1 %tobool245.not, label %land.lhs.true244.if.else268_crit_edge, label %if.then246

land.lhs.true244.if.else268_crit_edge:            ; preds = %land.lhs.true244
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else268

if.then246:                                       ; preds = %land.lhs.true244
  %156 = ptrtoint ptr %send_cmd.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %send_cmd.i, align 4
  %call249 = call i32 %157(ptr noundef %psmouse, i8 noundef zeroext 3, ptr noundef nonnull %param) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call249)
  %tobool250.not = icmp eq i32 %call249, 0
  br i1 %tobool250.not, label %if.end252, label %if.then246.cleanup396_crit_edge

if.then246.cleanup396_crit_edge:                  ; preds = %if.then246
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup396

if.end252:                                        ; preds = %if.then246
  call void @__sanitizer_cov_trace_pc() #11
  %158 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx51, align 1
  %conv255 = zext i8 %159 to i32
  %sub = sub nsw i32 %conv255, %148
  %160 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %1, align 1
  %conv257 = zext i8 %161 to i32
  %mul = mul nsw i32 %sub, %conv257
  %div = sdiv i32 %mul, 2
  %x_max258 = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 10
  %162 = ptrtoint ptr %x_max258 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %div, ptr %x_max258, align 4
  %163 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %arrayidx54, align 2
  %conv261 = zext i8 %164 to i32
  %sub262 = sub nsw i32 %conv261, %148
  %165 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %3, align 1
  %conv264 = zext i8 %166 to i32
  %mul265 = mul nsw i32 %sub262, %conv264
  %div266 = sdiv i32 %mul265, 2
  %y_max267 = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 11
  %167 = ptrtoint ptr %y_max267 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %div266, ptr %y_max267, align 4
  br label %sw.epilog

if.else268:                                       ; preds = %land.lhs.true244.if.else268_crit_edge, %if.end237.if.else268_crit_edge
  %168 = zext i32 %152 to i64
  call void @__sanitizer_cov_trace_switch(i64 %168, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %152, label %if.else286 [
    i32 262678, label %if.then272
    i32 262681, label %if.else268.if.then283_crit_edge
    i32 262677, label %if.else268.if.then283_crit_edge565
  ]

if.else268.if.then283_crit_edge565:               ; preds = %if.else268
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then283

if.else268.if.then283_crit_edge:                  ; preds = %if.else268
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then283

if.then272:                                       ; preds = %if.else268
  call void @__sanitizer_cov_trace_pc() #11
  %x_max273 = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 10
  %169 = ptrtoint ptr %x_max273 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 819, ptr %x_max273, align 4
  %y_max274 = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 11
  %170 = ptrtoint ptr %y_max274 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 405, ptr %y_max274, align 4
  br label %sw.epilog

if.then283:                                       ; preds = %if.else268.if.then283_crit_edge, %if.else268.if.then283_crit_edge565
  %x_max284 = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 10
  %171 = ptrtoint ptr %x_max284 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 900, ptr %x_max284, align 4
  %y_max285 = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 11
  %172 = ptrtoint ptr %y_max285 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 500, ptr %y_max285, align 4
  br label %sw.epilog

if.else286:                                       ; preds = %if.else268
  call void @__sanitizer_cov_trace_pc() #11
  %173 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx51, align 1
  %conv289 = zext i8 %174 to i32
  %sub290 = sub nsw i32 %conv289, %148
  %mul291 = shl nsw i32 %sub290, 6
  %x_max292 = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 10
  %175 = ptrtoint ptr %x_max292 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %mul291, ptr %x_max292, align 4
  %176 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %arrayidx54, align 2
  %conv295 = zext i8 %177 to i32
  %sub296 = sub nsw i32 %conv295, %148
  %mul297 = shl nsw i32 %sub296, 6
  %y_max298 = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 11
  %178 = ptrtoint ptr %y_max298 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %mul297, ptr %y_max298, align 4
  br label %sw.epilog

sw.bb304:                                         ; preds = %if.end206
  %179 = ptrtoint ptr %send_cmd.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %send_cmd.i, align 4
  %call307 = call i32 %180(ptr noundef %psmouse, i8 noundef zeroext 0, ptr noundef nonnull %param) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call307)
  %tobool308.not = icmp eq i32 %call307, 0
  br i1 %tobool308.not, label %if.end310, label %sw.bb304.cleanup396_crit_edge

sw.bb304.cleanup396_crit_edge:                    ; preds = %sw.bb304
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup396

if.end310:                                        ; preds = %sw.bb304
  call void @__sanitizer_cov_trace_pc() #11
  %181 = ptrtoint ptr %param to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %param, align 1
  %183 = and i8 %182, 15
  %and313 = zext i8 %183 to i32
  %shl314 = shl nuw nsw i32 %and313, 8
  %184 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %1, align 1
  %conv316 = zext i8 %185 to i32
  %or317 = or i32 %shl314, %conv316
  %x_max318 = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 10
  %186 = ptrtoint ptr %x_max318 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %or317, ptr %x_max318, align 4
  %187 = and i8 %182, -16
  %and321 = zext i8 %187 to i32
  %shl322 = shl nuw nsw i32 %and321, 4
  %188 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %3, align 1
  %conv324 = zext i8 %189 to i32
  %or325 = or i32 %shl322, %conv324
  %y_max326 = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 11
  %190 = ptrtoint ptr %y_max326 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %or325, ptr %y_max326, align 4
  br label %sw.epilog

sw.bb327:                                         ; preds = %if.end206
  %191 = ptrtoint ptr %send_cmd.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %send_cmd.i, align 4
  %call330 = call i32 %192(ptr noundef %psmouse, i8 noundef zeroext 0, ptr noundef nonnull %param) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call330)
  %tobool331.not = icmp eq i32 %call330, 0
  br i1 %tobool331.not, label %if.end333, label %sw.bb327.cleanup396_crit_edge

sw.bb327.cleanup396_crit_edge:                    ; preds = %sw.bb327
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup396

if.end333:                                        ; preds = %sw.bb327
  %193 = ptrtoint ptr %param to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %param, align 1
  %195 = and i8 %194, 15
  %and336 = zext i8 %195 to i32
  %shl337 = shl nuw nsw i32 %and336, 8
  %196 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %1, align 1
  %conv339 = zext i8 %197 to i32
  %or340 = or i32 %shl337, %conv339
  %x_max341 = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 10
  %198 = ptrtoint ptr %x_max341 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %or340, ptr %x_max341, align 4
  %199 = and i8 %194, -16
  %and344 = zext i8 %199 to i32
  %shl345 = shl nuw nsw i32 %and344, 4
  %200 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %3, align 1
  %conv347 = zext i8 %201 to i32
  %or348 = or i32 %shl345, %conv347
  %y_max349 = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 11
  %202 = ptrtoint ptr %y_max349 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %or348, ptr %y_max349, align 4
  %203 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %arrayidx51, align 1
  %conv352 = zext i8 %204 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %204)
  %cmp353 = icmp ult i8 %204, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %or340, i32 %conv352)
  %cmp358 = icmp ult i32 %or340, %conv352
  %or.cond548 = select i1 %cmp353, i1 true, i1 %cmp358
  br i1 %or.cond548, label %if.end333.cleanup396_crit_edge, label %if.end361

if.end333.cleanup396_crit_edge:                   ; preds = %if.end333
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup396

if.end361:                                        ; preds = %if.end333
  %sub364 = add nsw i32 %conv352, -1
  %div365 = udiv i32 %or340, %sub364
  %width = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 16
  %205 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %div365, ptr %width, align 4
  %x_traces = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 14
  %206 = ptrtoint ptr %x_traces to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %conv352, ptr %x_traces, align 4
  %207 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %arrayidx54, align 2
  %conv369 = zext i8 %208 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %208)
  %cmp370 = icmp ult i8 %208, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %or348, i32 %conv369)
  %cmp375.not = icmp ult i32 %or348, %conv369
  %or.cond549 = select i1 %cmp370, i1 true, i1 %cmp375.not
  br i1 %or.cond549, label %if.end361.sw.epilog_crit_edge, label %if.then377

if.end361.sw.epilog_crit_edge:                    ; preds = %if.end361
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then377:                                       ; preds = %if.end361
  call void @__sanitizer_cov_trace_pc() #11
  %y_traces = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 15
  %209 = ptrtoint ptr %y_traces to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %conv369, ptr %y_traces, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then377, %if.end361.sw.epilog_crit_edge, %if.end310, %if.else286, %if.then283, %if.then272, %if.end252, %if.then221, %sw.bb, %if.end206.sw.epilog_crit_edge
  %210 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %fw_version, align 4
  %and383 = and i32 %211, 991232
  call void @__sanitizer_cov_trace_const_cmp4(i32 991232, i32 %and383)
  %cmp384 = icmp ne i32 %and383, 991232
  %and388 = and i32 %211, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and388)
  %cmp389.not = icmp eq i32 %and388, 0
  %or.cond = or i1 %cmp384, %cmp389.not
  br i1 %or.cond, label %sw.epilog.lor.end_crit_edge, label %land.rhs391

sw.epilog.lor.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

land.rhs391:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %and.i528 = and i32 %211, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i528)
  %tobool393.not = icmp eq i32 %and.i528, 0
  br label %lor.end

lor.end:                                          ; preds = %land.rhs391, %sw.epilog.lor.end_crit_edge
  %212 = phi i1 [ false, %sw.epilog.lor.end_crit_edge ], [ %tobool393.not, %land.rhs391 ]
  %has_middle_button = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 24
  %frombool395 = zext i1 %212 to i8
  %213 = ptrtoint ptr %has_middle_button to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %frombool395, ptr %has_middle_button, align 2
  br label %cleanup396

cleanup396:                                       ; preds = %lor.end, %if.end333.cleanup396_crit_edge, %sw.bb327.cleanup396_crit_edge, %sw.bb304.cleanup396_crit_edge, %if.then246.cleanup396_crit_edge, %if.else.cleanup396_crit_edge, %do.end183, %do.end144, %do.end101, %do.end67, %do.end36, %do.end12, %do.end
  %retval.1 = phi i32 [ -22, %do.end ], [ -22, %do.end12 ], [ -22, %do.end36 ], [ -22, %do.end67 ], [ -22, %do.end101 ], [ -19, %do.end144 ], [ -19, %do.end183 ], [ 0, %lor.end ], [ -22, %sw.bb304.cleanup396_crit_edge ], [ -22, %sw.bb327.cleanup396_crit_edge ], [ -22, %if.end333.cleanup396_crit_edge ], [ -22, %if.else.cleanup396_crit_edge ], [ -22, %if.then246.cleanup396_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %ic_body) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param) #9
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @elantech_create_smbus(ptr noundef %psmouse, ptr nocapture noundef readonly %info, i1 noundef zeroext %leave_breadcrumbs) unnamed_addr #0 align 64 {
entry:
  %i2c_props = alloca [11 x %struct.property_entry], align 8
  %smbus_board = alloca %struct.i2c_board_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %i2c_props) #9
  %0 = getelementptr inbounds i8, ptr %i2c_props, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 256)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %smbus_board) #9
  %2 = call ptr @memcpy(ptr %smbus_board, ptr @__const.elantech_create_smbus.smbus_board, i32 56)
  %x_max = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 10
  %3 = ptrtoint ptr %x_max to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %x_max, align 4
  %add = add i32 %4, 1
  %5 = ptrtoint ptr %i2c_props to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.63, ptr %i2c_props, align 8
  %.compoundliteral.sroa.2.0.i2c_props.sroa_idx = getelementptr inbounds i8, ptr %i2c_props, i32 4
  %6 = ptrtoint ptr %.compoundliteral.sroa.2.0.i2c_props.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %.compoundliteral.sroa.2.0.i2c_props.sroa_idx, align 4
  %.compoundliteral.sroa.3.0.i2c_props.sroa_idx = getelementptr inbounds i8, ptr %i2c_props, i32 8
  %7 = ptrtoint ptr %.compoundliteral.sroa.3.0.i2c_props.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %.compoundliteral.sroa.3.0.i2c_props.sroa_idx, align 8
  %.compoundliteral.sroa.4203.0.i2c_props.sroa_idx = getelementptr inbounds i8, ptr %i2c_props, i32 12
  %8 = ptrtoint ptr %.compoundliteral.sroa.4203.0.i2c_props.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %.compoundliteral.sroa.4203.0.i2c_props.sroa_idx, align 4
  %.compoundliteral.sroa.5.0.i2c_props.sroa_idx = getelementptr inbounds i8, ptr %i2c_props, i32 16
  %9 = ptrtoint ptr %.compoundliteral.sroa.5.0.i2c_props.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add, ptr %.compoundliteral.sroa.5.0.i2c_props.sroa_idx, align 8
  %.compoundliteral.sroa.6.0.i2c_props.sroa_idx = getelementptr inbounds i8, ptr %i2c_props, i32 20
  %10 = ptrtoint ptr %.compoundliteral.sroa.6.0.i2c_props.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %.compoundliteral.sroa.6.0.i2c_props.sroa_idx, align 4
  %y_max = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 11
  %11 = ptrtoint ptr %y_max to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %y_max, align 4
  %add10 = add i32 %12, 1
  %arrayidx3 = getelementptr inbounds [11 x %struct.property_entry], ptr %i2c_props, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.64, ptr %arrayidx3, align 8
  %.compoundliteral4.sroa.2.0.arrayidx3.sroa_idx = getelementptr inbounds [11 x %struct.property_entry], ptr %i2c_props, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %.compoundliteral4.sroa.2.0.arrayidx3.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %.compoundliteral4.sroa.2.0.arrayidx3.sroa_idx, align 4
  %.compoundliteral4.sroa.3.0.arrayidx3.sroa_idx = getelementptr inbounds [11 x %struct.property_entry], ptr %i2c_props, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %.compoundliteral4.sroa.3.0.arrayidx3.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %.compoundliteral4.sroa.3.0.arrayidx3.sroa_idx, align 8
  %.compoundliteral4.sroa.4202.0.arrayidx3.sroa_idx = getelementptr inbounds [11 x %struct.property_entry], ptr %i2c_props, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %.compoundliteral4.sroa.4202.0.arrayidx3.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %.compoundliteral4.sroa.4202.0.arrayidx3.sroa_idx, align 4
  %.compoundliteral4.sroa.5.0.arrayidx3.sroa_idx = getelementptr inbounds [11 x %struct.property_entry], ptr %i2c_props, i32 0, i32 1, i32 4
  %17 = ptrtoint ptr %.compoundliteral4.sroa.5.0.arrayidx3.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add10, ptr %.compoundliteral4.sroa.5.0.arrayidx3.sroa_idx, align 8
  %.compoundliteral4.sroa.6.0.arrayidx3.sroa_idx = getelementptr inbounds i8, ptr %arrayidx3, i32 20
  %18 = ptrtoint ptr %.compoundliteral4.sroa.6.0.arrayidx3.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %.compoundliteral4.sroa.6.0.arrayidx3.sroa_idx, align 4
  %x_min = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 8
  %19 = ptrtoint ptr %x_min to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %x_min, align 4
  %arrayidx19 = getelementptr inbounds [11 x %struct.property_entry], ptr %i2c_props, i32 0, i32 2
  %21 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.65, ptr %arrayidx19, align 8
  %.compoundliteral20.sroa.2.0.arrayidx19.sroa_idx = getelementptr inbounds [11 x %struct.property_entry], ptr %i2c_props, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %.compoundliteral20.sroa.2.0.arrayidx19.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %.compoundliteral20.sroa.2.0.arrayidx19.sroa_idx, align 4
  %.compoundliteral20.sroa.3.0.arrayidx19.sroa_idx = getelementptr inbounds [11 x %struct.property_entry], ptr %i2c_props, i32 0, i32 2, i32 2
  %23 = ptrtoint ptr %.compoundliteral20.sroa.3.0.arrayidx19.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %.compoundliteral20.sroa.3.0.arrayidx19.sroa_idx, align 8
  %.compoundliteral20.sroa.4201.0.arrayidx19.sroa_idx = getelementptr inbounds [11 x %struct.property_entry], ptr %i2c_props, i32 0, i32 2, i32 3
  %24 = ptrtoint ptr %.compoundliteral20.sroa.4201.0.arrayidx19.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %.compoundliteral20.sroa.4201.0.arrayidx19.sroa_idx, align 4
  %.compoundliteral20.sroa.5.0.arrayidx19.sroa_idx = getelementptr inbounds [11 x %struct.property_entry], ptr %i2c_props, i32 0, i32 2, i32 4
  %25 = ptrtoint ptr %.compoundliteral20.sroa.5.0.arrayidx19.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %20, ptr %.compoundliteral20.sroa.5.0.arrayidx19.sroa_idx, align 8
  %.compoundliteral20.sroa.6.0.arrayidx19.sroa_idx = getelementptr inbounds i8, ptr %arrayidx19, i32 20
  %26 = ptrtoint ptr %.compoundliteral20.sroa.6.0.arrayidx19.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %.compoundliteral20.sroa.6.0.arrayidx19.sroa_idx, align 4
  %y_min = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 9
  %27 = ptrtoint ptr %y_min to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %y_min, align 4
  %arrayidx34 = getelementptr inbounds [11 x %struct.property_entry], ptr %i2c_props, i32 0, i32 3
  %29 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.66, ptr %arrayidx34, align 8
  %.compoundliteral35.sroa.2.0.arrayidx34.sroa_idx = getelementptr inbounds [11 x %struct.property_entry], ptr %i2c_props, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %.compoundliteral35.sroa.2.0.arrayidx34.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 4, ptr %.compoundliteral35.sroa.2.0.arrayidx34.sroa_idx, align 4
  %.compoundliteral35.sroa.3.0.arrayidx34.sroa_idx = getelementptr inbounds [11 x %struct.property_entry], ptr %i2c_props, i32 0, i32 3, i32 2
  %31 = ptrtoint ptr %.compoundliteral35.sroa.3.0.arrayidx34.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %.compoundliteral35.sroa.3.0.arrayidx34.sroa_idx, align 8
  %.compoundliteral35.sroa.4200.0.arrayidx34.sroa_idx = getelementptr inbounds [11 x %struct.property_entry], ptr %i2c_props, i32 0, i32 3, i32 3
  %32 = ptrtoint ptr %.compoundliteral35.sroa.4200.0.arrayidx34.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %.compoundliteral35.sroa.4200.0.arrayidx34.sroa_idx, align 4
  %.compoundliteral35.sroa.5.0.arrayidx34.sroa_idx = getelementptr inbounds [11 x %struct.property_entry], ptr %i2c_props, i32 0, i32 3, i32 4
  %33 = ptrtoint ptr %.compoundliteral35.sroa.5.0.arrayidx34.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %28, ptr %.compoundliteral35.sroa.5.0.arrayidx34.sroa_idx, align 8
  %.compoundliteral35.sroa.6.0.arrayidx34.sroa_idx = getelementptr inbounds i8, ptr %arrayidx34, i32 20
  %34 = ptrtoint ptr %.compoundliteral35.sroa.6.0.arrayidx34.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %.compoundliteral35.sroa.6.0.arrayidx34.sroa_idx, align 4
  %x_res = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 12
  %35 = ptrtoint ptr %x_res to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %x_res, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not = icmp eq i32 %36, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %div = udiv i32 %add, %36
  %arrayidx49 = getelementptr inbounds [11 x %struct.property_entry], ptr %i2c_props, i32 0, i32 4
  %37 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.67, ptr %arrayidx49, align 8
  %.compoundliteral50.sroa.2.0.arrayidx49.sroa_idx = getelementptr inbounds [11 x %struct.property_entry], ptr %i2c_props, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %.compoundliteral50.sroa.2.0.arrayidx49.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 4, ptr %.compoundliteral50.sroa.2.0.arrayidx49.sroa_idx, align 4
  %.compoundliteral50.sroa.3.0.arrayidx49.sroa_idx = getelementptr inbounds [11 x %struct.property_entry], ptr %i2c_props, i32 0, i32 4, i32 2
  %39 = ptrtoint ptr %.compoundliteral50.sroa.3.0.arrayidx49.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %.compoundliteral50.sroa.3.0.arrayidx49.sroa_idx, align 8
  %.compoundliteral50.sroa.4199.0.arrayidx49.sroa_idx = getelementptr inbounds [11 x %struct.property_entry], ptr %i2c_props, i32 0, i32 4, i32 3
  %40 = ptrtoint ptr %.compoundliteral50.sroa.4199.0.arrayidx49.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %.compoundliteral50.sroa.4199.0.arrayidx49.sroa_idx, align 4
  %.compoundliteral50.sroa.5.0.arrayidx49.sroa_idx = getelementptr inbounds [11 x %struct.property_entry], ptr %i2c_props, i32 0, i32 4, i32 4
  %41 = ptrtoint ptr %.compoundliteral50.sroa.5.0.arrayidx49.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %div, ptr %.compoundliteral50.sroa.5.0.arrayidx49.sroa_idx, align 8
  %.compoundliteral50.sroa.6.0.arrayidx49.sroa_idx = getelementptr inbounds i8, ptr %arrayidx49, i32 20
  %42 = ptrtoint ptr %.compoundliteral50.sroa.6.0.arrayidx49.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %.compoundliteral50.sroa.6.0.arrayidx49.sroa_idx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %idx.0 = phi i32 [ 5, %if.then ], [ 4, %entry.if.end_crit_edge ]
  %y_res = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 13
  %43 = ptrtoint ptr %y_res to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %y_res, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool66.not = icmp eq i32 %44, 0
  br i1 %tobool66.not, label %if.end.if.end87_crit_edge, label %if.then67

if.end.if.end87_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

if.then67:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %inc68 = add nuw nsw i32 %idx.0, 1
  %div79 = udiv i32 %add10, %44
  %arrayidx69 = getelementptr [11 x %struct.property_entry], ptr %i2c_props, i32 0, i32 %idx.0
  %45 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.68, ptr %arrayidx69, align 8
  %.compoundliteral70.sroa.2.0.arrayidx69.sroa_idx = getelementptr inbounds i8, ptr %arrayidx69, i32 4
  %46 = ptrtoint ptr %.compoundliteral70.sroa.2.0.arrayidx69.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 4, ptr %.compoundliteral70.sroa.2.0.arrayidx69.sroa_idx, align 4
  %.compoundliteral70.sroa.3.0.arrayidx69.sroa_idx = getelementptr inbounds i8, ptr %arrayidx69, i32 8
  %47 = ptrtoint ptr %.compoundliteral70.sroa.3.0.arrayidx69.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %.compoundliteral70.sroa.3.0.arrayidx69.sroa_idx, align 8
  %.compoundliteral70.sroa.4198.0.arrayidx69.sroa_idx = getelementptr inbounds i8, ptr %arrayidx69, i32 12
  %48 = ptrtoint ptr %.compoundliteral70.sroa.4198.0.arrayidx69.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %.compoundliteral70.sroa.4198.0.arrayidx69.sroa_idx, align 4
  %.compoundliteral70.sroa.5.0.arrayidx69.sroa_idx = getelementptr inbounds i8, ptr %arrayidx69, i32 16
  %49 = ptrtoint ptr %.compoundliteral70.sroa.5.0.arrayidx69.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %div79, ptr %.compoundliteral70.sroa.5.0.arrayidx69.sroa_idx, align 8
  %.compoundliteral70.sroa.6.0.arrayidx69.sroa_idx = getelementptr inbounds i8, ptr %arrayidx69, i32 20
  %50 = ptrtoint ptr %.compoundliteral70.sroa.6.0.arrayidx69.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %.compoundliteral70.sroa.6.0.arrayidx69.sroa_idx, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then67, %if.end.if.end87_crit_edge
  %idx.1 = phi i32 [ %inc68, %if.then67 ], [ %idx.0, %if.end.if.end87_crit_edge ]
  %has_trackpoint = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 23
  %51 = ptrtoint ptr %has_trackpoint to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %has_trackpoint, align 1, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool88.not = icmp eq i8 %52, 0
  br i1 %tobool88.not, label %if.end87.if.end97_crit_edge, label %if.then89

if.end87.if.end97_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

if.then89:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  %inc90 = add nuw nsw i32 %idx.1, 1
  %arrayidx91 = getelementptr [11 x %struct.property_entry], ptr %i2c_props, i32 0, i32 %idx.1
  %53 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.69, ptr %arrayidx91, align 8
  %.compoundliteral92.sroa.3.0.arrayidx91.sroa_idx = getelementptr inbounds i8, ptr %arrayidx91, i32 4
  %54 = ptrtoint ptr %.compoundliteral92.sroa.3.0.arrayidx91.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %.compoundliteral92.sroa.3.0.arrayidx91.sroa_idx, align 4
  %.compoundliteral92.sroa.3169.0.arrayidx91.sroa_idx = getelementptr inbounds i8, ptr %arrayidx91, i32 8
  %55 = ptrtoint ptr %.compoundliteral92.sroa.3169.0.arrayidx91.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %.compoundliteral92.sroa.3169.0.arrayidx91.sroa_idx, align 8
  %.compoundliteral92.sroa.4.0.arrayidx91.sroa_idx = getelementptr inbounds i8, ptr %arrayidx91, i32 9
  %56 = call ptr @memset(ptr %.compoundliteral92.sroa.4.0.arrayidx91.sroa_idx, i32 0, i32 15)
  br label %if.end97

if.end97:                                         ; preds = %if.then89, %if.end87.if.end97_crit_edge
  %idx.2 = phi i32 [ %inc90, %if.then89 ], [ %idx.1, %if.end87.if.end97_crit_edge ]
  %has_middle_button = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 24
  %57 = ptrtoint ptr %has_middle_button to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %has_middle_button, align 2, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool98.not = icmp eq i8 %58, 0
  br i1 %tobool98.not, label %if.end97.if.end107_crit_edge, label %if.then99

if.end97.if.end107_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

if.then99:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  %inc100 = add nuw nsw i32 %idx.2, 1
  %arrayidx101 = getelementptr [11 x %struct.property_entry], ptr %i2c_props, i32 0, i32 %idx.2
  %59 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @.str.70, ptr %arrayidx101, align 8
  %.compoundliteral102.sroa.3.0.arrayidx101.sroa_idx = getelementptr inbounds i8, ptr %arrayidx101, i32 4
  %60 = ptrtoint ptr %.compoundliteral102.sroa.3.0.arrayidx101.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %.compoundliteral102.sroa.3.0.arrayidx101.sroa_idx, align 4
  %.compoundliteral102.sroa.3168.0.arrayidx101.sroa_idx = getelementptr inbounds i8, ptr %arrayidx101, i32 8
  %61 = ptrtoint ptr %.compoundliteral102.sroa.3168.0.arrayidx101.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %.compoundliteral102.sroa.3168.0.arrayidx101.sroa_idx, align 8
  %.compoundliteral102.sroa.4.0.arrayidx101.sroa_idx = getelementptr inbounds i8, ptr %arrayidx101, i32 9
  %62 = call ptr @memset(ptr %.compoundliteral102.sroa.4.0.arrayidx101.sroa_idx, i32 0, i32 15)
  br label %if.end107

if.end107:                                        ; preds = %if.then99, %if.end97.if.end107_crit_edge
  %idx.3 = phi i32 [ %inc100, %if.then99 ], [ %idx.2, %if.end97.if.end107_crit_edge ]
  %x_traces = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 14
  %63 = ptrtoint ptr %x_traces to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %x_traces, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool108.not = icmp eq i32 %64, 0
  br i1 %tobool108.not, label %if.end107.if.end126_crit_edge, label %if.then109

if.end107.if.end126_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end126

if.then109:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  %inc110 = add nuw nsw i32 %idx.3, 1
  %arrayidx111 = getelementptr [11 x %struct.property_entry], ptr %i2c_props, i32 0, i32 %idx.3
  %65 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @.str.71, ptr %arrayidx111, align 8
  %.compoundliteral112.sroa.2.0.arrayidx111.sroa_idx = getelementptr inbounds i8, ptr %arrayidx111, i32 4
  %66 = ptrtoint ptr %.compoundliteral112.sroa.2.0.arrayidx111.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 4, ptr %.compoundliteral112.sroa.2.0.arrayidx111.sroa_idx, align 4
  %.compoundliteral112.sroa.3.0.arrayidx111.sroa_idx = getelementptr inbounds i8, ptr %arrayidx111, i32 8
  %67 = ptrtoint ptr %.compoundliteral112.sroa.3.0.arrayidx111.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %.compoundliteral112.sroa.3.0.arrayidx111.sroa_idx, align 8
  %.compoundliteral112.sroa.4197.0.arrayidx111.sroa_idx = getelementptr inbounds i8, ptr %arrayidx111, i32 12
  %68 = ptrtoint ptr %.compoundliteral112.sroa.4197.0.arrayidx111.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 2, ptr %.compoundliteral112.sroa.4197.0.arrayidx111.sroa_idx, align 4
  %.compoundliteral112.sroa.5.0.arrayidx111.sroa_idx = getelementptr inbounds i8, ptr %arrayidx111, i32 16
  %69 = ptrtoint ptr %.compoundliteral112.sroa.5.0.arrayidx111.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %64, ptr %.compoundliteral112.sroa.5.0.arrayidx111.sroa_idx, align 8
  %.compoundliteral112.sroa.6.0.arrayidx111.sroa_idx = getelementptr inbounds i8, ptr %arrayidx111, i32 20
  %70 = ptrtoint ptr %.compoundliteral112.sroa.6.0.arrayidx111.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %.compoundliteral112.sroa.6.0.arrayidx111.sroa_idx, align 4
  br label %if.end126

if.end126:                                        ; preds = %if.then109, %if.end107.if.end126_crit_edge
  %idx.4 = phi i32 [ %inc110, %if.then109 ], [ %idx.3, %if.end107.if.end126_crit_edge ]
  %y_traces = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 15
  %71 = ptrtoint ptr %y_traces to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %y_traces, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool127.not = icmp eq i32 %72, 0
  br i1 %tobool127.not, label %if.end126.if.end145_crit_edge, label %if.then128

if.end126.if.end145_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end145

if.then128:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  %inc129 = add nuw nsw i32 %idx.4, 1
  %arrayidx130 = getelementptr [11 x %struct.property_entry], ptr %i2c_props, i32 0, i32 %idx.4
  %73 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @.str.72, ptr %arrayidx130, align 8
  %.compoundliteral131.sroa.2.0.arrayidx130.sroa_idx = getelementptr inbounds i8, ptr %arrayidx130, i32 4
  %74 = ptrtoint ptr %.compoundliteral131.sroa.2.0.arrayidx130.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 4, ptr %.compoundliteral131.sroa.2.0.arrayidx130.sroa_idx, align 4
  %.compoundliteral131.sroa.3.0.arrayidx130.sroa_idx = getelementptr inbounds i8, ptr %arrayidx130, i32 8
  %75 = ptrtoint ptr %.compoundliteral131.sroa.3.0.arrayidx130.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %.compoundliteral131.sroa.3.0.arrayidx130.sroa_idx, align 8
  %.compoundliteral131.sroa.4196.0.arrayidx130.sroa_idx = getelementptr inbounds i8, ptr %arrayidx130, i32 12
  %76 = ptrtoint ptr %.compoundliteral131.sroa.4196.0.arrayidx130.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 2, ptr %.compoundliteral131.sroa.4196.0.arrayidx130.sroa_idx, align 4
  %.compoundliteral131.sroa.5.0.arrayidx130.sroa_idx = getelementptr inbounds i8, ptr %arrayidx130, i32 16
  %77 = ptrtoint ptr %.compoundliteral131.sroa.5.0.arrayidx130.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %72, ptr %.compoundliteral131.sroa.5.0.arrayidx130.sroa_idx, align 8
  %.compoundliteral131.sroa.6.0.arrayidx130.sroa_idx = getelementptr inbounds i8, ptr %arrayidx130, i32 20
  %78 = ptrtoint ptr %.compoundliteral131.sroa.6.0.arrayidx130.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %.compoundliteral131.sroa.6.0.arrayidx130.sroa_idx, align 4
  br label %if.end145

if.end145:                                        ; preds = %if.then128, %if.end126.if.end145_crit_edge
  %idx.5 = phi i32 [ %inc129, %if.then128 ], [ %idx.4, %if.end126.if.end145_crit_edge ]
  %fw_version.i = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 5
  %79 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %fw_version.i, align 4
  %and.i = and i32 %80, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool146.not = icmp eq i32 %and.i, 0
  br i1 %tobool146.not, label %if.end145.if.end155_crit_edge, label %if.then147

if.end145.if.end155_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end155

if.then147:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx149 = getelementptr [11 x %struct.property_entry], ptr %i2c_props, i32 0, i32 %idx.5
  %81 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @.str.73, ptr %arrayidx149, align 8
  %.compoundliteral150.sroa.3.0.arrayidx149.sroa_idx = getelementptr inbounds i8, ptr %arrayidx149, i32 4
  %82 = ptrtoint ptr %.compoundliteral150.sroa.3.0.arrayidx149.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %.compoundliteral150.sroa.3.0.arrayidx149.sroa_idx, align 4
  %.compoundliteral150.sroa.3167.0.arrayidx149.sroa_idx = getelementptr inbounds i8, ptr %arrayidx149, i32 8
  %83 = ptrtoint ptr %.compoundliteral150.sroa.3167.0.arrayidx149.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %.compoundliteral150.sroa.3167.0.arrayidx149.sroa_idx, align 8
  %.compoundliteral150.sroa.4.0.arrayidx149.sroa_idx = getelementptr inbounds i8, ptr %arrayidx149, i32 9
  %84 = call ptr @memset(ptr %.compoundliteral150.sroa.4.0.arrayidx149.sroa_idx, i32 0, i32 15)
  br label %if.end155

if.end155:                                        ; preds = %if.then147, %if.end145.if.end155_crit_edge
  %call156 = call ptr @fwnode_create_software_node(ptr noundef nonnull %i2c_props, ptr noundef null) #9
  %fwnode = getelementptr inbounds %struct.i2c_board_info, ptr %smbus_board, i32 0, i32 6
  %85 = ptrtoint ptr %fwnode to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call156, ptr %fwnode, align 4
  %cmp.i = icmp ugt ptr %call156, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then159, label %if.end162

if.then159:                                       ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #11
  %86 = ptrtoint ptr %call156 to i32
  br label %cleanup

if.end162:                                        ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #11
  %call164 = call i32 @psmouse_smbus_init(ptr noundef %psmouse, ptr noundef nonnull %smbus_board, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext %leave_breadcrumbs) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end162, %if.then159
  %retval.0 = phi i32 [ %86, %if.then159 ], [ %call164, %if.end162 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %smbus_board) #9
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %i2c_props) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @elantech_init_ps2(ptr noundef %psmouse) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.elantech_device_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %info) #9
  %0 = call ptr @memset(ptr %info, i32 255, i32 76)
  %call = tail call i32 @psmouse_reset(ptr noundef %psmouse) #9
  %call1 = call fastcc i32 @elantech_query_info(ptr noundef %psmouse, ptr noundef nonnull %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.init_fail_crit_edge

entry.init_fail_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %init_fail

if.end:                                           ; preds = %entry
  %call2 = call fastcc i32 @elantech_setup_ps2(ptr noundef %psmouse, ptr noundef nonnull %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end.init_fail_crit_edge

if.end.init_fail_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %init_fail

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

init_fail:                                        ; preds = %if.end.init_fail_crit_edge, %entry.init_fail_crit_edge
  %error.0 = phi i32 [ %call1, %entry.init_fail_crit_edge ], [ %call2, %if.end.init_fail_crit_edge ]
  %call6 = call i32 @psmouse_reset(ptr noundef %psmouse) #9
  br label %cleanup

cleanup:                                          ; preds = %init_fail, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %init_fail ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %info) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @elantech_setup_ps2(ptr noundef %psmouse, ptr nocapture noundef readonly %info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 436) #13
  %1 = ptrtoint ptr %psmouse to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %psmouse, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %info1 = getelementptr inbounds %struct.elantech_data, ptr %call7.i.i, i32 0, i32 17
  %2 = call ptr @memcpy(ptr %info1, ptr %info, i32 76)
  %parity = getelementptr inbounds %struct.elantech_data, ptr %call7.i.i, i32 0, i32 16
  %3 = ptrtoint ptr %parity to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %parity, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %i.0134 = phi i32 [ 1, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  %sub = add nuw i32 %i.0134, 2147483647
  %and = and i32 %sub, %i.0134
  %arrayidx3 = getelementptr %struct.elantech_data, ptr %call7.i.i, i32 0, i32 16, i32 %and
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 2
  %6 = xor i8 %5, 1
  %arrayidx6 = getelementptr %struct.elantech_data, ptr %call7.i.i, i32 0, i32 16, i32 %i.0134
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %arrayidx6, align 1
  %inc = add nuw nsw i32 %i.0134, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  %call7 = tail call fastcc i32 @elantech_set_absolute_mode(ptr noundef %psmouse)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %do.end

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %8 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ps2dev, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %9, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.74) #12
  br label %init_fail

if.end10:                                         ; preds = %for.end
  %fw_version = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 5
  %10 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fw_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3677975, i32 %11)
  %cmp11 = icmp eq i32 %11, 3677975
  br i1 %cmp11, label %if.then13, label %if.end10.if.end15_crit_edge

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %set_rate = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 27
  %12 = ptrtoint ptr %set_rate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_rate, align 4
  %original_set_rate = getelementptr inbounds %struct.elantech_data, ptr %call7.i.i, i32 0, i32 18
  %14 = ptrtoint ptr %original_set_rate to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %original_set_rate, align 8
  store ptr @elantech_set_rate_restore_reg_07, ptr %set_rate, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end10.if.end15_crit_edge
  %dev1.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 1
  %15 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev1.i, align 4
  %17 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %psmouse, align 4
  %info2.i = getelementptr inbounds %struct.elantech_data, ptr %18, i32 0, i32 17
  %x_min3.i = getelementptr inbounds %struct.elantech_data, ptr %18, i32 0, i32 17, i32 8
  %19 = ptrtoint ptr %x_min3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %x_min3.i, align 4
  %y_min4.i = getelementptr inbounds %struct.elantech_data, ptr %18, i32 0, i32 17, i32 9
  %21 = ptrtoint ptr %y_min4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %y_min4.i, align 4
  %x_max5.i = getelementptr inbounds %struct.elantech_data, ptr %18, i32 0, i32 17, i32 10
  %23 = ptrtoint ptr %x_max5.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %x_max5.i, align 4
  %y_max6.i = getelementptr inbounds %struct.elantech_data, ptr %18, i32 0, i32 17, i32 11
  %25 = ptrtoint ptr %y_max6.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %y_max6.i, align 4
  %width7.i = getelementptr inbounds %struct.elantech_data, ptr %18, i32 0, i32 17, i32 16
  %27 = ptrtoint ptr %width7.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %width7.i, align 4
  %propbit.i = getelementptr inbounds %struct.input_dev, ptr %16, i32 0, i32 4
  %29 = ptrtoint ptr %propbit.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %propbit.i, align 4
  %or.i.i = or i32 %30, 1
  store i32 %or.i.i, ptr %propbit.i, align 4
  %evbit.i = getelementptr inbounds %struct.input_dev, ptr %16, i32 0, i32 5
  %31 = ptrtoint ptr %evbit.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %evbit.i, align 4
  %or.i2.i = and i32 %32, -15
  %and.i.i = or i32 %or.i2.i, 10
  store i32 %and.i.i, ptr %evbit.i, align 4
  %add.ptr.i.i = getelementptr %struct.input_dev, ptr %16, i32 0, i32 6, i32 8
  %33 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.i.i, align 4
  %or.i3.i = or i32 %34, 65536
  store i32 %or.i3.i, ptr %add.ptr.i.i, align 4
  %has_middle_button.i = getelementptr inbounds %struct.elantech_data, ptr %18, i32 0, i32 17, i32 24
  %35 = ptrtoint ptr %has_middle_button.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %has_middle_button.i, align 2, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i = icmp eq i8 %36, 0
  br i1 %tobool.not.i, label %if.end15.if.end.i_crit_edge, label %if.then.i

if.end15.if.end.i_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %or.i5.i = or i32 %34, 327680
  %37 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or.i5.i, ptr %add.ptr.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end15.if.end.i_crit_edge
  %38 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr.i.i, align 4
  %or.i7.i = or i32 %39, 131072
  store i32 %or.i7.i, ptr %add.ptr.i.i, align 4
  %add.ptr.i8.i = getelementptr %struct.input_dev, ptr %16, i32 0, i32 6, i32 10
  %40 = ptrtoint ptr %add.ptr.i8.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr.i8.i, align 4
  %or.i15.i = or i32 %41, 25632
  store i32 %or.i15.i, ptr %add.ptr.i8.i, align 4
  %hw_version.i = getelementptr inbounds %struct.elantech_data, ptr %18, i32 0, i32 17, i32 3
  %42 = ptrtoint ptr %hw_version.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %hw_version.i, align 1
  %44 = zext i8 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.140)
  switch i8 %43, label %if.end.i.sw.epilog.i_crit_edge [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb40.i
    i8 3, label %if.end.i.if.then45.i_crit_edge
    i8 4, label %sw.bb50.i
  ]

if.end.i.if.then45.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then45.i

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.i
  %fw_version.i = getelementptr inbounds %struct.elantech_data, ptr %18, i32 0, i32 17, i32 5
  %45 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %fw_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %46)
  %cmp.i = icmp ult i32 %46, 131072
  br i1 %cmp.i, label %land.lhs.true.i, label %sw.bb.i.if.end34.i_crit_edge

sw.bb.i.if.end34.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

land.lhs.true.i:                                  ; preds = %sw.bb.i
  %47 = ptrtoint ptr %info2.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %info2.i, align 4
  %49 = and i8 %48, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool28.not.i = icmp eq i8 %49, 0
  br i1 %tobool28.not.i, label %land.lhs.true.i.if.end34.i_crit_edge, label %if.then29.i

land.lhs.true.i.if.end34.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

if.then29.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i19.i = or i32 %39, 6422528
  %50 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or.i19.i, ptr %add.ptr.i.i, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then29.i, %land.lhs.true.i.if.end34.i_crit_edge, %sw.bb.i.if.end34.i_crit_edge
  tail call void @input_set_abs_params(ptr noundef %16, i32 noundef 0, i32 noundef %20, i32 noundef %24, i32 noundef 0, i32 noundef 0) #9
  tail call void @input_set_abs_params(ptr noundef %16, i32 noundef 1, i32 noundef %22, i32 noundef %26, i32 noundef 0, i32 noundef 0) #9
  br label %sw.epilog.i

sw.bb40.i:                                        ; preds = %if.end.i
  %or.i21.i = or i32 %41, 58400
  %51 = ptrtoint ptr %add.ptr.i8.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or.i21.i, ptr %add.ptr.i8.i, align 4
  %or.i22.i = or i32 %30, 9
  %52 = ptrtoint ptr %propbit.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or.i22.i, ptr %propbit.i, align 4
  %53 = ptrtoint ptr %hw_version.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %.pr.i = load i8, ptr %hw_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.pr.i)
  %cmp43.i = icmp eq i8 %.pr.i, 3
  br i1 %cmp43.i, label %sw.bb40.i.if.then45.i_crit_edge, label %sw.bb40.i.if.end46.i_crit_edge

sw.bb40.i.if.end46.i_crit_edge:                   ; preds = %sw.bb40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

sw.bb40.i.if.then45.i_crit_edge:                  ; preds = %sw.bb40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then45.i

if.then45.i:                                      ; preds = %sw.bb40.i.if.then45.i_crit_edge, %if.end.i.if.then45.i_crit_edge
  %54 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %psmouse, align 4
  %fw_version.i.i.i = getelementptr inbounds %struct.elantech_data, ptr %55, i32 0, i32 17, i32 5
  %56 = ptrtoint ptr %fw_version.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fw_version.i.i.i, align 4
  %and.i5.i.i = and i32 %57, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i5.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i5.i.i, 0
  br i1 %tobool.not.i.i, label %if.then45.i.if.end46.i_crit_edge, label %if.then.i.i

if.then45.i.if.end46.i_crit_edge:                 ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

if.then.i.i:                                      ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev1.i, align 4
  %propbit.i.i = getelementptr inbounds %struct.input_dev, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %propbit.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %propbit.i.i, align 4
  %or.i.i.i = or i32 %61, 4
  store i32 %or.i.i.i, ptr %propbit.i.i, align 4
  %add.ptr.i.i.i = getelementptr %struct.input_dev, ptr %59, i32 0, i32 6, i32 8
  %62 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %add.ptr.i.i.i, align 4
  %and.i.i.i = and i32 %63, -131073
  store i32 %and.i.i.i, ptr %add.ptr.i.i.i, align 4
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then.i.i, %if.then45.i.if.end46.i_crit_edge, %sw.bb40.i.if.end46.i_crit_edge
  tail call void @input_set_abs_params(ptr noundef %16, i32 noundef 0, i32 noundef %20, i32 noundef %24, i32 noundef 0, i32 noundef 0) #9
  tail call void @input_set_abs_params(ptr noundef %16, i32 noundef 1, i32 noundef %22, i32 noundef %26, i32 noundef 0, i32 noundef 0) #9
  %reports_pressure.i = getelementptr inbounds %struct.elantech_data, ptr %18, i32 0, i32 17, i32 20
  %64 = ptrtoint ptr %reports_pressure.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %reports_pressure.i, align 2, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool47.not.i = icmp eq i8 %65, 0
  br i1 %tobool47.not.i, label %if.end46.i.if.end49.i_crit_edge, label %if.then48.i

if.end46.i.if.end49.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49.i

if.then48.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @input_set_abs_params(ptr noundef %16, i32 noundef 24, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #9
  tail call void @input_set_abs_params(ptr noundef %16, i32 noundef 28, i32 noundef 0, i32 noundef 15, i32 noundef 0, i32 noundef 0) #9
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then48.i, %if.end46.i.if.end49.i_crit_edge
  %call.i = tail call i32 @input_mt_init_slots(ptr noundef %16, i32 noundef 2, i32 noundef 16) #9
  tail call void @input_set_abs_params(ptr noundef %16, i32 noundef 53, i32 noundef %20, i32 noundef %24, i32 noundef 0, i32 noundef 0) #9
  tail call void @input_set_abs_params(ptr noundef %16, i32 noundef 54, i32 noundef %22, i32 noundef %26, i32 noundef 0, i32 noundef 0) #9
  br label %sw.epilog.i

sw.bb50.i:                                        ; preds = %if.end.i
  %66 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %psmouse, align 4
  %fw_version.i.i25.i = getelementptr inbounds %struct.elantech_data, ptr %67, i32 0, i32 17, i32 5
  %68 = ptrtoint ptr %fw_version.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %fw_version.i.i25.i, align 4
  %and.i5.i26.i = and i32 %69, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i5.i26.i)
  %tobool.not.i27.i = icmp eq i32 %and.i5.i26.i, 0
  br i1 %tobool.not.i27.i, label %sw.bb50.i.elantech_set_buttonpad_prop.exit34.i_crit_edge, label %if.then.i33.i

sw.bb50.i.elantech_set_buttonpad_prop.exit34.i_crit_edge: ; preds = %sw.bb50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %elantech_set_buttonpad_prop.exit34.i

if.then.i33.i:                                    ; preds = %sw.bb50.i
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev1.i, align 4
  %propbit.i29.i = getelementptr inbounds %struct.input_dev, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %propbit.i29.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %propbit.i29.i, align 4
  %or.i.i30.i = or i32 %73, 4
  store i32 %or.i.i30.i, ptr %propbit.i29.i, align 4
  %add.ptr.i.i31.i = getelementptr %struct.input_dev, ptr %71, i32 0, i32 6, i32 8
  %74 = ptrtoint ptr %add.ptr.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %add.ptr.i.i31.i, align 4
  %and.i.i32.i = and i32 %75, -131073
  store i32 %and.i.i32.i, ptr %add.ptr.i.i31.i, align 4
  br label %elantech_set_buttonpad_prop.exit34.i

elantech_set_buttonpad_prop.exit34.i:             ; preds = %if.then.i33.i, %sw.bb50.i.elantech_set_buttonpad_prop.exit34.i_crit_edge
  %76 = ptrtoint ptr %add.ptr.i8.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %add.ptr.i8.i, align 4
  %or.i24.i = or i32 %77, 32768
  store i32 %or.i24.i, ptr %add.ptr.i8.i, align 4
  tail call void @input_set_abs_params(ptr noundef %16, i32 noundef 0, i32 noundef %20, i32 noundef %24, i32 noundef 0, i32 noundef 0) #9
  tail call void @input_set_abs_params(ptr noundef %16, i32 noundef 1, i32 noundef %22, i32 noundef %26, i32 noundef 0, i32 noundef 0) #9
  tail call void @input_set_abs_params(ptr noundef %16, i32 noundef 24, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #9
  tail call void @input_set_abs_params(ptr noundef %16, i32 noundef 28, i32 noundef 0, i32 noundef 15, i32 noundef 0, i32 noundef 0) #9
  %call53.i = tail call i32 @input_mt_init_slots(ptr noundef %16, i32 noundef 5, i32 noundef 0) #9
  tail call void @input_set_abs_params(ptr noundef %16, i32 noundef 53, i32 noundef %20, i32 noundef %24, i32 noundef 0, i32 noundef 0) #9
  tail call void @input_set_abs_params(ptr noundef %16, i32 noundef 54, i32 noundef %22, i32 noundef %26, i32 noundef 0, i32 noundef 0) #9
  tail call void @input_set_abs_params(ptr noundef %16, i32 noundef 58, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #9
  %mul.i = mul i32 %28, 15
  tail call void @input_set_abs_params(ptr noundef %16, i32 noundef 48, i32 noundef 0, i32 noundef %mul.i, i32 noundef 0, i32 noundef 0) #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %elantech_set_buttonpad_prop.exit34.i, %if.end49.i, %if.end34.i, %if.end.i.sw.epilog.i_crit_edge
  %x_res.i = getelementptr inbounds %struct.elantech_data, ptr %18, i32 0, i32 17, i32 12
  %78 = ptrtoint ptr %x_res.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %x_res.i, align 4
  tail call void @input_alloc_absinfo(ptr noundef %16) #9
  %absinfo.i.i = getelementptr inbounds %struct.input_dev, ptr %16, i32 0, i32 26
  %80 = ptrtoint ptr %absinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %absinfo.i.i, align 8
  %tobool.not.i35.i = icmp eq ptr %81, null
  br i1 %tobool.not.i35.i, label %sw.epilog.i.input_abs_set_res.exit.i_crit_edge, label %if.then.i36.i

sw.epilog.i.input_abs_set_res.exit.i_crit_edge:   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %input_abs_set_res.exit.i

if.then.i36.i:                                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %resolution.i.i = getelementptr %struct.input_absinfo, ptr %81, i32 0, i32 5
  %82 = ptrtoint ptr %resolution.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %79, ptr %resolution.i.i, align 4
  br label %input_abs_set_res.exit.i

input_abs_set_res.exit.i:                         ; preds = %if.then.i36.i, %sw.epilog.i.input_abs_set_res.exit.i_crit_edge
  %y_res.i = getelementptr inbounds %struct.elantech_data, ptr %18, i32 0, i32 17, i32 13
  %83 = ptrtoint ptr %y_res.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %y_res.i, align 4
  tail call void @input_alloc_absinfo(ptr noundef %16) #9
  %85 = ptrtoint ptr %absinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %absinfo.i.i, align 8
  %tobool.not.i38.i = icmp eq ptr %86, null
  br i1 %tobool.not.i38.i, label %input_abs_set_res.exit.i.input_abs_set_res.exit41.i_crit_edge, label %if.then.i40.i

input_abs_set_res.exit.i.input_abs_set_res.exit41.i_crit_edge: ; preds = %input_abs_set_res.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %input_abs_set_res.exit41.i

if.then.i40.i:                                    ; preds = %input_abs_set_res.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %resolution.i39.i = getelementptr %struct.input_absinfo, ptr %86, i32 1, i32 5
  %87 = ptrtoint ptr %resolution.i39.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %84, ptr %resolution.i39.i, align 4
  br label %input_abs_set_res.exit41.i

input_abs_set_res.exit41.i:                       ; preds = %if.then.i40.i, %input_abs_set_res.exit.i.input_abs_set_res.exit41.i_crit_edge
  %88 = ptrtoint ptr %hw_version.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %hw_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %89)
  %cmp56.i = icmp ugt i8 %89, 1
  br i1 %cmp56.i, label %if.then58.i, label %input_abs_set_res.exit41.i.elantech_set_input_params.exit_crit_edge

input_abs_set_res.exit41.i.elantech_set_input_params.exit_crit_edge: ; preds = %input_abs_set_res.exit41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %elantech_set_input_params.exit

if.then58.i:                                      ; preds = %input_abs_set_res.exit41.i
  %90 = ptrtoint ptr %x_res.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %x_res.i, align 4
  tail call void @input_alloc_absinfo(ptr noundef %16) #9
  %92 = ptrtoint ptr %absinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %absinfo.i.i, align 8
  %tobool.not.i43.i = icmp eq ptr %93, null
  br i1 %tobool.not.i43.i, label %if.then58.i.input_abs_set_res.exit46.i_crit_edge, label %if.then.i45.i

if.then58.i.input_abs_set_res.exit46.i_crit_edge: ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %input_abs_set_res.exit46.i

if.then.i45.i:                                    ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #11
  %resolution.i44.i = getelementptr %struct.input_absinfo, ptr %93, i32 53, i32 5
  %94 = ptrtoint ptr %resolution.i44.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %91, ptr %resolution.i44.i, align 4
  br label %input_abs_set_res.exit46.i

input_abs_set_res.exit46.i:                       ; preds = %if.then.i45.i, %if.then58.i.input_abs_set_res.exit46.i_crit_edge
  %95 = ptrtoint ptr %y_res.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %y_res.i, align 4
  tail call void @input_alloc_absinfo(ptr noundef %16) #9
  %97 = ptrtoint ptr %absinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %absinfo.i.i, align 8
  %tobool.not.i48.i = icmp eq ptr %98, null
  br i1 %tobool.not.i48.i, label %input_abs_set_res.exit46.i.elantech_set_input_params.exit_crit_edge, label %if.then.i50.i

input_abs_set_res.exit46.i.elantech_set_input_params.exit_crit_edge: ; preds = %input_abs_set_res.exit46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %elantech_set_input_params.exit

if.then.i50.i:                                    ; preds = %input_abs_set_res.exit46.i
  call void @__sanitizer_cov_trace_pc() #11
  %resolution.i49.i = getelementptr %struct.input_absinfo, ptr %98, i32 54, i32 5
  %99 = ptrtoint ptr %resolution.i49.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %96, ptr %resolution.i49.i, align 4
  br label %elantech_set_input_params.exit

elantech_set_input_params.exit:                   ; preds = %if.then.i50.i, %input_abs_set_res.exit46.i.elantech_set_input_params.exit_crit_edge, %input_abs_set_res.exit41.i.elantech_set_input_params.exit_crit_edge
  %y_max62.i = getelementptr inbounds %struct.elantech_data, ptr %18, i32 0, i32 13
  %100 = ptrtoint ptr %y_max62.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %26, ptr %y_max62.i, align 4
  %width63.i = getelementptr inbounds %struct.elantech_data, ptr %18, i32 0, i32 14
  %101 = ptrtoint ptr %width63.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %28, ptr %width63.i, align 4
  %ps2dev26 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %102 = ptrtoint ptr %ps2dev26 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ps2dev26, align 4
  %dev28 = getelementptr inbounds %struct.serio, ptr %103, i32 0, i32 18
  %call29 = tail call i32 @sysfs_create_group(ptr noundef %dev28, ptr noundef nonnull @elantech_attr_group) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end38, label %do.end34

do.end34:                                         ; preds = %elantech_set_input_params.exit
  call void @__sanitizer_cov_trace_pc() #11
  %104 = ptrtoint ptr %ps2dev26 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ps2dev26, align 4
  %dev37 = getelementptr inbounds %struct.serio, ptr %105, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev37, ptr noundef nonnull @.str.80, i32 noundef %call29) #12
  br label %init_fail

if.end38:                                         ; preds = %elantech_set_input_params.exit
  %has_trackpoint = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 23
  %106 = ptrtoint ptr %has_trackpoint to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %has_trackpoint, align 1, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool39.not = icmp eq i8 %107, 0
  br i1 %tobool39.not, label %if.end38.if.end72_crit_edge, label %if.then40

if.end38.if.end72_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.then40:                                        ; preds = %if.end38
  %call41 = tail call ptr @input_allocate_device() #9
  %tobool42.not = icmp eq ptr %call41, null
  br i1 %tobool42.not, label %if.then40.init_fail_tp_alloc_crit_edge, label %if.end44

if.then40.init_fail_tp_alloc_crit_edge:           ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %init_fail_tp_alloc

if.end44:                                         ; preds = %if.then40
  %108 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %call41, ptr %call7.i.i, align 8
  %tp_phys = getelementptr inbounds %struct.elantech_data, ptr %call7.i.i, i32 0, i32 1
  %109 = ptrtoint ptr %ps2dev26 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ps2dev26, align 4
  %phys = getelementptr inbounds %struct.serio, ptr %110, i32 0, i32 2
  %call49 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %tp_phys, i32 noundef 32, ptr noundef nonnull @.str.82, ptr noundef %phys)
  %phys52 = getelementptr inbounds %struct.input_dev, ptr %call41, i32 0, i32 1
  %111 = ptrtoint ptr %phys52 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %tp_phys, ptr %phys52, align 4
  %112 = ptrtoint ptr %call41 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @.str.83, ptr %call41, align 8
  %id = getelementptr inbounds %struct.input_dev, ptr %call41, i32 0, i32 3
  %113 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 17, ptr %id, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %call41, i32 0, i32 3, i32 1
  %114 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 2, ptr %vendor, align 2
  %product = getelementptr inbounds %struct.input_dev, ptr %call41, i32 0, i32 3, i32 2
  %115 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 14, ptr %product, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %call41, i32 0, i32 3, i32 3
  %116 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 0, ptr %version, align 2
  %117 = ptrtoint ptr %ps2dev26 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ps2dev26, align 4
  %dev58 = getelementptr inbounds %struct.serio, ptr %118, i32 0, i32 18
  %parent = getelementptr inbounds %struct.input_dev, ptr %call41, i32 0, i32 40, i32 1
  %119 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %dev58, ptr %parent, align 8
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call41, i32 0, i32 5
  %120 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 6, ptr %evbit, align 8
  %relbit = getelementptr inbounds %struct.input_dev, ptr %call41, i32 0, i32 7
  %121 = ptrtoint ptr %relbit to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 3, ptr %relbit, align 4
  %arrayidx62 = getelementptr %struct.input_dev, ptr %call41, i32 0, i32 6, i32 8
  %122 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 458752, ptr %arrayidx62, align 4
  %propbit = getelementptr inbounds %struct.input_dev, ptr %call41, i32 0, i32 4
  %123 = ptrtoint ptr %propbit to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %propbit, align 4
  %or.i133 = or i32 %124, 33
  store i32 %or.i133, ptr %propbit, align 4
  %125 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %call7.i.i, align 8
  %call67 = tail call i32 @input_register_device(ptr noundef %126) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %init_fail_tp_reg, label %if.end44.if.end72_crit_edge

if.end44.if.end72_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.end72:                                         ; preds = %if.end44.if.end72_crit_edge, %if.end38.if.end72_crit_edge
  %protocol_handler = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 26
  %127 = ptrtoint ptr %protocol_handler to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr @elantech_process_byte, ptr %protocol_handler, align 4
  %disconnect = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 32
  %128 = ptrtoint ptr %disconnect to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr @elantech_disconnect, ptr %disconnect, align 4
  %reconnect = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 30
  %129 = ptrtoint ptr %reconnect to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr @elantech_reconnect, ptr %reconnect, align 4
  %hw_version = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 3
  %130 = ptrtoint ptr %hw_version to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %hw_version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %131)
  %cmp74 = icmp ugt i8 %131, 1
  %conv76 = select i1 %cmp74, i8 6, i8 4
  %pktsize = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 10
  %132 = ptrtoint ptr %pktsize to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %conv76, ptr %pktsize, align 2
  br label %cleanup

init_fail_tp_reg:                                 ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @input_free_device(ptr noundef nonnull %call41) #9
  br label %init_fail_tp_alloc

init_fail_tp_alloc:                               ; preds = %init_fail_tp_reg, %if.then40.init_fail_tp_alloc_crit_edge
  %error.0 = phi i32 [ %call67, %init_fail_tp_reg ], [ -12, %if.then40.init_fail_tp_alloc_crit_edge ]
  %133 = ptrtoint ptr %ps2dev26 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ps2dev26, align 4
  %dev79 = getelementptr inbounds %struct.serio, ptr %134, i32 0, i32 18
  tail call void @sysfs_remove_group(ptr noundef %dev79, ptr noundef nonnull @elantech_attr_group) #9
  br label %init_fail

init_fail:                                        ; preds = %init_fail_tp_alloc, %do.end34, %do.end
  %error.1 = phi i32 [ -22, %do.end ], [ %call29, %do.end34 ], [ %error.0, %init_fail_tp_alloc ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %init_fail, %if.end72, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.1, %init_fail ], [ 0, %if.end72 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @elantech_init(ptr noundef %psmouse) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.elantech_device_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %info) #9
  %0 = call ptr @memset(ptr %info, i32 255, i32 76)
  %call = tail call i32 @psmouse_reset(ptr noundef %psmouse) #9
  %call1 = call fastcc i32 @elantech_query_info(ptr noundef %psmouse, ptr noundef nonnull %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.init_fail_crit_edge

entry.init_fail_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %init_fail

if.end:                                           ; preds = %entry
  %fw_version.i = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 5
  %1 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fw_version.i, align 4
  %and.i = and i32 %2, 991232
  call void @__sanitizer_cov_trace_const_cmp4(i32 991232, i32 %and.i)
  %cmp.i = icmp ne i32 %and.i, 991232
  %and2.i = and i32 %2, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %cmp3.not.i = icmp eq i32 %and2.i, 0
  %or.cond.i = or i1 %cmp.i, %cmp3.not.i
  br i1 %or.cond.i, label %if.end.i, label %if.end.if.then3_crit_edge

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.end.i:                                         ; preds = %if.end
  %bus.i = getelementptr inbounds %struct.elantech_device_info, ptr %info, i32 0, i32 17
  %3 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bus.i, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %4, label %do.body9.i [
    i32 0, label %if.end.i.if.end8_crit_edge
    i32 1, label %if.end.i.do.body.i_crit_edge
    i32 3, label %if.end.i.do.body.i_crit_edge35
    i32 2, label %if.end.i.if.then3_crit_edge
    i32 4, label %if.end.i.if.then3_crit_edge36
  ]

if.end.i.if.then3_crit_edge36:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.end.i.if.then3_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.end.i.do.body.i_crit_edge35:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.end.i.if.end8_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.end.i.do.body.i_crit_edge35
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @elantech_use_host_notify.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@elantech_init, %if.then6.i)) #9
          to label %if.end8 [label %if.then6.i], !srcloc !309

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %ps2dev.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %6 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ps2dev.i, align 4
  %dev.i = getelementptr inbounds %struct.serio, ptr %7, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @elantech_use_host_notify.__UNIQUE_ID_ddebug295, ptr noundef %dev.i, ptr noundef nonnull @.str.124) #9
  br label %if.end8

do.body9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @elantech_use_host_notify.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@elantech_init, %if.then21.i)) #9
          to label %if.end8 [label %if.then21.i], !srcloc !309

if.then21.i:                                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #11
  %ps2dev22.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %8 = ptrtoint ptr %ps2dev22.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ps2dev22.i, align 4
  %dev24.i = getelementptr inbounds %struct.serio, ptr %9, i32 0, i32 18
  %10 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bus.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @elantech_use_host_notify.__UNIQUE_ID_ddebug296, ptr noundef %dev24.i, ptr noundef nonnull @.str.125, i32 noundef %11) #9
  br label %if.end8

if.then3:                                         ; preds = %if.end.i.if.then3_crit_edge, %if.end.i.if.then3_crit_edge36, %if.end.if.then3_crit_edge
  %12 = load i32, ptr @elantech_smbus, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %12, label %if.then3.do.end.i_crit_edge [
    i32 0, label %if.then3.if.end8_crit_edge
    i32 -1, label %if.then2.i
  ]

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then3.do.end.i_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.then2.i:                                       ; preds = %if.then3
  %14 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fw_version.i, align 4
  %and.i24 = and i32 %15, 991232
  call void @__sanitizer_cov_trace_const_cmp4(i32 991232, i32 %and.i24)
  %cmp3.i = icmp ne i32 %and.i24, 991232
  %and5.i = and i32 %15, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %cmp6.not.i = icmp eq i32 %and5.i, 0
  %or.cond.i25 = or i1 %cmp3.i, %cmp6.not.i
  br i1 %or.cond.i25, label %if.then2.i.if.end8_crit_edge, label %lor.lhs.false.i

if.then2.i.if.end8_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

lor.lhs.false.i:                                  ; preds = %if.then2.i
  %call.i = call zeroext i1 @psmouse_matches_pnp_id(ptr noundef %psmouse, ptr noundef nonnull @i2c_blacklist_pnp_ids) #9
  br i1 %call.i, label %lor.lhs.false.i.if.end8_crit_edge, label %lor.lhs.false.i.do.end.i_crit_edge

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

lor.lhs.false.i.if.end8_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.then3.do.end.i_crit_edge
  %ps2dev.i26 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %16 = ptrtoint ptr %ps2dev.i26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ps2dev.i26, align 4
  %dev.i27 = getelementptr inbounds %struct.serio, ptr %17, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i27, ptr noundef nonnull @.str.126) #12
  %call10.i = call fastcc i32 @elantech_create_smbus(ptr noundef %psmouse, ptr noundef nonnull %info, i1 noundef zeroext true) #9
  %18 = zext i32 %call10.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %call10.i, label %elantech_setup_smbus.exit [
    i32 0, label %do.end.i.cleanup_crit_edge
    i32 -11, label %do.end17.i
  ]

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end17.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %ps2dev.i26 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ps2dev.i26, align 4
  %dev20.i = getelementptr inbounds %struct.serio, ptr %20, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev20.i, ptr noundef nonnull @.str.129) #12
  br label %if.end8

elantech_setup_smbus.exit:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %ps2dev.i26 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ps2dev.i26, align 4
  %dev26.i = getelementptr inbounds %struct.serio, ptr %22, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26.i, ptr noundef nonnull @.str.132) #12
  br label %if.end8

if.end8:                                          ; preds = %elantech_setup_smbus.exit, %do.end17.i, %lor.lhs.false.i.if.end8_crit_edge, %if.then2.i.if.end8_crit_edge, %if.then3.if.end8_crit_edge, %if.then21.i, %do.body9.i, %if.then6.i, %do.body.i, %if.end.i.if.end8_crit_edge
  %call9 = call fastcc i32 @elantech_setup_ps2(ptr noundef %psmouse, ptr noundef nonnull %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.then10, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  call void @psmouse_smbus_cleanup(ptr noundef %psmouse) #9
  br label %init_fail

init_fail:                                        ; preds = %if.then10, %entry.init_fail_crit_edge
  %error.0 = phi i32 [ %call1, %entry.init_fail_crit_edge ], [ %call9, %if.then10 ]
  %call12 = call i32 @psmouse_reset(ptr noundef %psmouse) #9
  br label %cleanup

cleanup:                                          ; preds = %init_fail, %if.end8.cleanup_crit_edge, %do.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %init_fail ], [ 14, %if.end8.cleanup_crit_edge ], [ 22, %do.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %info) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @psmouse_smbus_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ps2_sliced_command(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @elantech_change_report_id(ptr noundef %psmouse) unnamed_addr #0 align 64 {
entry:
  %param = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param) #9
  %0 = call ptr @memcpy(ptr %param, ptr @__const.elantech_change_report_id.param, i32 3)
  %call.i = tail call fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef null, i32 noundef 248) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.elantech_write_reg_params.exit_crit_edge

entry.elantech_write_reg_params.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %elantech_write_reg_params.exit

lor.lhs.false.i:                                  ; preds = %entry
  %call1.i = tail call fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef null, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %lor.lhs.false3.i, label %lor.lhs.false.i.elantech_write_reg_params.exit_crit_edge

lor.lhs.false.i.elantech_write_reg_params.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %elantech_write_reg_params.exit

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %call4.i = tail call fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef null, i32 noundef 248) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %lor.lhs.false6.i, label %lor.lhs.false3.i.elantech_write_reg_params.exit_crit_edge

lor.lhs.false3.i.elantech_write_reg_params.exit_crit_edge: ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %elantech_write_reg_params.exit

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false3.i
  %call7.i = tail call fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef null, i32 noundef 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %lor.lhs.false9.i, label %lor.lhs.false6.i.elantech_write_reg_params.exit_crit_edge

lor.lhs.false6.i.elantech_write_reg_params.exit_crit_edge: ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %elantech_write_reg_params.exit

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false6.i
  %call10.i = tail call fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef null, i32 noundef 248) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %lor.lhs.false12.i, label %lor.lhs.false9.i.elantech_write_reg_params.exit_crit_edge

lor.lhs.false9.i.elantech_write_reg_params.exit_crit_edge: ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %elantech_write_reg_params.exit

lor.lhs.false12.i:                                ; preds = %lor.lhs.false9.i
  %1 = ptrtoint ptr %param to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %param, align 1
  %conv13.i = zext i8 %2 to i32
  %call14.i = tail call fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef null, i32 noundef %conv13.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %lor.lhs.false16.i, label %lor.lhs.false12.i.elantech_write_reg_params.exit_crit_edge

lor.lhs.false12.i.elantech_write_reg_params.exit_crit_edge: ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %elantech_write_reg_params.exit

lor.lhs.false16.i:                                ; preds = %lor.lhs.false12.i
  %call17.i = tail call fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef null, i32 noundef 248) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %lor.lhs.false19.i, label %lor.lhs.false16.i.elantech_write_reg_params.exit_crit_edge

lor.lhs.false16.i.elantech_write_reg_params.exit_crit_edge: ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %elantech_write_reg_params.exit

lor.lhs.false19.i:                                ; preds = %lor.lhs.false16.i
  %arrayidx20.i = getelementptr inbounds i8, ptr %param, i32 1
  %3 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx20.i, align 1
  %conv21.i = zext i8 %4 to i32
  %call22.i = tail call fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef null, i32 noundef %conv21.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %lor.lhs.false24.i, label %lor.lhs.false19.i.elantech_write_reg_params.exit_crit_edge

lor.lhs.false19.i.elantech_write_reg_params.exit_crit_edge: ; preds = %lor.lhs.false19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %elantech_write_reg_params.exit

lor.lhs.false24.i:                                ; preds = %lor.lhs.false19.i
  %call25.i = tail call fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef null, i32 noundef 230) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %lor.lhs.false, label %lor.lhs.false24.i.elantech_write_reg_params.exit_crit_edge

lor.lhs.false24.i.elantech_write_reg_params.exit_crit_edge: ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %elantech_write_reg_params.exit

elantech_write_reg_params.exit:                   ; preds = %lor.lhs.false24.i.elantech_write_reg_params.exit_crit_edge, %lor.lhs.false19.i.elantech_write_reg_params.exit_crit_edge, %lor.lhs.false16.i.elantech_write_reg_params.exit_crit_edge, %lor.lhs.false12.i.elantech_write_reg_params.exit_crit_edge, %lor.lhs.false9.i.elantech_write_reg_params.exit_crit_edge, %lor.lhs.false6.i.elantech_write_reg_params.exit_crit_edge, %lor.lhs.false3.i.elantech_write_reg_params.exit_crit_edge, %lor.lhs.false.i.elantech_write_reg_params.exit_crit_edge, %entry.elantech_write_reg_params.exit_crit_edge
  %ps2dev.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %5 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ps2dev.i, align 4
  %dev.i = getelementptr inbounds %struct.serio, ptr %6, i32 0, i32 18
  %7 = ptrtoint ptr %param to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %param, align 1
  %conv29.i = zext i8 %8 to i32
  %arrayidx30.i = getelementptr inbounds i8, ptr %param, i32 1
  %9 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx30.i, align 1
  %conv31.i = zext i8 %10 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.53, i32 noundef 7, i32 noundef %conv29.i, i32 noundef %conv31.i) #12
  br label %do.end

lor.lhs.false:                                    ; preds = %lor.lhs.false24.i
  %call.i13 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef null, i32 noundef 248) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13)
  %tobool.not.i14 = icmp eq i32 %call.i13, 0
  br i1 %tobool.not.i14, label %lor.lhs.false.i17, label %lor.lhs.false.elantech_read_reg_params.exit_crit_edge

lor.lhs.false.elantech_read_reg_params.exit_crit_edge: ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %elantech_read_reg_params.exit

lor.lhs.false.i17:                                ; preds = %lor.lhs.false
  %call1.i15 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef null, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i15)
  %tobool2.not.i16 = icmp eq i32 %call1.i15, 0
  br i1 %tobool2.not.i16, label %lor.lhs.false3.i20, label %lor.lhs.false.i17.elantech_read_reg_params.exit_crit_edge

lor.lhs.false.i17.elantech_read_reg_params.exit_crit_edge: ; preds = %lor.lhs.false.i17
  call void @__sanitizer_cov_trace_pc() #11
  br label %elantech_read_reg_params.exit

lor.lhs.false3.i20:                               ; preds = %lor.lhs.false.i17
  %call4.i18 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef null, i32 noundef 248) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i18)
  %tobool5.not.i19 = icmp eq i32 %call4.i18, 0
  br i1 %tobool5.not.i19, label %lor.lhs.false6.i23, label %lor.lhs.false3.i20.elantech_read_reg_params.exit_crit_edge

lor.lhs.false3.i20.elantech_read_reg_params.exit_crit_edge: ; preds = %lor.lhs.false3.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %elantech_read_reg_params.exit

lor.lhs.false6.i23:                               ; preds = %lor.lhs.false3.i20
  %call7.i21 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef null, i32 noundef 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i21)
  %tobool8.not.i22 = icmp eq i32 %call7.i21, 0
  br i1 %tobool8.not.i22, label %lor.lhs.false9.i26, label %lor.lhs.false6.i23.elantech_read_reg_params.exit_crit_edge

lor.lhs.false6.i23.elantech_read_reg_params.exit_crit_edge: ; preds = %lor.lhs.false6.i23
  call void @__sanitizer_cov_trace_pc() #11
  br label %elantech_read_reg_params.exit

lor.lhs.false9.i26:                               ; preds = %lor.lhs.false6.i23
  %call10.i24 = call fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef nonnull %param, i32 noundef 1001) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i24)
  %tobool11.not.i25 = icmp eq i32 %call10.i24, 0
  br i1 %tobool11.not.i25, label %lor.lhs.false4, label %lor.lhs.false9.i26.elantech_read_reg_params.exit_crit_edge

lor.lhs.false9.i26.elantech_read_reg_params.exit_crit_edge: ; preds = %lor.lhs.false9.i26
  call void @__sanitizer_cov_trace_pc() #11
  br label %elantech_read_reg_params.exit

elantech_read_reg_params.exit:                    ; preds = %lor.lhs.false9.i26.elantech_read_reg_params.exit_crit_edge, %lor.lhs.false6.i23.elantech_read_reg_params.exit_crit_edge, %lor.lhs.false3.i20.elantech_read_reg_params.exit_crit_edge, %lor.lhs.false.i17.elantech_read_reg_params.exit_crit_edge, %lor.lhs.false.elantech_read_reg_params.exit_crit_edge
  %ps2dev.i27 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %11 = ptrtoint ptr %ps2dev.i27 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ps2dev.i27, align 4
  %dev.i28 = getelementptr inbounds %struct.serio, ptr %12, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i28, ptr noundef nonnull @.str.61, i32 noundef 7) #12
  br label %do.end

lor.lhs.false4:                                   ; preds = %lor.lhs.false9.i26
  %13 = ptrtoint ptr %param to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %param, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %14)
  %cmp.not = icmp eq i8 %14, 16
  br i1 %cmp.not, label %lor.lhs.false6, label %lor.lhs.false4.do.end_crit_edge

lor.lhs.false4.do.end_crit_edge:                  ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %15 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx20.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %16)
  %cmp9.not = icmp eq i8 %16, 3
  br i1 %cmp9.not, label %lor.lhs.false6.cleanup_crit_edge, label %lor.lhs.false6.do.end_crit_edge

lor.lhs.false6.do.end_crit_edge:                  ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false6.do.end_crit_edge, %lor.lhs.false4.do.end_crit_edge, %elantech_read_reg_params.exit, %elantech_write_reg_params.exit
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %17 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ps2dev, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %18, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.51) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lor.lhs.false6.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %lor.lhs.false6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param) #9
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elantech_send_cmd(ptr noundef %psmouse, i8 noundef zeroext %c, ptr noundef %param) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ps2dev1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %call = tail call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef 248) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %conv = zext i8 %c to i32
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %lor.lhs.false4, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %call5 = tail call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef %param, i32 noundef 1001) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %lor.lhs.false4.cleanup_crit_edge, label %lor.lhs.false4.do.end_crit_edge

lor.lhs.false4.do.end_crit_edge:                  ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false4.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %0 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps2dev1, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.50, i32 noundef %conv) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lor.lhs.false4.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %lor.lhs.false4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef %param, i32 noundef %command) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ps2dev1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  %debug = getelementptr inbounds %struct.elantech_data, ptr %1, i32 0, i32 17, i32 2
  %call = tail call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef %param, i32 noundef %command) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cond = icmp eq i32 %call, 0
  br i1 %cond, label %entry.if.end20_crit_edge, label %if.end

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %debug, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end.do.end8_crit_edge, label %do.end

if.end.do.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ps2dev1, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %5, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.57, ptr noundef %dev, ptr noundef nonnull @.str.55, i32 noundef %command, i32 noundef 2) #12
  br label %do.end8

do.end8:                                          ; preds = %do.end, %if.end.do.end8_crit_edge
  tail call void @msleep(i32 noundef 500) #9
  %call.1 = tail call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef %param, i32 noundef %command) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cond.1 = icmp eq i32 %call.1, 0
  br i1 %cond.1, label %do.end8.if.end20_crit_edge, label %if.end.1

do.end8.if.end20_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.end.1:                                         ; preds = %do.end8
  %6 = ptrtoint ptr %debug to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %debug, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.1 = icmp eq i8 %7, 0
  br i1 %tobool.not.1, label %if.end.1.do.end8.1_crit_edge, label %do.end.1

if.end.1.do.end8.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8.1

do.end.1:                                         ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ps2dev1, align 4
  %dev.1 = getelementptr inbounds %struct.serio, ptr %9, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.57, ptr noundef %dev.1, ptr noundef nonnull @.str.55, i32 noundef %command, i32 noundef 1) #12
  br label %do.end8.1

do.end8.1:                                        ; preds = %do.end.1, %if.end.1.do.end8.1_crit_edge
  tail call void @msleep(i32 noundef 500) #9
  %call.2 = tail call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef %param, i32 noundef %command) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cond.2 = icmp eq i32 %call.2, 0
  br i1 %cond.2, label %do.end8.1.if.end20_crit_edge, label %if.end.2

do.end8.1.if.end20_crit_edge:                     ; preds = %do.end8.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.end.2:                                         ; preds = %do.end8.1
  %10 = ptrtoint ptr %debug to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %debug, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.2 = icmp eq i8 %11, 0
  br i1 %tobool.not.2, label %if.end.2.do.end8.2_crit_edge, label %do.end.2

if.end.2.do.end8.2_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8.2

do.end.2:                                         ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ps2dev1, align 4
  %dev.2 = getelementptr inbounds %struct.serio, ptr %13, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.57, ptr noundef %dev.2, ptr noundef nonnull @.str.55, i32 noundef %command, i32 noundef 0) #12
  br label %do.end8.2

do.end8.2:                                        ; preds = %do.end.2, %if.end.2.do.end8.2_crit_edge
  tail call void @msleep(i32 noundef 500) #9
  %14 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ps2dev1, align 4
  %dev19 = getelementptr inbounds %struct.serio, ptr %15, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.59, i32 noundef %command) #12
  br label %if.end20

if.end20:                                         ; preds = %do.end8.2, %do.end8.1.if.end20_crit_edge, %do.end8.if.end20_crit_edge, %entry.if.end20_crit_edge
  %call33 = phi i32 [ %call.2, %do.end8.2 ], [ 0, %do.end8.1.if.end20_crit_edge ], [ 0, %do.end8.if.end20_crit_edge ], [ 0, %entry.if.end20_crit_edge ]
  ret i32 %call33
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_create_software_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psmouse_smbus_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @elantech_set_absolute_mode(ptr noundef %psmouse) unnamed_addr #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !308
  %hw_version = getelementptr inbounds %struct.elantech_data, ptr %1, i32 0, i32 17, i32 3
  %3 = ptrtoint ptr %hw_version to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %hw_version, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.144)
  switch i8 %4, label %entry.do.body.preheader_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb5
    i8 3, label %sw.bb21
    i8 4, label %skip_readback_reg_10
  ]

entry.do.body.preheader_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.preheader

sw.bb:                                            ; preds = %entry
  %reg_10 = getelementptr inbounds %struct.elantech_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %reg_10 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 22, ptr %reg_10, align 1
  %reg_11 = getelementptr inbounds %struct.elantech_data, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %reg_11 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -113, ptr %reg_11, align 2
  %call = tail call fastcc i32 @elantech_write_reg(ptr noundef %psmouse, i8 noundef zeroext 16, i8 noundef zeroext 22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %sw.bb.do.end88_crit_edge

sw.bb.do.end88_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end88

lor.lhs.false:                                    ; preds = %sw.bb
  %8 = ptrtoint ptr %reg_11 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %reg_11, align 2
  %call3 = tail call fastcc i32 @elantech_write_reg(ptr noundef %psmouse, i8 noundef zeroext 17, i8 noundef zeroext %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %lor.lhs.false.do.body.preheader_crit_edge, label %lor.lhs.false.do.end88_crit_edge

lor.lhs.false.do.end88_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end88

lor.lhs.false.do.body.preheader_crit_edge:        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.preheader

sw.bb5:                                           ; preds = %entry
  %reg_106 = getelementptr inbounds %struct.elantech_data, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %reg_106 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 84, ptr %reg_106, align 1
  %reg_117 = getelementptr inbounds %struct.elantech_data, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %reg_117 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -120, ptr %reg_117, align 2
  %reg_21 = getelementptr inbounds %struct.elantech_data, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %reg_21 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 96, ptr %reg_21, align 4
  %call9 = tail call fastcc i32 @elantech_write_reg(ptr noundef %psmouse, i8 noundef zeroext 16, i8 noundef zeroext 84)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %lor.lhs.false11, label %sw.bb5.do.end88_crit_edge

sw.bb5.do.end88_crit_edge:                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end88

lor.lhs.false11:                                  ; preds = %sw.bb5
  %13 = ptrtoint ptr %reg_117 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %reg_117, align 2
  %call13 = tail call fastcc i32 @elantech_write_reg(ptr noundef %psmouse, i8 noundef zeroext 17, i8 noundef zeroext %14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %lor.lhs.false15, label %lor.lhs.false11.do.end88_crit_edge

lor.lhs.false11.do.end88_crit_edge:               ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end88

lor.lhs.false15:                                  ; preds = %lor.lhs.false11
  %15 = ptrtoint ptr %reg_21 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %reg_21, align 4
  %call17 = tail call fastcc i32 @elantech_write_reg(ptr noundef %psmouse, i8 noundef zeroext 33, i8 noundef zeroext %16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %lor.lhs.false15.do.body.preheader_crit_edge, label %lor.lhs.false15.do.end88_crit_edge

lor.lhs.false15.do.end88_crit_edge:               ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end88

lor.lhs.false15.do.body.preheader_crit_edge:      ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.preheader

sw.bb21:                                          ; preds = %entry
  %set_hw_resolution = getelementptr inbounds %struct.elantech_data, ptr %1, i32 0, i32 17, i32 22
  %17 = ptrtoint ptr %set_hw_resolution to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %set_hw_resolution, align 4, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool23.not = icmp eq i8 %18, 0
  %spec.select = select i1 %tobool23.not, i8 1, i8 11
  %19 = getelementptr inbounds %struct.elantech_data, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %spec.select, ptr %19, align 1
  %call29 = tail call fastcc i32 @elantech_write_reg(ptr noundef %psmouse, i8 noundef zeroext 16, i8 noundef zeroext %spec.select)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %sw.bb21.do.body.preheader_crit_edge, label %sw.bb21.do.end88_crit_edge

sw.bb21.do.end88_crit_edge:                       ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end88

sw.bb21.do.body.preheader_crit_edge:              ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.preheader

do.body.preheader:                                ; preds = %sw.bb21.do.body.preheader_crit_edge, %lor.lhs.false15.do.body.preheader_crit_edge, %lor.lhs.false.do.body.preheader_crit_edge, %entry.do.body.preheader_crit_edge
  %debug = getelementptr inbounds %struct.elantech_data, ptr %1, i32 0, i32 17, i32 2
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %call41 = call fastcc i32 @elantech_read_reg(ptr noundef %psmouse, i8 noundef zeroext 16, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cond = icmp eq i32 %call41, 0
  br i1 %cond, label %do.body.preheader.if.else66_crit_edge, label %if.end45

do.body.preheader.if.else66_crit_edge:            ; preds = %do.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else66

if.end45:                                         ; preds = %do.body.preheader
  %21 = ptrtoint ptr %debug to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %debug, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool48.not = icmp eq i8 %22, 0
  br i1 %tobool48.not, label %if.end45.do.end53_crit_edge, label %do.end

if.end45.do.end53_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end53

do.end:                                           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ps2dev, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %24, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.57, ptr noundef %dev, ptr noundef nonnull @.str.84, i32 noundef 4) #12
  br label %do.end53

do.end53:                                         ; preds = %do.end, %if.end45.do.end53_crit_edge
  tail call void @msleep(i32 noundef 2000) #9
  %call41.1 = call fastcc i32 @elantech_read_reg(ptr noundef %psmouse, i8 noundef zeroext 16, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.1)
  %cond.1 = icmp eq i32 %call41.1, 0
  br i1 %cond.1, label %do.end53.if.else66_crit_edge, label %if.end45.1

do.end53.if.else66_crit_edge:                     ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else66

if.end45.1:                                       ; preds = %do.end53
  %25 = ptrtoint ptr %debug to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %debug, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool48.not.1 = icmp eq i8 %26, 0
  br i1 %tobool48.not.1, label %if.end45.1.do.end53.1_crit_edge, label %do.end.1

if.end45.1.do.end53.1_crit_edge:                  ; preds = %if.end45.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end53.1

do.end.1:                                         ; preds = %if.end45.1
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ps2dev, align 4
  %dev.1 = getelementptr inbounds %struct.serio, ptr %28, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.57, ptr noundef %dev.1, ptr noundef nonnull @.str.84, i32 noundef 3) #12
  br label %do.end53.1

do.end53.1:                                       ; preds = %do.end.1, %if.end45.1.do.end53.1_crit_edge
  tail call void @msleep(i32 noundef 2000) #9
  %call41.2 = call fastcc i32 @elantech_read_reg(ptr noundef %psmouse, i8 noundef zeroext 16, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.2)
  %cond.2 = icmp eq i32 %call41.2, 0
  br i1 %cond.2, label %do.end53.1.if.else66_crit_edge, label %if.end45.2

do.end53.1.if.else66_crit_edge:                   ; preds = %do.end53.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else66

if.end45.2:                                       ; preds = %do.end53.1
  %29 = ptrtoint ptr %debug to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %debug, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool48.not.2 = icmp eq i8 %30, 0
  br i1 %tobool48.not.2, label %if.end45.2.do.end53.2_crit_edge, label %do.end.2

if.end45.2.do.end53.2_crit_edge:                  ; preds = %if.end45.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end53.2

do.end.2:                                         ; preds = %if.end45.2
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ps2dev, align 4
  %dev.2 = getelementptr inbounds %struct.serio, ptr %32, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.57, ptr noundef %dev.2, ptr noundef nonnull @.str.84, i32 noundef 2) #12
  br label %do.end53.2

do.end53.2:                                       ; preds = %do.end.2, %if.end45.2.do.end53.2_crit_edge
  tail call void @msleep(i32 noundef 2000) #9
  %call41.3 = call fastcc i32 @elantech_read_reg(ptr noundef %psmouse, i8 noundef zeroext 16, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.3)
  %cond.3 = icmp eq i32 %call41.3, 0
  br i1 %cond.3, label %do.end53.2.if.else66_crit_edge, label %if.end45.3

do.end53.2.if.else66_crit_edge:                   ; preds = %do.end53.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else66

if.end45.3:                                       ; preds = %do.end53.2
  %33 = ptrtoint ptr %debug to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %debug, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool48.not.3 = icmp eq i8 %34, 0
  br i1 %tobool48.not.3, label %if.end45.3.do.end53.3_crit_edge, label %do.end.3

if.end45.3.do.end53.3_crit_edge:                  ; preds = %if.end45.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end53.3

do.end.3:                                         ; preds = %if.end45.3
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ps2dev, align 4
  %dev.3 = getelementptr inbounds %struct.serio, ptr %36, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.57, ptr noundef %dev.3, ptr noundef nonnull @.str.84, i32 noundef 1) #12
  br label %do.end53.3

do.end53.3:                                       ; preds = %do.end.3, %if.end45.3.do.end53.3_crit_edge
  tail call void @msleep(i32 noundef 2000) #9
  %call41.4 = call fastcc i32 @elantech_read_reg(ptr noundef %psmouse, i8 noundef zeroext 16, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.4)
  %cond.4 = icmp eq i32 %call41.4, 0
  br i1 %cond.4, label %do.end53.3.if.else66_crit_edge, label %if.end45.4

do.end53.3.if.else66_crit_edge:                   ; preds = %do.end53.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else66

if.end45.4:                                       ; preds = %do.end53.3
  %37 = ptrtoint ptr %debug to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %debug, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool48.not.4 = icmp eq i8 %38, 0
  br i1 %tobool48.not.4, label %if.end45.4.do.end53.4_crit_edge, label %do.end.4

if.end45.4.do.end53.4_crit_edge:                  ; preds = %if.end45.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end53.4

do.end.4:                                         ; preds = %if.end45.4
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ps2dev, align 4
  %dev.4 = getelementptr inbounds %struct.serio, ptr %40, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.57, ptr noundef %dev.4, ptr noundef nonnull @.str.84, i32 noundef 0) #12
  br label %do.end53.4

do.end53.4:                                       ; preds = %do.end.4, %if.end45.4.do.end53.4_crit_edge
  tail call void @msleep(i32 noundef 2000) #9
  br label %do.end88.sink.split

if.else66:                                        ; preds = %do.end53.3.if.else66_crit_edge, %do.end53.2.if.else66_crit_edge, %do.end53.1.if.else66_crit_edge, %do.end53.if.else66_crit_edge, %do.body.preheader.if.else66_crit_edge
  %41 = ptrtoint ptr %hw_version to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %hw_version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %42)
  %cmp70 = icmp eq i8 %42, 1
  br i1 %cmp70, label %land.lhs.true, label %if.else66.if.end92_crit_edge

if.else66.if.end92_crit_edge:                     ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

land.lhs.true:                                    ; preds = %if.else66
  %43 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %val, align 1
  %45 = and i8 %44, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool73.not = icmp eq i8 %45, 0
  br i1 %tobool73.not, label %land.lhs.true.do.end88.sink.split_crit_edge, label %land.lhs.true.if.end92_crit_edge

land.lhs.true.if.end92_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

land.lhs.true.do.end88.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end88.sink.split

skip_readback_reg_10:                             ; preds = %entry
  %reg_07 = getelementptr inbounds %struct.elantech_data, ptr %1, i32 0, i32 2
  %46 = ptrtoint ptr %reg_07 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %reg_07, align 4
  %call35 = tail call fastcc i32 @elantech_write_reg(ptr noundef %psmouse, i8 noundef zeroext 7, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %skip_readback_reg_10.if.end92_crit_edge, label %skip_readback_reg_10.do.end88_crit_edge

skip_readback_reg_10.do.end88_crit_edge:          ; preds = %skip_readback_reg_10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end88

skip_readback_reg_10.if.end92_crit_edge:          ; preds = %skip_readback_reg_10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

do.end88.sink.split:                              ; preds = %land.lhs.true.do.end88.sink.split_crit_edge, %do.end53.4
  %.str.87.sink = phi ptr [ @.str.87, %do.end53.4 ], [ @.str.90, %land.lhs.true.do.end88.sink.split_crit_edge ]
  %47 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ps2dev, align 4
  %dev65 = getelementptr inbounds %struct.serio, ptr %48, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev65, ptr noundef nonnull %.str.87.sink) #12
  br label %do.end88

do.end88:                                         ; preds = %do.end88.sink.split, %skip_readback_reg_10.do.end88_crit_edge, %sw.bb21.do.end88_crit_edge, %lor.lhs.false15.do.end88_crit_edge, %lor.lhs.false11.do.end88_crit_edge, %sw.bb5.do.end88_crit_edge, %lor.lhs.false.do.end88_crit_edge, %sw.bb.do.end88_crit_edge
  %ps2dev89 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %49 = ptrtoint ptr %ps2dev89 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ps2dev89, align 4
  %dev91 = getelementptr inbounds %struct.serio, ptr %50, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev91, ptr noundef nonnull @.str.93) #12
  br label %if.end92

if.end92:                                         ; preds = %do.end88, %skip_readback_reg_10.if.end92_crit_edge, %land.lhs.true.if.end92_crit_edge, %if.else66.if.end92_crit_edge
  %rc.1137 = phi i32 [ -1, %do.end88 ], [ 0, %skip_readback_reg_10.if.end92_crit_edge ], [ 0, %if.else66.if.end92_crit_edge ], [ 0, %land.lhs.true.if.end92_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #9
  ret i32 %rc.1137
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @elantech_set_rate_restore_reg_07(ptr noundef %psmouse, i32 noundef %rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  %original_set_rate = getelementptr inbounds %struct.elantech_data, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %original_set_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %original_set_rate, align 4
  tail call void %3(ptr noundef %psmouse, i32 noundef %rate) #9
  %reg_07 = getelementptr inbounds %struct.elantech_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %reg_07 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reg_07, align 4
  %call = tail call fastcc i32 @elantech_write_reg(ptr noundef %psmouse, i8 noundef zeroext 7, i8 noundef zeroext %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %6 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ps2dev, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %7, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.99) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elantech_process_byte(ptr noundef %psmouse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pktcnt = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 9
  %0 = ptrtoint ptr %pktcnt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pktcnt, align 1
  %pktsize = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 10
  %2 = ptrtoint ptr %pktsize to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pktsize, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp = icmp ult i8 %1, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %psmouse, align 4
  %debug = getelementptr inbounds %struct.elantech_data, ptr %5, i32 0, i32 17, i32 2
  %6 = ptrtoint ptr %debug to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %debug, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp4 = icmp ugt i8 %7, 1
  br i1 %cmp4, label %if.then6, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %ps2dev.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %8 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ps2dev.i, align 4
  %dev.i = getelementptr inbounds %struct.serio, ptr %9, i32 0, i32 18
  %conv.i = zext i8 %3 to i32
  %packet.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.57, ptr noundef %dev.i, ptr noundef nonnull @.str.115, i32 noundef %conv.i, ptr noundef %packet.i) #12
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %hw_version = getelementptr inbounds %struct.elantech_data, ptr %5, i32 0, i32 17, i32 3
  %10 = ptrtoint ptr %hw_version to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hw_version, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.145)
  switch i8 %11, label %if.end7.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb15
    i8 3, label %sw.bb29
    i8 4, label %sw.bb33
  ]

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end7
  %paritycheck = getelementptr inbounds %struct.elantech_data, ptr %5, i32 0, i32 17, i32 18
  %13 = ptrtoint ptr %paritycheck to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %paritycheck, align 4, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %sw.bb.if.end14_crit_edge, label %land.lhs.true

sw.bb.if.end14_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true:                                    ; preds = %sw.bb
  %15 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %psmouse, align 4
  %packet1.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 7
  %fw_version.i = getelementptr inbounds %struct.elantech_data, ptr %16, i32 0, i32 17, i32 5
  %17 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fw_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %18)
  %cmp.i = icmp ult i32 %18, 131072
  %19 = ptrtoint ptr %packet1.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %packet1.i, align 1
  %..i = select i1 %cmp.i, i8 5, i8 4
  %and10.i = lshr i8 %20, %..i
  %p1.0.i = and i8 %and10.i, 1
  %21 = lshr i8 %20, 2
  %22 = and i8 %21, 1
  %arrayidx23.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 1
  %23 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx23.i, align 1
  %idxprom.i = zext i8 %24 to i32
  %arrayidx24.i = getelementptr %struct.elantech_data, ptr %16, i32 0, i32 16, i32 %idxprom.i
  %25 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx24.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %p1.0.i)
  %cmp27.i = icmp eq i8 %26, %p1.0.i
  br i1 %cmp27.i, label %land.lhs.true.i, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %.57.i = select i1 %cmp.i, i8 4, i8 5
  %27 = lshr i8 %20, %.57.i
  %p2.0.i = and i8 %27, 1
  %arrayidx30.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 2
  %28 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx30.i, align 1
  %idxprom31.i = zext i8 %29 to i32
  %arrayidx32.i = getelementptr %struct.elantech_data, ptr %16, i32 0, i32 16, i32 %idxprom31.i
  %30 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx32.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %p2.0.i)
  %cmp35.i = icmp eq i8 %31, %p2.0.i
  br i1 %cmp35.i, label %elantech_packet_check_v1.exit, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

elantech_packet_check_v1.exit:                    ; preds = %land.lhs.true.i
  %arrayidx38.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 3
  %32 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx38.i, align 1
  %idxprom39.i = zext i8 %33 to i32
  %arrayidx40.i = getelementptr %struct.elantech_data, ptr %16, i32 0, i32 16, i32 %idxprom39.i
  %34 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx40.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %22)
  %cmp43.i.not = icmp eq i8 %35, %22
  br i1 %cmp43.i.not, label %elantech_packet_check_v1.exit.if.end14_crit_edge, label %elantech_packet_check_v1.exit.cleanup_crit_edge

elantech_packet_check_v1.exit.cleanup_crit_edge:  ; preds = %elantech_packet_check_v1.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

elantech_packet_check_v1.exit.if.end14_crit_edge: ; preds = %elantech_packet_check_v1.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.end14:                                         ; preds = %elantech_packet_check_v1.exit.if.end14_crit_edge, %sw.bb.if.end14_crit_edge
  %dev1.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 1
  %36 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev1.i, align 4
  %38 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %psmouse, align 4
  %packet2.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 7
  %info.i = getelementptr inbounds %struct.elantech_data, ptr %39, i32 0, i32 17
  %fw_version.i63 = getelementptr inbounds %struct.elantech_data, ptr %39, i32 0, i32 17, i32 5
  %40 = ptrtoint ptr %fw_version.i63 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fw_version.i63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %41)
  %cmp.i64 = icmp ult i32 %41, 131072
  br i1 %cmp.i64, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 1
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i, align 1
  %conv.i65 = zext i8 %43 to i32
  %44 = lshr i32 %conv.i65, 7
  %and5.i = lshr i32 %conv.i65, 4
  %45 = and i32 %and5.i, 3
  %add.i = add nuw nsw i32 %45, %44
  br label %if.end.i

if.else.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %packet2.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %packet2.i, align 1
  %48 = lshr i8 %47, 6
  %49 = zext i8 %48 to i32
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %fingers.0.i = phi i32 [ %add.i, %if.then.i ], [ %49, %if.else.i ]
  %jumpy_cursor.i = getelementptr inbounds %struct.elantech_data, ptr %39, i32 0, i32 17, i32 19
  %50 = ptrtoint ptr %jumpy_cursor.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %jumpy_cursor.i, align 1, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i = icmp eq i8 %51, 0
  br i1 %tobool.not.i, label %if.end.i.if.end32.i_crit_edge, label %if.then12.i

if.end.i.if.end32.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %fingers.0.i)
  %cmp13.not.i = icmp eq i32 %fingers.0.i, 1
  %single_finger_reports17.i = getelementptr inbounds %struct.elantech_data, ptr %39, i32 0, i32 12
  br i1 %cmp13.not.i, label %if.else16.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %single_finger_reports17.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %single_finger_reports17.i, align 4
  br label %if.end32.i

if.else16.i:                                      ; preds = %if.then12.i
  %53 = ptrtoint ptr %single_finger_reports17.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %single_finger_reports17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %54)
  %cmp18.i = icmp ult i32 %54, 2
  br i1 %cmp18.i, label %if.then20.i, label %if.end32.thread.i

if.end32.thread.i:                                ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @input_event(ptr noundef %37, i32 noundef 1, i32 noundef 330, i32 noundef 1) #9
  br label %if.then36.i

if.then20.i:                                      ; preds = %if.else16.i
  %inc.i = add nuw nsw i32 %54, 1
  %55 = ptrtoint ptr %single_finger_reports17.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %inc.i, ptr %single_finger_reports17.i, align 4
  %debug.i = getelementptr inbounds %struct.elantech_data, ptr %39, i32 0, i32 17, i32 2
  %56 = ptrtoint ptr %debug.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %debug.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool23.not.i = icmp eq i8 %57, 0
  br i1 %tobool23.not.i, label %if.then20.i.cleanup_crit_edge, label %do.end.i

if.then20.i.cleanup_crit_edge:                    ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i:                                         ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #11
  %ps2dev.i66 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %58 = ptrtoint ptr %ps2dev.i66 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ps2dev.i66, align 4
  %dev26.i = getelementptr inbounds %struct.serio, ptr %59, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.57, ptr noundef %dev26.i, ptr noundef nonnull @.str.117) #12
  br label %cleanup

if.end32.i:                                       ; preds = %if.then15.i, %if.end.i.if.end32.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fingers.0.i)
  %cmp33.i = icmp ne i32 %fingers.0.i, 0
  %lnot.ext.i.i = zext i1 %cmp33.i to i32
  tail call void @input_event(ptr noundef %37, i32 noundef 1, i32 noundef 330, i32 noundef %lnot.ext.i.i) #9
  br i1 %cmp33.i, label %if.end32.i.if.then36.i_crit_edge, label %if.end32.i.if.end49.i_crit_edge

if.end32.i.if.end49.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49.i

if.end32.i.if.then36.i_crit_edge:                 ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36.i

if.then36.i:                                      ; preds = %if.end32.i.if.then36.i_crit_edge, %if.end32.thread.i
  %arrayidx37.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 1
  %60 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx37.i, align 1
  %62 = and i8 %61, 12
  %and39.i = zext i8 %62 to i32
  %shl.i = shl nuw nsw i32 %and39.i, 6
  %arrayidx40.i67 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 2
  %63 = ptrtoint ptr %arrayidx40.i67 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx40.i67, align 1
  %conv41.i = zext i8 %64 to i32
  %or.i = or i32 %shl.i, %conv41.i
  tail call void @input_event(ptr noundef %37, i32 noundef 3, i32 noundef 0, i32 noundef %or.i) #9
  %y_max.i = getelementptr inbounds %struct.elantech_data, ptr %39, i32 0, i32 13
  %65 = ptrtoint ptr %y_max.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %y_max.i, align 4
  %67 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx37.i, align 1
  %69 = and i8 %68, 3
  %and44.i = zext i8 %69 to i32
  %shl45.neg120.i = mul nsw i32 %and44.i, -256
  %arrayidx46.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 3
  %70 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx46.i, align 1
  %conv47.i = zext i8 %71 to i32
  %or48.neg.i = sub i32 %66, %conv47.i
  %sub.i = add i32 %or48.neg.i, %shl45.neg120.i
  tail call void @input_event(ptr noundef %37, i32 noundef 3, i32 noundef 1, i32 noundef %sub.i) #9
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then36.i, %if.end32.i.if.end49.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %fingers.0.i)
  %cmp50.i = icmp eq i32 %fingers.0.i, 1
  %lnot.ext.i111.i = zext i1 %cmp50.i to i32
  tail call void @input_event(ptr noundef %37, i32 noundef 1, i32 noundef 325, i32 noundef %lnot.ext.i111.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %fingers.0.i)
  %cmp52.i = icmp eq i32 %fingers.0.i, 2
  %lnot.ext.i112.i = zext i1 %cmp52.i to i32
  tail call void @input_event(ptr noundef %37, i32 noundef 1, i32 noundef 333, i32 noundef %lnot.ext.i112.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %fingers.0.i)
  %cmp54.i = icmp eq i32 %fingers.0.i, 3
  %lnot.ext.i113.i = zext i1 %cmp54.i to i32
  tail call void @input_event(ptr noundef %37, i32 noundef 1, i32 noundef 334, i32 noundef %lnot.ext.i113.i) #9
  %72 = ptrtoint ptr %packet2.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %packet2.i, align 1
  tail call void @psmouse_report_standard_buttons(ptr noundef %37, i8 noundef zeroext %73) #9
  %74 = ptrtoint ptr %fw_version.i63 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %fw_version.i63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %75)
  %cmp59.i = icmp ult i32 %75, 131072
  br i1 %cmp59.i, label %land.lhs.true.i68, label %if.end49.i.if.end73.i_crit_edge

if.end49.i.if.end73.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73.i

land.lhs.true.i68:                                ; preds = %if.end49.i
  %76 = ptrtoint ptr %info.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %info.i, align 4
  %78 = and i8 %77, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool65.not.i = icmp eq i8 %78, 0
  br i1 %tobool65.not.i, label %land.lhs.true.i68.if.end73.i_crit_edge, label %if.then66.i

land.lhs.true.i68.if.end73.i_crit_edge:           ; preds = %land.lhs.true.i68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73.i

if.then66.i:                                      ; preds = %land.lhs.true.i68
  call void @__sanitizer_cov_trace_pc() #11
  %79 = ptrtoint ptr %packet2.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %packet2.i, align 1
  %81 = lshr i8 %80, 6
  %.lobit.i = and i8 %81, 1
  %82 = zext i8 %.lobit.i to i32
  tail call void @input_event(ptr noundef %37, i32 noundef 1, i32 noundef 277, i32 noundef %82) #9
  %83 = ptrtoint ptr %packet2.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %packet2.i, align 1
  %.lobit119.i = lshr i8 %84, 7
  %85 = zext i8 %.lobit119.i to i32
  tail call void @input_event(ptr noundef %37, i32 noundef 1, i32 noundef 278, i32 noundef %85) #9
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.then66.i, %land.lhs.true.i68.if.end73.i_crit_edge, %if.end49.i.if.end73.i_crit_edge
  tail call void @input_event(ptr noundef %37, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  br label %cleanup

sw.bb15:                                          ; preds = %if.end7
  %packet1.i69 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 7
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %packet1.i69, ptr noundef nonnull dereferenceable(6) @elantech_debounce_check_v2.debounce_packet, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i70.not = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i70.not, label %sw.bb15.cleanup_crit_edge, label %if.end19

sw.bb15.cleanup_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %sw.bb15
  %paritycheck21 = getelementptr inbounds %struct.elantech_data, ptr %5, i32 0, i32 17, i32 18
  %86 = ptrtoint ptr %paritycheck21 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %paritycheck21, align 4, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool22.not = icmp eq i8 %87, 0
  br i1 %tobool22.not, label %if.end19.if.end28_crit_edge, label %land.lhs.true24

if.end19.if.end28_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

land.lhs.true24:                                  ; preds = %if.end19
  %88 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %psmouse, align 4
  %reports_pressure.i = getelementptr inbounds %struct.elantech_data, ptr %89, i32 0, i32 17, i32 20
  %90 = ptrtoint ptr %reports_pressure.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %reports_pressure.i, align 2, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool.not.i72 = icmp eq i8 %91, 0
  %92 = ptrtoint ptr %packet1.i69 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %packet1.i69, align 1
  br i1 %tobool.not.i72, label %if.end.i77, label %if.then.i74

if.then.i74:                                      ; preds = %land.lhs.true24
  %94 = and i8 %93, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %94)
  %cmp.i73 = icmp eq i8 %94, 4
  br i1 %cmp.i73, label %land.rhs.i75, label %if.then.i74.cleanup_crit_edge

if.then.i74.cleanup_crit_edge:                    ; preds = %if.then.i74
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.rhs.i75:                                     ; preds = %if.then.i74
  %arrayidx3.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 3
  %95 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx3.i, align 1
  %97 = and i8 %96, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %97)
  %cmp6.i = icmp eq i8 %97, 2
  br i1 %cmp6.i, label %land.rhs.i75.if.end28_crit_edge, label %land.rhs.i75.cleanup_crit_edge

land.rhs.i75.cleanup_crit_edge:                   ; preds = %land.rhs.i75
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.rhs.i75.if.end28_crit_edge:                  ; preds = %land.rhs.i75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.end.i77:                                       ; preds = %land.lhs.true24
  %conv9.i = zext i8 %93 to i32
  %and10.i76 = and i32 %conv9.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %and10.i76)
  %cmp11.i = icmp eq i32 %and10.i76, 128
  br i1 %cmp11.i, label %if.then13.i, label %if.end27.i

if.then13.i:                                      ; preds = %if.end.i77
  %and16.i = and i32 %conv9.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %and16.i)
  %cmp17.i = icmp eq i32 %and16.i, 12
  br i1 %cmp17.i, label %land.rhs19.i, label %if.then13.i.cleanup_crit_edge

if.then13.i.cleanup_crit_edge:                    ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.rhs19.i:                                     ; preds = %if.then13.i
  %arrayidx20.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 3
  %98 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx20.i, align 1
  %100 = and i8 %99, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %100)
  %cmp23.i = icmp eq i8 %100, 8
  br i1 %cmp23.i, label %land.rhs19.i.if.end28_crit_edge, label %land.rhs19.i.cleanup_crit_edge

land.rhs19.i.cleanup_crit_edge:                   ; preds = %land.rhs19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.rhs19.i.if.end28_crit_edge:                  ; preds = %land.rhs19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.end27.i:                                       ; preds = %if.end.i77
  %and30.i = and i32 %conv9.i, 60
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %and30.i)
  %cmp31.i = icmp eq i32 %and30.i, 60
  br i1 %cmp31.i, label %land.lhs.true.i78, label %if.end27.i.cleanup_crit_edge

if.end27.i.cleanup_crit_edge:                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i78:                                ; preds = %if.end27.i
  %arrayidx33.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 1
  %101 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx33.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %102)
  %cmp36.i = icmp ult i8 %102, 16
  br i1 %cmp36.i, label %land.lhs.true38.i, label %land.lhs.true.i78.cleanup_crit_edge

land.lhs.true.i78.cleanup_crit_edge:              ; preds = %land.lhs.true.i78
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true38.i:                                ; preds = %land.lhs.true.i78
  %arrayidx39.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 3
  %103 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx39.i, align 1
  %105 = and i8 %104, 62
  call void @__sanitizer_cov_trace_const_cmp1(i8 56, i8 %105)
  %cmp42.i = icmp eq i8 %105, 56
  br i1 %cmp42.i, label %elantech_packet_check_v2.exit, label %land.lhs.true38.i.cleanup_crit_edge

land.lhs.true38.i.cleanup_crit_edge:              ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

elantech_packet_check_v2.exit:                    ; preds = %land.lhs.true38.i
  %arrayidx45.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 4
  %106 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx45.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %107)
  %cmp48.i = icmp ult i8 %107, 16
  br i1 %cmp48.i, label %elantech_packet_check_v2.exit.if.end28_crit_edge, label %elantech_packet_check_v2.exit.cleanup_crit_edge

elantech_packet_check_v2.exit.cleanup_crit_edge:  ; preds = %elantech_packet_check_v2.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

elantech_packet_check_v2.exit.if.end28_crit_edge: ; preds = %elantech_packet_check_v2.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.end28:                                         ; preds = %elantech_packet_check_v2.exit.if.end28_crit_edge, %land.rhs19.i.if.end28_crit_edge, %land.rhs.i75.if.end28_crit_edge, %if.end19.if.end28_crit_edge
  %108 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %psmouse, align 4
  %dev1.i79 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 1
  %110 = ptrtoint ptr %dev1.i79 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev1.i79, align 4
  %112 = ptrtoint ptr %packet1.i69 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %packet1.i69, align 1
  %conv.i81 = zext i8 %113 to i32
  %114 = lshr i32 %conv.i81, 6
  %115 = zext i32 %114 to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %114, label %sw.epilog.i [
    i32 3, label %sw.bb.i
    i32 1, label %if.end28.sw.bb6.i_crit_edge
    i32 2, label %sw.bb36.i
  ]

if.end28.sw.bb6.i_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb6.i

sw.bb.i:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx3.i82 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 3
  %116 = ptrtoint ptr %arrayidx3.i82 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx3.i82, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %117)
  %tobool.not.i83 = icmp sgt i8 %117, -1
  %spec.select.i = select i1 %tobool.not.i83, i32 3, i32 4
  br label %sw.bb6.i

sw.bb6.i:                                         ; preds = %sw.bb.i, %if.end28.sw.bb6.i_crit_edge
  %fingers.0.i84 = phi i32 [ %114, %if.end28.sw.bb6.i_crit_edge ], [ %spec.select.i, %sw.bb.i ]
  %arrayidx7.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 1
  %118 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %119 to i32
  %and9.i = shl nuw nsw i32 %conv8.i, 8
  %shl.i85 = and i32 %and9.i, 3840
  %arrayidx10.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 2
  %120 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx10.i, align 1
  %conv11.i = zext i8 %121 to i32
  %or.i86 = or i32 %shl.i85, %conv11.i
  %y_max.i87 = getelementptr inbounds %struct.elantech_data, ptr %109, i32 0, i32 13
  %122 = ptrtoint ptr %y_max.i87 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %y_max.i87, align 4
  %arrayidx12.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 4
  %124 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx12.i, align 1
  %conv13.i = zext i8 %125 to i32
  %and14.i = shl nuw nsw i32 %conv13.i, 8
  %shl15.i = and i32 %and14.i, 3840
  %arrayidx16.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 5
  %126 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %127 to i32
  %128 = or i32 %shl15.i, %conv17.i
  %sub.i88 = sub i32 %123, %128
  %and21.i = and i32 %conv8.i, 240
  %129 = lshr i32 %conv13.i, 4
  %or26.i = or i32 %129, %and21.i
  %130 = lshr i8 %113, 2
  %131 = and i8 %130, 12
  %arrayidx31.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 3
  %132 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx31.i, align 1
  %134 = lshr i8 %133, 4
  %135 = and i8 %134, 3
  %or35133.i = or i8 %135, %131
  %or35.i = zext i8 %or35133.i to i32
  br label %sw.epilog.thread.i

sw.bb36.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %and39.i89 = shl nuw nsw i32 %conv.i81, 4
  %shl40.i = and i32 %and39.i89, 256
  %arrayidx41.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 1
  %136 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx41.i, align 1
  %conv42.i = zext i8 %137 to i32
  %or43.i = or i32 %shl40.i, %conv42.i
  %shl44.i = shl nuw nsw i32 %or43.i, 2
  %y_max45.i = getelementptr inbounds %struct.elantech_data, ptr %109, i32 0, i32 13
  %138 = ptrtoint ptr %y_max45.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %y_max45.i, align 4
  %and48.i = shl nuw nsw i32 %conv.i81, 3
  %shl49.i = and i32 %and48.i, 256
  %arrayidx50.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 2
  %140 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx50.i, align 1
  %conv51.i = zext i8 %141 to i32
  %or52.i = or i32 %shl49.i, %conv51.i
  %shl53.neg.i = mul nsw i32 %or52.i, -4
  %sub54.i = add i32 %shl53.neg.i, %139
  %arrayidx55.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 3
  %142 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx55.i, align 1
  %conv56.i = zext i8 %143 to i32
  %and57.i = shl nuw nsw i32 %conv56.i, 4
  %shl58.i = and i32 %and57.i, 256
  %arrayidx59.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 4
  %144 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx59.i, align 1
  %conv60.i = zext i8 %145 to i32
  %or61.i = or i32 %shl58.i, %conv60.i
  %shl62.i = shl nuw nsw i32 %or61.i, 2
  %and66.i = shl nuw nsw i32 %conv56.i, 3
  %shl67.i = and i32 %and66.i, 256
  %arrayidx68.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 5
  %146 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx68.i, align 1
  %conv69.i = zext i8 %147 to i32
  %or70.i = or i32 %shl67.i, %conv69.i
  %shl71.neg.i = mul nsw i32 %or70.i, -4
  %sub72.i = add i32 %shl71.neg.i, %139
  br label %sw.epilog.thread.i

sw.epilog.thread.i:                               ; preds = %sw.bb36.i, %sw.bb6.i
  %fingers.1.ph.i = phi i32 [ %fingers.0.i84, %sw.bb6.i ], [ 2, %sw.bb36.i ]
  %x1.0.ph.i = phi i32 [ %or.i86, %sw.bb6.i ], [ %shl44.i, %sw.bb36.i ]
  %y1.0.ph.i = phi i32 [ %sub.i88, %sw.bb6.i ], [ %sub54.i, %sw.bb36.i ]
  %x2.0.ph.i = phi i32 [ 0, %sw.bb6.i ], [ %shl62.i, %sw.bb36.i ]
  %y2.0.ph.i = phi i32 [ 0, %sw.bb6.i ], [ %sub72.i, %sw.bb36.i ]
  %width.0.ph.i = phi i32 [ %or35.i, %sw.bb6.i ], [ 7, %sw.bb36.i ]
  %pres.0.ph.i = phi i32 [ %or26.i, %sw.bb6.i ], [ 127, %sw.bb36.i ]
  tail call void @input_event(ptr noundef %111, i32 noundef 1, i32 noundef 330, i32 noundef 1) #9
  br label %if.then76.i

sw.epilog.i:                                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %113)
  %cmp.i90 = icmp ugt i8 %113, 63
  %lnot.ext.i.i91 = zext i1 %cmp.i90 to i32
  tail call void @input_event(ptr noundef %111, i32 noundef 1, i32 noundef 330, i32 noundef %lnot.ext.i.i91) #9
  br i1 %cmp.i90, label %sw.epilog.i.if.then76.i_crit_edge, label %sw.epilog.i.if.end77.i_crit_edge

sw.epilog.i.if.end77.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77.i

sw.epilog.i.if.then76.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then76.i

if.then76.i:                                      ; preds = %sw.epilog.i.if.then76.i_crit_edge, %sw.epilog.thread.i
  %pres.0160.i = phi i32 [ %pres.0.ph.i, %sw.epilog.thread.i ], [ 0, %sw.epilog.i.if.then76.i_crit_edge ]
  %width.0158.i = phi i32 [ %width.0.ph.i, %sw.epilog.thread.i ], [ 0, %sw.epilog.i.if.then76.i_crit_edge ]
  %y2.0156.i = phi i32 [ %y2.0.ph.i, %sw.epilog.thread.i ], [ 0, %sw.epilog.i.if.then76.i_crit_edge ]
  %x2.0154.i = phi i32 [ %x2.0.ph.i, %sw.epilog.thread.i ], [ 0, %sw.epilog.i.if.then76.i_crit_edge ]
  %y1.0152.i = phi i32 [ %y1.0.ph.i, %sw.epilog.thread.i ], [ 0, %sw.epilog.i.if.then76.i_crit_edge ]
  %x1.0150.i = phi i32 [ %x1.0.ph.i, %sw.epilog.thread.i ], [ 0, %sw.epilog.i.if.then76.i_crit_edge ]
  %fingers.1148.i = phi i32 [ %fingers.1.ph.i, %sw.epilog.thread.i ], [ %114, %sw.epilog.i.if.then76.i_crit_edge ]
  tail call void @input_event(ptr noundef %111, i32 noundef 3, i32 noundef 0, i32 noundef %x1.0150.i) #9
  tail call void @input_event(ptr noundef %111, i32 noundef 3, i32 noundef 1, i32 noundef %y1.0152.i) #9
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.then76.i, %sw.epilog.i.if.end77.i_crit_edge
  %pres.0159.i = phi i32 [ %pres.0160.i, %if.then76.i ], [ 0, %sw.epilog.i.if.end77.i_crit_edge ]
  %width.0157.i = phi i32 [ %width.0158.i, %if.then76.i ], [ 0, %sw.epilog.i.if.end77.i_crit_edge ]
  %y2.0155.i = phi i32 [ %y2.0156.i, %if.then76.i ], [ 0, %sw.epilog.i.if.end77.i_crit_edge ]
  %x2.0153.i = phi i32 [ %x2.0154.i, %if.then76.i ], [ 0, %sw.epilog.i.if.end77.i_crit_edge ]
  %y1.0151.i = phi i32 [ %y1.0152.i, %if.then76.i ], [ 0, %sw.epilog.i.if.end77.i_crit_edge ]
  %x1.0149.i = phi i32 [ %x1.0150.i, %if.then76.i ], [ 0, %sw.epilog.i.if.end77.i_crit_edge ]
  %fingers.1147.i = phi i32 [ %fingers.1148.i, %if.then76.i ], [ 0, %sw.epilog.i.if.end77.i_crit_edge ]
  tail call fastcc void @elantech_report_semi_mt_data(ptr noundef %111, i32 noundef %fingers.1147.i, i32 noundef %x1.0149.i, i32 noundef %y1.0151.i, i32 noundef %x2.0153.i, i32 noundef %y2.0155.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %fingers.1147.i)
  %cmp78.i = icmp eq i32 %fingers.1147.i, 1
  %lnot.ext.i134.i = zext i1 %cmp78.i to i32
  tail call void @input_event(ptr noundef %111, i32 noundef 1, i32 noundef 325, i32 noundef %lnot.ext.i134.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %fingers.1147.i)
  %cmp80.i = icmp eq i32 %fingers.1147.i, 2
  %lnot.ext.i135.i = zext i1 %cmp80.i to i32
  tail call void @input_event(ptr noundef %111, i32 noundef 1, i32 noundef 333, i32 noundef %lnot.ext.i135.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %fingers.1147.i)
  %cmp82.i = icmp eq i32 %fingers.1147.i, 3
  %lnot.ext.i136.i = zext i1 %cmp82.i to i32
  tail call void @input_event(ptr noundef %111, i32 noundef 1, i32 noundef 334, i32 noundef %lnot.ext.i136.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %fingers.1147.i)
  %cmp84.i = icmp eq i32 %fingers.1147.i, 4
  %lnot.ext.i137.i = zext i1 %cmp84.i to i32
  tail call void @input_event(ptr noundef %111, i32 noundef 1, i32 noundef 335, i32 noundef %lnot.ext.i137.i) #9
  %148 = ptrtoint ptr %packet1.i69 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %packet1.i69, align 1
  tail call void @psmouse_report_standard_buttons(ptr noundef %111, i8 noundef zeroext %149) #9
  %reports_pressure.i92 = getelementptr inbounds %struct.elantech_data, ptr %109, i32 0, i32 17, i32 20
  %150 = ptrtoint ptr %reports_pressure.i92 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %reports_pressure.i92, align 2, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool87.not.i = icmp eq i8 %151, 0
  br i1 %tobool87.not.i, label %if.end77.i.elantech_report_absolute_v2.exit_crit_edge, label %if.then88.i

if.end77.i.elantech_report_absolute_v2.exit_crit_edge: ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %elantech_report_absolute_v2.exit

if.then88.i:                                      ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @input_event(ptr noundef %111, i32 noundef 3, i32 noundef 24, i32 noundef %pres.0159.i) #9
  tail call void @input_event(ptr noundef %111, i32 noundef 3, i32 noundef 28, i32 noundef %width.0157.i) #9
  br label %elantech_report_absolute_v2.exit

elantech_report_absolute_v2.exit:                 ; preds = %if.then88.i, %if.end77.i.elantech_report_absolute_v2.exit_crit_edge
  tail call void @input_event(ptr noundef %111, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  br label %cleanup

sw.bb29:                                          ; preds = %if.end7
  %packet1.i93 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 7
  %bcmp.i94 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %packet1.i93, ptr noundef nonnull dereferenceable(6) @elantech_packet_check_v3.debounce_packet, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i94)
  %tobool.not.i95 = icmp eq i32 %bcmp.i94, 0
  br i1 %tobool.not.i95, label %sw.bb29.cleanup_crit_edge, label %if.end.i96

sw.bb29.cleanup_crit_edge:                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i96:                                       ; preds = %sw.bb29
  %152 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %psmouse, align 4
  %crc_enabled.i = getelementptr inbounds %struct.elantech_data, ptr %153, i32 0, i32 17, i32 21
  %154 = ptrtoint ptr %crc_enabled.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %crc_enabled.i, align 1, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool2.not.i = icmp eq i8 %155, 0
  br i1 %tobool2.not.i, label %if.else.i98, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i96
  %arrayidx.i97 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 3
  %156 = ptrtoint ptr %arrayidx.i97 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx.i97, align 1
  %158 = and i8 %157, 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %158)
  %switch.selectcmp.i = icmp eq i8 %158, 9
  %switch.select.i = select i1 %switch.selectcmp.i, i32 4, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %158)
  %switch.selectcmp56.i = icmp eq i8 %158, 8
  %.mux = select i1 %switch.selectcmp56.i, i32 3, i32 %switch.select.i
  %159 = and i8 %157, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %switch.not = icmp eq i8 %159, 0
  br i1 %switch.not, label %if.then3.i.cleanup_crit_edge, label %if.then3.i.sw.default_crit_edge

if.then3.i.sw.default_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default

if.then3.i.cleanup_crit_edge:                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.i98:                                      ; preds = %if.end.i96
  %160 = ptrtoint ptr %packet1.i93 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %packet1.i93, align 1
  %162 = trunc i8 %161 to i4
  %trunc.i = and i4 %162, -4
  %163 = zext i4 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %163, ptr @__sancov_gen_cov_switch_values.147)
  switch i4 %trunc.i, label %if.else.i98.if.end38.i_crit_edge [
    i4 4, label %land.lhs.true.i99
    i4 -4, label %land.lhs.true31.i
  ]

if.else.i98.if.end38.i_crit_edge:                 ; preds = %if.else.i98
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.i

land.lhs.true.i99:                                ; preds = %if.else.i98
  %arrayidx19.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 3
  %164 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %arrayidx19.i, align 1
  %166 = and i8 %165, -49
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %166)
  %cmp22.i = icmp eq i8 %166, 2
  br i1 %cmp22.i, label %land.lhs.true.i99.sw.default_crit_edge, label %land.lhs.true.i99.if.end38.i_crit_edge

land.lhs.true.i99.if.end38.i_crit_edge:           ; preds = %land.lhs.true.i99
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.i

land.lhs.true.i99.sw.default_crit_edge:           ; preds = %land.lhs.true.i99
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default

land.lhs.true31.i:                                ; preds = %if.else.i98
  %arrayidx32.i100 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 3
  %167 = ptrtoint ptr %arrayidx32.i100 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %arrayidx32.i100, align 1
  %169 = and i8 %168, -50
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %169)
  %cmp35.i101 = icmp eq i8 %169, 12
  br i1 %cmp35.i101, label %land.lhs.true31.i.sw.default_crit_edge, label %land.lhs.true31.i.if.end38.i_crit_edge

land.lhs.true31.i.if.end38.i_crit_edge:           ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.i

land.lhs.true31.i.sw.default_crit_edge:           ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default

if.end38.i:                                       ; preds = %land.lhs.true31.i.if.end38.i_crit_edge, %land.lhs.true.i99.if.end38.i_crit_edge, %if.else.i98.if.end38.i_crit_edge
  %arrayidx39.i102 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 3
  %170 = ptrtoint ptr %arrayidx39.i102 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %arrayidx39.i102, align 1
  %172 = and i8 %171, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %172)
  %cmp42.i103 = icmp eq i8 %172, 6
  br i1 %cmp42.i103, label %sw.bb32, label %if.end38.i.cleanup_crit_edge

if.end38.i.cleanup_crit_edge:                     ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb32:                                          ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @elantech_report_trackpoint(ptr noundef %psmouse)
  br label %cleanup

sw.default:                                       ; preds = %land.lhs.true31.i.sw.default_crit_edge, %land.lhs.true.i99.sw.default_crit_edge, %if.then3.i.sw.default_crit_edge
  %retval.0.i105152 = phi i32 [ 4, %land.lhs.true31.i.sw.default_crit_edge ], [ 3, %land.lhs.true.i99.sw.default_crit_edge ], [ %.mux, %if.then3.i.sw.default_crit_edge ]
  %dev1.i106 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 1
  %173 = ptrtoint ptr %dev1.i106 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %dev1.i106, align 4
  %175 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %psmouse, align 4
  %177 = ptrtoint ptr %packet1.i93 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %packet1.i93, align 1
  %179 = lshr i8 %178, 6
  %180 = zext i8 %179 to i32
  %181 = zext i32 %180 to i64
  call void @__sanitizer_cov_trace_switch(i64 %181, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %180, label %sw.default.sw.epilog.i127_crit_edge [
    i32 3, label %sw.default.sw.bb.i117_crit_edge
    i32 1, label %sw.default.sw.bb.i117_crit_edge167
    i32 2, label %sw.bb15.i
  ]

sw.default.sw.bb.i117_crit_edge167:               ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i117

sw.default.sw.bb.i117_crit_edge:                  ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i117

sw.default.sw.epilog.i127_crit_edge:              ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i127

sw.bb.i117:                                       ; preds = %sw.default.sw.bb.i117_crit_edge, %sw.default.sw.bb.i117_crit_edge167
  %arrayidx3.i108 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 1
  %182 = ptrtoint ptr %arrayidx3.i108 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %arrayidx3.i108, align 1
  %184 = and i8 %183, 15
  %and5.i109 = zext i8 %184 to i32
  %shl.i110 = shl nuw nsw i32 %and5.i109, 8
  %arrayidx6.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 2
  %185 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %arrayidx6.i, align 1
  %conv7.i = zext i8 %186 to i32
  %or.i111 = or i32 %shl.i110, %conv7.i
  %y_max.i112 = getelementptr inbounds %struct.elantech_data, ptr %176, i32 0, i32 13
  %187 = ptrtoint ptr %y_max.i112 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %y_max.i112, align 4
  %arrayidx8.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 4
  %189 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx8.i, align 1
  %191 = and i8 %190, 15
  %and10.i113 = zext i8 %191 to i32
  %shl11.neg156.i = mul nsw i32 %and10.i113, -256
  %arrayidx12.i114 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 5
  %192 = ptrtoint ptr %arrayidx12.i114 to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %arrayidx12.i114, align 1
  %conv13.i115 = zext i8 %193 to i32
  %or14.neg.i = sub i32 %188, %conv13.i115
  %sub.i116 = add i32 %or14.neg.i, %shl11.neg156.i
  br label %sw.epilog.i127

sw.bb15.i:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %retval.0.i105152)
  %cmp.i118 = icmp eq i32 %retval.0.i105152, 3
  br i1 %cmp.i118, label %if.then.i120, label %if.end.i125

if.then.i120:                                     ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx17.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 1
  %194 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %arrayidx17.i, align 1
  %196 = and i8 %195, 15
  %and19.i = zext i8 %196 to i32
  %shl20.i = shl nuw nsw i32 %and19.i, 8
  %arrayidx21.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 2
  %197 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %arrayidx21.i, align 1
  %conv22.i = zext i8 %198 to i32
  %or23.i = or i32 %shl20.i, %conv22.i
  %mt.i = getelementptr inbounds %struct.elantech_data, ptr %176, i32 0, i32 15
  %199 = ptrtoint ptr %mt.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %or23.i, ptr %mt.i, align 4
  %y_max25.i = getelementptr inbounds %struct.elantech_data, ptr %176, i32 0, i32 13
  %200 = ptrtoint ptr %y_max25.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %y_max25.i, align 4
  %arrayidx26.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 4
  %202 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %arrayidx26.i, align 1
  %204 = and i8 %203, 15
  %and28.i = zext i8 %204 to i32
  %shl29.neg155.i = mul nsw i32 %and28.i, -256
  %arrayidx30.i119 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 5
  %205 = ptrtoint ptr %arrayidx30.i119 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %arrayidx30.i119, align 1
  %conv31.i = zext i8 %206 to i32
  %or32.neg.i = sub i32 %201, %conv31.i
  %sub33.i = add i32 %or32.neg.i, %shl29.neg155.i
  %y.i = getelementptr inbounds %struct.elantech_data, ptr %176, i32 0, i32 15, i32 0, i32 1
  %207 = ptrtoint ptr %y.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %sub33.i, ptr %y.i, align 4
  br label %cleanup

if.end.i125:                                      ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #11
  %mt36.i = getelementptr inbounds %struct.elantech_data, ptr %176, i32 0, i32 15
  %208 = ptrtoint ptr %mt36.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %mt36.i, align 4
  %y41.i = getelementptr inbounds %struct.elantech_data, ptr %176, i32 0, i32 15, i32 0, i32 1
  %210 = ptrtoint ptr %y41.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %y41.i, align 4
  %arrayidx42.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 1
  %212 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %arrayidx42.i, align 1
  %214 = and i8 %213, 15
  %and44.i121 = zext i8 %214 to i32
  %shl45.i = shl nuw nsw i32 %and44.i121, 8
  %arrayidx46.i122 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 2
  %215 = ptrtoint ptr %arrayidx46.i122 to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %arrayidx46.i122, align 1
  %conv47.i123 = zext i8 %216 to i32
  %or48.i = or i32 %shl45.i, %conv47.i123
  %y_max49.i = getelementptr inbounds %struct.elantech_data, ptr %176, i32 0, i32 13
  %217 = ptrtoint ptr %y_max49.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %y_max49.i, align 4
  %arrayidx50.i124 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 4
  %219 = ptrtoint ptr %arrayidx50.i124 to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %arrayidx50.i124, align 1
  %221 = and i8 %220, 15
  %and52.i = zext i8 %221 to i32
  %shl53.neg154.i = mul nsw i32 %and52.i, -256
  %arrayidx54.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 5
  %222 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %arrayidx54.i, align 1
  %conv55.i = zext i8 %223 to i32
  %or56.neg.i = sub i32 %218, %conv55.i
  %sub57.i = add i32 %or56.neg.i, %shl53.neg154.i
  br label %sw.epilog.i127

sw.epilog.i127:                                   ; preds = %if.end.i125, %sw.bb.i117, %sw.default.sw.epilog.i127_crit_edge
  %x1.0.i = phi i32 [ 0, %sw.default.sw.epilog.i127_crit_edge ], [ %209, %if.end.i125 ], [ %or.i111, %sw.bb.i117 ]
  %y1.0.i = phi i32 [ 0, %sw.default.sw.epilog.i127_crit_edge ], [ %211, %if.end.i125 ], [ %sub.i116, %sw.bb.i117 ]
  %x2.0.i = phi i32 [ 0, %sw.default.sw.epilog.i127_crit_edge ], [ %or48.i, %if.end.i125 ], [ 0, %sw.bb.i117 ]
  %y2.0.i = phi i32 [ 0, %sw.default.sw.epilog.i127_crit_edge ], [ %sub57.i, %if.end.i125 ], [ 0, %sw.bb.i117 ]
  %arrayidx58.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 1
  %224 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %arrayidx58.i, align 1
  %226 = and i8 %225, -16
  %arrayidx61.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 4
  %227 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %arrayidx61.i, align 1
  %229 = lshr i8 %228, 4
  %or65148.i = or i8 %229, %226
  %or65.i = zext i8 %or65148.i to i32
  %230 = lshr i8 %178, 2
  %231 = and i8 %230, 12
  %arrayidx70.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 3
  %232 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %arrayidx70.i, align 1
  %234 = lshr i8 %233, 4
  %235 = and i8 %234, 3
  %or74149.i = or i8 %235, %231
  %or74.i = zext i8 %or74149.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %178)
  %cmp75.i = icmp ugt i8 %178, 63
  %lnot.ext.i.i126 = zext i1 %cmp75.i to i32
  tail call void @input_event(ptr noundef %174, i32 noundef 1, i32 noundef 330, i32 noundef %lnot.ext.i.i126) #9
  br i1 %cmp75.i, label %if.then79.i, label %sw.epilog.i127.if.end80.i_crit_edge

sw.epilog.i127.if.end80.i_crit_edge:              ; preds = %sw.epilog.i127
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80.i

if.then79.i:                                      ; preds = %sw.epilog.i127
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @input_event(ptr noundef %174, i32 noundef 3, i32 noundef 0, i32 noundef %x1.0.i) #9
  tail call void @input_event(ptr noundef %174, i32 noundef 3, i32 noundef 1, i32 noundef %y1.0.i) #9
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.then79.i, %sw.epilog.i127.if.end80.i_crit_edge
  tail call fastcc void @elantech_report_semi_mt_data(ptr noundef %174, i32 noundef %180, i32 noundef %x1.0.i, i32 noundef %y1.0.i, i32 noundef %x2.0.i, i32 noundef %y2.0.i) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %179)
  %cmp81.i = icmp eq i8 %179, 1
  %lnot.ext.i150.i = zext i1 %cmp81.i to i32
  tail call void @input_event(ptr noundef %174, i32 noundef 1, i32 noundef 325, i32 noundef %lnot.ext.i150.i) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %179)
  %cmp83.i = icmp eq i8 %179, 2
  %lnot.ext.i151.i = zext i1 %cmp83.i to i32
  tail call void @input_event(ptr noundef %174, i32 noundef 1, i32 noundef 333, i32 noundef %lnot.ext.i151.i) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %179)
  %cmp85.i = icmp eq i8 %179, 3
  %lnot.ext.i152.i = zext i1 %cmp85.i to i32
  tail call void @input_event(ptr noundef %174, i32 noundef 1, i32 noundef 334, i32 noundef %lnot.ext.i152.i) #9
  %fw_version.i.i = getelementptr inbounds %struct.elantech_data, ptr %176, i32 0, i32 17, i32 5
  %236 = ptrtoint ptr %fw_version.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %fw_version.i.i, align 4
  %and.i.i = and i32 %237, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i128 = icmp eq i32 %and.i.i, 0
  %238 = ptrtoint ptr %packet1.i93 to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %packet1.i93, align 1
  br i1 %tobool.not.i128, label %if.else.i129, label %if.then87.i

if.then87.i:                                      ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #11
  %240 = and i8 %239, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %240)
  %tobool.i.i = icmp ne i8 %240, 0
  %lnot.ext.i153.i = zext i1 %tobool.i.i to i32
  tail call void @input_event(ptr noundef %174, i32 noundef 1, i32 noundef 272, i32 noundef %lnot.ext.i153.i) #9
  br label %if.end92.i

if.else.i129:                                     ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @psmouse_report_standard_buttons(ptr noundef %174, i8 noundef zeroext %239) #9
  br label %if.end92.i

if.end92.i:                                       ; preds = %if.else.i129, %if.then87.i
  tail call void @input_event(ptr noundef %174, i32 noundef 3, i32 noundef 24, i32 noundef %or65.i) #9
  tail call void @input_event(ptr noundef %174, i32 noundef 3, i32 noundef 28, i32 noundef %or74.i) #9
  tail call void @input_event(ptr noundef %174, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  br label %cleanup

sw.bb33:                                          ; preds = %if.end7
  %241 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %psmouse, align 4
  %packet1.i130 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 7
  %arrayidx.i131 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 3
  %243 = ptrtoint ptr %arrayidx.i131 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %arrayidx.i131, align 1
  %and.i = and i8 %244, 3
  %245 = ptrtoint ptr %242 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %242, align 4
  %tobool.not.i132 = icmp ne ptr %246, null
  %247 = and i8 %244, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %247)
  %cmp.i133 = icmp eq i8 %247, 6
  %or.cond.i = select i1 %tobool.not.i132, i1 %cmp.i133, i1 false
  br i1 %or.cond.i, label %sw.bb36, label %if.end.i135

if.end.i135:                                      ; preds = %sw.bb33
  %crc_enabled.i134 = getelementptr inbounds %struct.elantech_data, ptr %242, i32 0, i32 17, i32 21
  %248 = ptrtoint ptr %crc_enabled.i134 to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %crc_enabled.i134, align 1, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %249)
  %tobool9.not.i = icmp eq i8 %249, 0
  br i1 %tobool9.not.i, label %if.else.i137, label %if.then10.i

if.then10.i:                                      ; preds = %if.end.i135
  %250 = and i8 %244, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %250)
  %cmp14.i = icmp eq i8 %250, 0
  br i1 %cmp14.i, label %if.then10.i.if.end47.i_crit_edge, label %if.then10.i.cleanup_crit_edge

if.then10.i.cleanup_crit_edge:                    ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.if.end47.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47.i

if.else.i137:                                     ; preds = %if.end.i135
  %fw_version.i136 = getelementptr inbounds %struct.elantech_data, ptr %242, i32 0, i32 17, i32 5
  %251 = ptrtoint ptr %fw_version.i136 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %fw_version.i136, align 4
  %253 = and i32 %252, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 458752, i32 %253)
  %cmp16.i = icmp eq i32 %253, 458752
  br i1 %cmp16.i, label %land.lhs.true18.i, label %if.else.i137.if.else31.i_crit_edge

if.else.i137.if.else31.i_crit_edge:               ; preds = %if.else.i137
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else31.i

land.lhs.true18.i:                                ; preds = %if.else.i137
  %arrayidx20.i138 = getelementptr %struct.elantech_data, ptr %242, i32 0, i32 17, i32 1, i32 1
  %254 = ptrtoint ptr %arrayidx20.i138 to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %arrayidx20.i138, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %255)
  %cmp22.i139 = icmp eq i8 %255, 42
  br i1 %cmp22.i139, label %if.then24.i, label %land.lhs.true18.i.if.else31.i_crit_edge

land.lhs.true18.i.if.else31.i_crit_edge:          ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else31.i

if.then24.i:                                      ; preds = %land.lhs.true18.i
  %256 = and i8 %244, 28
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %256)
  %cmp28.i = icmp eq i8 %256, 16
  br i1 %cmp28.i, label %if.then24.i.if.end47.i_crit_edge, label %if.then24.i.cleanup_crit_edge

if.then24.i.cleanup_crit_edge:                    ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then24.i.if.end47.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47.i

if.else31.i:                                      ; preds = %land.lhs.true18.i.if.else31.i_crit_edge, %if.else.i137.if.else31.i_crit_edge
  %257 = ptrtoint ptr %packet1.i130 to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %packet1.i130, align 1
  %259 = and i8 %258, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %259)
  %cmp35.i140 = icmp eq i8 %259, 0
  %260 = and i8 %244, 28
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %260)
  %cmp40.i = icmp eq i8 %260, 16
  %or.cond64.i = select i1 %cmp35.i140, i1 %cmp40.i, i1 false
  br i1 %or.cond64.i, label %if.else31.i.if.end47.i_crit_edge, label %if.else31.i.cleanup_crit_edge

if.else31.i.cleanup_crit_edge:                    ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else31.i.if.end47.i_crit_edge:                 ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.else31.i.if.end47.i_crit_edge, %if.then24.i.if.end47.i_crit_edge, %if.then10.i.if.end47.i_crit_edge
  %conv48.i = zext i8 %and.i to i32
  %261 = zext i32 %conv48.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %261, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %conv48.i, label %if.end47.i.cleanup_crit_edge [
    i32 0, label %sw.bb.i144
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
  ]

if.end47.i.cleanup_crit_edge:                     ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb36:                                          ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @elantech_report_trackpoint(ptr noundef %psmouse)
  br label %cleanup

sw.bb.i144:                                       ; preds = %if.end47.i
  %dev1.i.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 1
  %262 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %dev1.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 1
  %264 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %arrayidx.i.i, align 1
  %266 = and i8 %265, 31
  %and.i.i143 = zext i8 %266 to i32
  %and4.i.i = and i32 %and.i.i143, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %cmp5.i.i = icmp eq i32 %and4.i.i, 0
  br i1 %cmp5.i.i, label %if.then.i.i, label %sw.bb.i144.for.inc.i.i_crit_edge

sw.bb.i144.for.inc.i.i_crit_edge:                 ; preds = %sw.bb.i144
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %sw.bb.i144
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @input_event(ptr noundef %263, i32 noundef 3, i32 noundef 47, i32 noundef 0) #9
  %call.i.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %263, i32 noundef 0, i1 noundef zeroext false) #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %sw.bb.i144.for.inc.i.i_crit_edge
  %and4.1.i.i = and i32 %and.i.i143, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.1.i.i)
  %cmp5.1.i.i = icmp eq i32 %and4.1.i.i, 0
  br i1 %cmp5.1.i.i, label %if.then.1.i.i, label %for.inc.i.i.for.inc.1.i.i_crit_edge

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i.i

if.then.1.i.i:                                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @input_event(ptr noundef %263, i32 noundef 3, i32 noundef 47, i32 noundef 1) #9
  %call.1.i.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %263, i32 noundef 0, i1 noundef zeroext false) #9
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.then.1.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge
  %and4.2.i.i = and i32 %and.i.i143, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.2.i.i)
  %cmp5.2.i.i = icmp eq i32 %and4.2.i.i, 0
  br i1 %cmp5.2.i.i, label %if.then.2.i.i, label %for.inc.1.i.i.for.inc.2.i.i_crit_edge

for.inc.1.i.i.for.inc.2.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i.i

if.then.2.i.i:                                    ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @input_event(ptr noundef %263, i32 noundef 3, i32 noundef 47, i32 noundef 2) #9
  %call.2.i.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %263, i32 noundef 0, i1 noundef zeroext false) #9
  br label %for.inc.2.i.i

for.inc.2.i.i:                                    ; preds = %if.then.2.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge
  %and4.3.i.i = and i32 %and.i.i143, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.3.i.i)
  %cmp5.3.i.i = icmp eq i32 %and4.3.i.i, 0
  br i1 %cmp5.3.i.i, label %if.then.3.i.i, label %for.inc.2.i.i.for.inc.3.i.i_crit_edge

for.inc.2.i.i.for.inc.3.i.i_crit_edge:            ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3.i.i

if.then.3.i.i:                                    ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @input_event(ptr noundef %263, i32 noundef 3, i32 noundef 47, i32 noundef 3) #9
  %call.3.i.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %263, i32 noundef 0, i1 noundef zeroext false) #9
  br label %for.inc.3.i.i

for.inc.3.i.i:                                    ; preds = %if.then.3.i.i, %for.inc.2.i.i.for.inc.3.i.i_crit_edge
  %and4.4.i.i = and i32 %and.i.i143, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.4.i.i)
  %cmp5.4.i.i = icmp eq i32 %and4.4.i.i, 0
  br i1 %cmp5.4.i.i, label %if.then.4.i.i, label %for.inc.3.i.i.for.inc.4.i.i_crit_edge

for.inc.3.i.i.for.inc.4.i.i_crit_edge:            ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4.i.i

if.then.4.i.i:                                    ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @input_event(ptr noundef %263, i32 noundef 3, i32 noundef 47, i32 noundef 4) #9
  %call.4.i.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %263, i32 noundef 0, i1 noundef zeroext false) #9
  br label %for.inc.4.i.i

for.inc.4.i.i:                                    ; preds = %if.then.4.i.i, %for.inc.3.i.i.for.inc.4.i.i_crit_edge
  %267 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %dev1.i.i, align 4
  %269 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %psmouse, align 4
  %fw_version.i.i.i.i = getelementptr inbounds %struct.elantech_data, ptr %270, i32 0, i32 17, i32 5
  %271 = ptrtoint ptr %fw_version.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %fw_version.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %272, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %273 = ptrtoint ptr %packet1.i130 to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %packet1.i130, align 1
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %275 = and i8 %274, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %275)
  %tobool.i.i.i.i = icmp ne i8 %275, 0
  %lnot.ext.i.i.i.i = zext i1 %tobool.i.i.i.i to i32
  tail call void @input_event(ptr noundef %268, i32 noundef 1, i32 noundef 272, i32 noundef %lnot.ext.i.i.i.i) #9
  br label %sw.epilog.sink.split.i

if.else.i.i.i:                                    ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @psmouse_report_standard_buttons(ptr noundef %268, i8 noundef zeroext %274) #9
  br label %sw.epilog.sink.split.i

sw.bb1.i:                                         ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %244)
  %cmp.i.i = icmp ult i8 %244, 32
  br i1 %cmp.i.i, label %sw.bb1.i.cleanup_crit_edge, label %if.end.i.i

sw.bb1.i.cleanup_crit_edge:                       ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %sw.bb1.i
  %276 = lshr i8 %244, 5
  %277 = zext i8 %276 to i32
  %sub.i.i = add nsw i32 %277, -1
  %dev1.i7.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 1
  %278 = ptrtoint ptr %dev1.i7.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %dev1.i7.i, align 4
  %arrayidx4.i.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 1
  %280 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %arrayidx4.i.i, align 1
  %282 = and i8 %281, 15
  %and6.i.i = zext i8 %282 to i32
  %shl.i.i = shl nuw nsw i32 %and6.i.i, 8
  %arrayidx7.i.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 2
  %283 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %arrayidx7.i.i, align 1
  %conv8.i.i = zext i8 %284 to i32
  %or.i.i = or i32 %shl.i.i, %conv8.i.i
  %arrayidx9.i.i = getelementptr %struct.elantech_data, ptr %242, i32 0, i32 15, i32 %sub.i.i
  %285 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 %or.i.i, ptr %arrayidx9.i.i, align 4
  %y_max.i.i = getelementptr inbounds %struct.elantech_data, ptr %242, i32 0, i32 13
  %286 = ptrtoint ptr %y_max.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %y_max.i.i, align 4
  %arrayidx10.i.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 4
  %288 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %arrayidx10.i.i, align 1
  %290 = and i8 %289, 15
  %and12.i.i = zext i8 %290 to i32
  %shl13.neg71.i.i = mul nsw i32 %and12.i.i, -256
  %arrayidx14.i.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 5
  %291 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %arrayidx14.i.i, align 1
  %conv15.i.i = zext i8 %292 to i32
  %or16.neg.i.i = sub i32 %287, %conv15.i.i
  %sub17.i.i = add i32 %or16.neg.i.i, %shl13.neg71.i.i
  %y.i.i = getelementptr %struct.elantech_data, ptr %242, i32 0, i32 15, i32 %sub.i.i, i32 1
  %293 = ptrtoint ptr %y.i.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 %sub17.i.i, ptr %y.i.i, align 4
  %294 = load i8, ptr %arrayidx4.i.i, align 1
  %295 = and i8 %294, -16
  %296 = load i8, ptr %arrayidx10.i.i, align 1
  %297 = lshr i8 %296, 4
  %or2770.i.i = or i8 %297, %295
  %or27.i.i = zext i8 %or2770.i.i to i32
  %298 = ptrtoint ptr %packet1.i130 to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %packet1.i130, align 1
  %300 = lshr i8 %299, 4
  %301 = zext i8 %300 to i32
  tail call void @input_event(ptr noundef %279, i32 noundef 3, i32 noundef 47, i32 noundef %sub.i.i) #9
  %call.i8.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %279, i32 noundef 0, i1 noundef zeroext true) #9
  %302 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %arrayidx9.i.i, align 4
  tail call void @input_event(ptr noundef %279, i32 noundef 3, i32 noundef 53, i32 noundef %303) #9
  %304 = ptrtoint ptr %y.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %y.i.i, align 4
  tail call void @input_event(ptr noundef %279, i32 noundef 3, i32 noundef 54, i32 noundef %305) #9
  tail call void @input_event(ptr noundef %279, i32 noundef 3, i32 noundef 58, i32 noundef %or27.i.i) #9
  %width.i.i = getelementptr inbounds %struct.elantech_data, ptr %242, i32 0, i32 14
  %306 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %width.i.i, align 4
  %mul.i.i = mul i32 %307, %301
  tail call void @input_event(ptr noundef %279, i32 noundef 3, i32 noundef 48, i32 noundef %mul.i.i) #9
  tail call void @input_event(ptr noundef %279, i32 noundef 3, i32 noundef 28, i32 noundef %301) #9
  %308 = ptrtoint ptr %dev1.i7.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %dev1.i7.i, align 4
  %310 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %psmouse, align 4
  %fw_version.i.i.i9.i = getelementptr inbounds %struct.elantech_data, ptr %311, i32 0, i32 17, i32 5
  %312 = ptrtoint ptr %fw_version.i.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %fw_version.i.i.i9.i, align 4
  %and.i.i.i10.i = and i32 %313, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i10.i)
  %tobool.not.i.i11.i = icmp eq i32 %and.i.i.i10.i, 0
  %314 = ptrtoint ptr %packet1.i130 to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %packet1.i130, align 1
  br i1 %tobool.not.i.i11.i, label %if.else.i.i15.i, label %if.then.i.i14.i

if.then.i.i14.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %316 = and i8 %315, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %316)
  %tobool.i.i.i12.i = icmp ne i8 %316, 0
  %lnot.ext.i.i.i13.i = zext i1 %tobool.i.i.i12.i to i32
  tail call void @input_event(ptr noundef %309, i32 noundef 1, i32 noundef 272, i32 noundef %lnot.ext.i.i.i13.i) #9
  br label %sw.epilog.sink.split.i

if.else.i.i15.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @psmouse_report_standard_buttons(ptr noundef %309, i8 noundef zeroext %315) #9
  br label %sw.epilog.sink.split.i

sw.bb2.i:                                         ; preds = %if.end47.i
  %dev1.i16.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 1
  %317 = ptrtoint ptr %dev1.i16.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %dev1.i16.i, align 4
  %319 = ptrtoint ptr %packet1.i130 to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %packet1.i130, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %320)
  %cmp.i18.i = icmp ult i8 %320, 32
  br i1 %cmp.i18.i, label %sw.bb2.i.cleanup_crit_edge, label %if.end.i25.i

sw.bb2.i.cleanup_crit_edge:                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i25.i:                                     ; preds = %sw.bb2.i
  %conv.i.i = zext i8 %320 to i32
  %321 = lshr i32 %conv.i.i, 5
  %sub.i19.i = add nsw i32 %321, -1
  %and11.i.i = and i32 %conv.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %tobool.not.i.i = icmp eq i32 %and11.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 1, i32 5
  %arrayidx12.i.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 1
  %322 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %arrayidx12.i.i, align 1
  %conv13.i.i = sext i8 %323 to i32
  %arrayidx14.i21.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 2
  %324 = ptrtoint ptr %arrayidx14.i21.i to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %arrayidx14.i21.i, align 1
  %conv15.i22.i = sext i8 %325 to i32
  %arrayidx16.i.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 4
  %326 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %arrayidx16.i.i, align 1
  %arrayidx18.i.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 5
  %328 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %arrayidx18.i.i, align 1
  %mul.i23.i = mul nsw i32 %cond.i.i, %conv13.i.i
  %arrayidx20.i.i = getelementptr %struct.elantech_data, ptr %242, i32 0, i32 15, i32 %sub.i19.i
  %330 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %arrayidx20.i.i, align 4
  %add.i.i = add i32 %331, %mul.i23.i
  store i32 %add.i.i, ptr %arrayidx20.i.i, align 4
  %mul21.i.i = mul nsw i32 %cond.i.i, %conv15.i22.i
  %y.i24.i = getelementptr %struct.elantech_data, ptr %242, i32 0, i32 15, i32 %sub.i19.i, i32 1
  %332 = ptrtoint ptr %y.i24.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %y.i24.i, align 4
  %sub24.i.i = sub i32 %333, %mul21.i.i
  store i32 %sub24.i.i, ptr %y.i24.i, align 4
  tail call void @input_event(ptr noundef %318, i32 noundef 3, i32 noundef 47, i32 noundef %sub.i19.i) #9
  %334 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %arrayidx20.i.i, align 4
  tail call void @input_event(ptr noundef %318, i32 noundef 3, i32 noundef 53, i32 noundef %335) #9
  %336 = ptrtoint ptr %y.i24.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %y.i24.i, align 4
  tail call void @input_event(ptr noundef %318, i32 noundef 3, i32 noundef 54, i32 noundef %337) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %244)
  %cmp31.not.i.i = icmp ult i8 %244, 32
  br i1 %cmp31.not.i.i, label %if.end.i25.i.if.end50.i.i_crit_edge, label %if.then33.i.i

if.end.i25.i.if.end50.i.i_crit_edge:              ; preds = %if.end.i25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50.i.i

if.then33.i.i:                                    ; preds = %if.end.i25.i
  call void @__sanitizer_cov_trace_pc() #11
  %338 = lshr i8 %244, 5
  %339 = zext i8 %338 to i32
  %sub8.i.i = add nsw i32 %339, -1
  %conv19.i.i = sext i8 %329 to i32
  %conv17.i.i = sext i8 %327 to i32
  %mul34.i.i = mul nsw i32 %cond.i.i, %conv17.i.i
  %arrayidx36.i.i = getelementptr %struct.elantech_data, ptr %242, i32 0, i32 15, i32 %sub8.i.i
  %340 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %arrayidx36.i.i, align 4
  %add38.i.i = add i32 %341, %mul34.i.i
  store i32 %add38.i.i, ptr %arrayidx36.i.i, align 4
  %mul39.i.i = mul nsw i32 %cond.i.i, %conv19.i.i
  %y42.i.i = getelementptr %struct.elantech_data, ptr %242, i32 0, i32 15, i32 %sub8.i.i, i32 1
  %342 = ptrtoint ptr %y42.i.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %y42.i.i, align 4
  %sub43.i.i = sub i32 %343, %mul39.i.i
  store i32 %sub43.i.i, ptr %y42.i.i, align 4
  tail call void @input_event(ptr noundef %318, i32 noundef 3, i32 noundef 47, i32 noundef %sub8.i.i) #9
  %344 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %arrayidx36.i.i, align 4
  tail call void @input_event(ptr noundef %318, i32 noundef 3, i32 noundef 53, i32 noundef %345) #9
  %346 = ptrtoint ptr %y42.i.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %y42.i.i, align 4
  tail call void @input_event(ptr noundef %318, i32 noundef 3, i32 noundef 54, i32 noundef %347) #9
  br label %if.end50.i.i

if.end50.i.i:                                     ; preds = %if.then33.i.i, %if.end.i25.i.if.end50.i.i_crit_edge
  %348 = ptrtoint ptr %dev1.i16.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %dev1.i16.i, align 4
  %350 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %psmouse, align 4
  %fw_version.i.i.i26.i = getelementptr inbounds %struct.elantech_data, ptr %351, i32 0, i32 17, i32 5
  %352 = ptrtoint ptr %fw_version.i.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %fw_version.i.i.i26.i, align 4
  %and.i.i.i27.i = and i32 %353, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i27.i)
  %tobool.not.i.i28.i = icmp eq i32 %and.i.i.i27.i, 0
  %354 = ptrtoint ptr %packet1.i130 to i32
  call void @__asan_load1_noabort(i32 %354)
  %355 = load i8, ptr %packet1.i130, align 1
  br i1 %tobool.not.i.i28.i, label %if.else.i.i32.i, label %if.then.i.i31.i

if.then.i.i31.i:                                  ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %356 = and i8 %355, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %356)
  %tobool.i.i.i29.i = icmp ne i8 %356, 0
  %lnot.ext.i.i.i30.i = zext i1 %tobool.i.i.i29.i to i32
  tail call void @input_event(ptr noundef %349, i32 noundef 1, i32 noundef 272, i32 noundef %lnot.ext.i.i.i30.i) #9
  br label %sw.epilog.sink.split.i

if.else.i.i32.i:                                  ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @psmouse_report_standard_buttons(ptr noundef %349, i8 noundef zeroext %355) #9
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %if.else.i.i32.i, %if.then.i.i31.i, %if.else.i.i15.i, %if.then.i.i14.i, %if.else.i.i.i, %if.then.i.i.i
  %.sink34.i = phi ptr [ %268, %if.then.i.i.i ], [ %268, %if.else.i.i.i ], [ %309, %if.else.i.i15.i ], [ %309, %if.then.i.i14.i ], [ %349, %if.else.i.i32.i ], [ %349, %if.then.i.i31.i ]
  tail call void @input_mt_report_pointer_emulation(ptr noundef %.sink34.i, i1 noundef zeroext true) #9
  tail call void @input_event(ptr noundef %.sink34.i, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.sink.split.i, %sw.bb2.i.cleanup_crit_edge, %sw.bb1.i.cleanup_crit_edge, %sw.bb36, %if.end47.i.cleanup_crit_edge, %if.else31.i.cleanup_crit_edge, %if.then24.i.cleanup_crit_edge, %if.then10.i.cleanup_crit_edge, %if.end92.i, %if.then.i120, %sw.bb32, %if.end38.i.cleanup_crit_edge, %if.then3.i.cleanup_crit_edge, %sw.bb29.cleanup_crit_edge, %elantech_report_absolute_v2.exit, %elantech_packet_check_v2.exit.cleanup_crit_edge, %land.lhs.true38.i.cleanup_crit_edge, %land.lhs.true.i78.cleanup_crit_edge, %if.end27.i.cleanup_crit_edge, %land.rhs19.i.cleanup_crit_edge, %if.then13.i.cleanup_crit_edge, %land.rhs.i75.cleanup_crit_edge, %if.then.i74.cleanup_crit_edge, %sw.bb15.cleanup_crit_edge, %if.end73.i, %do.end.i, %if.then20.i.cleanup_crit_edge, %elantech_packet_check_v1.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 0, %elantech_packet_check_v1.exit.cleanup_crit_edge ], [ 2, %sw.bb15.cleanup_crit_edge ], [ 0, %elantech_packet_check_v2.exit.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then.i74.cleanup_crit_edge ], [ 0, %if.then13.i.cleanup_crit_edge ], [ 0, %land.lhs.true38.i.cleanup_crit_edge ], [ 0, %land.lhs.true.i78.cleanup_crit_edge ], [ 0, %if.end27.i.cleanup_crit_edge ], [ 0, %if.end38.i.cleanup_crit_edge ], [ 0, %if.else31.i.cleanup_crit_edge ], [ 0, %if.then10.i.cleanup_crit_edge ], [ 0, %if.then24.i.cleanup_crit_edge ], [ 0, %if.end47.i.cleanup_crit_edge ], [ 0, %if.then3.i.cleanup_crit_edge ], [ 2, %sw.bb29.cleanup_crit_edge ], [ 2, %sw.epilog.sink.split.i ], [ 2, %sw.bb2.i.cleanup_crit_edge ], [ 2, %sw.bb1.i.cleanup_crit_edge ], [ 2, %if.end92.i ], [ 2, %if.then.i120 ], [ 2, %if.end73.i ], [ 2, %do.end.i ], [ 2, %if.then20.i.cleanup_crit_edge ], [ 2, %sw.bb36 ], [ 2, %sw.bb32 ], [ 2, %if.end7.cleanup_crit_edge ], [ 2, %elantech_report_absolute_v2.exit ], [ 0, %land.rhs.i75.cleanup_crit_edge ], [ 0, %land.rhs19.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @elantech_disconnect(ptr noundef %psmouse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  tail call void @psmouse_smbus_cleanup(ptr noundef %psmouse) #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @input_unregister_device(ptr noundef nonnull %3) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %4 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ps2dev, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %5, i32 0, i32 18
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @elantech_attr_group) #9
  %6 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %psmouse, align 4
  tail call void @kfree(ptr noundef %7) #9
  %8 = ptrtoint ptr %psmouse to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %psmouse, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elantech_reconnect(ptr noundef %psmouse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @psmouse_reset(ptr noundef %psmouse) #9
  %call1 = tail call i32 @elantech_detect(ptr noundef %psmouse, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @elantech_set_absolute_mode(ptr noundef %psmouse)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.return_crit_edge, label %do.end

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %0 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps2dev, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.121) #12
  br label %return

return:                                           ; preds = %do.end, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @elantech_write_reg(ptr noundef %psmouse, i8 noundef zeroext %reg, i8 noundef zeroext %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %reg to i32
  %0 = add i8 %reg, -39
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %0)
  %1 = icmp ult i8 %0, -32
  %2 = add i8 %reg, -18
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %2)
  %3 = icmp ult i8 %2, 14
  %or.cond = or i1 %1, %3
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end12

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %entry
  %4 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %psmouse, align 4
  %hw_version = getelementptr inbounds %struct.elantech_data, ptr %5, i32 0, i32 17, i32 3
  %6 = ptrtoint ptr %hw_version to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hw_version, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.150)
  switch i8 %7, label %if.end12.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb28
    i8 3, label %sw.bb53
    i8 4, label %sw.bb78
  ]

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end12
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %call = tail call i32 @ps2_sliced_command(ptr noundef %ps2dev, i8 noundef zeroext 17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false14, label %sw.bb.do.end_crit_edge

sw.bb.do.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false14:                                  ; preds = %sw.bb
  %call16 = tail call i32 @ps2_sliced_command(ptr noundef %ps2dev, i8 noundef zeroext %reg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %lor.lhs.false18, label %lor.lhs.false14.do.end_crit_edge

lor.lhs.false14.do.end_crit_edge:                 ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false18:                                  ; preds = %lor.lhs.false14
  %call20 = tail call i32 @ps2_sliced_command(ptr noundef %ps2dev, i8 noundef zeroext %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %lor.lhs.false22, label %lor.lhs.false18.do.end_crit_edge

lor.lhs.false18.do.end_crit_edge:                 ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false22:                                  ; preds = %lor.lhs.false18
  %call24 = tail call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef null, i32 noundef 230) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %lor.lhs.false22.cleanup_crit_edge, label %lor.lhs.false22.do.end_crit_edge

lor.lhs.false22.do.end_crit_edge:                 ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false22.cleanup_crit_edge:                ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb28:                                          ; preds = %if.end12
  %call29 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef null, i32 noundef 248)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %lor.lhs.false31, label %sw.bb28.do.end_crit_edge

sw.bb28.do.end_crit_edge:                         ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false31:                                  ; preds = %sw.bb28
  %call32 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef null, i32 noundef 17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %lor.lhs.false34, label %lor.lhs.false31.do.end_crit_edge

lor.lhs.false31.do.end_crit_edge:                 ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false34:                                  ; preds = %lor.lhs.false31
  %call35 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef null, i32 noundef 248)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %lor.lhs.false37, label %lor.lhs.false34.do.end_crit_edge

lor.lhs.false34.do.end_crit_edge:                 ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false37:                                  ; preds = %lor.lhs.false34
  %call39 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef null, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %lor.lhs.false41, label %lor.lhs.false37.do.end_crit_edge

lor.lhs.false37.do.end_crit_edge:                 ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false41:                                  ; preds = %lor.lhs.false37
  %call42 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef null, i32 noundef 248)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %lor.lhs.false44, label %lor.lhs.false41.do.end_crit_edge

lor.lhs.false41.do.end_crit_edge:                 ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false44:                                  ; preds = %lor.lhs.false41
  %conv45 = zext i8 %val to i32
  %call46 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef null, i32 noundef %conv45)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %lor.lhs.false48, label %lor.lhs.false44.do.end_crit_edge

lor.lhs.false44.do.end_crit_edge:                 ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false48:                                  ; preds = %lor.lhs.false44
  %call49 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef null, i32 noundef 230)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %lor.lhs.false48.cleanup_crit_edge, label %lor.lhs.false48.do.end_crit_edge

lor.lhs.false48.do.end_crit_edge:                 ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false48.cleanup_crit_edge:                ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb53:                                          ; preds = %if.end12
  %call54 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef null, i32 noundef 248)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %lor.lhs.false56, label %sw.bb53.do.end_crit_edge

sw.bb53.do.end_crit_edge:                         ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false56:                                  ; preds = %sw.bb53
  %call57 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %lor.lhs.false59, label %lor.lhs.false56.do.end_crit_edge

lor.lhs.false56.do.end_crit_edge:                 ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false59:                                  ; preds = %lor.lhs.false56
  %call60 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef null, i32 noundef 248)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %lor.lhs.false62, label %lor.lhs.false59.do.end_crit_edge

lor.lhs.false59.do.end_crit_edge:                 ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false62:                                  ; preds = %lor.lhs.false59
  %call64 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef null, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %lor.lhs.false66, label %lor.lhs.false62.do.end_crit_edge

lor.lhs.false62.do.end_crit_edge:                 ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false66:                                  ; preds = %lor.lhs.false62
  %call67 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef null, i32 noundef 248)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %lor.lhs.false69, label %lor.lhs.false66.do.end_crit_edge

lor.lhs.false66.do.end_crit_edge:                 ; preds = %lor.lhs.false66
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false69:                                  ; preds = %lor.lhs.false66
  %conv70 = zext i8 %val to i32
  %call71 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef null, i32 noundef %conv70)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %lor.lhs.false73, label %lor.lhs.false69.do.end_crit_edge

lor.lhs.false69.do.end_crit_edge:                 ; preds = %lor.lhs.false69
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false73:                                  ; preds = %lor.lhs.false69
  %call74 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef null, i32 noundef 230)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %lor.lhs.false73.cleanup_crit_edge, label %lor.lhs.false73.do.end_crit_edge

lor.lhs.false73.do.end_crit_edge:                 ; preds = %lor.lhs.false73
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false73.cleanup_crit_edge:                ; preds = %lor.lhs.false73
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb78:                                          ; preds = %if.end12
  %call79 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef null, i32 noundef 248)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %lor.lhs.false81, label %sw.bb78.do.end_crit_edge

sw.bb78.do.end_crit_edge:                         ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false81:                                  ; preds = %sw.bb78
  %call82 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %lor.lhs.false84, label %lor.lhs.false81.do.end_crit_edge

lor.lhs.false81.do.end_crit_edge:                 ; preds = %lor.lhs.false81
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false84:                                  ; preds = %lor.lhs.false81
  %call85 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef null, i32 noundef 248)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %lor.lhs.false87, label %lor.lhs.false84.do.end_crit_edge

lor.lhs.false84.do.end_crit_edge:                 ; preds = %lor.lhs.false84
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false87:                                  ; preds = %lor.lhs.false84
  %call89 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef null, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %lor.lhs.false91, label %lor.lhs.false87.do.end_crit_edge

lor.lhs.false87.do.end_crit_edge:                 ; preds = %lor.lhs.false87
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false91:                                  ; preds = %lor.lhs.false87
  %call92 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef null, i32 noundef 248)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %lor.lhs.false94, label %lor.lhs.false91.do.end_crit_edge

lor.lhs.false91.do.end_crit_edge:                 ; preds = %lor.lhs.false91
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false94:                                  ; preds = %lor.lhs.false91
  %call95 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %lor.lhs.false97, label %lor.lhs.false94.do.end_crit_edge

lor.lhs.false94.do.end_crit_edge:                 ; preds = %lor.lhs.false94
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false97:                                  ; preds = %lor.lhs.false94
  %call98 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef null, i32 noundef 248)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %lor.lhs.false100, label %lor.lhs.false97.do.end_crit_edge

lor.lhs.false97.do.end_crit_edge:                 ; preds = %lor.lhs.false97
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false100:                                 ; preds = %lor.lhs.false97
  %conv101 = zext i8 %val to i32
  %call102 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef null, i32 noundef %conv101)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %lor.lhs.false104, label %lor.lhs.false100.do.end_crit_edge

lor.lhs.false100.do.end_crit_edge:                ; preds = %lor.lhs.false100
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false104:                                 ; preds = %lor.lhs.false100
  %call105 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef null, i32 noundef 230)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %lor.lhs.false104.cleanup_crit_edge, label %lor.lhs.false104.do.end_crit_edge

lor.lhs.false104.do.end_crit_edge:                ; preds = %lor.lhs.false104
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false104.cleanup_crit_edge:               ; preds = %lor.lhs.false104
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false104.do.end_crit_edge, %lor.lhs.false100.do.end_crit_edge, %lor.lhs.false97.do.end_crit_edge, %lor.lhs.false94.do.end_crit_edge, %lor.lhs.false91.do.end_crit_edge, %lor.lhs.false87.do.end_crit_edge, %lor.lhs.false84.do.end_crit_edge, %lor.lhs.false81.do.end_crit_edge, %sw.bb78.do.end_crit_edge, %lor.lhs.false73.do.end_crit_edge, %lor.lhs.false69.do.end_crit_edge, %lor.lhs.false66.do.end_crit_edge, %lor.lhs.false62.do.end_crit_edge, %lor.lhs.false59.do.end_crit_edge, %lor.lhs.false56.do.end_crit_edge, %sw.bb53.do.end_crit_edge, %lor.lhs.false48.do.end_crit_edge, %lor.lhs.false44.do.end_crit_edge, %lor.lhs.false41.do.end_crit_edge, %lor.lhs.false37.do.end_crit_edge, %lor.lhs.false34.do.end_crit_edge, %lor.lhs.false31.do.end_crit_edge, %sw.bb28.do.end_crit_edge, %lor.lhs.false22.do.end_crit_edge, %lor.lhs.false18.do.end_crit_edge, %lor.lhs.false14.do.end_crit_edge, %sw.bb.do.end_crit_edge
  %ps2dev111 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %9 = ptrtoint ptr %ps2dev111 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ps2dev111, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %10, i32 0, i32 18
  %conv113 = zext i8 %val to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.95, i32 noundef %conv, i32 noundef %conv113) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lor.lhs.false104.cleanup_crit_edge, %lor.lhs.false73.cleanup_crit_edge, %lor.lhs.false48.cleanup_crit_edge, %lor.lhs.false22.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %do.end ], [ 0, %lor.lhs.false104.cleanup_crit_edge ], [ 0, %lor.lhs.false73.cleanup_crit_edge ], [ 0, %lor.lhs.false48.cleanup_crit_edge ], [ 0, %lor.lhs.false22.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @elantech_read_reg(ptr noundef %psmouse, i8 noundef zeroext %reg, ptr nocapture noundef writeonly %val) unnamed_addr #0 align 64 {
entry:
  %param = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param) #9
  %2 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %param, align 1, !annotation !308
  %3 = getelementptr inbounds [3 x i8], ptr %param, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !308
  %5 = getelementptr inbounds [3 x i8], ptr %param, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !308
  %conv = zext i8 %reg to i32
  %7 = add i8 %reg, -39
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %7)
  %8 = icmp ult i8 %7, -32
  %9 = add i8 %reg, -18
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %9)
  %10 = icmp ult i8 %9, 14
  %or.cond = or i1 %8, %10
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end12

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %entry
  %hw_version = getelementptr inbounds %struct.elantech_data, ptr %1, i32 0, i32 17, i32 3
  %11 = ptrtoint ptr %hw_version to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %hw_version, align 1
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.151)
  switch i8 %12, label %if.end12.if.then71_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb24
    i8 3, label %if.end12.sw.bb43_crit_edge
    i8 4, label %if.end12.sw.bb43_crit_edge108
  ]

if.end12.sw.bb43_crit_edge108:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb43

if.end12.sw.bb43_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb43

if.end12.if.then71_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then71

sw.bb:                                            ; preds = %if.end12
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %call = tail call i32 @ps2_sliced_command(ptr noundef %ps2dev, i8 noundef zeroext 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false14, label %sw.bb.do.end_crit_edge

sw.bb.do.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false14:                                  ; preds = %sw.bb
  %call16 = tail call i32 @ps2_sliced_command(ptr noundef %ps2dev, i8 noundef zeroext %reg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %lor.lhs.false18, label %lor.lhs.false14.do.end_crit_edge

lor.lhs.false14.do.end_crit_edge:                 ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false18:                                  ; preds = %lor.lhs.false14
  %call20 = call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef nonnull %param, i32 noundef 1001) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %lor.lhs.false18.if.else_crit_edge, label %lor.lhs.false18.do.end_crit_edge

lor.lhs.false18.do.end_crit_edge:                 ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false18.if.else_crit_edge:                ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

sw.bb24:                                          ; preds = %if.end12
  %call25 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef null, i32 noundef 248)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %lor.lhs.false27, label %sw.bb24.do.end_crit_edge

sw.bb24.do.end_crit_edge:                         ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false27:                                  ; preds = %sw.bb24
  %call28 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef null, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %lor.lhs.false30, label %lor.lhs.false27.do.end_crit_edge

lor.lhs.false27.do.end_crit_edge:                 ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false30:                                  ; preds = %lor.lhs.false27
  %call31 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef null, i32 noundef 248)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %lor.lhs.false33, label %lor.lhs.false30.do.end_crit_edge

lor.lhs.false30.do.end_crit_edge:                 ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false33:                                  ; preds = %lor.lhs.false30
  %call35 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef null, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %lor.lhs.false37, label %lor.lhs.false33.do.end_crit_edge

lor.lhs.false33.do.end_crit_edge:                 ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false37:                                  ; preds = %lor.lhs.false33
  %call39 = call fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef nonnull %param, i32 noundef 1001)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %lor.lhs.false37.if.else_crit_edge, label %lor.lhs.false37.do.end_crit_edge

lor.lhs.false37.do.end_crit_edge:                 ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false37.if.else_crit_edge:                ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

sw.bb43:                                          ; preds = %if.end12.sw.bb43_crit_edge, %if.end12.sw.bb43_crit_edge108
  %call44 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef null, i32 noundef 248)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %lor.lhs.false46, label %sw.bb43.do.end_crit_edge

sw.bb43.do.end_crit_edge:                         ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false46:                                  ; preds = %sw.bb43
  %call47 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %lor.lhs.false49, label %lor.lhs.false46.do.end_crit_edge

lor.lhs.false46.do.end_crit_edge:                 ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false49:                                  ; preds = %lor.lhs.false46
  %call50 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef null, i32 noundef 248)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %lor.lhs.false52, label %lor.lhs.false49.do.end_crit_edge

lor.lhs.false49.do.end_crit_edge:                 ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false52:                                  ; preds = %lor.lhs.false49
  %call54 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef null, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %lor.lhs.false56, label %lor.lhs.false52.do.end_crit_edge

lor.lhs.false52.do.end_crit_edge:                 ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false56:                                  ; preds = %lor.lhs.false52
  %call58 = call fastcc i32 @elantech_ps2_command(ptr noundef %psmouse, ptr noundef nonnull %param, i32 noundef 1001)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %lor.lhs.false56.if.else_crit_edge, label %lor.lhs.false56.do.end_crit_edge

lor.lhs.false56.do.end_crit_edge:                 ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false56.if.else_crit_edge:                ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

do.end:                                           ; preds = %lor.lhs.false56.do.end_crit_edge, %lor.lhs.false52.do.end_crit_edge, %lor.lhs.false49.do.end_crit_edge, %lor.lhs.false46.do.end_crit_edge, %sw.bb43.do.end_crit_edge, %lor.lhs.false37.do.end_crit_edge, %lor.lhs.false33.do.end_crit_edge, %lor.lhs.false30.do.end_crit_edge, %lor.lhs.false27.do.end_crit_edge, %sw.bb24.do.end_crit_edge, %lor.lhs.false18.do.end_crit_edge, %lor.lhs.false14.do.end_crit_edge, %sw.bb.do.end_crit_edge
  %ps2dev64 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %14 = ptrtoint ptr %ps2dev64 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ps2dev64, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %15, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.97, i32 noundef %conv) #12
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false56.if.else_crit_edge, %lor.lhs.false37.if.else_crit_edge, %lor.lhs.false18.if.else_crit_edge
  %16 = ptrtoint ptr %hw_version to i32
  call void @__asan_load1_noabort(i32 %16)
  %.pr = load i8, ptr %hw_version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %.pr)
  %cmp69.not = icmp eq i8 %.pr, 4
  br i1 %cmp69.not, label %if.else72, label %if.else.if.then71_crit_edge

if.else.if.then71_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then71

if.then71:                                        ; preds = %if.else.if.then71_crit_edge, %if.end12.if.then71_crit_edge
  %17 = ptrtoint ptr %param to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %param, align 1
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %val, align 1
  br label %cleanup

if.else72:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %3, align 1
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %val, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else72, %if.then71, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %if.then71 ], [ 0, %if.else72 ], [ -1, %do.end ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psmouse_attr_show_helper(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psmouse_attr_set_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elantech_show_int_attr(ptr noundef %psmouse, ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  %reg1 = getelementptr inbounds %struct.elantech_attr_data, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %reg1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reg1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %if.end

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @elantech_read_reg(ptr noundef %psmouse, i8 noundef zeroext %5, ptr noundef %add.ptr)
  %6 = ptrtoint ptr %reg1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %reg1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  %or.cond = select i1 %tobool4.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %if.end.cond.false_crit_edge, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

if.end.cond.false_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

cond.false:                                       ; preds = %if.end.cond.false_crit_edge, %entry.cond.false_crit_edge
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %add.ptr, align 1
  %conv6 = zext i8 %9 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %conv6, %cond.false ], [ -1, %if.end.cond.end_crit_edge ]
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.102, i32 noundef %cond)
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elantech_set_int_attr(ptr noundef %psmouse, ptr nocapture noundef readonly %data, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #9
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %value, align 1, !annotation !308
  %call = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull %value) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw_version = getelementptr inbounds %struct.elantech_data, ptr %1, i32 0, i32 17, i32 3
  %5 = ptrtoint ptr %hw_version to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %hw_version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp = icmp eq i8 %6, 1
  br i1 %cmp, label %if.then2, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then2:                                         ; preds = %if.end
  %reg3 = getelementptr inbounds %struct.elantech_attr_data, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %reg3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %reg3, align 4
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.152)
  switch i8 %8, label %if.then2.if.end20_crit_edge [
    i8 16, label %if.then7
    i8 17, label %if.then14
  ]

if.then2.if.end20_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then7:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %value, align 1
  %12 = or i8 %11, 4
  store i8 %12, ptr %value, align 1
  br label %if.end20

if.then14:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %value, align 1
  %15 = or i8 %14, 2
  store i8 %15, ptr %value, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.then14, %if.then7, %if.then2.if.end20_crit_edge, %if.end.if.end20_crit_edge
  %reg21 = getelementptr inbounds %struct.elantech_attr_data, ptr %data, i32 0, i32 1
  %16 = ptrtoint ptr %reg21 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %reg21, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool22.not = icmp eq i8 %17, 0
  br i1 %tobool22.not, label %if.end20.if.then27_crit_edge, label %lor.lhs.false

if.end20.if.then27_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then27

lor.lhs.false:                                    ; preds = %if.end20
  %18 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %value, align 1
  %call24 = call fastcc i32 @elantech_write_reg(ptr noundef %psmouse, i8 noundef zeroext %17, i8 noundef zeroext %19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %lor.lhs.false.if.then27_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.if.then27_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then27

if.then27:                                        ; preds = %lor.lhs.false.if.then27_crit_edge, %if.end20.if.then27_crit_edge
  %20 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %value, align 1
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %add.ptr, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %count, %if.then27 ], [ %count, %lor.lhs.false.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @elantech_report_trackpoint(ptr noundef %psmouse) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %packet2 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 7
  %4 = ptrtoint ptr %packet2 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %packet2, align 1
  %6 = and i32 %5, -117440513
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %7, label %sw.default [
    i32 100663344, label %entry.sw.bb_crit_edge
    i32 369131552, label %entry.sw.bb_crit_edge3
    i32 645922832, label %entry.sw.bb_crit_edge4
    i32 914391040, label %entry.sw.bb_crit_edge5
  ]

entry.sw.bb_crit_edge5:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge4:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge3:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge3, %entry.sw.bb_crit_edge4, %entry.sw.bb_crit_edge5
  %arrayidx3 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 4
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx3, align 1
  %conv = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %10)
  %cmp = icmp eq i8 %10, -128
  br i1 %cmp, label %sw.bb.do.body_crit_edge, label %lor.lhs.false

sw.bb.do.body_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false:                                    ; preds = %sw.bb
  %arrayidx5 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 5
  %11 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %12)
  %cmp7 = icmp eq i8 %12, -128
  br i1 %cmp7, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false9

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %arrayidx10 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 1
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx10, align 1
  %cmp15.unshifted1 = xor i8 %14, %10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %cmp15.unshifted1)
  %cmp15 = icmp sgt i8 %cmp15.unshifted1, -1
  br i1 %cmp15, label %lor.lhs.false9.do.body_crit_edge, label %lor.lhs.false17

lor.lhs.false9.do.body_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false17:                                  ; preds = %lor.lhs.false9
  %arrayidx18 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 2
  %15 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx18, align 1
  %cmp24.unshifted2 = xor i8 %16, %12
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %cmp24.unshifted2)
  %cmp24 = icmp sgt i8 %cmp24.unshifted2, -1
  br i1 %cmp24, label %lor.lhs.false17.do.body_crit_edge, label %if.end30

lor.lhs.false17.do.body_crit_edge:                ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false17.do.body_crit_edge, %lor.lhs.false9.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge, %sw.bb.do.body_crit_edge
  %debug = getelementptr inbounds %struct.elantech_data, ptr %1, i32 0, i32 17, i32 2
  %17 = ptrtoint ptr %debug to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %debug, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %do.body.sw.epilog_crit_edge, label %do.end

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %19 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ps2dev, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %20, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.57, ptr noundef %dev, ptr noundef nonnull @.str.119, ptr noundef %packet2) #12
  br label %sw.epilog

if.end30:                                         ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #11
  %21 = xor i8 %14, -128
  %xor = zext i8 %21 to i32
  %shl.neg = mul nsw i32 %xor, -2
  %sub = add nsw i32 %shl.neg, %conv
  %22 = xor i8 %16, -128
  %xor37 = zext i8 %22 to i32
  %shl38 = shl nuw nsw i32 %xor37, 1
  %sub41 = sub nsw i32 %shl38, %conv6
  %23 = ptrtoint ptr %packet2 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %packet2, align 1
  tail call void @psmouse_report_standard_buttons(ptr noundef %3, i8 noundef zeroext %24) #9
  tail call void @input_event(ptr noundef %3, i32 noundef 2, i32 noundef 0, i32 noundef %sub) #9
  tail call void @input_event(ptr noundef %3, i32 noundef 2, i32 noundef 1, i32 noundef %sub41) #9
  tail call void @input_event(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %debug44 = getelementptr inbounds %struct.elantech_data, ptr %1, i32 0, i32 17, i32 2
  %25 = ptrtoint ptr %debug44 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %debug44, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %26)
  %cmp46 = icmp eq i8 %26, 1
  br i1 %cmp46, label %if.then48, label %sw.default.sw.epilog_crit_edge

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then48:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  %ps2dev.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %27 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ps2dev.i, align 4
  %dev.i = getelementptr inbounds %struct.serio, ptr %28, i32 0, i32 18
  %pktsize.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 10
  %29 = ptrtoint ptr %pktsize.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %pktsize.i, align 2
  %conv.i = zext i8 %30 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.57, ptr noundef %dev.i, ptr noundef nonnull @.str.115, i32 noundef %conv.i, ptr noundef %packet2) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then48, %sw.default.sw.epilog_crit_edge, %if.end30, %do.end, %do.body.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @psmouse_report_standard_buttons(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @elantech_report_semi_mt_data(ptr noundef %dev, i32 noundef %num_fingers, i32 noundef %x1, i32 noundef %y1, i32 noundef %x2, i32 noundef %y2) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_fingers)
  %cmp = icmp ne i32 %num_fingers, 0
  tail call void @input_event(ptr noundef %dev, i32 noundef 3, i32 noundef 47, i32 noundef 0) #9
  %call.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %dev, i32 noundef 0, i1 noundef zeroext %cmp) #9
  br i1 %cmp, label %if.then.i, label %entry.elantech_set_slot.exit_crit_edge

entry.elantech_set_slot.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %elantech_set_slot.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @input_event(ptr noundef %dev, i32 noundef 3, i32 noundef 53, i32 noundef %x1) #9
  tail call void @input_event(ptr noundef %dev, i32 noundef 3, i32 noundef 54, i32 noundef %y1) #9
  br label %elantech_set_slot.exit

elantech_set_slot.exit:                           ; preds = %if.then.i, %entry.elantech_set_slot.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_fingers)
  %cmp1 = icmp ugt i32 %num_fingers, 1
  tail call void @input_event(ptr noundef %dev, i32 noundef 3, i32 noundef 47, i32 noundef 1) #9
  %call.i4 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %dev, i32 noundef 0, i1 noundef zeroext %cmp1) #9
  br i1 %cmp1, label %if.then.i5, label %elantech_set_slot.exit.elantech_set_slot.exit6_crit_edge

elantech_set_slot.exit.elantech_set_slot.exit6_crit_edge: ; preds = %elantech_set_slot.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %elantech_set_slot.exit6

if.then.i5:                                       ; preds = %elantech_set_slot.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @input_event(ptr noundef %dev, i32 noundef 3, i32 noundef 53, i32 noundef %x2) #9
  tail call void @input_event(ptr noundef %dev, i32 noundef 3, i32 noundef 54, i32 noundef %y2) #9
  br label %elantech_set_slot.exit6

elantech_set_slot.exit6:                          ; preds = %if.then.i5, %elantech_set_slot.exit.elantech_set_slot.exit6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_report_pointer_emulation(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @psmouse_matches_pnp_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 164)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 164)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !22, !24, !25, !27, !29, !30, !31, !32, !33, !34, !36, !37, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !95, !97, !99, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !112, !113, !115, !116, !117, !119, !120, !121, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !163, !165, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !185, !187, !188, !189, !190, !192, !193, !194, !195, !197, !199, !201, !202, !203, !205, !207, !208, !209, !211, !212, !213, !215, !216, !217, !219, !220, !221, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !236, !237, !239, !240, !241, !243, !244, !245, !247, !248, !249, !251, !252, !253, !255, !256, !257, !258, !260, !261, !262, !263, !265, !267, !269, !270, !271, !272, !274, !275, !276, !277, !279, !280, !281, !283, !284, !286, !287, !288, !289, !291, !292, !293, !295, !296, !297}
!llvm.module.flags = !{!299, !300, !301, !302, !303, !304, !305, !306}
!llvm.ident = !{!307}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/input/mouse/elantech.c", i32 1413, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @elantech_detect.__UNIQUE_ID_ddebug288, !1, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/input/mouse/elantech.c", i32 1423, i32 3}
!8 = !{ptr @elantech_detect.__UNIQUE_ID_ddebug289, !7, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/input/mouse/elantech.c", i32 1435, i32 3}
!11 = !{ptr @elantech_detect.__UNIQUE_ID_ddebug290, !10, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/mouse/elantech.c", i32 1439, i32 2}
!14 = !{ptr @elantech_detect.__UNIQUE_ID_ddebug291, !13, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/input/mouse/elantech.c", i32 1444, i32 3}
!17 = !{ptr @elantech_detect.__UNIQUE_ID_ddebug292, !16, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/input/mouse/elantech.c", i32 1450, i32 21}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/input/mouse/elantech.c", i32 1451, i32 19}
!22 = !{ptr @__param_elantech_smbus, !23, !"__param_elantech_smbus", i1 false, i1 false}
!23 = !{!"../drivers/input/mouse/elantech.c", i32 1885, i32 1}
!24 = !{ptr @__UNIQUE_ID_elantech_smbustype293, !23, !"__UNIQUE_ID_elantech_smbustype293", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_elantech_smbus294, !26, !"__UNIQUE_ID_elantech_smbus294", i1 false, i1 false}
!26 = !{!"../drivers/input/mouse/elantech.c", i32 1886, i32 1}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/input/mouse/elantech.c", i32 40, i32 3}
!29 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @synaptics_send_cmd._entry, !28, !"_entry", i1 false, i1 false}
!33 = !{ptr @synaptics_send_cmd._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!34 = distinct !{null, !35, !"rates", i1 false, i1 false}
!35 = !{!"../drivers/input/mouse/elantech.c", i32 1374, i32 29}
!36 = !{ptr @__param_str_elantech_smbus, !23, !"__param_str_elantech_smbus", i1 false, i1 false}
!37 = !{ptr @elantech_smbus, !38, !"elantech_smbus", i1 false, i1 false}
!38 = !{!"../drivers/input/mouse/elantech.c", i32 1883, i32 12}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/mouse/elantech.c", i32 1690, i32 3}
!41 = !{ptr @elantech_query_info._entry, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @elantech_query_info._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/input/mouse/elantech.c", i32 1696, i32 3}
!45 = !{ptr @elantech_query_info._entry.15, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @elantech_query_info._entry_ptr.17, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/input/mouse/elantech.c", i32 1699, i32 2}
!49 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @elantech_query_info._entry.18, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @elantech_query_info._entry_ptr.21, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/mouse/elantech.c", i32 1705, i32 3}
!54 = !{ptr @elantech_query_info._entry.22, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @elantech_query_info._entry_ptr.24, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/input/mouse/elantech.c", i32 1708, i32 2}
!58 = !{ptr @elantech_query_info._entry.25, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @elantech_query_info._entry_ptr.27, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/input/mouse/elantech.c", i32 1715, i32 4}
!62 = !{ptr @elantech_query_info._entry.28, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @elantech_query_info._entry_ptr.30, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/input/mouse/elantech.c", i32 1718, i32 3}
!66 = !{ptr @elantech_query_info._entry.31, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @elantech_query_info._entry_ptr.33, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/input/mouse/elantech.c", i32 1727, i32 4}
!70 = !{ptr @elantech_query_info._entry.34, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @elantech_query_info._entry_ptr.36, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/input/mouse/elantech.c", i32 1731, i32 3}
!74 = !{ptr @elantech_query_info._entry.37, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @elantech_query_info._entry_ptr.39, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/input/mouse/elantech.c", i32 1746, i32 3}
!78 = !{ptr @elantech_query_info._entry.40, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @elantech_query_info._entry_ptr.42, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/input/mouse/elantech.c", i32 1765, i32 4}
!82 = !{ptr @elantech_query_info._entry.43, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @elantech_query_info._entry_ptr.45, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.47, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/input/mouse/elantech.c", i32 1778, i32 4}
!86 = !{ptr @.str.48, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @elantech_query_info._entry.46, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @elantech_query_info._entry_ptr.49, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.50, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/input/mouse/elantech.c", i32 58, i32 3}
!91 = !{ptr @elantech_send_cmd._entry, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @elantech_send_cmd._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!93 = distinct !{null, !94, !"elantech_dmi_force_crc_enabled", i1 false, i1 false}
!94 = !{!"../drivers/input/mouse/elantech.c", i32 1500, i32 35}
!95 = distinct !{null, !96, !"no_hw_res_dmi_table", i1 false, i1 false}
!96 = !{!"../drivers/input/mouse/elantech.c", i32 1573, i32 35}
!97 = !{ptr @.str.51, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/input/mouse/elantech.c", i32 1602, i32 3}
!99 = !{ptr @.str.52, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @elantech_change_report_id._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @elantech_change_report_id._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.53, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/input/mouse/elantech.c", i32 124, i32 3}
!104 = !{ptr @.str.54, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @elantech_write_reg_params._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @elantech_write_reg_params._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.55, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/input/mouse/elantech.c", i32 81, i32 3}
!109 = !{ptr @.str.56, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.57, !108, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @elantech_ps2_command._entry, !108, !"_entry", i1 false, i1 false}
!112 = !{ptr @elantech_ps2_command._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.59, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/input/mouse/elantech.c", i32 87, i32 3}
!115 = !{ptr @elantech_ps2_command._entry.58, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @elantech_ps2_command._entry_ptr.60, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.61, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/input/mouse/elantech.c", i32 102, i32 3}
!119 = !{ptr @.str.62, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @elantech_read_reg_params._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @elantech_read_reg_params._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = distinct !{null, !123, !"elantech_dmi_has_middle_button", i1 false, i1 false}
!123 = !{!"../drivers/input/mouse/elantech.c", i32 1134, i32 35}
!124 = !{ptr @.str.63, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/input/mouse/elantech.c", i32 1907, i32 21}
!126 = !{ptr @.str.64, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/input/mouse/elantech.c", i32 1909, i32 21}
!128 = !{ptr @.str.65, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/input/mouse/elantech.c", i32 1911, i32 21}
!130 = !{ptr @.str.66, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/input/mouse/elantech.c", i32 1913, i32 21}
!132 = !{ptr @.str.67, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/input/mouse/elantech.c", i32 1916, i32 22}
!134 = !{ptr @.str.68, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/input/mouse/elantech.c", i32 1919, i32 22}
!136 = !{ptr @.str.69, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/input/mouse/elantech.c", i32 1923, i32 22}
!138 = !{ptr @.str.70, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/input/mouse/elantech.c", i32 1926, i32 22}
!140 = !{ptr @.str.71, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/input/mouse/elantech.c", i32 1929, i32 22}
!142 = !{ptr @.str.72, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/input/mouse/elantech.c", i32 1932, i32 22}
!144 = !{ptr @.str.73, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/input/mouse/elantech.c", i32 1936, i32 22}
!146 = !{ptr @.str.74, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/input/mouse/elantech.c", i32 2056, i32 3}
!148 = !{ptr @.str.75, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @elantech_setup_ps2._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @elantech_setup_ps2._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.77, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/input/mouse/elantech.c", i32 2067, i32 3}
!153 = !{ptr @elantech_setup_ps2._entry.76, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @elantech_setup_ps2._entry_ptr.78, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.80, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/input/mouse/elantech.c", i32 2074, i32 3}
!157 = !{ptr @elantech_setup_ps2._entry.79, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @elantech_setup_ps2._entry_ptr.81, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.82, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/input/mouse/elantech.c", i32 2089, i32 48}
!161 = !{ptr @.str.83, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/input/mouse/elantech.c", i32 2092, i32 18}
!163 = !{ptr @.str.84, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/input/mouse/elantech.c", i32 1072, i32 4}
!165 = !{ptr @.str.85, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @elantech_set_absolute_mode._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @elantech_set_absolute_mode._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.87, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/input/mouse/elantech.c", i32 1077, i32 4}
!170 = !{ptr @elantech_set_absolute_mode._entry.86, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @elantech_set_absolute_mode._entry_ptr.88, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.90, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/input/mouse/elantech.c", i32 1081, i32 4}
!174 = !{ptr @elantech_set_absolute_mode._entry.89, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @elantech_set_absolute_mode._entry_ptr.91, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.93, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/input/mouse/elantech.c", i32 1089, i32 3}
!178 = !{ptr @elantech_set_absolute_mode._entry.92, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @elantech_set_absolute_mode._entry_ptr.94, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.95, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/input/mouse/elantech.c", i32 254, i32 3}
!182 = !{ptr @.str.96, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @elantech_write_reg._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @elantech_write_reg._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.97, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/input/mouse/elantech.c", i32 180, i32 3}
!187 = !{ptr @.str.98, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @elantech_read_reg._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @elantech_read_reg._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.99, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/input/mouse/elantech.c", i32 1006, i32 3}
!192 = !{ptr @.str.100, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @elantech_set_rate_restore_reg_07._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @elantech_set_rate_restore_reg_07._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @elantech_attr_group, !196, !"elantech_attr_group", i1 false, i1 false}
!196 = !{!"../drivers/input/mouse/elantech.c", i32 1368, i32 37}
!197 = !{ptr @elantech_attrs, !198, !"elantech_attrs", i1 false, i1 false}
!198 = !{!"../drivers/input/mouse/elantech.c", i32 1351, i32 26}
!199 = !{ptr @.str.101, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/input/mouse/elantech.c", i32 1337, i32 1}
!201 = !{ptr @psmouse_attr_reg_07, !200, !"psmouse_attr_reg_07", i1 false, i1 false}
!202 = !{ptr @elantech_attr_reg_07, !200, !"elantech_attr_reg_07", i1 false, i1 false}
!203 = !{ptr @.str.102, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/input/mouse/elantech.c", i32 1281, i32 22}
!205 = !{ptr @.str.103, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/input/mouse/elantech.c", i32 1338, i32 1}
!207 = !{ptr @psmouse_attr_reg_10, !206, !"psmouse_attr_reg_10", i1 false, i1 false}
!208 = !{ptr @elantech_attr_reg_10, !206, !"elantech_attr_reg_10", i1 false, i1 false}
!209 = !{ptr @.str.104, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/input/mouse/elantech.c", i32 1339, i32 1}
!211 = !{ptr @psmouse_attr_reg_11, !210, !"psmouse_attr_reg_11", i1 false, i1 false}
!212 = !{ptr @elantech_attr_reg_11, !210, !"elantech_attr_reg_11", i1 false, i1 false}
!213 = !{ptr @.str.105, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/input/mouse/elantech.c", i32 1340, i32 1}
!215 = !{ptr @psmouse_attr_reg_20, !214, !"psmouse_attr_reg_20", i1 false, i1 false}
!216 = !{ptr @elantech_attr_reg_20, !214, !"elantech_attr_reg_20", i1 false, i1 false}
!217 = !{ptr @.str.106, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/input/mouse/elantech.c", i32 1341, i32 1}
!219 = !{ptr @psmouse_attr_reg_21, !218, !"psmouse_attr_reg_21", i1 false, i1 false}
!220 = !{ptr @elantech_attr_reg_21, !218, !"elantech_attr_reg_21", i1 false, i1 false}
!221 = !{ptr @.str.107, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/input/mouse/elantech.c", i32 1342, i32 1}
!223 = !{ptr @psmouse_attr_reg_22, !222, !"psmouse_attr_reg_22", i1 false, i1 false}
!224 = !{ptr @elantech_attr_reg_22, !222, !"elantech_attr_reg_22", i1 false, i1 false}
!225 = !{ptr @.str.108, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/input/mouse/elantech.c", i32 1343, i32 1}
!227 = !{ptr @psmouse_attr_reg_23, !226, !"psmouse_attr_reg_23", i1 false, i1 false}
!228 = !{ptr @elantech_attr_reg_23, !226, !"elantech_attr_reg_23", i1 false, i1 false}
!229 = !{ptr @.str.109, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/input/mouse/elantech.c", i32 1344, i32 1}
!231 = !{ptr @psmouse_attr_reg_24, !230, !"psmouse_attr_reg_24", i1 false, i1 false}
!232 = !{ptr @elantech_attr_reg_24, !230, !"elantech_attr_reg_24", i1 false, i1 false}
!233 = !{ptr @.str.110, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/input/mouse/elantech.c", i32 1345, i32 1}
!235 = !{ptr @psmouse_attr_reg_25, !234, !"psmouse_attr_reg_25", i1 false, i1 false}
!236 = !{ptr @elantech_attr_reg_25, !234, !"elantech_attr_reg_25", i1 false, i1 false}
!237 = !{ptr @.str.111, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/input/mouse/elantech.c", i32 1346, i32 1}
!239 = !{ptr @psmouse_attr_reg_26, !238, !"psmouse_attr_reg_26", i1 false, i1 false}
!240 = !{ptr @elantech_attr_reg_26, !238, !"elantech_attr_reg_26", i1 false, i1 false}
!241 = !{ptr @.str.112, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/input/mouse/elantech.c", i32 1347, i32 1}
!243 = !{ptr @psmouse_attr_debug, !242, !"psmouse_attr_debug", i1 false, i1 false}
!244 = !{ptr @elantech_attr_debug, !242, !"elantech_attr_debug", i1 false, i1 false}
!245 = !{ptr @.str.113, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/input/mouse/elantech.c", i32 1348, i32 1}
!247 = !{ptr @psmouse_attr_paritycheck, !246, !"psmouse_attr_paritycheck", i1 false, i1 false}
!248 = !{ptr @elantech_attr_paritycheck, !246, !"elantech_attr_paritycheck", i1 false, i1 false}
!249 = !{ptr @.str.114, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/input/mouse/elantech.c", i32 1349, i32 1}
!251 = !{ptr @psmouse_attr_crc_enabled, !250, !"psmouse_attr_crc_enabled", i1 false, i1 false}
!252 = !{ptr @elantech_attr_crc_enabled, !250, !"elantech_attr_crc_enabled", i1 false, i1 false}
!253 = !{ptr @.str.115, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/input/mouse/elantech.c", i32 266, i32 2}
!255 = !{ptr @.str.116, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @elantech_packet_dump._entry, !254, !"_entry", i1 false, i1 false}
!257 = !{ptr @elantech_packet_dump._entry_ptr, !254, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.117, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/input/mouse/elantech.c", i32 348, i32 4}
!260 = !{ptr @.str.118, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @elantech_report_absolute_v1._entry, !259, !"_entry", i1 false, i1 false}
!262 = !{ptr @elantech_report_absolute_v1._entry_ptr, !259, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @elantech_debounce_check_v2.debounce_packet, !264, !"debounce_packet", i1 false, i1 false}
!264 = !{!"../drivers/input/mouse/elantech.c", i32 795, i32 18}
!265 = !{ptr @elantech_packet_check_v3.debounce_packet, !266, !"debounce_packet", i1 false, i1 false}
!266 = !{!"../drivers/input/mouse/elantech.c", i32 838, i32 18}
!267 = !{ptr @.str.119, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/input/mouse/elantech.c", i32 529, i32 4}
!269 = !{ptr @.str.120, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @elantech_report_trackpoint._entry, !268, !"_entry", i1 false, i1 false}
!271 = !{ptr @elantech_report_trackpoint._entry_ptr, !268, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.121, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/input/mouse/elantech.c", i32 1489, i32 3}
!274 = !{ptr @.str.122, !273, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @elantech_reconnect._entry, !273, !"_entry", i1 false, i1 false}
!276 = !{ptr @elantech_reconnect._entry_ptr, !273, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.123, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/input/mouse/elantech.c", i32 1997, i32 3}
!279 = !{ptr @.str.124, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @elantech_use_host_notify.__UNIQUE_ID_ddebug295, !278, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!281 = !{ptr @.str.125, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/input/mouse/elantech.c", i32 2003, i32 3}
!283 = !{ptr @elantech_use_host_notify.__UNIQUE_ID_ddebug296, !282, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!284 = !{ptr @.str.126, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/input/mouse/elantech.c", i32 1970, i32 2}
!286 = !{ptr @.str.127, !285, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @elantech_setup_smbus._entry, !285, !"_entry", i1 false, i1 false}
!288 = !{ptr @elantech_setup_smbus._entry_ptr, !285, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.129, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/input/mouse/elantech.c", i32 1975, i32 4}
!291 = !{ptr @elantech_setup_smbus._entry.128, !290, !"_entry", i1 false, i1 false}
!292 = !{ptr @elantech_setup_smbus._entry_ptr.130, !290, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.132, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/input/mouse/elantech.c", i32 1977, i32 4}
!295 = !{ptr @elantech_setup_smbus._entry.131, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @elantech_setup_smbus._entry_ptr.133, !294, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @i2c_blacklist_pnp_ids, !298, !"i2c_blacklist_pnp_ids", i1 false, i1 false}
!298 = !{!"../drivers/input/mouse/elantech.c", i32 1888, i32 27}
!299 = !{i32 1, !"wchar_size", i32 2}
!300 = !{i32 1, !"min_enum_size", i32 4}
!301 = !{i32 8, !"branch-target-enforcement", i32 0}
!302 = !{i32 8, !"sign-return-address", i32 0}
!303 = !{i32 8, !"sign-return-address-all", i32 0}
!304 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!305 = !{i32 7, !"uwtable", i32 1}
!306 = !{i32 7, !"frame-pointer", i32 2}
!307 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!308 = !{!"auto-init"}
!309 = !{i64 2148815637, i64 2148815642, i64 2148815655, i64 2148815699, i64 2148815733, i64 2148815754}
!310 = !{i8 0, i8 2}
