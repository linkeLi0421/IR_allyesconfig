; ModuleID = '/llk/IR_all_yes/drivers/input/mouse/trackpoint.c_pt.bc'
source_filename = "../drivers/input/mouse/trackpoint.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.trackpoint_attr_data = type { i32, i8, i8, i8, i8 }
%struct.psmouse_attribute = type { %struct.device_attribute, ptr, ptr, ptr, i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.psmouse = type { ptr, ptr, %struct.ps2dev, %struct.delayed_work, ptr, ptr, ptr, [8 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, [64 x i8], [32 x i8], i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ps2dev = type { ptr, %struct.mutex, %struct.wait_queue_head, i32, [8 x i8], i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
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
%struct.trackpoint_data = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
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
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@trackpoint_variants = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr null, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TrackPoint\00", [21 x i8] zeroinitializer }, align 32
@trackpoint_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 435, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"trackpoint: failed to get extended button data, assuming 3 buttons\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"trackpoint_detect\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/input/mouse/trackpoint.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@trackpoint_detect._entry_ptr = internal global ptr @trackpoint_detect._entry, section ".printk_index", align 4
@trackpoint_detect._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 439, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"trackpoint: got 0 in extended button data, assuming 3 buttons\0A\00", [33 x i8] zeroinitializer }, align 32
@trackpoint_detect._entry_ptr.8 = internal global ptr @trackpoint_detect._entry.6, section ".printk_index", align 4
@trackpoint_attr_group = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @trackpoint_is_attr_visible, ptr null, ptr @trackpoint_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@trackpoint_detect._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 462, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"trackpoint: failed to create sysfs attributes, error: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@trackpoint_detect._entry_ptr.12 = internal global ptr @trackpoint_detect._entry.9, section ".printk_index", align 4
@trackpoint_detect._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 471, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"trackpoint: %s TrackPoint firmware: 0x%02x, buttons: %d/%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@trackpoint_detect._entry_ptr.16 = internal global ptr @trackpoint_detect._entry.13, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@trackpoint_attr_sensitivity = internal global { %struct.trackpoint_attr_data, [24 x i8] } { %struct.trackpoint_attr_data { i32 2, i8 74, i8 0, i8 0, i8 -128 }, [24 x i8] zeroinitializer }, align 32
@trackpoint_attr_speed = internal global { %struct.trackpoint_attr_data, [24 x i8] } { %struct.trackpoint_attr_data { i32 3, i8 96, i8 0, i8 0, i8 97 }, [24 x i8] zeroinitializer }, align 32
@trackpoint_attr_reach = internal global { %struct.trackpoint_attr_data, [24 x i8] } { %struct.trackpoint_attr_data { i32 5, i8 87, i8 0, i8 0, i8 10 }, [24 x i8] zeroinitializer }, align 32
@trackpoint_attr_draghys = internal global { %struct.trackpoint_attr_data, [24 x i8] } { %struct.trackpoint_attr_data { i32 6, i8 88, i8 0, i8 0, i8 -1 }, [24 x i8] zeroinitializer }, align 32
@trackpoint_attr_mindrag = internal global { %struct.trackpoint_attr_data, [24 x i8] } { %struct.trackpoint_attr_data { i32 7, i8 89, i8 0, i8 0, i8 20 }, [24 x i8] zeroinitializer }, align 32
@trackpoint_attr_thresh = internal global { %struct.trackpoint_attr_data, [24 x i8] } { %struct.trackpoint_attr_data { i32 8, i8 92, i8 0, i8 0, i8 8 }, [24 x i8] zeroinitializer }, align 32
@trackpoint_attr_upthresh = internal global { %struct.trackpoint_attr_data, [24 x i8] } { %struct.trackpoint_attr_data { i32 9, i8 90, i8 0, i8 0, i8 -1 }, [24 x i8] zeroinitializer }, align 32
@trackpoint_attr_ztime = internal global { %struct.trackpoint_attr_data, [24 x i8] } { %struct.trackpoint_attr_data { i32 10, i8 94, i8 0, i8 0, i8 38 }, [24 x i8] zeroinitializer }, align 32
@trackpoint_attr_jenks = internal global { %struct.trackpoint_attr_data, [24 x i8] } { %struct.trackpoint_attr_data { i32 11, i8 93, i8 0, i8 0, i8 -121 }, [24 x i8] zeroinitializer }, align 32
@trackpoint_attr_drift_time = internal global { %struct.trackpoint_attr_data, [24 x i8] } { %struct.trackpoint_attr_data { i32 12, i8 95, i8 0, i8 0, i8 5 }, [24 x i8] zeroinitializer }, align 32
@trackpoint_attr_inertia = internal global { %struct.trackpoint_attr_data, [24 x i8] } { %struct.trackpoint_attr_data { i32 4, i8 77, i8 0, i8 0, i8 6 }, [24 x i8] zeroinitializer }, align 32
@trackpoint_attr_press_to_select = internal global { %struct.trackpoint_attr_data, [24 x i8] } { %struct.trackpoint_attr_data { i32 13, i8 44, i8 1, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@trackpoint_attr_skipback = internal global { %struct.trackpoint_attr_data, [24 x i8] } { %struct.trackpoint_attr_data { i32 14, i8 45, i8 8, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@trackpoint_attr_ext_dev = internal global { %struct.trackpoint_attr_data, [24 x i8] } { %struct.trackpoint_attr_data { i32 15, i8 35, i8 2, i8 1, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IBM\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ALPS\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Elan\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"NXP\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"JYT_Synaptics\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Synaptics\00", [22 x i8] zeroinitializer }, align 32
@psmouse_attr_sensitivity = internal global { %struct.psmouse_attribute, [52 x i8] } { %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @trackpoint_attr_sensitivity, ptr @trackpoint_show_int_attr, ptr @trackpoint_set_int_attr, i8 1 }, [52 x i8] zeroinitializer }, align 32
@psmouse_attr_inertia = internal global { %struct.psmouse_attribute, [52 x i8] } { %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @trackpoint_attr_inertia, ptr @trackpoint_show_int_attr, ptr @trackpoint_set_int_attr, i8 1 }, [52 x i8] zeroinitializer }, align 32
@psmouse_attr_speed = internal global { %struct.psmouse_attribute, [52 x i8] } { %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @trackpoint_attr_speed, ptr @trackpoint_show_int_attr, ptr @trackpoint_set_int_attr, i8 1 }, [52 x i8] zeroinitializer }, align 32
@psmouse_attr_reach = internal global { %struct.psmouse_attribute, [52 x i8] } { %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @trackpoint_attr_reach, ptr @trackpoint_show_int_attr, ptr @trackpoint_set_int_attr, i8 1 }, [52 x i8] zeroinitializer }, align 32
@psmouse_attr_draghys = internal global { %struct.psmouse_attribute, [52 x i8] } { %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @trackpoint_attr_draghys, ptr @trackpoint_show_int_attr, ptr @trackpoint_set_int_attr, i8 1 }, [52 x i8] zeroinitializer }, align 32
@psmouse_attr_mindrag = internal global { %struct.psmouse_attribute, [52 x i8] } { %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @trackpoint_attr_mindrag, ptr @trackpoint_show_int_attr, ptr @trackpoint_set_int_attr, i8 1 }, [52 x i8] zeroinitializer }, align 32
@psmouse_attr_thresh = internal global { %struct.psmouse_attribute, [52 x i8] } { %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @trackpoint_attr_thresh, ptr @trackpoint_show_int_attr, ptr @trackpoint_set_int_attr, i8 1 }, [52 x i8] zeroinitializer }, align 32
@psmouse_attr_upthresh = internal global { %struct.psmouse_attribute, [52 x i8] } { %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @trackpoint_attr_upthresh, ptr @trackpoint_show_int_attr, ptr @trackpoint_set_int_attr, i8 1 }, [52 x i8] zeroinitializer }, align 32
@psmouse_attr_ztime = internal global { %struct.psmouse_attribute, [52 x i8] } { %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @trackpoint_attr_ztime, ptr @trackpoint_show_int_attr, ptr @trackpoint_set_int_attr, i8 1 }, [52 x i8] zeroinitializer }, align 32
@psmouse_attr_jenks = internal global { %struct.psmouse_attribute, [52 x i8] } { %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @trackpoint_attr_jenks, ptr @trackpoint_show_int_attr, ptr @trackpoint_set_int_attr, i8 1 }, [52 x i8] zeroinitializer }, align 32
@psmouse_attr_drift_time = internal global { %struct.psmouse_attribute, [52 x i8] } { %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @trackpoint_attr_drift_time, ptr @trackpoint_show_int_attr, ptr @trackpoint_set_int_attr, i8 1 }, [52 x i8] zeroinitializer }, align 32
@psmouse_attr_press_to_select = internal global { %struct.psmouse_attribute, [52 x i8] } { %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @trackpoint_attr_press_to_select, ptr @trackpoint_show_int_attr, ptr @trackpoint_set_bit_attr, i8 1 }, [52 x i8] zeroinitializer }, align 32
@psmouse_attr_skipback = internal global { %struct.psmouse_attribute, [52 x i8] } { %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @trackpoint_attr_skipback, ptr @trackpoint_show_int_attr, ptr @trackpoint_set_bit_attr, i8 1 }, [52 x i8] zeroinitializer }, align 32
@psmouse_attr_ext_dev = internal global { %struct.psmouse_attribute, [52 x i8] } { %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @trackpoint_attr_ext_dev, ptr @trackpoint_show_int_attr, ptr @trackpoint_set_bit_attr, i8 1 }, [52 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sensitivity\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"inertia\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"speed\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reach\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"draghys\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mindrag\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"thresh\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"upthresh\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ztime\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"jenks\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"drift_time\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"press_to_select\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"skipback\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ext_dev\00", [24 x i8] zeroinitializer }, align 32
@trackpoint_attrs = internal global { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @psmouse_attr_sensitivity, ptr @psmouse_attr_speed, ptr @psmouse_attr_inertia, ptr @psmouse_attr_reach, ptr @psmouse_attr_draghys, ptr @psmouse_attr_mindrag, ptr @psmouse_attr_thresh, ptr @psmouse_attr_upthresh, ptr @psmouse_attr_ztime, ptr @psmouse_attr_jenks, ptr @psmouse_attr_drift_time, ptr @psmouse_attr_press_to_select, ptr @psmouse_attr_skipback, ptr @psmouse_attr_ext_dev, ptr null], [36 x i8] zeroinitializer }, align 32
@___asan_gen_.38 = private unnamed_addr constant [20 x i8] c"trackpoint_variants\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 19, i32 27 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 423, i32 18 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 434, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 438, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant [22 x i8] c"trackpoint_attr_group\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 242, i32 31 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 460, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 468, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [28 x i8] c"trackpoint_attr_sensitivity\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [22 x i8] c"trackpoint_attr_speed\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [22 x i8] c"trackpoint_attr_reach\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [24 x i8] c"trackpoint_attr_draghys\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [24 x i8] c"trackpoint_attr_mindrag\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [23 x i8] c"trackpoint_attr_thresh\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [25 x i8] c"trackpoint_attr_upthresh\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [22 x i8] c"trackpoint_attr_ztime\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [22 x i8] c"trackpoint_attr_jenks\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [27 x i8] c"trackpoint_attr_drift_time\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [24 x i8] c"trackpoint_attr_inertia\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [32 x i8] c"trackpoint_attr_press_to_select\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [25 x i8] c"trackpoint_attr_skipback\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [24 x i8] c"trackpoint_attr_ext_dev\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 20, i32 22 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 21, i32 23 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 22, i32 23 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 23, i32 22 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 24, i32 31 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 25, i32 28 }
@___asan_gen_.149 = private unnamed_addr constant [25 x i8] c"psmouse_attr_sensitivity\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [21 x i8] c"psmouse_attr_inertia\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [19 x i8] c"psmouse_attr_speed\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [19 x i8] c"psmouse_attr_reach\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [21 x i8] c"psmouse_attr_draghys\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [21 x i8] c"psmouse_attr_mindrag\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [20 x i8] c"psmouse_attr_thresh\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [22 x i8] c"psmouse_attr_upthresh\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [19 x i8] c"psmouse_attr_ztime\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [19 x i8] c"psmouse_attr_jenks\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [24 x i8] c"psmouse_attr_drift_time\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [29 x i8] c"psmouse_attr_press_to_select\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [22 x i8] c"psmouse_attr_skipback\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [21 x i8] c"psmouse_attr_ext_dev\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 185, i32 1 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 114, i32 22 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 187, i32 1 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 186, i32 1 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 188, i32 1 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 189, i32 1 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 190, i32 1 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 191, i32 1 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 192, i32 1 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 193, i32 1 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 194, i32 1 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 195, i32 1 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 197, i32 1 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 199, i32 1 }
@___asan_gen_.233 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 201, i32 1 }
@___asan_gen_.236 = private unnamed_addr constant [17 x i8] c"trackpoint_attrs\00", align 1
@___asan_gen_.237 = private constant [36 x i8] c"../drivers/input/mouse/trackpoint.c\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 224, i32 26 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @trackpoint_detect._entry, ptr @trackpoint_detect._entry.13, ptr @trackpoint_detect._entry.6, ptr @trackpoint_detect._entry.9, ptr @trackpoint_detect._entry_ptr, ptr @trackpoint_detect._entry_ptr.12, ptr @trackpoint_detect._entry_ptr.16, ptr @trackpoint_detect._entry_ptr.8, ptr @trackpoint_variants, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @trackpoint_attr_group, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @.str.15, ptr @trackpoint_attr_sensitivity, ptr @trackpoint_attr_speed, ptr @trackpoint_attr_reach, ptr @trackpoint_attr_draghys, ptr @trackpoint_attr_mindrag, ptr @trackpoint_attr_thresh, ptr @trackpoint_attr_upthresh, ptr @trackpoint_attr_ztime, ptr @trackpoint_attr_jenks, ptr @trackpoint_attr_drift_time, ptr @trackpoint_attr_inertia, ptr @trackpoint_attr_press_to_select, ptr @trackpoint_attr_skipback, ptr @trackpoint_attr_ext_dev, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @psmouse_attr_sensitivity, ptr @psmouse_attr_inertia, ptr @psmouse_attr_speed, ptr @psmouse_attr_reach, ptr @psmouse_attr_draghys, ptr @psmouse_attr_mindrag, ptr @psmouse_attr_thresh, ptr @psmouse_attr_upthresh, ptr @psmouse_attr_ztime, ptr @psmouse_attr_jenks, ptr @psmouse_attr_drift_time, ptr @psmouse_attr_press_to_select, ptr @psmouse_attr_skipback, ptr @psmouse_attr_ext_dev, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @trackpoint_attrs], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trackpoint_variants to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trackpoint_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trackpoint_detect._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trackpoint_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trackpoint_detect._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trackpoint_detect._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trackpoint_attr_sensitivity to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trackpoint_attr_speed to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trackpoint_attr_reach to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trackpoint_attr_draghys to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trackpoint_attr_mindrag to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trackpoint_attr_thresh to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trackpoint_attr_upthresh to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trackpoint_attr_ztime to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trackpoint_attr_jenks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trackpoint_attr_drift_time to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trackpoint_attr_inertia to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trackpoint_attr_press_to_select to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trackpoint_attr_skipback to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trackpoint_attr_ext_dev to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_attr_sensitivity to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_attr_inertia to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_attr_speed to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_attr_reach to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_attr_draghys to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_attr_mindrag to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_attr_thresh to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_attr_upthresh to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_attr_ztime to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_attr_jenks to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_attr_drift_time to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_attr_press_to_select to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_attr_skipback to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_attr_ext_dev to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trackpoint_attrs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @trackpoint_detect(ptr noundef %psmouse, i1 noundef zeroext %set_properties) local_unnamed_addr #0 align 64 {
entry:
  %groups.i = alloca [2 x ptr], align 4
  %param.i = alloca [2 x i8], align 2
  %button_info = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ps2dev1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %button_info) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %param.i) #8
  %0 = ptrtoint ptr %param.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %param.i, align 2
  %call.i = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param.i, i32 noundef 737) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.trackpoint_start_protocol.exit.thread_crit_edge

entry.trackpoint_start_protocol.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_start_protocol.exit.thread

if.end.i:                                         ; preds = %entry
  %1 = ptrtoint ptr %param.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %param.i, align 2
  %.off.i = add i8 %2, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 6
  br i1 %switch.i, label %trackpoint_start_protocol.exit, label %if.end.i.trackpoint_start_protocol.exit.thread_crit_edge

if.end.i.trackpoint_start_protocol.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_start_protocol.exit.thread

trackpoint_start_protocol.exit.thread:            ; preds = %if.end.i.trackpoint_start_protocol.exit.thread_crit_edge, %entry.trackpoint_start_protocol.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -19, %if.end.i.trackpoint_start_protocol.exit.thread_crit_edge ], [ %call.i, %entry.trackpoint_start_protocol.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %param.i) #8
  br label %cleanup

trackpoint_start_protocol.exit:                   ; preds = %if.end.i
  %arrayidx7.i = getelementptr inbounds [2 x i8], ptr %param.i, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx7.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %param.i) #8
  br i1 %set_properties, label %if.end4, label %trackpoint_start_protocol.exit.cleanup_crit_edge

trackpoint_start_protocol.exit.cleanup_crit_edge: ; preds = %trackpoint_start_protocol.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %trackpoint_start_protocol.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 16) #11
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %6 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_sensitivity, i32 0, i32 4), align 1
  %sensitivity.i = getelementptr inbounds %struct.trackpoint_data, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %sensitivity.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %sensitivity.i, align 2
  %8 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_speed, i32 0, i32 4), align 1
  %speed.i = getelementptr inbounds %struct.trackpoint_data, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %speed.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %speed.i, align 1
  %10 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_reach, i32 0, i32 4), align 1
  %reach.i = getelementptr inbounds %struct.trackpoint_data, ptr %call7.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %reach.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %reach.i, align 1
  %12 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_draghys, i32 0, i32 4), align 1
  %draghys.i = getelementptr inbounds %struct.trackpoint_data, ptr %call7.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %draghys.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %draghys.i, align 2
  %14 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_mindrag, i32 0, i32 4), align 1
  %mindrag.i = getelementptr inbounds %struct.trackpoint_data, ptr %call7.i.i, i32 0, i32 7
  %15 = ptrtoint ptr %mindrag.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %mindrag.i, align 1
  %16 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_thresh, i32 0, i32 4), align 1
  %thresh.i = getelementptr inbounds %struct.trackpoint_data, ptr %call7.i.i, i32 0, i32 8
  %17 = ptrtoint ptr %thresh.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %thresh.i, align 8
  %18 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_upthresh, i32 0, i32 4), align 1
  %upthresh.i = getelementptr inbounds %struct.trackpoint_data, ptr %call7.i.i, i32 0, i32 9
  %19 = ptrtoint ptr %upthresh.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %upthresh.i, align 1
  %20 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_ztime, i32 0, i32 4), align 1
  %ztime.i = getelementptr inbounds %struct.trackpoint_data, ptr %call7.i.i, i32 0, i32 10
  %21 = ptrtoint ptr %ztime.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %ztime.i, align 2
  %22 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_jenks, i32 0, i32 4), align 1
  %jenks.i = getelementptr inbounds %struct.trackpoint_data, ptr %call7.i.i, i32 0, i32 11
  %23 = ptrtoint ptr %jenks.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %jenks.i, align 1
  %24 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_drift_time, i32 0, i32 4), align 1
  %drift_time.i = getelementptr inbounds %struct.trackpoint_data, ptr %call7.i.i, i32 0, i32 12
  %25 = ptrtoint ptr %drift_time.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %drift_time.i, align 4
  %26 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_inertia, i32 0, i32 4), align 1
  %inertia.i = getelementptr inbounds %struct.trackpoint_data, ptr %call7.i.i, i32 0, i32 4
  %27 = ptrtoint ptr %inertia.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %inertia.i, align 4
  %28 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_press_to_select, i32 0, i32 4), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.i = icmp ne i8 %28, 0
  %press_to_select.i = getelementptr inbounds %struct.trackpoint_data, ptr %call7.i.i, i32 0, i32 13
  %frombool.i = zext i1 %tobool.i to i8
  %29 = ptrtoint ptr %press_to_select.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %frombool.i, ptr %press_to_select.i, align 1
  %30 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_skipback, i32 0, i32 4), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool24.i = icmp ne i8 %30, 0
  %skipback.i = getelementptr inbounds %struct.trackpoint_data, ptr %call7.i.i, i32 0, i32 14
  %frombool25.i = zext i1 %tobool24.i to i8
  %31 = ptrtoint ptr %skipback.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %frombool25.i, ptr %skipback.i, align 2
  %32 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_ext_dev, i32 0, i32 4), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool28.i = icmp ne i8 %32, 0
  %ext_dev.i = getelementptr inbounds %struct.trackpoint_data, ptr %call7.i.i, i32 0, i32 15
  %frombool29.i = zext i1 %tobool28.i to i8
  %33 = ptrtoint ptr %ext_dev.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %frombool29.i, ptr %ext_dev.i, align 1
  %34 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %2, ptr %call7.i.i, align 8
  %firmware_id10 = getelementptr inbounds %struct.trackpoint_data, ptr %call7.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %firmware_id10 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %4, ptr %firmware_id10, align 1
  %36 = ptrtoint ptr %psmouse to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call7.i.i, ptr %psmouse, align 4
  %idxprom = zext i8 %2 to i32
  %arrayidx = getelementptr [7 x ptr], ptr @trackpoint_variants, i32 0, i32 %idxprom
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx, align 4
  %vendor = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 4
  %39 = ptrtoint ptr %vendor to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %vendor, align 4
  %name = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 5
  %40 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str, ptr %name, align 4
  %reconnect = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 30
  %41 = ptrtoint ptr %reconnect to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @trackpoint_reconnect, ptr %reconnect, align 4
  %disconnect = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 32
  %42 = ptrtoint ptr %disconnect to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @trackpoint_disconnect, ptr %disconnect, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp.not = icmp eq i8 %2, 1
  br i1 %cmp.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %button_info to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 51, ptr %button_info, align 1
  br label %if.end28

if.else:                                          ; preds = %if.end8
  %44 = ptrtoint ptr %button_info to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 75, ptr %button_info, align 1
  %call.i107 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %button_info, i32 noundef 4578) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %tobool14.not = icmp eq i32 %call.i107, 0
  br i1 %tobool14.not, label %if.else17, label %do.end

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ps2dev1, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %46, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  %47 = ptrtoint ptr %button_info to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 51, ptr %button_info, align 1
  br label %if.end28

if.else17:                                        ; preds = %if.else
  %48 = ptrtoint ptr %button_info to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %button_info, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool18.not = icmp eq i8 %49, 0
  br i1 %tobool18.not, label %do.end22, label %if.else17.if.end28_crit_edge

if.else17.if.end28_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

do.end22:                                         ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ps2dev1, align 4
  %dev25 = getelementptr inbounds %struct.serio, ptr %51, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev25, ptr noundef nonnull @.str.7) #12
  %52 = ptrtoint ptr %button_info to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 51, ptr %button_info, align 1
  br label %if.end28

if.end28:                                         ; preds = %do.end22, %if.else17.if.end28_crit_edge, %do.end, %if.then12
  %53 = ptrtoint ptr %button_info to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %button_info, align 1
  %55 = and i8 %54, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %55)
  %cmp30 = icmp ugt i8 %55, 2
  br i1 %cmp30, label %if.then32, label %if.end28.if.end34_crit_edge

if.end28.if.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %dev33 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 1
  %56 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev33, align 4
  call void @input_set_capability(ptr noundef %57, i32 noundef 1, i32 noundef 274) #8
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end28.if.end34_crit_edge
  %dev35 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 1
  %58 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev35, align 4
  %propbit = getelementptr inbounds %struct.input_dev, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %propbit to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %propbit, align 4
  %or.i = or i32 %61, 1
  store i32 %or.i, ptr %propbit, align 4
  %62 = load ptr, ptr %dev35, align 4
  %propbit37 = getelementptr inbounds %struct.input_dev, ptr %62, i32 0, i32 4
  %63 = ptrtoint ptr %propbit37 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %propbit37, align 4
  %or.i106 = or i32 %64, 32
  store i32 %or.i106, ptr %propbit37, align 4
  br i1 %cmp.not, label %lor.lhs.false, label %if.end34.if.then45_crit_edge

if.end34.if.then45_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then45

lor.lhs.false:                                    ; preds = %if.end34
  %call42 = call fastcc i32 @trackpoint_power_on_reset(ptr noundef %ps2dev1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43.not = icmp eq i32 %call42, 0
  br i1 %cmp43.not, label %lor.lhs.false.if.end47_crit_edge, label %lor.lhs.false.if.then45_crit_edge

lor.lhs.false.if.then45_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then45

lor.lhs.false.if.end47_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then45:                                        ; preds = %lor.lhs.false.if.then45_crit_edge, %if.end34.if.then45_crit_edge
  call fastcc void @trackpoint_sync(ptr noundef %psmouse, i1 noundef zeroext false)
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %lor.lhs.false.if.end47_crit_edge
  %65 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ps2dev1, align 4
  %dev49 = getelementptr inbounds %struct.serio, ptr %66, i32 0, i32 18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %groups.i) #8
  %67 = getelementptr inbounds [2 x ptr], ptr %groups.i, i32 0, i32 1
  %68 = ptrtoint ptr %groups.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @trackpoint_attr_group, ptr %groups.i, align 4
  %69 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %67, align 4
  %call.i108 = call i32 @device_add_groups(ptr noundef %dev49, ptr noundef nonnull %groups.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %groups.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108)
  %tobool51.not = icmp eq i32 %call.i108, 0
  %70 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ps2dev1, align 4
  %dev67 = getelementptr inbounds %struct.serio, ptr %71, i32 0, i32 18
  br i1 %tobool51.not, label %do.end64, label %do.end55

do.end55:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev67, ptr noundef nonnull @.str.10, i32 noundef %call.i108) #12
  %72 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %psmouse, align 4
  call void @kfree(ptr noundef %73) #8
  %74 = ptrtoint ptr %psmouse to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %psmouse, align 4
  br label %cleanup

do.end64:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %vendor, align 4
  %conv69 = zext i8 %4 to i32
  %77 = ptrtoint ptr %button_info to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %button_info, align 1
  %conv70 = zext i8 %78 to i32
  %79 = lshr i32 %conv70, 4
  %and73 = and i32 %conv70, 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev67, ptr noundef nonnull @.str.14, ptr noundef %76, i32 noundef %conv69, i32 noundef %79, i32 noundef %and73) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end64, %do.end55, %if.end4.cleanup_crit_edge, %trackpoint_start_protocol.exit.cleanup_crit_edge, %trackpoint_start_protocol.exit.thread
  %retval.0 = phi i32 [ -1, %do.end55 ], [ 0, %do.end64 ], [ 0, %trackpoint_start_protocol.exit.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ %retval.0.i.ph, %trackpoint_start_protocol.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %button_info) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trackpoint_reconnect(ptr noundef %psmouse) #0 align 64 {
entry:
  %param.i18 = alloca [2 x i8], align 2
  %param.i = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %param.i) #8
  %2 = ptrtoint ptr %param.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %param.i, align 2
  %ps2dev.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %call.i = call i32 @ps2_command(ptr noundef %ps2dev.i, ptr noundef nonnull %param.i, i32 noundef 737) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.trackpoint_start_protocol.exit.thread_crit_edge

entry.trackpoint_start_protocol.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_start_protocol.exit.thread

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %param.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %param.i, align 2
  %.off.i = add i8 %4, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 6
  br i1 %switch.i, label %if.end, label %if.end.i.trackpoint_start_protocol.exit.thread_crit_edge

if.end.i.trackpoint_start_protocol.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_start_protocol.exit.thread

trackpoint_start_protocol.exit.thread:            ; preds = %if.end.i.trackpoint_start_protocol.exit.thread_crit_edge, %entry.trackpoint_start_protocol.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -19, %if.end.i.trackpoint_start_protocol.exit.thread_crit_edge ], [ %call.i, %entry.trackpoint_start_protocol.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %param.i) #8
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %param.i) #8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp = icmp eq i8 %6, 1
  br i1 %cmp, label %land.rhs, label %if.end.land.end_crit_edge

if.end.land.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %param.i18) #8
  %7 = ptrtoint ptr %param.i18 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 32512, ptr %param.i18, align 2
  %call.i19 = call i32 @ps2_command(ptr noundef %ps2dev.i, ptr noundef nonnull %param.i18, i32 noundef 4834) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %tobool.not.i20 = icmp eq i32 %call.i19, 0
  br i1 %tobool.not.i20, label %if.end.i21, label %land.rhs.trackpoint_power_on_reset.exit_crit_edge

land.rhs.trackpoint_power_on_reset.exit_crit_edge: ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_power_on_reset.exit

if.end.i21:                                       ; preds = %land.rhs
  %8 = ptrtoint ptr %param.i18 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %param.i18, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %9)
  %cmp.not.i = icmp eq i8 %9, -86
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end.i21.trackpoint_power_on_reset.exit_crit_edge

if.end.i21.trackpoint_power_on_reset.exit_crit_edge: ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_power_on_reset.exit

lor.lhs.false.i:                                  ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx2.i = getelementptr inbounds [2 x i8], ptr %param.i18, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp4.not.i = icmp eq i8 %11, 0
  %spec.select.i = select i1 %cmp4.not.i, i32 0, i32 -19
  br label %trackpoint_power_on_reset.exit

trackpoint_power_on_reset.exit:                   ; preds = %lor.lhs.false.i, %if.end.i21.trackpoint_power_on_reset.exit_crit_edge, %land.rhs.trackpoint_power_on_reset.exit_crit_edge
  %retval.0.i22 = phi i32 [ %call.i19, %land.rhs.trackpoint_power_on_reset.exit_crit_edge ], [ -19, %if.end.i21.trackpoint_power_on_reset.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %param.i18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i22)
  %cmp3 = icmp eq i32 %retval.0.i22, 0
  br label %land.end

land.end:                                         ; preds = %trackpoint_power_on_reset.exit, %if.end.land.end_crit_edge
  %12 = phi i1 [ false, %if.end.land.end_crit_edge ], [ %cmp3, %trackpoint_power_on_reset.exit ]
  call fastcc void @trackpoint_sync(ptr noundef %psmouse, i1 noundef zeroext %12)
  br label %cleanup

cleanup:                                          ; preds = %land.end, %trackpoint_start_protocol.exit.thread
  %retval.0 = phi i32 [ 0, %land.end ], [ %retval.0.i.ph, %trackpoint_start_protocol.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trackpoint_disconnect(ptr nocapture noundef %psmouse) #0 align 64 {
entry:
  %groups.i = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %0 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps2dev, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %groups.i) #8
  %2 = getelementptr inbounds [2 x ptr], ptr %groups.i, i32 0, i32 1
  %3 = ptrtoint ptr %groups.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @trackpoint_attr_group, ptr %groups.i, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %2, align 4
  call void @device_remove_groups(ptr noundef %dev, ptr noundef nonnull %groups.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %groups.i) #8
  %5 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %psmouse, align 4
  call void @kfree(ptr noundef %6) #8
  %7 = ptrtoint ptr %psmouse to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %psmouse, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @trackpoint_power_on_reset(ptr noundef %ps2dev) unnamed_addr #0 align 64 {
entry:
  %param = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %param) #8
  %0 = ptrtoint ptr %param to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 32512, ptr %param, align 2
  %call = call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef nonnull %param, i32 noundef 4834) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %param to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %param, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %2)
  %cmp.not = icmp eq i8 %2, -86
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx2 = getelementptr inbounds [2 x i8], ptr %param, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp4.not = icmp eq i8 %4, 0
  %spec.select = select i1 %cmp4.not, i32 0, i32 -19
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %param) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trackpoint_sync(ptr noundef %psmouse, i1 noundef zeroext %in_power_on_state) unnamed_addr #0 align 64 {
entry:
  %param.i.i240 = alloca [3 x i8], align 1
  %data.i241 = alloca i8, align 1
  %param.i238 = alloca [3 x i8], align 1
  %param.i.i223 = alloca [3 x i8], align 1
  %data.i224 = alloca i8, align 1
  %param.i221 = alloca [3 x i8], align 1
  %param.i.i206 = alloca [3 x i8], align 1
  %data.i207 = alloca i8, align 1
  %param.i204 = alloca [3 x i8], align 1
  %param.i.i189 = alloca [3 x i8], align 1
  %data.i190 = alloca i8, align 1
  %param.i187 = alloca [3 x i8], align 1
  %param.i.i172 = alloca [3 x i8], align 1
  %data.i173 = alloca i8, align 1
  %param.i170 = alloca [3 x i8], align 1
  %param.i.i155 = alloca [3 x i8], align 1
  %data.i156 = alloca i8, align 1
  %param.i153 = alloca [3 x i8], align 1
  %param.i.i138 = alloca [3 x i8], align 1
  %data.i139 = alloca i8, align 1
  %param.i136 = alloca [3 x i8], align 1
  %param.i.i121 = alloca [3 x i8], align 1
  %data.i122 = alloca i8, align 1
  %param.i119 = alloca [3 x i8], align 1
  %param.i.i104 = alloca [3 x i8], align 1
  %data.i105 = alloca i8, align 1
  %param.i102 = alloca [3 x i8], align 1
  %param.i.i87 = alloca [3 x i8], align 1
  %data.i88 = alloca i8, align 1
  %param.i85 = alloca [3 x i8], align 1
  %param.i.i70 = alloca [3 x i8], align 1
  %data.i71 = alloca i8, align 1
  %param.i68 = alloca [3 x i8], align 1
  %param.i.i53 = alloca [3 x i8], align 1
  %data.i54 = alloca i8, align 1
  %param.i51 = alloca [3 x i8], align 1
  %param.i.i36 = alloca [3 x i8], align 1
  %data.i37 = alloca i8, align 1
  %param.i34 = alloca [3 x i8], align 1
  %param.i.i23 = alloca [3 x i8], align 1
  %data.i24 = alloca i8, align 1
  %param.i = alloca [3 x i8], align 1
  %param.i.i12 = alloca [3 x i8], align 1
  %data.i13 = alloca i8, align 1
  %param.i.i2 = alloca [3 x i8], align 1
  %data.i3 = alloca i8, align 1
  %param.i.i = alloca [3 x i8], align 1
  %data.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  br i1 %in_power_on_state, label %lor.lhs.false.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp eq i8 %3, 1
  br i1 %cmp, label %if.then, label %land.lhs.true.if.then14_crit_edge

land.lhs.true.if.then14_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

if.then:                                          ; preds = %land.lhs.true
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #8
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 45, ptr %data.i, align 1
  %call.i.i = call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef nonnull %data.i, i32 noundef 4578) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.trackpoint_update_bit.exit_crit_edge

if.then.trackpoint_update_bit.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_update_bit.exit

if.end.i:                                         ; preds = %if.then
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %data.i, align 1
  %and1.i = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and1.i)
  %cmp.i.not.not = icmp eq i8 %and1.i, 0
  br i1 %cmp.i.not.not, label %if.end.i.trackpoint_update_bit.exit_crit_edge, label %if.then9.i

if.end.i.trackpoint_update_bit.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_update_bit.exit

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param.i.i) #8
  %7 = getelementptr inbounds [3 x i8], ptr %param.i.i, i32 0, i32 1
  %8 = getelementptr inbounds [3 x i8], ptr %param.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %param.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 71, ptr %param.i.i, align 1
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 45, ptr %7, align 1
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %8, align 1
  %call.i2.i = call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef nonnull %param.i.i, i32 noundef 12514) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param.i.i) #8
  br label %trackpoint_update_bit.exit

trackpoint_update_bit.exit:                       ; preds = %if.then9.i, %if.end.i.trackpoint_update_bit.exit_crit_edge, %if.then.trackpoint_update_bit.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i3) #8
  %12 = ptrtoint ptr %data.i3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 32, ptr %data.i3, align 1
  %call.i.i4 = call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef nonnull %data.i3, i32 noundef 4578) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i4)
  %tobool.not.i5 = icmp eq i32 %call.i.i4, 0
  br i1 %tobool.not.i5, label %if.end.i8, label %trackpoint_update_bit.exit.trackpoint_update_bit.exit11_crit_edge

trackpoint_update_bit.exit.trackpoint_update_bit.exit11_crit_edge: ; preds = %trackpoint_update_bit.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_update_bit.exit11

if.end.i8:                                        ; preds = %trackpoint_update_bit.exit
  %13 = ptrtoint ptr %data.i3 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %data.i3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp.i7.not = icmp slt i8 %14, 0
  br i1 %cmp.i7.not, label %if.then9.i9, label %if.end.i8.trackpoint_update_bit.exit11_crit_edge

if.end.i8.trackpoint_update_bit.exit11_crit_edge: ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_update_bit.exit11

if.then9.i9:                                      ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param.i.i2) #8
  %15 = getelementptr inbounds [3 x i8], ptr %param.i.i2, i32 0, i32 1
  %16 = getelementptr inbounds [3 x i8], ptr %param.i.i2, i32 0, i32 2
  %17 = ptrtoint ptr %param.i.i2 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 71, ptr %param.i.i2, align 1
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 32, ptr %15, align 1
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -128, ptr %16, align 1
  %call.i2.i10 = call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef nonnull %param.i.i2, i32 noundef 12514) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param.i.i2) #8
  br label %trackpoint_update_bit.exit11

trackpoint_update_bit.exit11:                     ; preds = %if.then9.i9, %if.end.i8.trackpoint_update_bit.exit11_crit_edge, %trackpoint_update_bit.exit.trackpoint_update_bit.exit11_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i3) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i13) #8
  %20 = ptrtoint ptr %data.i13 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 35, ptr %data.i13, align 1
  %call.i.i14 = call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef nonnull %data.i13, i32 noundef 4578) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i14)
  %tobool.not.i15 = icmp eq i32 %call.i.i14, 0
  br i1 %tobool.not.i15, label %if.end.i18, label %trackpoint_update_bit.exit11.trackpoint_update_bit.exit21_crit_edge

trackpoint_update_bit.exit11.trackpoint_update_bit.exit21_crit_edge: ; preds = %trackpoint_update_bit.exit11
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_update_bit.exit21

if.end.i18:                                       ; preds = %trackpoint_update_bit.exit11
  %21 = ptrtoint ptr %data.i13 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %data.i13, align 1
  %and1.i16 = and i8 %22, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and1.i16)
  %cmp.i17.not.not = icmp eq i8 %and1.i16, 0
  br i1 %cmp.i17.not.not, label %if.end.i18.trackpoint_update_bit.exit21_crit_edge, label %if.then9.i19

if.end.i18.trackpoint_update_bit.exit21_crit_edge: ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_update_bit.exit21

if.then9.i19:                                     ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param.i.i12) #8
  %23 = getelementptr inbounds [3 x i8], ptr %param.i.i12, i32 0, i32 1
  %24 = getelementptr inbounds [3 x i8], ptr %param.i.i12, i32 0, i32 2
  %25 = ptrtoint ptr %param.i.i12 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 71, ptr %param.i.i12, align 1
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 35, ptr %23, align 1
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %24, align 1
  %call.i2.i20 = call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef nonnull %param.i.i12, i32 noundef 12514) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param.i.i12) #8
  br label %trackpoint_update_bit.exit21

trackpoint_update_bit.exit21:                     ; preds = %if.then9.i19, %if.end.i18.trackpoint_update_bit.exit21_crit_edge, %trackpoint_update_bit.exit11.trackpoint_update_bit.exit21_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i13) #8
  br label %if.then14

lor.lhs.false.critedge:                           ; preds = %entry
  %sensitivity = getelementptr inbounds %struct.trackpoint_data, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %sensitivity to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %sensitivity, align 1
  %30 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_sensitivity, i32 0, i32 4), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %30)
  %cmp9.not = icmp eq i8 %29, %30
  br i1 %cmp9.not, label %lor.lhs.false.critedge.lor.lhs.false30_crit_edge, label %lor.lhs.false.critedge.if.then14_crit_edge

lor.lhs.false.critedge.if.then14_crit_edge:       ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

lor.lhs.false.critedge.lor.lhs.false30_crit_edge: ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false30

if.then14:                                        ; preds = %lor.lhs.false.critedge.if.then14_crit_edge, %trackpoint_update_bit.exit21, %land.lhs.true.if.then14_crit_edge
  %31 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_sensitivity, i32 0, i32 2), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool15.not = icmp eq i8 %31, 0
  %ps2dev17 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %32 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_sensitivity, i32 0, i32 1), align 4
  %sensitivity18 = getelementptr inbounds %struct.trackpoint_data, ptr %1, i32 0, i32 2
  %33 = ptrtoint ptr %sensitivity18 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %sensitivity18, align 1
  br i1 %tobool15.not, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param.i) #8
  %35 = getelementptr inbounds [3 x i8], ptr %param.i, i32 0, i32 1
  %36 = getelementptr inbounds [3 x i8], ptr %param.i, i32 0, i32 2
  %37 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -127, ptr %param.i, align 1
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %32, ptr %35, align 1
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %34, ptr %36, align 1
  %call.i = call i32 @ps2_command(ptr noundef %ps2dev17, ptr noundef nonnull %param.i, i32 noundef 12514) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param.i) #8
  br label %if.end26

if.else:                                          ; preds = %if.then14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i24) #8
  %40 = ptrtoint ptr %data.i24 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %32, ptr %data.i24, align 1
  %call.i.i25 = call i32 @ps2_command(ptr noundef %ps2dev17, ptr noundef nonnull %data.i24, i32 noundef 4578) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i25)
  %tobool.not.i26 = icmp eq i32 %call.i.i25, 0
  br i1 %tobool.not.i26, label %if.end.i29, label %if.else.trackpoint_update_bit.exit32_crit_edge

if.else.trackpoint_update_bit.exit32_crit_edge:   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_update_bit.exit32

if.end.i29:                                       ; preds = %if.else
  %41 = ptrtoint ptr %data.i24 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %data.i24, align 1
  %and1.i27 = and i8 %42, %31
  call void @__sanitizer_cov_trace_cmp1(i8 %and1.i27, i8 %31)
  %cmp.i28 = icmp ne i8 %and1.i27, %31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool5.i = icmp ne i8 %34, 0
  %cmp7.not.i = xor i1 %tobool5.i, %cmp.i28
  br i1 %cmp7.not.i, label %if.end.i29.trackpoint_update_bit.exit32_crit_edge, label %if.then9.i30

if.end.i29.trackpoint_update_bit.exit32_crit_edge: ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_update_bit.exit32

if.then9.i30:                                     ; preds = %if.end.i29
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param.i.i23) #8
  %43 = getelementptr inbounds [3 x i8], ptr %param.i.i23, i32 0, i32 1
  %44 = getelementptr inbounds [3 x i8], ptr %param.i.i23, i32 0, i32 2
  %45 = ptrtoint ptr %param.i.i23 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 71, ptr %param.i.i23, align 1
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %32, ptr %43, align 1
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %31, ptr %44, align 1
  %48 = add i8 %32, -47
  call void @__sanitizer_cov_trace_const_cmp1(i8 -15, i8 %48)
  %49 = icmp ult i8 %48, -15
  br i1 %49, label %if.then9.i30.trackpoint_toggle_bit.exit.i_crit_edge, label %if.end.i.i

if.then9.i30.trackpoint_toggle_bit.exit.i_crit_edge: ; preds = %if.then9.i30
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_toggle_bit.exit.i

if.end.i.i:                                       ; preds = %if.then9.i30
  call void @__sanitizer_cov_trace_pc() #10
  %call.i2.i31 = call i32 @ps2_command(ptr noundef %ps2dev17, ptr noundef nonnull %param.i.i23, i32 noundef 12514) #8
  br label %trackpoint_toggle_bit.exit.i

trackpoint_toggle_bit.exit.i:                     ; preds = %if.end.i.i, %if.then9.i30.trackpoint_toggle_bit.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param.i.i23) #8
  br label %trackpoint_update_bit.exit32

trackpoint_update_bit.exit32:                     ; preds = %trackpoint_toggle_bit.exit.i, %if.end.i29.trackpoint_update_bit.exit32_crit_edge, %if.else.trackpoint_update_bit.exit32_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i24) #8
  br label %if.end26

if.end26:                                         ; preds = %trackpoint_update_bit.exit32, %if.then16
  br i1 %in_power_on_state, label %if.end26.lor.lhs.false30_crit_edge, label %if.end26.land.lhs.true36_crit_edge

if.end26.land.lhs.true36_crit_edge:               ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true36

if.end26.lor.lhs.false30_crit_edge:               ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %if.end26.lor.lhs.false30_crit_edge, %lor.lhs.false.critedge.lor.lhs.false30_crit_edge
  %inertia = getelementptr inbounds %struct.trackpoint_data, ptr %1, i32 0, i32 4
  %50 = ptrtoint ptr %inertia to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %inertia, align 1
  %52 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_inertia, i32 0, i32 4), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %51, i8 %52)
  %cmp34.not = icmp eq i8 %51, %52
  br i1 %cmp34.not, label %lor.lhs.false30.lor.lhs.false60_crit_edge, label %lor.lhs.false30.land.lhs.true36_crit_edge

lor.lhs.false30.land.lhs.true36_crit_edge:        ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true36

lor.lhs.false30.lor.lhs.false60_crit_edge:        ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false60

land.lhs.true36:                                  ; preds = %lor.lhs.false30.land.lhs.true36_crit_edge, %if.end26.land.lhs.true36_crit_edge
  %53 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %psmouse, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %54, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %56)
  %cmp.i33 = icmp eq i8 %56, 1
  br i1 %cmp.i33, label %if.then39, label %land.lhs.true36.if.end54_crit_edge

land.lhs.true36.if.end54_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then39:                                        ; preds = %land.lhs.true36
  %57 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_inertia, i32 0, i32 2), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool41.not = icmp eq i8 %57, 0
  %ps2dev43 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %58 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_inertia, i32 0, i32 1), align 4
  %inertia45 = getelementptr inbounds %struct.trackpoint_data, ptr %1, i32 0, i32 4
  %59 = ptrtoint ptr %inertia45 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %inertia45, align 1
  br i1 %tobool41.not, label %if.then42, label %if.else47

if.then42:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param.i34) #8
  %61 = getelementptr inbounds [3 x i8], ptr %param.i34, i32 0, i32 1
  %62 = getelementptr inbounds [3 x i8], ptr %param.i34, i32 0, i32 2
  %63 = ptrtoint ptr %param.i34 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 -127, ptr %param.i34, align 1
  %64 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %58, ptr %61, align 1
  %65 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %60, ptr %62, align 1
  %call.i35 = call i32 @ps2_command(ptr noundef %ps2dev43, ptr noundef nonnull %param.i34, i32 noundef 12514) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param.i34) #8
  br label %if.end54

if.else47:                                        ; preds = %if.then39
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i37) #8
  %66 = ptrtoint ptr %data.i37 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %58, ptr %data.i37, align 1
  %call.i.i38 = call i32 @ps2_command(ptr noundef %ps2dev43, ptr noundef nonnull %data.i37, i32 noundef 4578) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i38)
  %tobool.not.i39 = icmp eq i32 %call.i.i38, 0
  br i1 %tobool.not.i39, label %if.end.i44, label %if.else47.trackpoint_update_bit.exit49_crit_edge

if.else47.trackpoint_update_bit.exit49_crit_edge: ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_update_bit.exit49

if.end.i44:                                       ; preds = %if.else47
  %67 = ptrtoint ptr %data.i37 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %data.i37, align 1
  %and1.i40 = and i8 %68, %57
  call void @__sanitizer_cov_trace_cmp1(i8 %and1.i40, i8 %57)
  %cmp.i41 = icmp ne i8 %and1.i40, %57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool5.i42 = icmp ne i8 %60, 0
  %cmp7.not.i43 = xor i1 %tobool5.i42, %cmp.i41
  br i1 %cmp7.not.i43, label %if.end.i44.trackpoint_update_bit.exit49_crit_edge, label %if.then9.i45

if.end.i44.trackpoint_update_bit.exit49_crit_edge: ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_update_bit.exit49

if.then9.i45:                                     ; preds = %if.end.i44
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param.i.i36) #8
  %69 = getelementptr inbounds [3 x i8], ptr %param.i.i36, i32 0, i32 1
  %70 = getelementptr inbounds [3 x i8], ptr %param.i.i36, i32 0, i32 2
  %71 = ptrtoint ptr %param.i.i36 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 71, ptr %param.i.i36, align 1
  %72 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %58, ptr %69, align 1
  %73 = ptrtoint ptr %70 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %57, ptr %70, align 1
  %74 = add i8 %58, -47
  call void @__sanitizer_cov_trace_const_cmp1(i8 -15, i8 %74)
  %75 = icmp ult i8 %74, -15
  br i1 %75, label %if.then9.i45.trackpoint_toggle_bit.exit.i48_crit_edge, label %if.end.i.i47

if.then9.i45.trackpoint_toggle_bit.exit.i48_crit_edge: ; preds = %if.then9.i45
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_toggle_bit.exit.i48

if.end.i.i47:                                     ; preds = %if.then9.i45
  call void @__sanitizer_cov_trace_pc() #10
  %call.i2.i46 = call i32 @ps2_command(ptr noundef %ps2dev43, ptr noundef nonnull %param.i.i36, i32 noundef 12514) #8
  br label %trackpoint_toggle_bit.exit.i48

trackpoint_toggle_bit.exit.i48:                   ; preds = %if.end.i.i47, %if.then9.i45.trackpoint_toggle_bit.exit.i48_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param.i.i36) #8
  br label %trackpoint_update_bit.exit49

trackpoint_update_bit.exit49:                     ; preds = %trackpoint_toggle_bit.exit.i48, %if.end.i44.trackpoint_update_bit.exit49_crit_edge, %if.else47.trackpoint_update_bit.exit49_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i37) #8
  br label %if.end54

if.end54:                                         ; preds = %trackpoint_update_bit.exit49, %if.then42, %land.lhs.true36.if.end54_crit_edge
  br i1 %in_power_on_state, label %if.end54.lor.lhs.false60_crit_edge, label %if.end54.land.lhs.true66_crit_edge

if.end54.land.lhs.true66_crit_edge:               ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true66

if.end54.lor.lhs.false60_crit_edge:               ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %if.end54.lor.lhs.false60_crit_edge, %lor.lhs.false30.lor.lhs.false60_crit_edge
  %speed = getelementptr inbounds %struct.trackpoint_data, ptr %1, i32 0, i32 3
  %76 = ptrtoint ptr %speed to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %speed, align 1
  %78 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_speed, i32 0, i32 4), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %77, i8 %78)
  %cmp64.not = icmp eq i8 %77, %78
  br i1 %cmp64.not, label %lor.lhs.false60.lor.lhs.false90_crit_edge, label %lor.lhs.false60.land.lhs.true66_crit_edge

lor.lhs.false60.land.lhs.true66_crit_edge:        ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true66

lor.lhs.false60.lor.lhs.false90_crit_edge:        ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false90

land.lhs.true66:                                  ; preds = %lor.lhs.false60.land.lhs.true66_crit_edge, %if.end54.land.lhs.true66_crit_edge
  %79 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %psmouse, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %80, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %82)
  %cmp.i50 = icmp eq i8 %82, 1
  br i1 %cmp.i50, label %if.then69, label %land.lhs.true66.if.end84_crit_edge

land.lhs.true66.if.end84_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.then69:                                        ; preds = %land.lhs.true66
  %83 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_speed, i32 0, i32 2), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool71.not = icmp eq i8 %83, 0
  %ps2dev73 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %84 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_speed, i32 0, i32 1), align 4
  %speed75 = getelementptr inbounds %struct.trackpoint_data, ptr %1, i32 0, i32 3
  %85 = ptrtoint ptr %speed75 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %speed75, align 1
  br i1 %tobool71.not, label %if.then72, label %if.else77

if.then72:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param.i51) #8
  %87 = getelementptr inbounds [3 x i8], ptr %param.i51, i32 0, i32 1
  %88 = getelementptr inbounds [3 x i8], ptr %param.i51, i32 0, i32 2
  %89 = ptrtoint ptr %param.i51 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 -127, ptr %param.i51, align 1
  %90 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %84, ptr %87, align 1
  %91 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %86, ptr %88, align 1
  %call.i52 = call i32 @ps2_command(ptr noundef %ps2dev73, ptr noundef nonnull %param.i51, i32 noundef 12514) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param.i51) #8
  br label %if.end84

if.else77:                                        ; preds = %if.then69
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i54) #8
  %92 = ptrtoint ptr %data.i54 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %84, ptr %data.i54, align 1
  %call.i.i55 = call i32 @ps2_command(ptr noundef %ps2dev73, ptr noundef nonnull %data.i54, i32 noundef 4578) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i55)
  %tobool.not.i56 = icmp eq i32 %call.i.i55, 0
  br i1 %tobool.not.i56, label %if.end.i61, label %if.else77.trackpoint_update_bit.exit66_crit_edge

if.else77.trackpoint_update_bit.exit66_crit_edge: ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_update_bit.exit66

if.end.i61:                                       ; preds = %if.else77
  %93 = ptrtoint ptr %data.i54 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %data.i54, align 1
  %and1.i57 = and i8 %94, %83
  call void @__sanitizer_cov_trace_cmp1(i8 %and1.i57, i8 %83)
  %cmp.i58 = icmp ne i8 %and1.i57, %83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool5.i59 = icmp ne i8 %86, 0
  %cmp7.not.i60 = xor i1 %tobool5.i59, %cmp.i58
  br i1 %cmp7.not.i60, label %if.end.i61.trackpoint_update_bit.exit66_crit_edge, label %if.then9.i62

if.end.i61.trackpoint_update_bit.exit66_crit_edge: ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_update_bit.exit66

if.then9.i62:                                     ; preds = %if.end.i61
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param.i.i53) #8
  %95 = getelementptr inbounds [3 x i8], ptr %param.i.i53, i32 0, i32 1
  %96 = getelementptr inbounds [3 x i8], ptr %param.i.i53, i32 0, i32 2
  %97 = ptrtoint ptr %param.i.i53 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 71, ptr %param.i.i53, align 1
  %98 = ptrtoint ptr %95 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %84, ptr %95, align 1
  %99 = ptrtoint ptr %96 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %83, ptr %96, align 1
  %100 = add i8 %84, -47
  call void @__sanitizer_cov_trace_const_cmp1(i8 -15, i8 %100)
  %101 = icmp ult i8 %100, -15
  br i1 %101, label %if.then9.i62.trackpoint_toggle_bit.exit.i65_crit_edge, label %if.end.i.i64

if.then9.i62.trackpoint_toggle_bit.exit.i65_crit_edge: ; preds = %if.then9.i62
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_toggle_bit.exit.i65

if.end.i.i64:                                     ; preds = %if.then9.i62
  call void @__sanitizer_cov_trace_pc() #10
  %call.i2.i63 = call i32 @ps2_command(ptr noundef %ps2dev73, ptr noundef nonnull %param.i.i53, i32 noundef 12514) #8
  br label %trackpoint_toggle_bit.exit.i65

trackpoint_toggle_bit.exit.i65:                   ; preds = %if.end.i.i64, %if.then9.i62.trackpoint_toggle_bit.exit.i65_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param.i.i53) #8
  br label %trackpoint_update_bit.exit66

trackpoint_update_bit.exit66:                     ; preds = %trackpoint_toggle_bit.exit.i65, %if.end.i61.trackpoint_update_bit.exit66_crit_edge, %if.else77.trackpoint_update_bit.exit66_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i54) #8
  br label %if.end84

if.end84:                                         ; preds = %trackpoint_update_bit.exit66, %if.then72, %land.lhs.true66.if.end84_crit_edge
  br i1 %in_power_on_state, label %if.end84.lor.lhs.false90_crit_edge, label %if.end84.land.lhs.true96_crit_edge

if.end84.land.lhs.true96_crit_edge:               ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true96

if.end84.lor.lhs.false90_crit_edge:               ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false90

lor.lhs.false90:                                  ; preds = %if.end84.lor.lhs.false90_crit_edge, %lor.lhs.false60.lor.lhs.false90_crit_edge
  %reach = getelementptr inbounds %struct.trackpoint_data, ptr %1, i32 0, i32 5
  %102 = ptrtoint ptr %reach to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %reach, align 1
  %104 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_reach, i32 0, i32 4), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %103, i8 %104)
  %cmp94.not = icmp eq i8 %103, %104
  br i1 %cmp94.not, label %lor.lhs.false90.lor.lhs.false120_crit_edge, label %lor.lhs.false90.land.lhs.true96_crit_edge

lor.lhs.false90.land.lhs.true96_crit_edge:        ; preds = %lor.lhs.false90
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true96

lor.lhs.false90.lor.lhs.false120_crit_edge:       ; preds = %lor.lhs.false90
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false120

land.lhs.true96:                                  ; preds = %lor.lhs.false90.land.lhs.true96_crit_edge, %if.end84.land.lhs.true96_crit_edge
  %105 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %psmouse, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %106, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %108)
  %cmp.i67 = icmp eq i8 %108, 1
  br i1 %cmp.i67, label %if.then99, label %land.lhs.true96.if.end114_crit_edge

land.lhs.true96.if.end114_crit_edge:              ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end114

if.then99:                                        ; preds = %land.lhs.true96
  %109 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_reach, i32 0, i32 2), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool101.not = icmp eq i8 %109, 0
  %ps2dev103 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %110 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_reach, i32 0, i32 1), align 4
  %reach105 = getelementptr inbounds %struct.trackpoint_data, ptr %1, i32 0, i32 5
  %111 = ptrtoint ptr %reach105 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %reach105, align 1
  br i1 %tobool101.not, label %if.then102, label %if.else107

if.then102:                                       ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param.i68) #8
  %113 = getelementptr inbounds [3 x i8], ptr %param.i68, i32 0, i32 1
  %114 = getelementptr inbounds [3 x i8], ptr %param.i68, i32 0, i32 2
  %115 = ptrtoint ptr %param.i68 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 -127, ptr %param.i68, align 1
  %116 = ptrtoint ptr %113 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %110, ptr %113, align 1
  %117 = ptrtoint ptr %114 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %112, ptr %114, align 1
  %call.i69 = call i32 @ps2_command(ptr noundef %ps2dev103, ptr noundef nonnull %param.i68, i32 noundef 12514) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param.i68) #8
  br label %if.end114

if.else107:                                       ; preds = %if.then99
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i71) #8
  %118 = ptrtoint ptr %data.i71 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %110, ptr %data.i71, align 1
  %call.i.i72 = call i32 @ps2_command(ptr noundef %ps2dev103, ptr noundef nonnull %data.i71, i32 noundef 4578) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i72)
  %tobool.not.i73 = icmp eq i32 %call.i.i72, 0
  br i1 %tobool.not.i73, label %if.end.i78, label %if.else107.trackpoint_update_bit.exit83_crit_edge

if.else107.trackpoint_update_bit.exit83_crit_edge: ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_update_bit.exit83

if.end.i78:                                       ; preds = %if.else107
  %119 = ptrtoint ptr %data.i71 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %data.i71, align 1
  %and1.i74 = and i8 %120, %109
  call void @__sanitizer_cov_trace_cmp1(i8 %and1.i74, i8 %109)
  %cmp.i75 = icmp ne i8 %and1.i74, %109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool5.i76 = icmp ne i8 %112, 0
  %cmp7.not.i77 = xor i1 %tobool5.i76, %cmp.i75
  br i1 %cmp7.not.i77, label %if.end.i78.trackpoint_update_bit.exit83_crit_edge, label %if.then9.i79

if.end.i78.trackpoint_update_bit.exit83_crit_edge: ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_update_bit.exit83

if.then9.i79:                                     ; preds = %if.end.i78
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param.i.i70) #8
  %121 = getelementptr inbounds [3 x i8], ptr %param.i.i70, i32 0, i32 1
  %122 = getelementptr inbounds [3 x i8], ptr %param.i.i70, i32 0, i32 2
  %123 = ptrtoint ptr %param.i.i70 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 71, ptr %param.i.i70, align 1
  %124 = ptrtoint ptr %121 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %110, ptr %121, align 1
  %125 = ptrtoint ptr %122 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %109, ptr %122, align 1
  %126 = add i8 %110, -47
  call void @__sanitizer_cov_trace_const_cmp1(i8 -15, i8 %126)
  %127 = icmp ult i8 %126, -15
  br i1 %127, label %if.then9.i79.trackpoint_toggle_bit.exit.i82_crit_edge, label %if.end.i.i81

if.then9.i79.trackpoint_toggle_bit.exit.i82_crit_edge: ; preds = %if.then9.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_toggle_bit.exit.i82

if.end.i.i81:                                     ; preds = %if.then9.i79
  call void @__sanitizer_cov_trace_pc() #10
  %call.i2.i80 = call i32 @ps2_command(ptr noundef %ps2dev103, ptr noundef nonnull %param.i.i70, i32 noundef 12514) #8
  br label %trackpoint_toggle_bit.exit.i82

trackpoint_toggle_bit.exit.i82:                   ; preds = %if.end.i.i81, %if.then9.i79.trackpoint_toggle_bit.exit.i82_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param.i.i70) #8
  br label %trackpoint_update_bit.exit83

trackpoint_update_bit.exit83:                     ; preds = %trackpoint_toggle_bit.exit.i82, %if.end.i78.trackpoint_update_bit.exit83_crit_edge, %if.else107.trackpoint_update_bit.exit83_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i71) #8
  br label %if.end114

if.end114:                                        ; preds = %trackpoint_update_bit.exit83, %if.then102, %land.lhs.true96.if.end114_crit_edge
  br i1 %in_power_on_state, label %if.end114.lor.lhs.false120_crit_edge, label %if.end114.land.lhs.true126_crit_edge

if.end114.land.lhs.true126_crit_edge:             ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true126

if.end114.lor.lhs.false120_crit_edge:             ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false120

lor.lhs.false120:                                 ; preds = %if.end114.lor.lhs.false120_crit_edge, %lor.lhs.false90.lor.lhs.false120_crit_edge
  %draghys = getelementptr inbounds %struct.trackpoint_data, ptr %1, i32 0, i32 6
  %128 = ptrtoint ptr %draghys to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %draghys, align 1
  %130 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_draghys, i32 0, i32 4), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %129, i8 %130)
  %cmp124.not = icmp eq i8 %129, %130
  br i1 %cmp124.not, label %lor.lhs.false120.lor.lhs.false150_crit_edge, label %lor.lhs.false120.land.lhs.true126_crit_edge

lor.lhs.false120.land.lhs.true126_crit_edge:      ; preds = %lor.lhs.false120
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true126

lor.lhs.false120.lor.lhs.false150_crit_edge:      ; preds = %lor.lhs.false120
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false150

land.lhs.true126:                                 ; preds = %lor.lhs.false120.land.lhs.true126_crit_edge, %if.end114.land.lhs.true126_crit_edge
  %131 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %psmouse, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %132, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %134)
  %cmp.i84 = icmp eq i8 %134, 1
  br i1 %cmp.i84, label %if.then129, label %land.lhs.true126.if.end144_crit_edge

land.lhs.true126.if.end144_crit_edge:             ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end144

if.then129:                                       ; preds = %land.lhs.true126
  %135 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_draghys, i32 0, i32 2), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool131.not = icmp eq i8 %135, 0
  %ps2dev133 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %136 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_draghys, i32 0, i32 1), align 4
  %draghys135 = getelementptr inbounds %struct.trackpoint_data, ptr %1, i32 0, i32 6
  %137 = ptrtoint ptr %draghys135 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %draghys135, align 1
  br i1 %tobool131.not, label %if.then132, label %if.else137

if.then132:                                       ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param.i85) #8
  %139 = getelementptr inbounds [3 x i8], ptr %param.i85, i32 0, i32 1
  %140 = getelementptr inbounds [3 x i8], ptr %param.i85, i32 0, i32 2
  %141 = ptrtoint ptr %param.i85 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 -127, ptr %param.i85, align 1
  %142 = ptrtoint ptr %139 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %136, ptr %139, align 1
  %143 = ptrtoint ptr %140 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %138, ptr %140, align 1
  %call.i86 = call i32 @ps2_command(ptr noundef %ps2dev133, ptr noundef nonnull %param.i85, i32 noundef 12514) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param.i85) #8
  br label %if.end144

if.else137:                                       ; preds = %if.then129
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i88) #8
  %144 = ptrtoint ptr %data.i88 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %136, ptr %data.i88, align 1
  %call.i.i89 = call i32 @ps2_command(ptr noundef %ps2dev133, ptr noundef nonnull %data.i88, i32 noundef 4578) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i89)
  %tobool.not.i90 = icmp eq i32 %call.i.i89, 0
  br i1 %tobool.not.i90, label %if.end.i95, label %if.else137.trackpoint_update_bit.exit100_crit_edge

if.else137.trackpoint_update_bit.exit100_crit_edge: ; preds = %if.else137
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_update_bit.exit100

if.end.i95:                                       ; preds = %if.else137
  %145 = ptrtoint ptr %data.i88 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %data.i88, align 1
  %and1.i91 = and i8 %146, %135
  call void @__sanitizer_cov_trace_cmp1(i8 %and1.i91, i8 %135)
  %cmp.i92 = icmp ne i8 %and1.i91, %135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %tobool5.i93 = icmp ne i8 %138, 0
  %cmp7.not.i94 = xor i1 %tobool5.i93, %cmp.i92
  br i1 %cmp7.not.i94, label %if.end.i95.trackpoint_update_bit.exit100_crit_edge, label %if.then9.i96

if.end.i95.trackpoint_update_bit.exit100_crit_edge: ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_update_bit.exit100

if.then9.i96:                                     ; preds = %if.end.i95
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param.i.i87) #8
  %147 = getelementptr inbounds [3 x i8], ptr %param.i.i87, i32 0, i32 1
  %148 = getelementptr inbounds [3 x i8], ptr %param.i.i87, i32 0, i32 2
  %149 = ptrtoint ptr %param.i.i87 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 71, ptr %param.i.i87, align 1
  %150 = ptrtoint ptr %147 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %136, ptr %147, align 1
  %151 = ptrtoint ptr %148 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %135, ptr %148, align 1
  %152 = add i8 %136, -47
  call void @__sanitizer_cov_trace_const_cmp1(i8 -15, i8 %152)
  %153 = icmp ult i8 %152, -15
  br i1 %153, label %if.then9.i96.trackpoint_toggle_bit.exit.i99_crit_edge, label %if.end.i.i98

if.then9.i96.trackpoint_toggle_bit.exit.i99_crit_edge: ; preds = %if.then9.i96
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_toggle_bit.exit.i99

if.end.i.i98:                                     ; preds = %if.then9.i96
  call void @__sanitizer_cov_trace_pc() #10
  %call.i2.i97 = call i32 @ps2_command(ptr noundef %ps2dev133, ptr noundef nonnull %param.i.i87, i32 noundef 12514) #8
  br label %trackpoint_toggle_bit.exit.i99

trackpoint_toggle_bit.exit.i99:                   ; preds = %if.end.i.i98, %if.then9.i96.trackpoint_toggle_bit.exit.i99_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param.i.i87) #8
  br label %trackpoint_update_bit.exit100

trackpoint_update_bit.exit100:                    ; preds = %trackpoint_toggle_bit.exit.i99, %if.end.i95.trackpoint_update_bit.exit100_crit_edge, %if.else137.trackpoint_update_bit.exit100_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i88) #8
  br label %if.end144

if.end144:                                        ; preds = %trackpoint_update_bit.exit100, %if.then132, %land.lhs.true126.if.end144_crit_edge
  br i1 %in_power_on_state, label %if.end144.lor.lhs.false150_crit_edge, label %if.end144.land.lhs.true156_crit_edge

if.end144.land.lhs.true156_crit_edge:             ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true156

if.end144.lor.lhs.false150_crit_edge:             ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false150

lor.lhs.false150:                                 ; preds = %if.end144.lor.lhs.false150_crit_edge, %lor.lhs.false120.lor.lhs.false150_crit_edge
  %mindrag = getelementptr inbounds %struct.trackpoint_data, ptr %1, i32 0, i32 7
  %154 = ptrtoint ptr %mindrag to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %mindrag, align 1
  %156 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_mindrag, i32 0, i32 4), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %155, i8 %156)
  %cmp154.not = icmp eq i8 %155, %156
  br i1 %cmp154.not, label %lor.lhs.false150.lor.lhs.false180_crit_edge, label %lor.lhs.false150.land.lhs.true156_crit_edge

lor.lhs.false150.land.lhs.true156_crit_edge:      ; preds = %lor.lhs.false150
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true156

lor.lhs.false150.lor.lhs.false180_crit_edge:      ; preds = %lor.lhs.false150
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false180

land.lhs.true156:                                 ; preds = %lor.lhs.false150.land.lhs.true156_crit_edge, %if.end144.land.lhs.true156_crit_edge
  %157 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %psmouse, align 4
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %158, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %160)
  %cmp.i101 = icmp eq i8 %160, 1
  br i1 %cmp.i101, label %if.then159, label %land.lhs.true156.if.end174_crit_edge

land.lhs.true156.if.end174_crit_edge:             ; preds = %land.lhs.true156
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end174

if.then159:                                       ; preds = %land.lhs.true156
  %161 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_mindrag, i32 0, i32 2), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool161.not = icmp eq i8 %161, 0
  %ps2dev163 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %162 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_mindrag, i32 0, i32 1), align 4
  %mindrag165 = getelementptr inbounds %struct.trackpoint_data, ptr %1, i32 0, i32 7
  %163 = ptrtoint ptr %mindrag165 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %mindrag165, align 1
  br i1 %tobool161.not, label %if.then162, label %if.else167

if.then162:                                       ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param.i102) #8
  %165 = getelementptr inbounds [3 x i8], ptr %param.i102, i32 0, i32 1
  %166 = getelementptr inbounds [3 x i8], ptr %param.i102, i32 0, i32 2
  %167 = ptrtoint ptr %param.i102 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 -127, ptr %param.i102, align 1
  %168 = ptrtoint ptr %165 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %162, ptr %165, align 1
  %169 = ptrtoint ptr %166 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %164, ptr %166, align 1
  %call.i103 = call i32 @ps2_command(ptr noundef %ps2dev163, ptr noundef nonnull %param.i102, i32 noundef 12514) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param.i102) #8
  br label %if.end174

if.else167:                                       ; preds = %if.then159
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i105) #8
  %170 = ptrtoint ptr %data.i105 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %162, ptr %data.i105, align 1
  %call.i.i106 = call i32 @ps2_command(ptr noundef %ps2dev163, ptr noundef nonnull %data.i105, i32 noundef 4578) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i106)
  %tobool.not.i107 = icmp eq i32 %call.i.i106, 0
  br i1 %tobool.not.i107, label %if.end.i112, label %if.else167.trackpoint_update_bit.exit117_crit_edge

if.else167.trackpoint_update_bit.exit117_crit_edge: ; preds = %if.else167
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_update_bit.exit117

if.end.i112:                                      ; preds = %if.else167
  %171 = ptrtoint ptr %data.i105 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %data.i105, align 1
  %and1.i108 = and i8 %172, %161
  call void @__sanitizer_cov_trace_cmp1(i8 %and1.i108, i8 %161)
  %cmp.i109 = icmp ne i8 %and1.i108, %161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool5.i110 = icmp ne i8 %164, 0
  %cmp7.not.i111 = xor i1 %tobool5.i110, %cmp.i109
  br i1 %cmp7.not.i111, label %if.end.i112.trackpoint_update_bit.exit117_crit_edge, label %if.then9.i113

if.end.i112.trackpoint_update_bit.exit117_crit_edge: ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_update_bit.exit117

if.then9.i113:                                    ; preds = %if.end.i112
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param.i.i104) #8
  %173 = getelementptr inbounds [3 x i8], ptr %param.i.i104, i32 0, i32 1
  %174 = getelementptr inbounds [3 x i8], ptr %param.i.i104, i32 0, i32 2
  %175 = ptrtoint ptr %param.i.i104 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 71, ptr %param.i.i104, align 1
  %176 = ptrtoint ptr %173 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %162, ptr %173, align 1
  %177 = ptrtoint ptr %174 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %161, ptr %174, align 1
  %178 = add i8 %162, -47
  call void @__sanitizer_cov_trace_const_cmp1(i8 -15, i8 %178)
  %179 = icmp ult i8 %178, -15
  br i1 %179, label %if.then9.i113.trackpoint_toggle_bit.exit.i116_crit_edge, label %if.end.i.i115

if.then9.i113.trackpoint_toggle_bit.exit.i116_crit_edge: ; preds = %if.then9.i113
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_toggle_bit.exit.i116

if.end.i.i115:                                    ; preds = %if.then9.i113
  call void @__sanitizer_cov_trace_pc() #10
  %call.i2.i114 = call i32 @ps2_command(ptr noundef %ps2dev163, ptr noundef nonnull %param.i.i104, i32 noundef 12514) #8
  br label %trackpoint_toggle_bit.exit.i116

trackpoint_toggle_bit.exit.i116:                  ; preds = %if.end.i.i115, %if.then9.i113.trackpoint_toggle_bit.exit.i116_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param.i.i104) #8
  br label %trackpoint_update_bit.exit117

trackpoint_update_bit.exit117:                    ; preds = %trackpoint_toggle_bit.exit.i116, %if.end.i112.trackpoint_update_bit.exit117_crit_edge, %if.else167.trackpoint_update_bit.exit117_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i105) #8
  br label %if.end174

if.end174:                                        ; preds = %trackpoint_update_bit.exit117, %if.then162, %land.lhs.true156.if.end174_crit_edge
  br i1 %in_power_on_state, label %if.end174.lor.lhs.false180_crit_edge, label %if.end174.land.lhs.true186_crit_edge

if.end174.land.lhs.true186_crit_edge:             ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true186

if.end174.lor.lhs.false180_crit_edge:             ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false180

lor.lhs.false180:                                 ; preds = %if.end174.lor.lhs.false180_crit_edge, %lor.lhs.false150.lor.lhs.false180_crit_edge
  %thresh = getelementptr inbounds %struct.trackpoint_data, ptr %1, i32 0, i32 8
  %180 = ptrtoint ptr %thresh to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %thresh, align 1
  %182 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_thresh, i32 0, i32 4), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %181, i8 %182)
  %cmp184.not = icmp eq i8 %181, %182
  br i1 %cmp184.not, label %lor.lhs.false180.lor.lhs.false210_crit_edge, label %lor.lhs.false180.land.lhs.true186_crit_edge

lor.lhs.false180.land.lhs.true186_crit_edge:      ; preds = %lor.lhs.false180
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true186

lor.lhs.false180.lor.lhs.false210_crit_edge:      ; preds = %lor.lhs.false180
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false210

land.lhs.true186:                                 ; preds = %lor.lhs.false180.land.lhs.true186_crit_edge, %if.end174.land.lhs.true186_crit_edge
  %183 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %psmouse, align 4
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %184, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %186)
  %cmp.i118 = icmp eq i8 %186, 1
  br i1 %cmp.i118, label %if.then189, label %land.lhs.true186.if.end204_crit_edge

land.lhs.true186.if.end204_crit_edge:             ; preds = %land.lhs.true186
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end204

if.then189:                                       ; preds = %land.lhs.true186
  %187 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_thresh, i32 0, i32 2), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %187)
  %tobool191.not = icmp eq i8 %187, 0
  %ps2dev193 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %188 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_thresh, i32 0, i32 1), align 4
  %thresh195 = getelementptr inbounds %struct.trackpoint_data, ptr %1, i32 0, i32 8
  %189 = ptrtoint ptr %thresh195 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %thresh195, align 1
  br i1 %tobool191.not, label %if.then192, label %if.else197

if.then192:                                       ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param.i119) #8
  %191 = getelementptr inbounds [3 x i8], ptr %param.i119, i32 0, i32 1
  %192 = getelementptr inbounds [3 x i8], ptr %param.i119, i32 0, i32 2
  %193 = ptrtoint ptr %param.i119 to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 -127, ptr %param.i119, align 1
  %194 = ptrtoint ptr %191 to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %188, ptr %191, align 1
  %195 = ptrtoint ptr %192 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %190, ptr %192, align 1
  %call.i120 = call i32 @ps2_command(ptr noundef %ps2dev193, ptr noundef nonnull %param.i119, i32 noundef 12514) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param.i119) #8
  br label %if.end204

if.else197:                                       ; preds = %if.then189
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i122) #8
  %196 = ptrtoint ptr %data.i122 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %188, ptr %data.i122, align 1
  %call.i.i123 = call i32 @ps2_command(ptr noundef %ps2dev193, ptr noundef nonnull %data.i122, i32 noundef 4578) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i123)
  %tobool.not.i124 = icmp eq i32 %call.i.i123, 0
  br i1 %tobool.not.i124, label %if.end.i129, label %if.else197.trackpoint_update_bit.exit134_crit_edge

if.else197.trackpoint_update_bit.exit134_crit_edge: ; preds = %if.else197
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_update_bit.exit134

if.end.i129:                                      ; preds = %if.else197
  %197 = ptrtoint ptr %data.i122 to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %data.i122, align 1
  %and1.i125 = and i8 %198, %187
  call void @__sanitizer_cov_trace_cmp1(i8 %and1.i125, i8 %187)
  %cmp.i126 = icmp ne i8 %and1.i125, %187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %tobool5.i127 = icmp ne i8 %190, 0
  %cmp7.not.i128 = xor i1 %tobool5.i127, %cmp.i126
  br i1 %cmp7.not.i128, label %if.end.i129.trackpoint_update_bit.exit134_crit_edge, label %if.then9.i130

if.end.i129.trackpoint_update_bit.exit134_crit_edge: ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_update_bit.exit134

if.then9.i130:                                    ; preds = %if.end.i129
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param.i.i121) #8
  %199 = getelementptr inbounds [3 x i8], ptr %param.i.i121, i32 0, i32 1
  %200 = getelementptr inbounds [3 x i8], ptr %param.i.i121, i32 0, i32 2
  %201 = ptrtoint ptr %param.i.i121 to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 71, ptr %param.i.i121, align 1
  %202 = ptrtoint ptr %199 to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 %188, ptr %199, align 1
  %203 = ptrtoint ptr %200 to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %187, ptr %200, align 1
  %204 = add i8 %188, -47
  call void @__sanitizer_cov_trace_const_cmp1(i8 -15, i8 %204)
  %205 = icmp ult i8 %204, -15
  br i1 %205, label %if.then9.i130.trackpoint_toggle_bit.exit.i133_crit_edge, label %if.end.i.i132

if.then9.i130.trackpoint_toggle_bit.exit.i133_crit_edge: ; preds = %if.then9.i130
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_toggle_bit.exit.i133

if.end.i.i132:                                    ; preds = %if.then9.i130
  call void @__sanitizer_cov_trace_pc() #10
  %call.i2.i131 = call i32 @ps2_command(ptr noundef %ps2dev193, ptr noundef nonnull %param.i.i121, i32 noundef 12514) #8
  br label %trackpoint_toggle_bit.exit.i133

trackpoint_toggle_bit.exit.i133:                  ; preds = %if.end.i.i132, %if.then9.i130.trackpoint_toggle_bit.exit.i133_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param.i.i121) #8
  br label %trackpoint_update_bit.exit134

trackpoint_update_bit.exit134:                    ; preds = %trackpoint_toggle_bit.exit.i133, %if.end.i129.trackpoint_update_bit.exit134_crit_edge, %if.else197.trackpoint_update_bit.exit134_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i122) #8
  br label %if.end204

if.end204:                                        ; preds = %trackpoint_update_bit.exit134, %if.then192, %land.lhs.true186.if.end204_crit_edge
  br i1 %in_power_on_state, label %if.end204.lor.lhs.false210_crit_edge, label %if.end204.land.lhs.true216_crit_edge

if.end204.land.lhs.true216_crit_edge:             ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true216

if.end204.lor.lhs.false210_crit_edge:             ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false210

lor.lhs.false210:                                 ; preds = %if.end204.lor.lhs.false210_crit_edge, %lor.lhs.false180.lor.lhs.false210_crit_edge
  %upthresh = getelementptr inbounds %struct.trackpoint_data, ptr %1, i32 0, i32 9
  %206 = ptrtoint ptr %upthresh to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %upthresh, align 1
  %208 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_upthresh, i32 0, i32 4), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %207, i8 %208)
  %cmp214.not = icmp eq i8 %207, %208
  br i1 %cmp214.not, label %lor.lhs.false210.lor.lhs.false240_crit_edge, label %lor.lhs.false210.land.lhs.true216_crit_edge

lor.lhs.false210.land.lhs.true216_crit_edge:      ; preds = %lor.lhs.false210
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true216

lor.lhs.false210.lor.lhs.false240_crit_edge:      ; preds = %lor.lhs.false210
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false240

land.lhs.true216:                                 ; preds = %lor.lhs.false210.land.lhs.true216_crit_edge, %if.end204.land.lhs.true216_crit_edge
  %209 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %psmouse, align 4
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %210, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %212)
  %cmp.i135 = icmp eq i8 %212, 1
  br i1 %cmp.i135, label %if.then219, label %land.lhs.true216.if.end234_crit_edge

land.lhs.true216.if.end234_crit_edge:             ; preds = %land.lhs.true216
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end234

if.then219:                                       ; preds = %land.lhs.true216
  %213 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_upthresh, i32 0, i32 2), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %213)
  %tobool221.not = icmp eq i8 %213, 0
  %ps2dev223 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %214 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_upthresh, i32 0, i32 1), align 4
  %upthresh225 = getelementptr inbounds %struct.trackpoint_data, ptr %1, i32 0, i32 9
  %215 = ptrtoint ptr %upthresh225 to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %upthresh225, align 1
  br i1 %tobool221.not, label %if.then222, label %if.else227

if.then222:                                       ; preds = %if.then219
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param.i136) #8
  %217 = getelementptr inbounds [3 x i8], ptr %param.i136, i32 0, i32 1
  %218 = getelementptr inbounds [3 x i8], ptr %param.i136, i32 0, i32 2
  %219 = ptrtoint ptr %param.i136 to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 -127, ptr %param.i136, align 1
  %220 = ptrtoint ptr %217 to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 %214, ptr %217, align 1
  %221 = ptrtoint ptr %218 to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 %216, ptr %218, align 1
  %call.i137 = call i32 @ps2_command(ptr noundef %ps2dev223, ptr noundef nonnull %param.i136, i32 noundef 12514) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param.i136) #8
  br label %if.end234

if.else227:                                       ; preds = %if.then219
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i139) #8
  %222 = ptrtoint ptr %data.i139 to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %214, ptr %data.i139, align 1
  %call.i.i140 = call i32 @ps2_command(ptr noundef %ps2dev223, ptr noundef nonnull %data.i139, i32 noundef 4578) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i140)
  %tobool.not.i141 = icmp eq i32 %call.i.i140, 0
  br i1 %tobool.not.i141, label %if.end.i146, label %if.else227.trackpoint_update_bit.exit151_crit_edge

if.else227.trackpoint_update_bit.exit151_crit_edge: ; preds = %if.else227
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_update_bit.exit151

if.end.i146:                                      ; preds = %if.else227
  %223 = ptrtoint ptr %data.i139 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %data.i139, align 1
  %and1.i142 = and i8 %224, %213
  call void @__sanitizer_cov_trace_cmp1(i8 %and1.i142, i8 %213)
  %cmp.i143 = icmp ne i8 %and1.i142, %213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %216)
  %tobool5.i144 = icmp ne i8 %216, 0
  %cmp7.not.i145 = xor i1 %tobool5.i144, %cmp.i143
  br i1 %cmp7.not.i145, label %if.end.i146.trackpoint_update_bit.exit151_crit_edge, label %if.then9.i147

if.end.i146.trackpoint_update_bit.exit151_crit_edge: ; preds = %if.end.i146
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_update_bit.exit151

if.then9.i147:                                    ; preds = %if.end.i146
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param.i.i138) #8
  %225 = getelementptr inbounds [3 x i8], ptr %param.i.i138, i32 0, i32 1
  %226 = getelementptr inbounds [3 x i8], ptr %param.i.i138, i32 0, i32 2
  %227 = ptrtoint ptr %param.i.i138 to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 71, ptr %param.i.i138, align 1
  %228 = ptrtoint ptr %225 to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %214, ptr %225, align 1
  %229 = ptrtoint ptr %226 to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 %213, ptr %226, align 1
  %230 = add i8 %214, -47
  call void @__sanitizer_cov_trace_const_cmp1(i8 -15, i8 %230)
  %231 = icmp ult i8 %230, -15
  br i1 %231, label %if.then9.i147.trackpoint_toggle_bit.exit.i150_crit_edge, label %if.end.i.i149

if.then9.i147.trackpoint_toggle_bit.exit.i150_crit_edge: ; preds = %if.then9.i147
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_toggle_bit.exit.i150

if.end.i.i149:                                    ; preds = %if.then9.i147
  call void @__sanitizer_cov_trace_pc() #10
  %call.i2.i148 = call i32 @ps2_command(ptr noundef %ps2dev223, ptr noundef nonnull %param.i.i138, i32 noundef 12514) #8
  br label %trackpoint_toggle_bit.exit.i150

trackpoint_toggle_bit.exit.i150:                  ; preds = %if.end.i.i149, %if.then9.i147.trackpoint_toggle_bit.exit.i150_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param.i.i138) #8
  br label %trackpoint_update_bit.exit151

trackpoint_update_bit.exit151:                    ; preds = %trackpoint_toggle_bit.exit.i150, %if.end.i146.trackpoint_update_bit.exit151_crit_edge, %if.else227.trackpoint_update_bit.exit151_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i139) #8
  br label %if.end234

if.end234:                                        ; preds = %trackpoint_update_bit.exit151, %if.then222, %land.lhs.true216.if.end234_crit_edge
  br i1 %in_power_on_state, label %if.end234.lor.lhs.false240_crit_edge, label %if.end234.land.lhs.true246_crit_edge

if.end234.land.lhs.true246_crit_edge:             ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true246

if.end234.lor.lhs.false240_crit_edge:             ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false240

lor.lhs.false240:                                 ; preds = %if.end234.lor.lhs.false240_crit_edge, %lor.lhs.false210.lor.lhs.false240_crit_edge
  %ztime = getelementptr inbounds %struct.trackpoint_data, ptr %1, i32 0, i32 10
  %232 = ptrtoint ptr %ztime to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %ztime, align 1
  %234 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_ztime, i32 0, i32 4), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %233, i8 %234)
  %cmp244.not = icmp eq i8 %233, %234
  br i1 %cmp244.not, label %lor.lhs.false240.lor.lhs.false270_crit_edge, label %lor.lhs.false240.land.lhs.true246_crit_edge

lor.lhs.false240.land.lhs.true246_crit_edge:      ; preds = %lor.lhs.false240
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true246

lor.lhs.false240.lor.lhs.false270_crit_edge:      ; preds = %lor.lhs.false240
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false270

land.lhs.true246:                                 ; preds = %lor.lhs.false240.land.lhs.true246_crit_edge, %if.end234.land.lhs.true246_crit_edge
  %235 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %psmouse, align 4
  %237 = ptrtoint ptr %236 to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %236, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %238)
  %cmp.i152 = icmp eq i8 %238, 1
  br i1 %cmp.i152, label %if.then249, label %land.lhs.true246.if.end264_crit_edge

land.lhs.true246.if.end264_crit_edge:             ; preds = %land.lhs.true246
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end264

if.then249:                                       ; preds = %land.lhs.true246
  %239 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_ztime, i32 0, i32 2), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %239)
  %tobool251.not = icmp eq i8 %239, 0
  %ps2dev253 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %240 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_ztime, i32 0, i32 1), align 4
  %ztime255 = getelementptr inbounds %struct.trackpoint_data, ptr %1, i32 0, i32 10
  %241 = ptrtoint ptr %ztime255 to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %ztime255, align 1
  br i1 %tobool251.not, label %if.then252, label %if.else257

if.then252:                                       ; preds = %if.then249
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param.i153) #8
  %243 = getelementptr inbounds [3 x i8], ptr %param.i153, i32 0, i32 1
  %244 = getelementptr inbounds [3 x i8], ptr %param.i153, i32 0, i32 2
  %245 = ptrtoint ptr %param.i153 to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 -127, ptr %param.i153, align 1
  %246 = ptrtoint ptr %243 to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 %240, ptr %243, align 1
  %247 = ptrtoint ptr %244 to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 %242, ptr %244, align 1
  %call.i154 = call i32 @ps2_command(ptr noundef %ps2dev253, ptr noundef nonnull %param.i153, i32 noundef 12514) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param.i153) #8
  br label %if.end264

if.else257:                                       ; preds = %if.then249
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i156) #8
  %248 = ptrtoint ptr %data.i156 to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 %240, ptr %data.i156, align 1
  %call.i.i157 = call i32 @ps2_command(ptr noundef %ps2dev253, ptr noundef nonnull %data.i156, i32 noundef 4578) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i157)
  %tobool.not.i158 = icmp eq i32 %call.i.i157, 0
  br i1 %tobool.not.i158, label %if.end.i163, label %if.else257.trackpoint_update_bit.exit168_crit_edge

if.else257.trackpoint_update_bit.exit168_crit_edge: ; preds = %if.else257
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_update_bit.exit168

if.end.i163:                                      ; preds = %if.else257
  %249 = ptrtoint ptr %data.i156 to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %data.i156, align 1
  %and1.i159 = and i8 %250, %239
  call void @__sanitizer_cov_trace_cmp1(i8 %and1.i159, i8 %239)
  %cmp.i160 = icmp ne i8 %and1.i159, %239
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %242)
  %tobool5.i161 = icmp ne i8 %242, 0
  %cmp7.not.i162 = xor i1 %tobool5.i161, %cmp.i160
  br i1 %cmp7.not.i162, label %if.end.i163.trackpoint_update_bit.exit168_crit_edge, label %if.then9.i164

if.end.i163.trackpoint_update_bit.exit168_crit_edge: ; preds = %if.end.i163
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_update_bit.exit168

if.then9.i164:                                    ; preds = %if.end.i163
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param.i.i155) #8
  %251 = getelementptr inbounds [3 x i8], ptr %param.i.i155, i32 0, i32 1
  %252 = getelementptr inbounds [3 x i8], ptr %param.i.i155, i32 0, i32 2
  %253 = ptrtoint ptr %param.i.i155 to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 71, ptr %param.i.i155, align 1
  %254 = ptrtoint ptr %251 to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 %240, ptr %251, align 1
  %255 = ptrtoint ptr %252 to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 %239, ptr %252, align 1
  %256 = add i8 %240, -47
  call void @__sanitizer_cov_trace_const_cmp1(i8 -15, i8 %256)
  %257 = icmp ult i8 %256, -15
  br i1 %257, label %if.then9.i164.trackpoint_toggle_bit.exit.i167_crit_edge, label %if.end.i.i166

if.then9.i164.trackpoint_toggle_bit.exit.i167_crit_edge: ; preds = %if.then9.i164
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_toggle_bit.exit.i167

if.end.i.i166:                                    ; preds = %if.then9.i164
  call void @__sanitizer_cov_trace_pc() #10
  %call.i2.i165 = call i32 @ps2_command(ptr noundef %ps2dev253, ptr noundef nonnull %param.i.i155, i32 noundef 12514) #8
  br label %trackpoint_toggle_bit.exit.i167

trackpoint_toggle_bit.exit.i167:                  ; preds = %if.end.i.i166, %if.then9.i164.trackpoint_toggle_bit.exit.i167_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param.i.i155) #8
  br label %trackpoint_update_bit.exit168

trackpoint_update_bit.exit168:                    ; preds = %trackpoint_toggle_bit.exit.i167, %if.end.i163.trackpoint_update_bit.exit168_crit_edge, %if.else257.trackpoint_update_bit.exit168_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i156) #8
  br label %if.end264

if.end264:                                        ; preds = %trackpoint_update_bit.exit168, %if.then252, %land.lhs.true246.if.end264_crit_edge
  br i1 %in_power_on_state, label %if.end264.lor.lhs.false270_crit_edge, label %if.end264.land.lhs.true276_crit_edge

if.end264.land.lhs.true276_crit_edge:             ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true276

if.end264.lor.lhs.false270_crit_edge:             ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false270

lor.lhs.false270:                                 ; preds = %if.end264.lor.lhs.false270_crit_edge, %lor.lhs.false240.lor.lhs.false270_crit_edge
  %jenks = getelementptr inbounds %struct.trackpoint_data, ptr %1, i32 0, i32 11
  %258 = ptrtoint ptr %jenks to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %jenks, align 1
  %260 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_jenks, i32 0, i32 4), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %259, i8 %260)
  %cmp274.not = icmp eq i8 %259, %260
  br i1 %cmp274.not, label %lor.lhs.false270.lor.lhs.false300_crit_edge, label %lor.lhs.false270.land.lhs.true276_crit_edge

lor.lhs.false270.land.lhs.true276_crit_edge:      ; preds = %lor.lhs.false270
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true276

lor.lhs.false270.lor.lhs.false300_crit_edge:      ; preds = %lor.lhs.false270
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false300

land.lhs.true276:                                 ; preds = %lor.lhs.false270.land.lhs.true276_crit_edge, %if.end264.land.lhs.true276_crit_edge
  %261 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %psmouse, align 4
  %263 = ptrtoint ptr %262 to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %262, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %264)
  %cmp.i169 = icmp eq i8 %264, 1
  br i1 %cmp.i169, label %if.then279, label %land.lhs.true276.if.end294_crit_edge

land.lhs.true276.if.end294_crit_edge:             ; preds = %land.lhs.true276
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end294

if.then279:                                       ; preds = %land.lhs.true276
  %265 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_jenks, i32 0, i32 2), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %265)
  %tobool281.not = icmp eq i8 %265, 0
  %ps2dev283 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %266 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_jenks, i32 0, i32 1), align 4
  %jenks285 = getelementptr inbounds %struct.trackpoint_data, ptr %1, i32 0, i32 11
  %267 = ptrtoint ptr %jenks285 to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %jenks285, align 1
  br i1 %tobool281.not, label %if.then282, label %if.else287

if.then282:                                       ; preds = %if.then279
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param.i170) #8
  %269 = getelementptr inbounds [3 x i8], ptr %param.i170, i32 0, i32 1
  %270 = getelementptr inbounds [3 x i8], ptr %param.i170, i32 0, i32 2
  %271 = ptrtoint ptr %param.i170 to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 -127, ptr %param.i170, align 1
  %272 = ptrtoint ptr %269 to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 %266, ptr %269, align 1
  %273 = ptrtoint ptr %270 to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 %268, ptr %270, align 1
  %call.i171 = call i32 @ps2_command(ptr noundef %ps2dev283, ptr noundef nonnull %param.i170, i32 noundef 12514) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param.i170) #8
  br label %if.end294

if.else287:                                       ; preds = %if.then279
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i173) #8
  %274 = ptrtoint ptr %data.i173 to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 %266, ptr %data.i173, align 1
  %call.i.i174 = call i32 @ps2_command(ptr noundef %ps2dev283, ptr noundef nonnull %data.i173, i32 noundef 4578) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i174)
  %tobool.not.i175 = icmp eq i32 %call.i.i174, 0
  br i1 %tobool.not.i175, label %if.end.i180, label %if.else287.trackpoint_update_bit.exit185_crit_edge

if.else287.trackpoint_update_bit.exit185_crit_edge: ; preds = %if.else287
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_update_bit.exit185

if.end.i180:                                      ; preds = %if.else287
  %275 = ptrtoint ptr %data.i173 to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %data.i173, align 1
  %and1.i176 = and i8 %276, %265
  call void @__sanitizer_cov_trace_cmp1(i8 %and1.i176, i8 %265)
  %cmp.i177 = icmp ne i8 %and1.i176, %265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %268)
  %tobool5.i178 = icmp ne i8 %268, 0
  %cmp7.not.i179 = xor i1 %tobool5.i178, %cmp.i177
  br i1 %cmp7.not.i179, label %if.end.i180.trackpoint_update_bit.exit185_crit_edge, label %if.then9.i181

if.end.i180.trackpoint_update_bit.exit185_crit_edge: ; preds = %if.end.i180
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_update_bit.exit185

if.then9.i181:                                    ; preds = %if.end.i180
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param.i.i172) #8
  %277 = getelementptr inbounds [3 x i8], ptr %param.i.i172, i32 0, i32 1
  %278 = getelementptr inbounds [3 x i8], ptr %param.i.i172, i32 0, i32 2
  %279 = ptrtoint ptr %param.i.i172 to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 71, ptr %param.i.i172, align 1
  %280 = ptrtoint ptr %277 to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 %266, ptr %277, align 1
  %281 = ptrtoint ptr %278 to i32
  call void @__asan_store1_noabort(i32 %281)
  store i8 %265, ptr %278, align 1
  %282 = add i8 %266, -47
  call void @__sanitizer_cov_trace_const_cmp1(i8 -15, i8 %282)
  %283 = icmp ult i8 %282, -15
  br i1 %283, label %if.then9.i181.trackpoint_toggle_bit.exit.i184_crit_edge, label %if.end.i.i183

if.then9.i181.trackpoint_toggle_bit.exit.i184_crit_edge: ; preds = %if.then9.i181
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_toggle_bit.exit.i184

if.end.i.i183:                                    ; preds = %if.then9.i181
  call void @__sanitizer_cov_trace_pc() #10
  %call.i2.i182 = call i32 @ps2_command(ptr noundef %ps2dev283, ptr noundef nonnull %param.i.i172, i32 noundef 12514) #8
  br label %trackpoint_toggle_bit.exit.i184

trackpoint_toggle_bit.exit.i184:                  ; preds = %if.end.i.i183, %if.then9.i181.trackpoint_toggle_bit.exit.i184_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param.i.i172) #8
  br label %trackpoint_update_bit.exit185

trackpoint_update_bit.exit185:                    ; preds = %trackpoint_toggle_bit.exit.i184, %if.end.i180.trackpoint_update_bit.exit185_crit_edge, %if.else287.trackpoint_update_bit.exit185_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i173) #8
  br label %if.end294

if.end294:                                        ; preds = %trackpoint_update_bit.exit185, %if.then282, %land.lhs.true276.if.end294_crit_edge
  br i1 %in_power_on_state, label %if.end294.lor.lhs.false300_crit_edge, label %if.end294.land.lhs.true306_crit_edge

if.end294.land.lhs.true306_crit_edge:             ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true306

if.end294.lor.lhs.false300_crit_edge:             ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false300

lor.lhs.false300:                                 ; preds = %if.end294.lor.lhs.false300_crit_edge, %lor.lhs.false270.lor.lhs.false300_crit_edge
  %drift_time = getelementptr inbounds %struct.trackpoint_data, ptr %1, i32 0, i32 12
  %284 = ptrtoint ptr %drift_time to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %drift_time, align 1
  %286 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_drift_time, i32 0, i32 4), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %285, i8 %286)
  %cmp304.not = icmp eq i8 %285, %286
  br i1 %cmp304.not, label %lor.lhs.false300.lor.lhs.false330_crit_edge, label %lor.lhs.false300.land.lhs.true306_crit_edge

lor.lhs.false300.land.lhs.true306_crit_edge:      ; preds = %lor.lhs.false300
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true306

lor.lhs.false300.lor.lhs.false330_crit_edge:      ; preds = %lor.lhs.false300
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false330

land.lhs.true306:                                 ; preds = %lor.lhs.false300.land.lhs.true306_crit_edge, %if.end294.land.lhs.true306_crit_edge
  %287 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %psmouse, align 4
  %289 = ptrtoint ptr %288 to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %288, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %290)
  %cmp.i186 = icmp eq i8 %290, 1
  br i1 %cmp.i186, label %if.then309, label %land.lhs.true306.if.end324_crit_edge

land.lhs.true306.if.end324_crit_edge:             ; preds = %land.lhs.true306
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end324

if.then309:                                       ; preds = %land.lhs.true306
  %291 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_drift_time, i32 0, i32 2), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %291)
  %tobool311.not = icmp eq i8 %291, 0
  %ps2dev313 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %292 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_drift_time, i32 0, i32 1), align 4
  %drift_time315 = getelementptr inbounds %struct.trackpoint_data, ptr %1, i32 0, i32 12
  %293 = ptrtoint ptr %drift_time315 to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %drift_time315, align 1
  br i1 %tobool311.not, label %if.then312, label %if.else317

if.then312:                                       ; preds = %if.then309
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param.i187) #8
  %295 = getelementptr inbounds [3 x i8], ptr %param.i187, i32 0, i32 1
  %296 = getelementptr inbounds [3 x i8], ptr %param.i187, i32 0, i32 2
  %297 = ptrtoint ptr %param.i187 to i32
  call void @__asan_store1_noabort(i32 %297)
  store i8 -127, ptr %param.i187, align 1
  %298 = ptrtoint ptr %295 to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 %292, ptr %295, align 1
  %299 = ptrtoint ptr %296 to i32
  call void @__asan_store1_noabort(i32 %299)
  store i8 %294, ptr %296, align 1
  %call.i188 = call i32 @ps2_command(ptr noundef %ps2dev313, ptr noundef nonnull %param.i187, i32 noundef 12514) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param.i187) #8
  br label %if.end324

if.else317:                                       ; preds = %if.then309
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i190) #8
  %300 = ptrtoint ptr %data.i190 to i32
  call void @__asan_store1_noabort(i32 %300)
  store i8 %292, ptr %data.i190, align 1
  %call.i.i191 = call i32 @ps2_command(ptr noundef %ps2dev313, ptr noundef nonnull %data.i190, i32 noundef 4578) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i191)
  %tobool.not.i192 = icmp eq i32 %call.i.i191, 0
  br i1 %tobool.not.i192, label %if.end.i197, label %if.else317.trackpoint_update_bit.exit202_crit_edge

if.else317.trackpoint_update_bit.exit202_crit_edge: ; preds = %if.else317
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_update_bit.exit202

if.end.i197:                                      ; preds = %if.else317
  %301 = ptrtoint ptr %data.i190 to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %data.i190, align 1
  %and1.i193 = and i8 %302, %291
  call void @__sanitizer_cov_trace_cmp1(i8 %and1.i193, i8 %291)
  %cmp.i194 = icmp ne i8 %and1.i193, %291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %294)
  %tobool5.i195 = icmp ne i8 %294, 0
  %cmp7.not.i196 = xor i1 %tobool5.i195, %cmp.i194
  br i1 %cmp7.not.i196, label %if.end.i197.trackpoint_update_bit.exit202_crit_edge, label %if.then9.i198

if.end.i197.trackpoint_update_bit.exit202_crit_edge: ; preds = %if.end.i197
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_update_bit.exit202

if.then9.i198:                                    ; preds = %if.end.i197
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param.i.i189) #8
  %303 = getelementptr inbounds [3 x i8], ptr %param.i.i189, i32 0, i32 1
  %304 = getelementptr inbounds [3 x i8], ptr %param.i.i189, i32 0, i32 2
  %305 = ptrtoint ptr %param.i.i189 to i32
  call void @__asan_store1_noabort(i32 %305)
  store i8 71, ptr %param.i.i189, align 1
  %306 = ptrtoint ptr %303 to i32
  call void @__asan_store1_noabort(i32 %306)
  store i8 %292, ptr %303, align 1
  %307 = ptrtoint ptr %304 to i32
  call void @__asan_store1_noabort(i32 %307)
  store i8 %291, ptr %304, align 1
  %308 = add i8 %292, -47
  call void @__sanitizer_cov_trace_const_cmp1(i8 -15, i8 %308)
  %309 = icmp ult i8 %308, -15
  br i1 %309, label %if.then9.i198.trackpoint_toggle_bit.exit.i201_crit_edge, label %if.end.i.i200

if.then9.i198.trackpoint_toggle_bit.exit.i201_crit_edge: ; preds = %if.then9.i198
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_toggle_bit.exit.i201

if.end.i.i200:                                    ; preds = %if.then9.i198
  call void @__sanitizer_cov_trace_pc() #10
  %call.i2.i199 = call i32 @ps2_command(ptr noundef %ps2dev313, ptr noundef nonnull %param.i.i189, i32 noundef 12514) #8
  br label %trackpoint_toggle_bit.exit.i201

trackpoint_toggle_bit.exit.i201:                  ; preds = %if.end.i.i200, %if.then9.i198.trackpoint_toggle_bit.exit.i201_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param.i.i189) #8
  br label %trackpoint_update_bit.exit202

trackpoint_update_bit.exit202:                    ; preds = %trackpoint_toggle_bit.exit.i201, %if.end.i197.trackpoint_update_bit.exit202_crit_edge, %if.else317.trackpoint_update_bit.exit202_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i190) #8
  br label %if.end324

if.end324:                                        ; preds = %trackpoint_update_bit.exit202, %if.then312, %land.lhs.true306.if.end324_crit_edge
  br i1 %in_power_on_state, label %if.end324.lor.lhs.false330_crit_edge, label %if.end324.if.then340_crit_edge

if.end324.if.then340_crit_edge:                   ; preds = %if.end324
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then340

if.end324.lor.lhs.false330_crit_edge:             ; preds = %if.end324
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false330

lor.lhs.false330:                                 ; preds = %if.end324.lor.lhs.false330_crit_edge, %lor.lhs.false300.lor.lhs.false330_crit_edge
  %press_to_select = getelementptr inbounds %struct.trackpoint_data, ptr %1, i32 0, i32 13
  %310 = ptrtoint ptr %press_to_select to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %press_to_select, align 1, !range !109
  %312 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_press_to_select, i32 0, i32 4), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %311, i8 %312)
  %cmp335.not = icmp eq i8 %311, %312
  br i1 %cmp335.not, label %lor.lhs.false330.lor.lhs.false365_crit_edge, label %lor.lhs.false330.if.then340_crit_edge

lor.lhs.false330.if.then340_crit_edge:            ; preds = %lor.lhs.false330
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then340

lor.lhs.false330.lor.lhs.false365_crit_edge:      ; preds = %lor.lhs.false330
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false365

if.then340:                                       ; preds = %lor.lhs.false330.if.then340_crit_edge, %if.end324.if.then340_crit_edge
  %313 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_press_to_select, i32 0, i32 2), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %313)
  %tobool342.not = icmp eq i8 %313, 0
  %ps2dev344 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %314 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_press_to_select, i32 0, i32 1), align 4
  %press_to_select346 = getelementptr inbounds %struct.trackpoint_data, ptr %1, i32 0, i32 13
  %315 = ptrtoint ptr %press_to_select346 to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %press_to_select346, align 1, !range !109
  br i1 %tobool342.not, label %if.then343, label %if.else350

if.then343:                                       ; preds = %if.then340
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param.i204) #8
  %317 = getelementptr inbounds [3 x i8], ptr %param.i204, i32 0, i32 1
  %318 = getelementptr inbounds [3 x i8], ptr %param.i204, i32 0, i32 2
  %319 = ptrtoint ptr %param.i204 to i32
  call void @__asan_store1_noabort(i32 %319)
  store i8 -127, ptr %param.i204, align 1
  %320 = ptrtoint ptr %317 to i32
  call void @__asan_store1_noabort(i32 %320)
  store i8 %314, ptr %317, align 1
  %321 = ptrtoint ptr %318 to i32
  call void @__asan_store1_noabort(i32 %321)
  store i8 %316, ptr %318, align 1
  %call.i205 = call i32 @ps2_command(ptr noundef %ps2dev344, ptr noundef nonnull %param.i204, i32 noundef 12514) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param.i204) #8
  br label %if.end359

if.else350:                                       ; preds = %if.then340
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i207) #8
  %322 = ptrtoint ptr %data.i207 to i32
  call void @__asan_store1_noabort(i32 %322)
  store i8 %314, ptr %data.i207, align 1
  %call.i.i208 = call i32 @ps2_command(ptr noundef %ps2dev344, ptr noundef nonnull %data.i207, i32 noundef 4578) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i208)
  %tobool.not.i209 = icmp eq i32 %call.i.i208, 0
  br i1 %tobool.not.i209, label %if.end.i214, label %if.else350.trackpoint_update_bit.exit219_crit_edge

if.else350.trackpoint_update_bit.exit219_crit_edge: ; preds = %if.else350
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_update_bit.exit219

if.end.i214:                                      ; preds = %if.else350
  %323 = ptrtoint ptr %data.i207 to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %data.i207, align 1
  %and1.i210 = and i8 %324, %313
  call void @__sanitizer_cov_trace_cmp1(i8 %and1.i210, i8 %313)
  %cmp.i211 = icmp ne i8 %and1.i210, %313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %316)
  %tobool5.i212 = icmp ne i8 %316, 0
  %cmp7.not.i213 = xor i1 %tobool5.i212, %cmp.i211
  br i1 %cmp7.not.i213, label %if.end.i214.trackpoint_update_bit.exit219_crit_edge, label %if.then9.i215

if.end.i214.trackpoint_update_bit.exit219_crit_edge: ; preds = %if.end.i214
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_update_bit.exit219

if.then9.i215:                                    ; preds = %if.end.i214
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param.i.i206) #8
  %325 = getelementptr inbounds [3 x i8], ptr %param.i.i206, i32 0, i32 1
  %326 = getelementptr inbounds [3 x i8], ptr %param.i.i206, i32 0, i32 2
  %327 = ptrtoint ptr %param.i.i206 to i32
  call void @__asan_store1_noabort(i32 %327)
  store i8 71, ptr %param.i.i206, align 1
  %328 = ptrtoint ptr %325 to i32
  call void @__asan_store1_noabort(i32 %328)
  store i8 %314, ptr %325, align 1
  %329 = ptrtoint ptr %326 to i32
  call void @__asan_store1_noabort(i32 %329)
  store i8 %313, ptr %326, align 1
  %330 = add i8 %314, -47
  call void @__sanitizer_cov_trace_const_cmp1(i8 -15, i8 %330)
  %331 = icmp ult i8 %330, -15
  br i1 %331, label %if.then9.i215.trackpoint_toggle_bit.exit.i218_crit_edge, label %if.end.i.i217

if.then9.i215.trackpoint_toggle_bit.exit.i218_crit_edge: ; preds = %if.then9.i215
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_toggle_bit.exit.i218

if.end.i.i217:                                    ; preds = %if.then9.i215
  call void @__sanitizer_cov_trace_pc() #10
  %call.i2.i216 = call i32 @ps2_command(ptr noundef %ps2dev344, ptr noundef nonnull %param.i.i206, i32 noundef 12514) #8
  br label %trackpoint_toggle_bit.exit.i218

trackpoint_toggle_bit.exit.i218:                  ; preds = %if.end.i.i217, %if.then9.i215.trackpoint_toggle_bit.exit.i218_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param.i.i206) #8
  br label %trackpoint_update_bit.exit219

trackpoint_update_bit.exit219:                    ; preds = %trackpoint_toggle_bit.exit.i218, %if.end.i214.trackpoint_update_bit.exit219_crit_edge, %if.else350.trackpoint_update_bit.exit219_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i207) #8
  br label %if.end359

if.end359:                                        ; preds = %trackpoint_update_bit.exit219, %if.then343
  br i1 %in_power_on_state, label %if.end359.lor.lhs.false365_crit_edge, label %if.end359.land.lhs.true372_crit_edge

if.end359.land.lhs.true372_crit_edge:             ; preds = %if.end359
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true372

if.end359.lor.lhs.false365_crit_edge:             ; preds = %if.end359
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false365

lor.lhs.false365:                                 ; preds = %if.end359.lor.lhs.false365_crit_edge, %lor.lhs.false330.lor.lhs.false365_crit_edge
  %skipback = getelementptr inbounds %struct.trackpoint_data, ptr %1, i32 0, i32 14
  %332 = ptrtoint ptr %skipback to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %skipback, align 1, !range !109
  %334 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_skipback, i32 0, i32 4), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %333, i8 %334)
  %cmp370.not = icmp eq i8 %333, %334
  br i1 %cmp370.not, label %lor.lhs.false365.lor.lhs.false400_crit_edge, label %lor.lhs.false365.land.lhs.true372_crit_edge

lor.lhs.false365.land.lhs.true372_crit_edge:      ; preds = %lor.lhs.false365
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true372

lor.lhs.false365.lor.lhs.false400_crit_edge:      ; preds = %lor.lhs.false365
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false400

land.lhs.true372:                                 ; preds = %lor.lhs.false365.land.lhs.true372_crit_edge, %if.end359.land.lhs.true372_crit_edge
  %335 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %psmouse, align 4
  %337 = ptrtoint ptr %336 to i32
  call void @__asan_load1_noabort(i32 %337)
  %338 = load i8, ptr %336, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %338)
  %cmp.i220 = icmp eq i8 %338, 1
  br i1 %cmp.i220, label %if.then375, label %land.lhs.true372.if.end394_crit_edge

land.lhs.true372.if.end394_crit_edge:             ; preds = %land.lhs.true372
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end394

if.then375:                                       ; preds = %land.lhs.true372
  %339 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_skipback, i32 0, i32 2), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %339)
  %tobool377.not = icmp eq i8 %339, 0
  %ps2dev379 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %340 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_skipback, i32 0, i32 1), align 4
  %skipback381 = getelementptr inbounds %struct.trackpoint_data, ptr %1, i32 0, i32 14
  %341 = ptrtoint ptr %skipback381 to i32
  call void @__asan_load1_noabort(i32 %341)
  %342 = load i8, ptr %skipback381, align 1, !range !109
  br i1 %tobool377.not, label %if.then378, label %if.else385

if.then378:                                       ; preds = %if.then375
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param.i221) #8
  %343 = getelementptr inbounds [3 x i8], ptr %param.i221, i32 0, i32 1
  %344 = getelementptr inbounds [3 x i8], ptr %param.i221, i32 0, i32 2
  %345 = ptrtoint ptr %param.i221 to i32
  call void @__asan_store1_noabort(i32 %345)
  store i8 -127, ptr %param.i221, align 1
  %346 = ptrtoint ptr %343 to i32
  call void @__asan_store1_noabort(i32 %346)
  store i8 %340, ptr %343, align 1
  %347 = ptrtoint ptr %344 to i32
  call void @__asan_store1_noabort(i32 %347)
  store i8 %342, ptr %344, align 1
  %call.i222 = call i32 @ps2_command(ptr noundef %ps2dev379, ptr noundef nonnull %param.i221, i32 noundef 12514) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param.i221) #8
  br label %if.end394

if.else385:                                       ; preds = %if.then375
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i224) #8
  %348 = ptrtoint ptr %data.i224 to i32
  call void @__asan_store1_noabort(i32 %348)
  store i8 %340, ptr %data.i224, align 1
  %call.i.i225 = call i32 @ps2_command(ptr noundef %ps2dev379, ptr noundef nonnull %data.i224, i32 noundef 4578) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i225)
  %tobool.not.i226 = icmp eq i32 %call.i.i225, 0
  br i1 %tobool.not.i226, label %if.end.i231, label %if.else385.trackpoint_update_bit.exit236_crit_edge

if.else385.trackpoint_update_bit.exit236_crit_edge: ; preds = %if.else385
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_update_bit.exit236

if.end.i231:                                      ; preds = %if.else385
  %349 = ptrtoint ptr %data.i224 to i32
  call void @__asan_load1_noabort(i32 %349)
  %350 = load i8, ptr %data.i224, align 1
  %and1.i227 = and i8 %350, %339
  call void @__sanitizer_cov_trace_cmp1(i8 %and1.i227, i8 %339)
  %cmp.i228 = icmp ne i8 %and1.i227, %339
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %342)
  %tobool5.i229 = icmp ne i8 %342, 0
  %cmp7.not.i230 = xor i1 %tobool5.i229, %cmp.i228
  br i1 %cmp7.not.i230, label %if.end.i231.trackpoint_update_bit.exit236_crit_edge, label %if.then9.i232

if.end.i231.trackpoint_update_bit.exit236_crit_edge: ; preds = %if.end.i231
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_update_bit.exit236

if.then9.i232:                                    ; preds = %if.end.i231
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param.i.i223) #8
  %351 = getelementptr inbounds [3 x i8], ptr %param.i.i223, i32 0, i32 1
  %352 = getelementptr inbounds [3 x i8], ptr %param.i.i223, i32 0, i32 2
  %353 = ptrtoint ptr %param.i.i223 to i32
  call void @__asan_store1_noabort(i32 %353)
  store i8 71, ptr %param.i.i223, align 1
  %354 = ptrtoint ptr %351 to i32
  call void @__asan_store1_noabort(i32 %354)
  store i8 %340, ptr %351, align 1
  %355 = ptrtoint ptr %352 to i32
  call void @__asan_store1_noabort(i32 %355)
  store i8 %339, ptr %352, align 1
  %356 = add i8 %340, -47
  call void @__sanitizer_cov_trace_const_cmp1(i8 -15, i8 %356)
  %357 = icmp ult i8 %356, -15
  br i1 %357, label %if.then9.i232.trackpoint_toggle_bit.exit.i235_crit_edge, label %if.end.i.i234

if.then9.i232.trackpoint_toggle_bit.exit.i235_crit_edge: ; preds = %if.then9.i232
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_toggle_bit.exit.i235

if.end.i.i234:                                    ; preds = %if.then9.i232
  call void @__sanitizer_cov_trace_pc() #10
  %call.i2.i233 = call i32 @ps2_command(ptr noundef %ps2dev379, ptr noundef nonnull %param.i.i223, i32 noundef 12514) #8
  br label %trackpoint_toggle_bit.exit.i235

trackpoint_toggle_bit.exit.i235:                  ; preds = %if.end.i.i234, %if.then9.i232.trackpoint_toggle_bit.exit.i235_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param.i.i223) #8
  br label %trackpoint_update_bit.exit236

trackpoint_update_bit.exit236:                    ; preds = %trackpoint_toggle_bit.exit.i235, %if.end.i231.trackpoint_update_bit.exit236_crit_edge, %if.else385.trackpoint_update_bit.exit236_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i224) #8
  br label %if.end394

if.end394:                                        ; preds = %trackpoint_update_bit.exit236, %if.then378, %land.lhs.true372.if.end394_crit_edge
  br i1 %in_power_on_state, label %if.end394.lor.lhs.false400_crit_edge, label %if.end394.land.lhs.true407_crit_edge

if.end394.land.lhs.true407_crit_edge:             ; preds = %if.end394
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true407

if.end394.lor.lhs.false400_crit_edge:             ; preds = %if.end394
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false400

lor.lhs.false400:                                 ; preds = %if.end394.lor.lhs.false400_crit_edge, %lor.lhs.false365.lor.lhs.false400_crit_edge
  %ext_dev = getelementptr inbounds %struct.trackpoint_data, ptr %1, i32 0, i32 15
  %358 = ptrtoint ptr %ext_dev to i32
  call void @__asan_load1_noabort(i32 %358)
  %359 = load i8, ptr %ext_dev, align 1, !range !109
  %360 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_ext_dev, i32 0, i32 4), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %359, i8 %360)
  %cmp405.not = icmp eq i8 %359, %360
  br i1 %cmp405.not, label %lor.lhs.false400.if.end429_crit_edge, label %lor.lhs.false400.land.lhs.true407_crit_edge

lor.lhs.false400.land.lhs.true407_crit_edge:      ; preds = %lor.lhs.false400
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true407

lor.lhs.false400.if.end429_crit_edge:             ; preds = %lor.lhs.false400
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end429

land.lhs.true407:                                 ; preds = %lor.lhs.false400.land.lhs.true407_crit_edge, %if.end394.land.lhs.true407_crit_edge
  %361 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %psmouse, align 4
  %363 = ptrtoint ptr %362 to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %362, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %364)
  %cmp.i237 = icmp eq i8 %364, 1
  br i1 %cmp.i237, label %if.then410, label %land.lhs.true407.if.end429_crit_edge

land.lhs.true407.if.end429_crit_edge:             ; preds = %land.lhs.true407
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end429

if.then410:                                       ; preds = %land.lhs.true407
  %365 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_ext_dev, i32 0, i32 2), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %365)
  %tobool412.not = icmp eq i8 %365, 0
  %ps2dev414 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %366 = load i8, ptr getelementptr inbounds (%struct.trackpoint_attr_data, ptr @trackpoint_attr_ext_dev, i32 0, i32 1), align 4
  %ext_dev416 = getelementptr inbounds %struct.trackpoint_data, ptr %1, i32 0, i32 15
  %367 = ptrtoint ptr %ext_dev416 to i32
  call void @__asan_load1_noabort(i32 %367)
  %368 = load i8, ptr %ext_dev416, align 1, !range !109
  br i1 %tobool412.not, label %if.then413, label %if.else420

if.then413:                                       ; preds = %if.then410
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param.i238) #8
  %369 = getelementptr inbounds [3 x i8], ptr %param.i238, i32 0, i32 1
  %370 = getelementptr inbounds [3 x i8], ptr %param.i238, i32 0, i32 2
  %371 = ptrtoint ptr %param.i238 to i32
  call void @__asan_store1_noabort(i32 %371)
  store i8 -127, ptr %param.i238, align 1
  %372 = ptrtoint ptr %369 to i32
  call void @__asan_store1_noabort(i32 %372)
  store i8 %366, ptr %369, align 1
  %373 = ptrtoint ptr %370 to i32
  call void @__asan_store1_noabort(i32 %373)
  store i8 %368, ptr %370, align 1
  %call.i239 = call i32 @ps2_command(ptr noundef %ps2dev414, ptr noundef nonnull %param.i238, i32 noundef 12514) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param.i238) #8
  br label %if.end429

if.else420:                                       ; preds = %if.then410
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i241) #8
  %374 = ptrtoint ptr %data.i241 to i32
  call void @__asan_store1_noabort(i32 %374)
  store i8 %366, ptr %data.i241, align 1
  %call.i.i242 = call i32 @ps2_command(ptr noundef %ps2dev414, ptr noundef nonnull %data.i241, i32 noundef 4578) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i242)
  %tobool.not.i243 = icmp eq i32 %call.i.i242, 0
  br i1 %tobool.not.i243, label %if.end.i248, label %if.else420.trackpoint_update_bit.exit253_crit_edge

if.else420.trackpoint_update_bit.exit253_crit_edge: ; preds = %if.else420
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_update_bit.exit253

if.end.i248:                                      ; preds = %if.else420
  %375 = ptrtoint ptr %data.i241 to i32
  call void @__asan_load1_noabort(i32 %375)
  %376 = load i8, ptr %data.i241, align 1
  %and1.i244 = and i8 %376, %365
  call void @__sanitizer_cov_trace_cmp1(i8 %and1.i244, i8 %365)
  %cmp.i245 = icmp ne i8 %and1.i244, %365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %368)
  %tobool5.i246 = icmp ne i8 %368, 0
  %cmp7.not.i247 = xor i1 %tobool5.i246, %cmp.i245
  br i1 %cmp7.not.i247, label %if.end.i248.trackpoint_update_bit.exit253_crit_edge, label %if.then9.i249

if.end.i248.trackpoint_update_bit.exit253_crit_edge: ; preds = %if.end.i248
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_update_bit.exit253

if.then9.i249:                                    ; preds = %if.end.i248
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param.i.i240) #8
  %377 = getelementptr inbounds [3 x i8], ptr %param.i.i240, i32 0, i32 1
  %378 = getelementptr inbounds [3 x i8], ptr %param.i.i240, i32 0, i32 2
  %379 = ptrtoint ptr %param.i.i240 to i32
  call void @__asan_store1_noabort(i32 %379)
  store i8 71, ptr %param.i.i240, align 1
  %380 = ptrtoint ptr %377 to i32
  call void @__asan_store1_noabort(i32 %380)
  store i8 %366, ptr %377, align 1
  %381 = ptrtoint ptr %378 to i32
  call void @__asan_store1_noabort(i32 %381)
  store i8 %365, ptr %378, align 1
  %382 = add i8 %366, -47
  call void @__sanitizer_cov_trace_const_cmp1(i8 -15, i8 %382)
  %383 = icmp ult i8 %382, -15
  br i1 %383, label %if.then9.i249.trackpoint_toggle_bit.exit.i252_crit_edge, label %if.end.i.i251

if.then9.i249.trackpoint_toggle_bit.exit.i252_crit_edge: ; preds = %if.then9.i249
  call void @__sanitizer_cov_trace_pc() #10
  br label %trackpoint_toggle_bit.exit.i252

if.end.i.i251:                                    ; preds = %if.then9.i249
  call void @__sanitizer_cov_trace_pc() #10
  %call.i2.i250 = call i32 @ps2_command(ptr noundef %ps2dev414, ptr noundef nonnull %param.i.i240, i32 noundef 12514) #8
  br label %trackpoint_toggle_bit.exit.i252

trackpoint_toggle_bit.exit.i252:                  ; preds = %if.end.i.i251, %if.then9.i249.trackpoint_toggle_bit.exit.i252_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param.i.i240) #8
  br label %trackpoint_update_bit.exit253

trackpoint_update_bit.exit253:                    ; preds = %trackpoint_toggle_bit.exit.i252, %if.end.i248.trackpoint_update_bit.exit253_crit_edge, %if.else420.trackpoint_update_bit.exit253_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i241) #8
  br label %if.end429

if.end429:                                        ; preds = %trackpoint_update_bit.exit253, %if.then413, %land.lhs.true407.if.end429_crit_edge, %lor.lhs.false400.if.end429_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ps2_command(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_groups(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psmouse_attr_show_helper(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psmouse_attr_set_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trackpoint_show_int_attr(ptr nocapture noundef readonly %psmouse, ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %add.ptr, align 1
  %inverted = getelementptr inbounds %struct.trackpoint_attr_data, ptr %data, i32 0, i32 3
  %6 = ptrtoint ptr %inverted to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %inverted, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  %conv = zext i1 %tobool1.not to i8
  %value.0 = select i1 %tobool.not, i8 %5, i8 %conv
  %conv2 = zext i8 %value.0 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.24, i32 noundef %conv2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trackpoint_set_int_attr(ptr noundef %psmouse, ptr nocapture noundef readonly %data, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %param.i = alloca [3 x i8], align 1
  %value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #8
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %value, align 1, !annotation !110
  %call = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %value, align 1
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %add.ptr, align 1
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %command = getelementptr inbounds %struct.trackpoint_attr_data, ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %command, align 4
  %10 = load i8, ptr %value, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param.i) #8
  %11 = getelementptr inbounds [3 x i8], ptr %param.i, i32 0, i32 1
  %12 = getelementptr inbounds [3 x i8], ptr %param.i, i32 0, i32 2
  %13 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -127, ptr %param.i, align 1
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %9, ptr %11, align 1
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %10, ptr %12, align 1
  %call.i = call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef nonnull %param.i, i32 noundef 12514) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  %spec.select = select i1 %tobool2.not, i32 %count, i32 %call.i
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trackpoint_set_bit_attr(ptr noundef %psmouse, ptr nocapture noundef readonly %data, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %param.i = alloca [3 x i8], align 1
  %value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #8
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %value, align 1, !annotation !110
  %call = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %value) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %inverted = getelementptr inbounds %struct.trackpoint_attr_data, ptr %data, i32 0, i32 3
  %5 = ptrtoint ptr %inverted to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %inverted, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not = icmp eq i8 %6, 0
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %value, align 1, !range !109
  %9 = xor i8 %8, 1
  store i8 %9, ptr %value, align 1
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr, align 1, !range !109
  %12 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %value, align 1, !range !109
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %13)
  %cmp.not = icmp eq i8 %11, %13
  br i1 %cmp.not, label %if.end4.if.end13.thread_crit_edge, label %if.then9

if.end4.if.end13.thread_crit_edge:                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.thread

if.then9:                                         ; preds = %if.end4
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %add.ptr, align 1
  %command = getelementptr inbounds %struct.trackpoint_attr_data, ptr %data, i32 0, i32 1
  %15 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %command, align 4
  %mask = getelementptr inbounds %struct.trackpoint_attr_data, ptr %data, i32 0, i32 2
  %17 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %mask, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param.i) #8
  %19 = getelementptr inbounds [3 x i8], ptr %param.i, i32 0, i32 1
  %20 = getelementptr inbounds [3 x i8], ptr %param.i, i32 0, i32 2
  %21 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 71, ptr %param.i, align 1
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %16, ptr %19, align 1
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %18, ptr %20, align 1
  %24 = add i8 %16, -47
  call void @__sanitizer_cov_trace_const_cmp1(i8 -15, i8 %24)
  %25 = icmp ult i8 %24, -15
  br i1 %25, label %if.end13.thread28, label %if.end13

if.end13.thread28:                                ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param.i) #8
  br label %cleanup

if.end13:                                         ; preds = %if.then9
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %call.i = call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef nonnull %param.i, i32 noundef 12514) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not = icmp eq i32 %call.i, 0
  br i1 %tobool14.not, label %if.end13.if.end13.thread_crit_edge, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13.if.end13.thread_crit_edge:               ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.thread

if.end13.thread:                                  ; preds = %if.end13.if.end13.thread_crit_edge, %if.end4.if.end13.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end13.thread, %if.end13.cleanup_crit_edge, %if.end13.thread28, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %count, %if.end13.thread ], [ %call.i, %if.end13.cleanup_crit_edge ], [ -22, %if.end13.thread28 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_groups(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @trackpoint_is_attr_visible(ptr nocapture noundef readonly %kobj, ptr noundef readonly %attr, i32 noundef %n) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %kobj, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp.i = icmp eq i8 %5, 1
  %cmp2.i = icmp eq ptr %attr, @psmouse_attr_sensitivity
  %or.cond.i = or i1 %cmp2.i, %cmp.i
  %cmp4.i = icmp eq ptr %attr, @psmouse_attr_press_to_select
  %spec.select.i = or i1 %cmp4.i, %or.cond.i
  br i1 %spec.select.i, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mode = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mode, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i16 [ %7, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i16 %cond
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !67, !68, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !98}
!llvm.module.flags = !{!100, !101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/input/mouse/trackpoint.c", i32 423, i32 18}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/input/mouse/trackpoint.c", i32 434, i32 4}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @trackpoint_detect._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @trackpoint_detect._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/mouse/trackpoint.c", i32 438, i32 4}
!12 = !{ptr @trackpoint_detect._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @trackpoint_detect._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/mouse/trackpoint.c", i32 460, i32 3}
!16 = !{ptr @.str.11, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @trackpoint_detect._entry.9, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @trackpoint_detect._entry_ptr.12, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.14, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/input/mouse/trackpoint.c", i32 468, i32 2}
!21 = !{ptr @.str.15, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @trackpoint_detect._entry.13, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @trackpoint_detect._entry_ptr.16, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @trackpoint_attr_sensitivity, !25, !"trackpoint_attr_sensitivity", i1 false, i1 false}
!25 = !{!"../drivers/input/mouse/trackpoint.c", i32 185, i32 1}
!26 = !{ptr @trackpoint_attr_speed, !27, !"trackpoint_attr_speed", i1 false, i1 false}
!27 = !{!"../drivers/input/mouse/trackpoint.c", i32 186, i32 1}
!28 = !{ptr @trackpoint_attr_reach, !29, !"trackpoint_attr_reach", i1 false, i1 false}
!29 = !{!"../drivers/input/mouse/trackpoint.c", i32 188, i32 1}
!30 = !{ptr @trackpoint_attr_draghys, !31, !"trackpoint_attr_draghys", i1 false, i1 false}
!31 = !{!"../drivers/input/mouse/trackpoint.c", i32 189, i32 1}
!32 = !{ptr @trackpoint_attr_mindrag, !33, !"trackpoint_attr_mindrag", i1 false, i1 false}
!33 = !{!"../drivers/input/mouse/trackpoint.c", i32 190, i32 1}
!34 = !{ptr @trackpoint_attr_thresh, !35, !"trackpoint_attr_thresh", i1 false, i1 false}
!35 = !{!"../drivers/input/mouse/trackpoint.c", i32 191, i32 1}
!36 = !{ptr @trackpoint_attr_upthresh, !37, !"trackpoint_attr_upthresh", i1 false, i1 false}
!37 = !{!"../drivers/input/mouse/trackpoint.c", i32 192, i32 1}
!38 = !{ptr @trackpoint_attr_ztime, !39, !"trackpoint_attr_ztime", i1 false, i1 false}
!39 = !{!"../drivers/input/mouse/trackpoint.c", i32 193, i32 1}
!40 = !{ptr @trackpoint_attr_jenks, !41, !"trackpoint_attr_jenks", i1 false, i1 false}
!41 = !{!"../drivers/input/mouse/trackpoint.c", i32 194, i32 1}
!42 = !{ptr @trackpoint_attr_drift_time, !43, !"trackpoint_attr_drift_time", i1 false, i1 false}
!43 = !{!"../drivers/input/mouse/trackpoint.c", i32 195, i32 1}
!44 = !{ptr @trackpoint_attr_inertia, !45, !"trackpoint_attr_inertia", i1 false, i1 false}
!45 = !{!"../drivers/input/mouse/trackpoint.c", i32 187, i32 1}
!46 = !{ptr @trackpoint_attr_press_to_select, !47, !"trackpoint_attr_press_to_select", i1 false, i1 false}
!47 = !{!"../drivers/input/mouse/trackpoint.c", i32 197, i32 1}
!48 = !{ptr @trackpoint_attr_skipback, !49, !"trackpoint_attr_skipback", i1 false, i1 false}
!49 = !{!"../drivers/input/mouse/trackpoint.c", i32 199, i32 1}
!50 = !{ptr @trackpoint_attr_ext_dev, !51, !"trackpoint_attr_ext_dev", i1 false, i1 false}
!51 = !{!"../drivers/input/mouse/trackpoint.c", i32 201, i32 1}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/mouse/trackpoint.c", i32 20, i32 22}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/mouse/trackpoint.c", i32 21, i32 23}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/input/mouse/trackpoint.c", i32 22, i32 23}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/input/mouse/trackpoint.c", i32 23, i32 22}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/input/mouse/trackpoint.c", i32 24, i32 31}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/input/mouse/trackpoint.c", i32 25, i32 28}
!64 = !{ptr @trackpoint_variants, !65, !"trackpoint_variants", i1 false, i1 false}
!65 = !{!"../drivers/input/mouse/trackpoint.c", i32 19, i32 27}
!66 = !{ptr @.str.23, !25, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @psmouse_attr_sensitivity, !25, !"psmouse_attr_sensitivity", i1 false, i1 false}
!68 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/input/mouse/trackpoint.c", i32 114, i32 22}
!70 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @psmouse_attr_inertia, !45, !"psmouse_attr_inertia", i1 false, i1 false}
!72 = !{ptr @.str.26, !27, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @psmouse_attr_speed, !27, !"psmouse_attr_speed", i1 false, i1 false}
!74 = !{ptr @.str.27, !29, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @psmouse_attr_reach, !29, !"psmouse_attr_reach", i1 false, i1 false}
!76 = !{ptr @.str.28, !31, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @psmouse_attr_draghys, !31, !"psmouse_attr_draghys", i1 false, i1 false}
!78 = !{ptr @.str.29, !33, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @psmouse_attr_mindrag, !33, !"psmouse_attr_mindrag", i1 false, i1 false}
!80 = !{ptr @.str.30, !35, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @psmouse_attr_thresh, !35, !"psmouse_attr_thresh", i1 false, i1 false}
!82 = !{ptr @.str.31, !37, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @psmouse_attr_upthresh, !37, !"psmouse_attr_upthresh", i1 false, i1 false}
!84 = !{ptr @.str.32, !39, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @psmouse_attr_ztime, !39, !"psmouse_attr_ztime", i1 false, i1 false}
!86 = !{ptr @.str.33, !41, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @psmouse_attr_jenks, !41, !"psmouse_attr_jenks", i1 false, i1 false}
!88 = !{ptr @.str.34, !43, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @psmouse_attr_drift_time, !43, !"psmouse_attr_drift_time", i1 false, i1 false}
!90 = !{ptr @.str.35, !47, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @psmouse_attr_press_to_select, !47, !"psmouse_attr_press_to_select", i1 false, i1 false}
!92 = !{ptr @.str.36, !49, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @psmouse_attr_skipback, !49, !"psmouse_attr_skipback", i1 false, i1 false}
!94 = !{ptr @.str.37, !51, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @psmouse_attr_ext_dev, !51, !"psmouse_attr_ext_dev", i1 false, i1 false}
!96 = !{ptr @trackpoint_attr_group, !97, !"trackpoint_attr_group", i1 false, i1 false}
!97 = !{!"../drivers/input/mouse/trackpoint.c", i32 242, i32 31}
!98 = !{ptr @trackpoint_attrs, !99, !"trackpoint_attrs", i1 false, i1 false}
!99 = !{!"../drivers/input/mouse/trackpoint.c", i32 224, i32 26}
!100 = !{i32 1, !"wchar_size", i32 2}
!101 = !{i32 1, !"min_enum_size", i32 4}
!102 = !{i32 8, !"branch-target-enforcement", i32 0}
!103 = !{i32 8, !"sign-return-address", i32 0}
!104 = !{i32 8, !"sign-return-address-all", i32 0}
!105 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!106 = !{i32 7, !"uwtable", i32 1}
!107 = !{i32 7, !"frame-pointer", i32 2}
!108 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!109 = !{i8 0, i8 2}
!110 = !{!"auto-init"}
