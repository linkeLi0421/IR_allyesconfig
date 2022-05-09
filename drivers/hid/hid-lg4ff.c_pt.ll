; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-lg4ff.c_pt.bc'
source_filename = "../drivers/hid/hid-lg4ff.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lg4ff_wheel = type { i32, ptr, i16, i16, ptr }
%struct.lg4ff_multimode_wheel = type { i16, i32, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lg4ff_alternate_mode = type { i16, ptr, ptr }
%struct.lg4ff_wheel_ident_info = type { i32, i16, i16, i16 }
%struct.lg_drv_data = type { i32, ptr }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lg4ff_device_entry = type { %struct.spinlock, ptr, %struct.lg4ff_wheel_data }
%struct.lg4ff_wheel_data = type { i32, i16, i16, i16, i16, i8, [5 x ptr], i32, ptr, ptr, i16, ptr }
%struct.hid_usage = type { i32, i32, i32, i8, i8, i16, i8, i8, i8, i8, i16 }
%struct.hid_field = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i16 }
%struct.hid_input = type { %struct.list_head, ptr, ptr, ptr, i8, %struct.list_head, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.ff_device = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i32], %struct.mutex, i32, ptr, [0 x ptr] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hid_report = type { %struct.list_head, %struct.list_head, i32, i32, i32, [256 x ptr], i32, i32, ptr }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, ptr }
%struct.ff_envelope = type { i16, i16, i16, i16 }
%struct.lg4ff_compat_mode_switch = type { i8, [0 x i8] }
%struct.hid_ll_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@lg4ff_adjust_input_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 307, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Device properties not found\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lg4ff_adjust_input_event\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hid/hid-lg4ff.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lg4ff_adjust_input_event._entry_ptr = internal global ptr @lg4ff_adjust_input_event._entry, section ".printk_index", align 4
@lg4ff_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 1270, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"no inputs found\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lg4ff_init\00", [21 x i8] zeroinitializer }, align 32
@lg4ff_init._entry_ptr = internal global ptr @lg4ff_init._entry, section ".printk_index", align 4
@lg4ff_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 1282, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Cannot add device, private driver data not allocated\0A\00", [42 x i8] zeroinitializer }, align 32
@lg4ff_init._entry_ptr.9 = internal global ptr @lg4ff_init._entry.7, section ".printk_index", align 4
@lg4ff_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&entry->report_lock\00", [44 x i8] zeroinitializer }, align 32
@lg4ff_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.2, i32 1302, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Unable to switch device mode during initialization, errno %d\0A\00", [34 x i8] zeroinitializer }, align 32
@lg4ff_init._entry_ptr.13 = internal global ptr @lg4ff_init._entry.11, section ".printk_index", align 4
@lg4ff_devices = internal constant { [11 x %struct.lg4ff_wheel], [48 x i8] } { [11 x %struct.lg4ff_wheel] [%struct.lg4ff_wheel { i32 49678, ptr @no_wheel_effects, i16 40, i16 180, ptr null }, %struct.lg4ff_wheel { i32 49811, ptr @lg4ff_wheel_effects, i16 40, i16 180, ptr null }, %struct.lg4ff_wheel { i32 49812, ptr @lg4ff_wheel_effects, i16 40, i16 270, ptr null }, %struct.lg4ff_wheel { i32 49813, ptr @lg4ff_wheel_effects, i16 40, i16 270, ptr null }, %struct.lg4ff_wheel { i32 49816, ptr @lg4ff_wheel_effects, i16 40, i16 900, ptr @lg4ff_set_range_dfp }, %struct.lg4ff_wheel { i32 49817, ptr @lg4ff_wheel_effects, i16 40, i16 900, ptr @lg4ff_set_range_g25 }, %struct.lg4ff_wheel { i32 49818, ptr @lg4ff_wheel_effects, i16 40, i16 900, ptr @lg4ff_set_range_g25 }, %struct.lg4ff_wheel { i32 49819, ptr @lg4ff_wheel_effects, i16 40, i16 900, ptr @lg4ff_set_range_g25 }, %struct.lg4ff_wheel { i32 49743, ptr @lg4ff_wheel_effects, i16 40, i16 900, ptr @lg4ff_set_range_g25 }, %struct.lg4ff_wheel { i32 51715, ptr @lg4ff_wheel_effects, i16 40, i16 270, ptr null }, %struct.lg4ff_wheel { i32 49820, ptr @lg4ff_wheel_effects, i16 40, i16 270, ptr null }], [48 x i8] zeroinitializer }, align 32
@hid_debug = external dso_local local_unnamed_addr global i32, align 4
@lg4ff_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str.2, i32 1310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017%s: Found compatible device, product ID %04X\0A\00", [48 x i8] zeroinitializer }, align 32
@lg4ff_init._entry_ptr.16 = internal global ptr @lg4ff_init._entry.14, section ".printk_index", align 4
@lg4ff_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.6, ptr @.str.2, i32 1318, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [224 x i8], [32 x i8] } { [224 x i8] c"This device is flagged to be handled by the lg4ff module but this module does not know how to handle it. Please report this as a bug to LKML, Simon Wood <simon@mungewell.org> or Michal Maly <madcatxster@devoid-pointer.net>\0A\00", [32 x i8] zeroinitializer }, align 32
@lg4ff_init._entry_ptr.19 = internal global ptr @lg4ff_init._entry.17, section ".printk_index", align 4
@lg4ff_multimode_wheels = internal constant { [5 x %struct.lg4ff_multimode_wheel], [48 x i8] } { [5 x %struct.lg4ff_multimode_wheel] [%struct.lg4ff_multimode_wheel { i16 -15720, i32 7, ptr @.str.75, ptr @.str.76 }, %struct.lg4ff_multimode_wheel { i16 -15719, i32 15, ptr @.str.77, ptr @.str.78 }, %struct.lg4ff_multimode_wheel { i16 -15718, i32 23, ptr @.str.79, ptr @.str.80 }, %struct.lg4ff_multimode_wheel { i16 -15717, i32 47, ptr @.str.81, ptr @.str.82 }, %struct.lg4ff_multimode_wheel { i16 -15793, i32 127, ptr @.str.83, ptr @.str.84 }], [48 x i8] zeroinitializer }, align 32
@lg4ff_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.6, ptr @.str.2, i32 1330, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Device product ID %X is not listed as a multimode wheel\00", [40 x i8] zeroinitializer }, align 32
@lg4ff_init._entry_ptr.22 = internal global ptr @lg4ff_init._entry.20, section ".printk_index", align 4
@dev_attr_combine_pedals = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.119, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @lg4ff_combine_show, ptr @lg4ff_combine_store }, [36 x i8] zeroinitializer }, align 32
@lg4ff_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.6, ptr @.str.2, i32 1368, ptr @.str.25, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Unable to create sysfs interface for \22combine\22, errno %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@lg4ff_init._entry_ptr.26 = internal global ptr @lg4ff_init._entry.23, section ".printk_index", align 4
@dev_attr_range = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.127, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @lg4ff_range_show, ptr @lg4ff_range_store }, [36 x i8] zeroinitializer }, align 32
@lg4ff_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.6, ptr @.str.2, i32 1371, ptr @.str.25, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Unable to create sysfs interface for \22range\22, errno %d\0A\00", [40 x i8] zeroinitializer }, align 32
@lg4ff_init._entry_ptr.29 = internal global ptr @lg4ff_init._entry.27, section ".printk_index", align 4
@dev_attr_real_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.134, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @lg4ff_real_id_show, ptr @lg4ff_real_id_store }, [36 x i8] zeroinitializer }, align 32
@lg4ff_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.6, ptr @.str.2, i32 1375, ptr @.str.25, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Unable to create sysfs interface for \22real_id\22, errno %d\0A\00", [38 x i8] zeroinitializer }, align 32
@lg4ff_init._entry_ptr.32 = internal global ptr @lg4ff_init._entry.30, section ".printk_index", align 4
@dev_attr_alternate_modes = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.142, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @lg4ff_alternate_modes_show, ptr @lg4ff_alternate_modes_store }, [36 x i8] zeroinitializer }, align 32
@lg4ff_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.6, ptr @.str.2, i32 1378, ptr @.str.25, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Unable to create sysfs interface for \22alternate_modes\22, errno %d\0A\00", [62 x i8] zeroinitializer }, align 32
@lg4ff_init._entry_ptr.35 = internal global ptr @lg4ff_init._entry.33, section ".printk_index", align 4
@lg4ff_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.6, ptr @.str.2, i32 1380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: sysfs interface created\0A\00", [33 x i8] zeroinitializer }, align 32
@lg4ff_init._entry_ptr.38 = internal global ptr @lg4ff_init._entry.36, section ".printk_index", align 4
@lg4ff_init._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.6, ptr @.str.2, i32 1406, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"can't allocate memory for LED %d\0A\00", [62 x i8] zeroinitializer }, align 32
@lg4ff_init._entry_ptr.41 = internal global ptr @lg4ff_init._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s::RPM%d\00", [22 x i8] zeroinitializer }, align 32
@lg4ff_init._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.6, ptr @.str.2, i32 1422, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to register LED %d. Aborting.\0A\00", [58 x i8] zeroinitializer }, align 32
@lg4ff_init._entry_ptr.45 = internal global ptr @lg4ff_init._entry.43, section ".printk_index", align 4
@lg4ff_init._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.6, ptr @.str.2, i32 1439, ptr @.str.48, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Force feedback support for Logitech Gaming Wheels\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@lg4ff_init._entry_ptr.49 = internal global ptr @lg4ff_init._entry.46, section ".printk_index", align 4
@lg4ff_deinit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 1455, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Error while deinitializing device, no private driver data.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lg4ff_deinit\00", [19 x i8] zeroinitializer }, align 32
@lg4ff_deinit._entry_ptr = internal global ptr @lg4ff_deinit._entry, section ".printk_index", align 4
@lg4ff_deinit._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.2, i32 1491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: Device successfully unregistered\0A\00", [56 x i8] zeroinitializer }, align 32
@lg4ff_deinit._entry_ptr.54 = internal global ptr @lg4ff_deinit._entry.52, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@lg4ff_handle_multimode_wheel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 1224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: Wheel is not a multimode wheel\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lg4ff_handle_multimode_wheel\00", [35 x i8] zeroinitializer }, align 32
@lg4ff_handle_multimode_wheel._entry_ptr = internal global ptr @lg4ff_handle_multimode_wheel._entry, section ".printk_index", align 4
@lg4ff_no_autoswitch = external dso_local local_unnamed_addr global i32, align 4
@lg4ff_handle_multimode_wheel._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.2, i32 1236, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid product id %X\0A\00", [41 x i8] zeroinitializer }, align 32
@lg4ff_handle_multimode_wheel._entry_ptr.59 = internal global ptr @lg4ff_handle_multimode_wheel._entry.57, section ".printk_index", align 4
@lg4ff_handle_multimode_wheel._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.56, ptr @.str.2, i32 1244, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unable to switch wheel mode, errno %d\0A\00", [57 x i8] zeroinitializer }, align 32
@lg4ff_handle_multimode_wheel._entry_ptr.62 = internal global ptr @lg4ff_handle_multimode_wheel._entry.60, section ".printk_index", align 4
@lg4ff_identify_multimode_wheel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 1187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: Testing whether PID is %X\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"lg4ff_identify_multimode_wheel\00", [33 x i8] zeroinitializer }, align 32
@lg4ff_identify_multimode_wheel._entry_ptr = internal global ptr @lg4ff_identify_multimode_wheel._entry, section ".printk_index", align 4
@lg4ff_alternate_modes = internal constant { [7 x %struct.lg4ff_alternate_mode], [44 x i8] } { [7 x %struct.lg4ff_alternate_mode] [%struct.lg4ff_alternate_mode { i16 0, ptr @.str.71, ptr @.str.72 }, %struct.lg4ff_alternate_mode { i16 -15724, ptr @.str.73, ptr @.str.74 }, %struct.lg4ff_alternate_mode { i16 -15720, ptr @.str.75, ptr @.str.76 }, %struct.lg4ff_alternate_mode { i16 -15719, ptr @.str.77, ptr @.str.78 }, %struct.lg4ff_alternate_mode { i16 -15718, ptr @.str.79, ptr @.str.80 }, %struct.lg4ff_alternate_mode { i16 -15717, ptr @.str.81, ptr @.str.82 }, %struct.lg4ff_alternate_mode { i16 -15793, ptr @.str.83, ptr @.str.84 }], [44 x i8] zeroinitializer }, align 32
@lg4ff_identify_multimode_wheel._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.2, i32 1204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\017%s: Found wheel with real PID %X whose reported PID is %X\0A\00", [35 x i8] zeroinitializer }, align 32
@lg4ff_identify_multimode_wheel._entry_ptr.67 = internal global ptr @lg4ff_identify_multimode_wheel._entry.65, section ".printk_index", align 4
@lg4ff_identify_multimode_wheel._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.64, ptr @.str.2, i32 1211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"\017%s: Wheel with bcdDevice %X was not recognized as multimode wheel, leaving in its current mode\0A\00", [62 x i8] zeroinitializer }, align 32
@lg4ff_identify_multimode_wheel._entry_ptr.70 = internal global ptr @lg4ff_identify_multimode_wheel._entry.68, section ".printk_index", align 4
@.str.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"native\00", [25 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.73 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DF-EX\00", [26 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Driving Force / Formula EX\00", [37 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DFP\00", [28 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Driving Force Pro\00", [46 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"G25\00", [28 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"G25 Racing Wheel\00", [47 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DFGT\00", [27 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Driving Force GT\00", [47 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"G27\00", [28 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"G27 Racing Wheel\00", [47 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"G29\00", [28 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"G29 Racing Wheel\00", [47 x i8] zeroinitializer }, align 32
@lg4ff_g29_ident_info = internal constant { %struct.lg4ff_wheel_ident_info, [20 x i8] } { %struct.lg4ff_wheel_ident_info { i32 126, i16 -8, i16 4944, i16 -15793 }, [20 x i8] zeroinitializer }, align 32
@lg4ff_g29_ident_info2 = internal constant { %struct.lg4ff_wheel_ident_info, [20 x i8] } { %struct.lg4ff_wheel_ident_info { i32 126, i16 -256, i16 -30464, i16 -15793 }, [20 x i8] zeroinitializer }, align 32
@lg4ff_dfgt_ident_info = internal constant { %struct.lg4ff_wheel_ident_info, [20 x i8] } { %struct.lg4ff_wheel_ident_info { i32 22, i16 -256, i16 4864, i16 -15718 }, [20 x i8] zeroinitializer }, align 32
@lg4ff_g27_ident_info = internal constant { %struct.lg4ff_wheel_ident_info, [20 x i8] } { %struct.lg4ff_wheel_ident_info { i32 46, i16 -16, i16 4656, i16 -15717 }, [20 x i8] zeroinitializer }, align 32
@lg4ff_g25_ident_info = internal constant { %struct.lg4ff_wheel_ident_info, [20 x i8] } { %struct.lg4ff_wheel_ident_info { i32 14, i16 -256, i16 4608, i16 -15719 }, [20 x i8] zeroinitializer }, align 32
@lg4ff_dfp_ident_info = internal constant { %struct.lg4ff_wheel_ident_info, [20 x i8] } { %struct.lg4ff_wheel_ident_info { i32 6, i16 -4096, i16 4096, i16 -15720 }, [20 x i8] zeroinitializer }, align 32
@lg4ff_mode_switch_ext01_dfp = internal constant { { i8, [7 x i8] }, [24 x i8] } { { i8, [7 x i8] } { i8 1, [7 x i8] c"\F8\01\00\00\00\00\00" }, [24 x i8] zeroinitializer }, align 32
@lg4ff_mode_switch_ext16_g25 = internal constant { { i8, [7 x i8] }, [24 x i8] } { { i8, [7 x i8] } { i8 1, [7 x i8] c"\F8\10\00\00\00\00\00" }, [24 x i8] zeroinitializer }, align 32
@lg4ff_mode_switch_ext09_dfex = internal constant { { i8, [14 x i8] }, [17 x i8] } { { i8, [14 x i8] } { i8 2, [14 x i8] c"\F8\0A\00\00\00\00\00\F8\09\00\01\00\00\00" }, [17 x i8] zeroinitializer }, align 32
@lg4ff_mode_switch_ext09_dfp = internal constant { { i8, [14 x i8] }, [17 x i8] } { { i8, [14 x i8] } { i8 2, [14 x i8] c"\F8\0A\00\00\00\00\00\F8\09\01\01\00\00\00" }, [17 x i8] zeroinitializer }, align 32
@lg4ff_mode_switch_ext09_g25 = internal constant { { i8, [14 x i8] }, [17 x i8] } { { i8, [14 x i8] } { i8 2, [14 x i8] c"\F8\0A\00\00\00\00\00\F8\09\02\01\00\00\00" }, [17 x i8] zeroinitializer }, align 32
@lg4ff_mode_switch_ext09_g27 = internal constant { { i8, [14 x i8] }, [17 x i8] } { { i8, [14 x i8] } { i8 2, [14 x i8] c"\F8\0A\00\00\00\00\00\F8\09\04\01\00\00\00" }, [17 x i8] zeroinitializer }, align 32
@lg4ff_mode_switch_ext09_dfgt = internal constant { { i8, [14 x i8] }, [17 x i8] } { { i8, [14 x i8] } { i8 2, [14 x i8] c"\F8\0A\00\00\00\00\00\F8\09\03\01\00\00\00" }, [17 x i8] zeroinitializer }, align 32
@lg4ff_mode_switch_ext09_g29 = internal constant { { i8, [14 x i8] }, [17 x i8] } { { i8, [14 x i8] } { i8 2, [14 x i8] c"\F8\0A\00\00\00\00\00\F8\09\05\01\01\00\00" }, [17 x i8] zeroinitializer }, align 32
@lg4ff_switch_compatibility_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.2, i32 773, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Private driver data not found!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"lg4ff_switch_compatibility_mode\00", [32 x i8] zeroinitializer }, align 32
@lg4ff_switch_compatibility_mode._entry_ptr = internal global ptr @lg4ff_switch_compatibility_mode._entry, section ".printk_index", align 4
@lg4ff_switch_compatibility_mode._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.94, ptr @.str.2, i32 779, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Device properties not found!\0A\00", [34 x i8] zeroinitializer }, align 32
@lg4ff_switch_compatibility_mode._entry_ptr.97 = internal global ptr @lg4ff_switch_compatibility_mode._entry.95, section ".printk_index", align 4
@no_wheel_effects = internal constant { [1 x i16], [30 x i8] } { [1 x i16] [i16 -1], [30 x i8] zeroinitializer }, align 32
@lg4ff_wheel_effects = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 82, i16 97, i16 -1], [26 x i8] zeroinitializer }, align 32
@lg4ff_set_range_dfp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.98, ptr @.str.2, i32 629, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lg4ff_set_range_dfp\00", [44 x i8] zeroinitializer }, align 32
@lg4ff_set_range_dfp._entry_ptr = internal global ptr @lg4ff_set_range_dfp._entry, section ".printk_index", align 4
@lg4ff_set_range_dfp._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.98, ptr @.str.2, i32 635, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@lg4ff_set_range_dfp._entry_ptr.100 = internal global ptr @lg4ff_set_range_dfp._entry.99, section ".printk_index", align 4
@lg4ff_set_range_dfp._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.98, ptr @.str.2, i32 639, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017%s: Driving Force Pro: setting range to %u\0A\00", [50 x i8] zeroinitializer }, align 32
@lg4ff_set_range_dfp._entry_ptr.103 = internal global ptr @lg4ff_set_range_dfp._entry.101, section ".printk_index", align 4
@lg4ff_set_range_g25._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.104, ptr @.str.2, i32 593, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lg4ff_set_range_g25\00", [44 x i8] zeroinitializer }, align 32
@lg4ff_set_range_g25._entry_ptr = internal global ptr @lg4ff_set_range_g25._entry, section ".printk_index", align 4
@lg4ff_set_range_g25._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.104, ptr @.str.2, i32 599, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@lg4ff_set_range_g25._entry_ptr.106 = internal global ptr @lg4ff_set_range_g25._entry.105, section ".printk_index", align 4
@lg4ff_set_range_g25._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.104, ptr @.str.2, i32 603, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: G25/G27/DFGT: setting range to %u\0A\00", [55 x i8] zeroinitializer }, align 32
@lg4ff_set_range_g25._entry_ptr.109 = internal global ptr @lg4ff_set_range_g25._entry.107, section ".printk_index", align 4
@lg4ff_play._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.110, ptr @.str.2, i32 417, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lg4ff_play\00", [21 x i8] zeroinitializer }, align 32
@lg4ff_play._entry_ptr = internal global ptr @lg4ff_play._entry, section ".printk_index", align 4
@lg4ff_play._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.110, ptr @.str.2, i32 423, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@lg4ff_play._entry_ptr.112 = internal global ptr @lg4ff_play._entry.111, section ".printk_index", align 4
@lg4ff_set_autocenter_ffex._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.113, ptr @.str.2, i32 559, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lg4ff_set_autocenter_ffex\00", [38 x i8] zeroinitializer }, align 32
@lg4ff_set_autocenter_ffex._entry_ptr = internal global ptr @lg4ff_set_autocenter_ffex._entry, section ".printk_index", align 4
@lg4ff_set_autocenter_ffex._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.113, ptr @.str.2, i32 565, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@lg4ff_set_autocenter_ffex._entry_ptr.115 = internal global ptr @lg4ff_set_autocenter_ffex._entry.114, section ".printk_index", align 4
@lg4ff_set_autocenter_default._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.116, ptr @.str.2, i32 479, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lg4ff_set_autocenter_default\00", [35 x i8] zeroinitializer }, align 32
@lg4ff_set_autocenter_default._entry_ptr = internal global ptr @lg4ff_set_autocenter_default._entry, section ".printk_index", align 4
@lg4ff_set_autocenter_default._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.116, ptr @.str.2, i32 485, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@lg4ff_set_autocenter_default._entry_ptr.118 = internal global ptr @lg4ff_set_autocenter_default._entry.117, section ".printk_index", align 4
@.str.119 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"combine_pedals\00", [17 x i8] zeroinitializer }, align 32
@lg4ff_combine_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.120, ptr @.str.2, i32 943, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lg4ff_combine_show\00", [45 x i8] zeroinitializer }, align 32
@lg4ff_combine_show._entry_ptr = internal global ptr @lg4ff_combine_show._entry, section ".printk_index", align 4
@lg4ff_combine_show._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.120, ptr @.str.2, i32 949, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@lg4ff_combine_show._entry_ptr.122 = internal global ptr @lg4ff_combine_show._entry.121, section ".printk_index", align 4
@.str.123 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@lg4ff_combine_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.124, ptr @.str.2, i32 967, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lg4ff_combine_store\00", [44 x i8] zeroinitializer }, align 32
@lg4ff_combine_store._entry_ptr = internal global ptr @lg4ff_combine_store._entry, section ".printk_index", align 4
@lg4ff_combine_store._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.124, ptr @.str.2, i32 973, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@lg4ff_combine_store._entry_ptr.126 = internal global ptr @lg4ff_combine_store._entry.125, section ".printk_index", align 4
@.str.127 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"range\00", [26 x i8] zeroinitializer }, align 32
@lg4ff_range_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.128, ptr @.str.2, i32 996, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lg4ff_range_show\00", [47 x i8] zeroinitializer }, align 32
@lg4ff_range_show._entry_ptr = internal global ptr @lg4ff_range_show._entry, section ".printk_index", align 4
@lg4ff_range_show._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.128, ptr @.str.2, i32 1002, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@lg4ff_range_show._entry_ptr.130 = internal global ptr @lg4ff_range_show._entry.129, section ".printk_index", align 4
@lg4ff_range_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.131, ptr @.str.2, i32 1022, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lg4ff_range_store\00", [46 x i8] zeroinitializer }, align 32
@lg4ff_range_store._entry_ptr = internal global ptr @lg4ff_range_store._entry, section ".printk_index", align 4
@lg4ff_range_store._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.131, ptr @.str.2, i32 1028, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@lg4ff_range_store._entry_ptr.133 = internal global ptr @lg4ff_range_store._entry.132, section ".printk_index", align 4
@.str.134 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"real_id\00", [24 x i8] zeroinitializer }, align 32
@lg4ff_real_id_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.135, ptr @.str.2, i32 1055, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lg4ff_real_id_show\00", [45 x i8] zeroinitializer }, align 32
@lg4ff_real_id_show._entry_ptr = internal global ptr @lg4ff_real_id_show._entry, section ".printk_index", align 4
@lg4ff_real_id_show._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.135, ptr @.str.2, i32 1061, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@lg4ff_real_id_show._entry_ptr.137 = internal global ptr @lg4ff_real_id_show._entry.136, section ".printk_index", align 4
@lg4ff_real_id_show._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.135, ptr @.str.2, i32 1066, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NULL pointer to string\0A\00", [40 x i8] zeroinitializer }, align 32
@lg4ff_real_id_show._entry_ptr.140 = internal global ptr @lg4ff_real_id_show._entry.138, section ".printk_index", align 4
@.str.141 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %s\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"alternate_modes\00", [16 x i8] zeroinitializer }, align 32
@lg4ff_alternate_modes_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.143, ptr @.str.2, i32 808, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"lg4ff_alternate_modes_show\00", [37 x i8] zeroinitializer }, align 32
@lg4ff_alternate_modes_show._entry_ptr = internal global ptr @lg4ff_alternate_modes_show._entry, section ".printk_index", align 4
@lg4ff_alternate_modes_show._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.143, ptr @.str.2, i32 814, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@lg4ff_alternate_modes_show._entry_ptr.145 = internal global ptr @lg4ff_alternate_modes_show._entry.144, section ".printk_index", align 4
@lg4ff_alternate_modes_show._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.143, ptr @.str.2, i32 819, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@lg4ff_alternate_modes_show._entry_ptr.147 = internal global ptr @lg4ff_alternate_modes_show._entry.146, section ".printk_index", align 4
@.str.148 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s: %s\00", [25 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" *\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@lg4ff_alternate_modes_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.151, ptr @.str.2, i32 859, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"lg4ff_alternate_modes_store\00", [36 x i8] zeroinitializer }, align 32
@lg4ff_alternate_modes_store._entry_ptr = internal global ptr @lg4ff_alternate_modes_store._entry, section ".printk_index", align 4
@lg4ff_alternate_modes_store._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.151, ptr @.str.2, i32 865, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@lg4ff_alternate_modes_store._entry_ptr.153 = internal global ptr @lg4ff_alternate_modes_store._entry.152, section ".printk_index", align 4
@.str.154 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@lg4ff_alternate_modes_store._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.151, ptr @.str.2, i32 899, ptr @.str.48, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Requested mode \22%s\22 is not supported by the device\0A\00", [44 x i8] zeroinitializer }, align 32
@lg4ff_alternate_modes_store._entry_ptr.157 = internal global ptr @lg4ff_alternate_modes_store._entry.155, section ".printk_index", align 4
@lg4ff_alternate_modes_store._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.151, ptr @.str.2, i32 911, ptr @.str.48, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [130 x i8], [62 x i8] } { [130 x i8] c"\22%s\22 cannot be switched to \22DF-EX\22 mode. Load the \22hid_logitech\22 module with \22lg4ff_no_autoswitch=1\22 parameter set and try again\0A\00", [62 x i8] zeroinitializer }, align 32
@lg4ff_alternate_modes_store._entry_ptr.160 = internal global ptr @lg4ff_alternate_modes_store._entry.158, section ".printk_index", align 4
@lg4ff_alternate_modes_store._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.151, ptr @.str.2, i32 918, ptr @.str.48, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\22%s\22 cannot be switched back into \22%s\22 mode\0A\00", [51 x i8] zeroinitializer }, align 32
@lg4ff_alternate_modes_store._entry_ptr.163 = internal global ptr @lg4ff_alternate_modes_store._entry.161, section ".printk_index", align 4
@lg4ff_alternate_modes_store._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.151, ptr @.str.2, i32 924, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid target product ID %X\0A\00", [34 x i8] zeroinitializer }, align 32
@lg4ff_alternate_modes_store._entry_ptr.166 = internal global ptr @lg4ff_alternate_modes_store._entry.164, section ".printk_index", align 4
@lg4ff_set_leds._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.167, ptr @.str.2, i32 1091, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lg4ff_set_leds\00", [17 x i8] zeroinitializer }, align 32
@lg4ff_set_leds._entry_ptr = internal global ptr @lg4ff_set_leds._entry, section ".printk_index", align 4
@lg4ff_set_leds._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.167, ptr @.str.2, i32 1097, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@lg4ff_set_leds._entry_ptr.169 = internal global ptr @lg4ff_set_leds._entry.168, section ".printk_index", align 4
@lg4ff_led_get_brightness._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.171, ptr @.str.2, i32 1159, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Device data not found.\00", [41 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lg4ff_led_get_brightness\00", [39 x i8] zeroinitializer }, align 32
@lg4ff_led_get_brightness._entry_ptr = internal global ptr @lg4ff_led_get_brightness._entry, section ".printk_index", align 4
@lg4ff_led_get_brightness._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.171, ptr @.str.2, i32 1166, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Device properties not found.\00", [35 x i8] zeroinitializer }, align 32
@lg4ff_led_get_brightness._entry_ptr.174 = internal global ptr @lg4ff_led_get_brightness._entry.172, section ".printk_index", align 4
@lg4ff_led_set_brightness._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.175, ptr @.str.2, i32 1124, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lg4ff_led_set_brightness\00", [39 x i8] zeroinitializer }, align 32
@lg4ff_led_set_brightness._entry_ptr = internal global ptr @lg4ff_led_set_brightness._entry, section ".printk_index", align 4
@lg4ff_led_set_brightness._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.175, ptr @.str.2, i32 1131, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@lg4ff_led_set_brightness._entry_ptr.177 = internal global ptr @lg4ff_led_set_brightness._entry.176, section ".printk_index", align 4
@switch.table.lg4ff_alternate_modes_store = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @lg4ff_mode_switch_ext09_dfex, ptr @lg4ff_mode_switch_ext09_dfex, ptr @lg4ff_mode_switch_ext09_dfex, ptr @lg4ff_mode_switch_ext09_dfex, ptr @lg4ff_mode_switch_ext09_dfp, ptr @lg4ff_mode_switch_ext09_g25, ptr @lg4ff_mode_switch_ext09_dfex, ptr @lg4ff_mode_switch_ext09_g27], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 200, i64 900]
@__sancov_gen_cov_switch_values.178 = internal global [13 x i64] [i64 11, i64 32, i64 49678, i64 49743, i64 49811, i64 49812, i64 49813, i64 49816, i64 49817, i64 49818, i64 49819, i64 49820, i64 51715]
@__sancov_gen_cov_switch_values.179 = internal global [7 x i64] [i64 5, i64 16, i64 49743, i64 49816, i64 49817, i64 49818, i64 49819]
@__sancov_gen_cov_switch_values.180 = internal global [13 x i64] [i64 11, i64 32, i64 49678, i64 49743, i64 49811, i64 49812, i64 49813, i64 49816, i64 49817, i64 49818, i64 49819, i64 49820, i64 51715]
@__sancov_gen_cov_switch_values.181 = internal global [7 x i64] [i64 5, i64 16, i64 49743, i64 49816, i64 49817, i64 49818, i64 49819]
@__sancov_gen_cov_switch_values.182 = internal global [4 x i64] [i64 2, i64 32, i64 49743, i64 49819]
@__sancov_gen_cov_switch_values.183 = internal global [4 x i64] [i64 2, i64 32, i64 49813, i64 51715]
@__sancov_gen_cov_switch_values.184 = internal global [4 x i64] [i64 2, i64 16, i64 200, i64 900]
@__sancov_gen_cov_switch_values.185 = internal global [7 x i64] [i64 5, i64 16, i64 49743, i64 49816, i64 49817, i64 49818, i64 49819]
@__sancov_gen_cov_switch_values.186 = internal global [4 x i64] [i64 2, i64 16, i64 49816, i64 49817]
@__sancov_gen_cov_switch_values.187 = internal global [7 x i64] [i64 5, i64 16, i64 49743, i64 49816, i64 49817, i64 49818, i64 49819]
@__sancov_gen_cov_switch_values.188 = internal global [5 x i64] [i64 3, i64 16, i64 49812, i64 49816, i64 49818]
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 307, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1270, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1282, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1288, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1302, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant [14 x i8] c"lg4ff_devices\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 131, i32 33 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1310, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1316, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant [23 x i8] c"lg4ff_multimode_wheels\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 145, i32 43 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1330, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant [24 x i8] c"dev_attr_combine_pedals\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1368, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant [15 x i8] c"dev_attr_range\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1371, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant [17 x i8] c"dev_attr_real_id\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1375, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant [25 x i8] c"dev_attr_alternate_modes\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1378, i32 4 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1380, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1406, i32 5 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1411, i32 28 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1422, i32 5 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1439, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1455, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1491, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1224, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1236, i32 4 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1244, i32 4 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1187, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant [22 x i8] c"lg4ff_alternate_modes\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 163, i32 42 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1204, i32 4 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1211, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 164, i32 32 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 164, i32 42 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 165, i32 57 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 165, i32 73 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 166, i32 60 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 166, i32 75 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 167, i32 60 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 167, i32 75 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 168, i32 62 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 168, i32 78 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 169, i32 60 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 169, i32 75 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 170, i32 60 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 170, i32 75 }
@___asan_gen_.429 = private unnamed_addr constant [21 x i8] c"lg4ff_g29_ident_info\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 202, i32 44 }
@___asan_gen_.432 = private unnamed_addr constant [22 x i8] c"lg4ff_g29_ident_info2\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 209, i32 44 }
@___asan_gen_.435 = private unnamed_addr constant [22 x i8] c"lg4ff_dfgt_ident_info\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 195, i32 44 }
@___asan_gen_.438 = private unnamed_addr constant [21 x i8] c"lg4ff_g27_ident_info\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 188, i32 44 }
@___asan_gen_.441 = private unnamed_addr constant [21 x i8] c"lg4ff_g25_ident_info\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 181, i32 44 }
@___asan_gen_.444 = private unnamed_addr constant [21 x i8] c"lg4ff_dfp_ident_info\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 174, i32 44 }
@___asan_gen_.447 = private unnamed_addr constant [28 x i8] c"lg4ff_mode_switch_ext01_dfp\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 265, i32 46 }
@___asan_gen_.450 = private unnamed_addr constant [28 x i8] c"lg4ff_mode_switch_ext16_g25\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 271, i32 46 }
@___asan_gen_.453 = private unnamed_addr constant [29 x i8] c"lg4ff_mode_switch_ext09_dfex\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 228, i32 46 }
@___asan_gen_.456 = private unnamed_addr constant [28 x i8] c"lg4ff_mode_switch_ext09_dfp\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 234, i32 46 }
@___asan_gen_.459 = private unnamed_addr constant [28 x i8] c"lg4ff_mode_switch_ext09_g25\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 240, i32 46 }
@___asan_gen_.462 = private unnamed_addr constant [28 x i8] c"lg4ff_mode_switch_ext09_g27\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 252, i32 46 }
@___asan_gen_.465 = private unnamed_addr constant [29 x i8] c"lg4ff_mode_switch_ext09_dfgt\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 246, i32 46 }
@___asan_gen_.468 = private unnamed_addr constant [28 x i8] c"lg4ff_mode_switch_ext09_g29\00", align 1
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 258, i32 46 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 773, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 779, i32 3 }
@___asan_gen_.486 = private unnamed_addr constant [17 x i8] c"no_wheel_effects\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 94, i32 27 }
@___asan_gen_.489 = private unnamed_addr constant [20 x i8] c"lg4ff_wheel_effects\00", align 1
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 88, i32 27 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 629, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 635, i32 3 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 639, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 593, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 599, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 603, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 417, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 423, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 559, i32 3 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 565, i32 3 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 479, i32 3 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 485, i32 3 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 983, i32 8 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 943, i32 3 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 949, i32 3 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 953, i32 36 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 967, i32 3 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 973, i32 3 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1044, i32 8 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 996, i32 3 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1002, i32 3 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1022, i32 3 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1028, i32 3 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1079, i32 8 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1055, i32 3 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1061, i32 3 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1066, i32 3 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1070, i32 36 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 931, i32 8 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 808, i32 3 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 814, i32 3 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 819, i32 3 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 826, i32 55 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 835, i32 56 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 837, i32 56 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 859, i32 3 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 865, i32 3 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 870, i32 31 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 899, i32 3 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 910, i32 3 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 918, i32 3 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 924, i32 3 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1091, i32 3 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1097, i32 3 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1159, i32 3 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1166, i32 3 }
@___asan_gen_.702 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1124, i32 3 }
@___asan_gen_.705 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.706 = private constant [27 x i8] c"../drivers/hid/hid-lg4ff.c\00", align 1
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 1131, i32 3 }
@___asan_gen_.708 = private unnamed_addr constant [41 x i8] c"switch.table.lg4ff_alternate_modes_store\00", align 1
@llvm.compiler.used = appending global [237 x ptr] [ptr @lg4ff_adjust_input_event._entry, ptr @lg4ff_adjust_input_event._entry_ptr, ptr @lg4ff_alternate_modes_show._entry, ptr @lg4ff_alternate_modes_show._entry.144, ptr @lg4ff_alternate_modes_show._entry.146, ptr @lg4ff_alternate_modes_show._entry_ptr, ptr @lg4ff_alternate_modes_show._entry_ptr.145, ptr @lg4ff_alternate_modes_show._entry_ptr.147, ptr @lg4ff_alternate_modes_store._entry, ptr @lg4ff_alternate_modes_store._entry.152, ptr @lg4ff_alternate_modes_store._entry.155, ptr @lg4ff_alternate_modes_store._entry.158, ptr @lg4ff_alternate_modes_store._entry.161, ptr @lg4ff_alternate_modes_store._entry.164, ptr @lg4ff_alternate_modes_store._entry_ptr, ptr @lg4ff_alternate_modes_store._entry_ptr.153, ptr @lg4ff_alternate_modes_store._entry_ptr.157, ptr @lg4ff_alternate_modes_store._entry_ptr.160, ptr @lg4ff_alternate_modes_store._entry_ptr.163, ptr @lg4ff_alternate_modes_store._entry_ptr.166, ptr @lg4ff_combine_show._entry, ptr @lg4ff_combine_show._entry.121, ptr @lg4ff_combine_show._entry_ptr, ptr @lg4ff_combine_show._entry_ptr.122, ptr @lg4ff_combine_store._entry, ptr @lg4ff_combine_store._entry.125, ptr @lg4ff_combine_store._entry_ptr, ptr @lg4ff_combine_store._entry_ptr.126, ptr @lg4ff_deinit._entry, ptr @lg4ff_deinit._entry.52, ptr @lg4ff_deinit._entry_ptr, ptr @lg4ff_deinit._entry_ptr.54, ptr @lg4ff_handle_multimode_wheel._entry, ptr @lg4ff_handle_multimode_wheel._entry.57, ptr @lg4ff_handle_multimode_wheel._entry.60, ptr @lg4ff_handle_multimode_wheel._entry_ptr, ptr @lg4ff_handle_multimode_wheel._entry_ptr.59, ptr @lg4ff_handle_multimode_wheel._entry_ptr.62, ptr @lg4ff_identify_multimode_wheel._entry, ptr @lg4ff_identify_multimode_wheel._entry.65, ptr @lg4ff_identify_multimode_wheel._entry.68, ptr @lg4ff_identify_multimode_wheel._entry_ptr, ptr @lg4ff_identify_multimode_wheel._entry_ptr.67, ptr @lg4ff_identify_multimode_wheel._entry_ptr.70, ptr @lg4ff_init._entry, ptr @lg4ff_init._entry.11, ptr @lg4ff_init._entry.14, ptr @lg4ff_init._entry.17, ptr @lg4ff_init._entry.20, ptr @lg4ff_init._entry.23, ptr @lg4ff_init._entry.27, ptr @lg4ff_init._entry.30, ptr @lg4ff_init._entry.33, ptr @lg4ff_init._entry.36, ptr @lg4ff_init._entry.39, ptr @lg4ff_init._entry.43, ptr @lg4ff_init._entry.46, ptr @lg4ff_init._entry.7, ptr @lg4ff_init._entry_ptr, ptr @lg4ff_init._entry_ptr.13, ptr @lg4ff_init._entry_ptr.16, ptr @lg4ff_init._entry_ptr.19, ptr @lg4ff_init._entry_ptr.22, ptr @lg4ff_init._entry_ptr.26, ptr @lg4ff_init._entry_ptr.29, ptr @lg4ff_init._entry_ptr.32, ptr @lg4ff_init._entry_ptr.35, ptr @lg4ff_init._entry_ptr.38, ptr @lg4ff_init._entry_ptr.41, ptr @lg4ff_init._entry_ptr.45, ptr @lg4ff_init._entry_ptr.49, ptr @lg4ff_init._entry_ptr.9, ptr @lg4ff_led_get_brightness._entry, ptr @lg4ff_led_get_brightness._entry.172, ptr @lg4ff_led_get_brightness._entry_ptr, ptr @lg4ff_led_get_brightness._entry_ptr.174, ptr @lg4ff_led_set_brightness._entry, ptr @lg4ff_led_set_brightness._entry.176, ptr @lg4ff_led_set_brightness._entry_ptr, ptr @lg4ff_led_set_brightness._entry_ptr.177, ptr @lg4ff_play._entry, ptr @lg4ff_play._entry.111, ptr @lg4ff_play._entry_ptr, ptr @lg4ff_play._entry_ptr.112, ptr @lg4ff_range_show._entry, ptr @lg4ff_range_show._entry.129, ptr @lg4ff_range_show._entry_ptr, ptr @lg4ff_range_show._entry_ptr.130, ptr @lg4ff_range_store._entry, ptr @lg4ff_range_store._entry.132, ptr @lg4ff_range_store._entry_ptr, ptr @lg4ff_range_store._entry_ptr.133, ptr @lg4ff_real_id_show._entry, ptr @lg4ff_real_id_show._entry.136, ptr @lg4ff_real_id_show._entry.138, ptr @lg4ff_real_id_show._entry_ptr, ptr @lg4ff_real_id_show._entry_ptr.137, ptr @lg4ff_real_id_show._entry_ptr.140, ptr @lg4ff_set_autocenter_default._entry, ptr @lg4ff_set_autocenter_default._entry.117, ptr @lg4ff_set_autocenter_default._entry_ptr, ptr @lg4ff_set_autocenter_default._entry_ptr.118, ptr @lg4ff_set_autocenter_ffex._entry, ptr @lg4ff_set_autocenter_ffex._entry.114, ptr @lg4ff_set_autocenter_ffex._entry_ptr, ptr @lg4ff_set_autocenter_ffex._entry_ptr.115, ptr @lg4ff_set_leds._entry, ptr @lg4ff_set_leds._entry.168, ptr @lg4ff_set_leds._entry_ptr, ptr @lg4ff_set_leds._entry_ptr.169, ptr @lg4ff_set_range_dfp._entry, ptr @lg4ff_set_range_dfp._entry.101, ptr @lg4ff_set_range_dfp._entry.99, ptr @lg4ff_set_range_dfp._entry_ptr, ptr @lg4ff_set_range_dfp._entry_ptr.100, ptr @lg4ff_set_range_dfp._entry_ptr.103, ptr @lg4ff_set_range_g25._entry, ptr @lg4ff_set_range_g25._entry.105, ptr @lg4ff_set_range_g25._entry.107, ptr @lg4ff_set_range_g25._entry_ptr, ptr @lg4ff_set_range_g25._entry_ptr.106, ptr @lg4ff_set_range_g25._entry_ptr.109, ptr @lg4ff_switch_compatibility_mode._entry, ptr @lg4ff_switch_compatibility_mode._entry.95, ptr @lg4ff_switch_compatibility_mode._entry_ptr, ptr @lg4ff_switch_compatibility_mode._entry_ptr.97, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @lg4ff_init.__key, ptr @.str.10, ptr @.str.12, ptr @lg4ff_devices, ptr @.str.15, ptr @.str.18, ptr @lg4ff_multimode_wheels, ptr @.str.21, ptr @dev_attr_combine_pedals, ptr @.str.24, ptr @.str.25, ptr @dev_attr_range, ptr @.str.28, ptr @dev_attr_real_id, ptr @.str.31, ptr @dev_attr_alternate_modes, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @lg4ff_alternate_modes, ptr @.str.66, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @lg4ff_g29_ident_info, ptr @lg4ff_g29_ident_info2, ptr @lg4ff_dfgt_ident_info, ptr @lg4ff_g27_ident_info, ptr @lg4ff_g25_ident_info, ptr @lg4ff_dfp_ident_info, ptr @lg4ff_mode_switch_ext01_dfp, ptr @lg4ff_mode_switch_ext16_g25, ptr @lg4ff_mode_switch_ext09_dfex, ptr @lg4ff_mode_switch_ext09_dfp, ptr @lg4ff_mode_switch_ext09_g25, ptr @lg4ff_mode_switch_ext09_g27, ptr @lg4ff_mode_switch_ext09_dfgt, ptr @lg4ff_mode_switch_ext09_g29, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @no_wheel_effects, ptr @lg4ff_wheel_effects, ptr @.str.98, ptr @.str.102, ptr @.str.104, ptr @.str.108, ptr @.str.110, ptr @.str.113, ptr @.str.116, ptr @.str.119, ptr @.str.120, ptr @.str.123, ptr @.str.124, ptr @.str.127, ptr @.str.128, ptr @.str.131, ptr @.str.134, ptr @.str.135, ptr @.str.139, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.154, ptr @.str.156, ptr @.str.159, ptr @.str.162, ptr @.str.165, ptr @.str.167, ptr @.str.170, ptr @.str.171, ptr @.str.173, ptr @.str.175, ptr @switch.table.lg4ff_alternate_modes_store], section "llvm.metadata"
@0 = internal global [174 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_adjust_input_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_devices to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_multimode_wheels to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_combine_pedals to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_range to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_real_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_alternate_modes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_init._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_init._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_init._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_deinit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_deinit._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_handle_multimode_wheel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_handle_multimode_wheel._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_handle_multimode_wheel._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_identify_multimode_wheel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_alternate_modes to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_identify_multimode_wheel._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_identify_multimode_wheel._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_g29_ident_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_g29_ident_info2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_dfgt_ident_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_g27_ident_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_g25_ident_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_dfp_ident_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_mode_switch_ext01_dfp to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_mode_switch_ext16_g25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_mode_switch_ext09_dfex to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_mode_switch_ext09_dfp to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_mode_switch_ext09_g25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_mode_switch_ext09_g27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_mode_switch_ext09_dfgt to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_mode_switch_ext09_g29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_switch_compatibility_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_switch_compatibility_mode._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @no_wheel_effects to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_wheel_effects to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_set_range_dfp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_set_range_dfp._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_set_range_dfp._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_set_range_g25._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_set_range_g25._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_set_range_g25._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_play._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_play._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_set_autocenter_ffex._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_set_autocenter_ffex._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_set_autocenter_default._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_set_autocenter_default._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_combine_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_combine_show._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_combine_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_combine_store._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_range_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_range_show._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_range_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_range_store._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_real_id_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_real_id_show._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_real_id_show._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_alternate_modes_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_alternate_modes_show._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_alternate_modes_show._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_alternate_modes_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_alternate_modes_store._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_alternate_modes_store._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_alternate_modes_store._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 130, i32 192, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_alternate_modes_store._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_alternate_modes_store._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_set_leds._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_set_leds._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_led_get_brightness._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_led_get_brightness._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_led_set_brightness._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_led_set_brightness._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.lg4ff_alternate_modes_store to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lg4ff_adjust_input_event(ptr noundef %hid, ptr nocapture noundef readonly %field, ptr nocapture noundef readonly %usage, i32 noundef %value, ptr nocapture noundef readonly %drv_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %device_props = getelementptr inbounds %struct.lg_drv_data, ptr %drv_data, i32 0, i32 1
  %0 = ptrtoint ptr %device_props to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_props, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %wdata = getelementptr inbounds %struct.lg4ff_device_entry, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wdata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 49816, i32 %3)
  %cond = icmp eq i32 %3, 49816
  br i1 %cond, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %code = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %4 = ptrtoint ptr %code to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %code, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cond9 = icmp eq i16 %5, 0
  br i1 %cond9, label %sw.bb2, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb2:                                           ; preds = %sw.bb
  %range = getelementptr inbounds %struct.lg4ff_device_entry, ptr %1, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %range to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %range, align 2
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i16 %7, label %if.else6.i [
    i16 900, label %sw.bb2.lg4ff_adjust_dfp_x_axis.exit_crit_edge
    i16 200, label %sw.bb2.lg4ff_adjust_dfp_x_axis.exit_crit_edge14
  ]

sw.bb2.lg4ff_adjust_dfp_x_axis.exit_crit_edge14:  ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #13
  br label %lg4ff_adjust_dfp_x_axis.exit

sw.bb2.lg4ff_adjust_dfp_x_axis.exit_crit_edge:    ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #13
  br label %lg4ff_adjust_dfp_x_axis.exit

if.else6.i:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 200, i16 %7)
  %cmp8.i = icmp ult i16 %7, 200
  %..i = select i1 %cmp8.i, i32 200, i32 900
  %sub.i = add i32 %value, -8192
  %div.i = sdiv i32 %sub.i, %conv.i
  %9 = mul i32 %div.i, %conv.i
  %rem17.i.decomposed = sub i32 %sub.i, %9
  %mul.i = mul i32 %div.i, %..i
  %mul20.i = mul nsw i32 %rem17.i.decomposed, %..i
  %div22.i = sdiv i32 %mul20.i, %conv.i
  %add.i = add i32 %mul.i, 8192
  %add23.i = add i32 %add.i, %div22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add23.i)
  %cmp24.i = icmp slt i32 %add23.i, 0
  %10 = tail call i32 @llvm.umin.i32(i32 %add23.i, i32 16383) #11
  %spec.select.i = select i1 %cmp24.i, i32 0, i32 %10
  br label %lg4ff_adjust_dfp_x_axis.exit

lg4ff_adjust_dfp_x_axis.exit:                     ; preds = %if.else6.i, %sw.bb2.lg4ff_adjust_dfp_x_axis.exit_crit_edge, %sw.bb2.lg4ff_adjust_dfp_x_axis.exit_crit_edge14
  %retval.0.i = phi i32 [ %value, %sw.bb2.lg4ff_adjust_dfp_x_axis.exit_crit_edge ], [ %value, %sw.bb2.lg4ff_adjust_dfp_x_axis.exit_crit_edge14 ], [ %spec.select.i, %if.else6.i ]
  %hidinput = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 19
  %11 = ptrtoint ptr %hidinput to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hidinput, align 4
  %input = getelementptr inbounds %struct.hid_input, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %input, align 4
  %type = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %type, align 4
  %conv4 = zext i8 %16 to i32
  tail call void @input_event(ptr noundef %14, i32 noundef %conv4, i32 noundef 0, i32 noundef %retval.0.i) #11
  br label %cleanup

cleanup:                                          ; preds = %lg4ff_adjust_dfp_x_axis.exit, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 1, %lg4ff_adjust_dfp_x_axis.exit ], [ 0, %do.end ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @lg4ff_raw_event(ptr nocapture noundef readnone %hdev, ptr nocapture noundef readnone %report, ptr nocapture noundef %rd, i32 noundef %size, ptr nocapture noundef readonly %drv_data) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %device_props = getelementptr inbounds %struct.lg_drv_data, ptr %drv_data, i32 0, i32 1
  %0 = ptrtoint ptr %device_props to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_props, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %combine = getelementptr inbounds %struct.lg4ff_device_entry, ptr %1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %combine to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %combine, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool2.not = icmp eq i16 %3, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %wdata = getelementptr inbounds %struct.lg4ff_device_entry, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wdata, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.178)
  switch i32 %5, label %if.then3.cleanup_crit_edge [
    i32 49812, label %sw.bb
    i32 49678, label %if.then3.sw.bb7_crit_edge
    i32 49811, label %if.then3.sw.bb7_crit_edge45
    i32 49813, label %if.then3.sw.bb7_crit_edge46
    i32 51715, label %if.then3.sw.bb7_crit_edge47
    i32 49816, label %sw.bb11
    i32 49817, label %if.then3.sw.epilog_crit_edge
    i32 49819, label %if.then3.sw.epilog_crit_edge48
    i32 49818, label %if.then3.sw.bb16_crit_edge
    i32 49743, label %if.then3.sw.bb16_crit_edge49
    i32 49820, label %sw.bb17
  ]

if.then3.sw.bb16_crit_edge49:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb16

if.then3.sw.bb16_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb16

if.then3.sw.epilog_crit_edge48:                   ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then3.sw.epilog_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then3.sw.bb7_crit_edge47:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7

if.then3.sw.bb7_crit_edge46:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7

if.then3.sw.bb7_crit_edge45:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7

if.then3.sw.bb7_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr i8, ptr %rd, i32 3
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %arrayidx5 = getelementptr i8, ptr %rd, i32 5
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx5, align 1
  %arrayidx6 = getelementptr i8, ptr %rd, i32 6
  br label %cleanup.sink.split

sw.bb7:                                           ; preds = %if.then3.sw.bb7_crit_edge, %if.then3.sw.bb7_crit_edge45, %if.then3.sw.bb7_crit_edge46, %if.then3.sw.bb7_crit_edge47
  %arrayidx8 = getelementptr i8, ptr %rd, i32 3
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx8, align 1
  %arrayidx9 = getelementptr i8, ptr %rd, i32 4
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %arrayidx9, align 1
  %arrayidx10 = getelementptr i8, ptr %rd, i32 5
  br label %cleanup.sink.split

sw.bb11:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx12 = getelementptr i8, ptr %rd, i32 4
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx12, align 1
  %arrayidx13 = getelementptr i8, ptr %rd, i32 5
  %15 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %arrayidx13, align 1
  %arrayidx14 = getelementptr i8, ptr %rd, i32 6
  br label %cleanup.sink.split

sw.bb16:                                          ; preds = %if.then3.sw.bb16_crit_edge, %if.then3.sw.bb16_crit_edge49
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb17, %sw.bb16, %if.then3.sw.epilog_crit_edge, %if.then3.sw.epilog_crit_edge48
  %offset.0 = phi i32 [ 3, %sw.bb17 ], [ 6, %sw.bb16 ], [ 5, %if.then3.sw.epilog_crit_edge ], [ 5, %if.then3.sw.epilog_crit_edge48 ]
  %arrayidx18 = getelementptr i8, ptr %rd, i32 %offset.0
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx18, align 1
  %conv = zext i8 %17 to i16
  %add = add nuw nsw i16 %conv, 255
  %add19 = add nuw nsw i32 %offset.0, 1
  %arrayidx20 = getelementptr i8, ptr %rd, i32 %add19
  %18 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %19 to i16
  %sub = sub nuw nsw i16 %add, %conv21
  %20 = lshr i16 %sub, 1
  %conv22 = trunc i16 %20 to i8
  store i8 %conv22, ptr %arrayidx18, align 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.epilog, %sw.bb11, %sw.bb7, %sw.bb
  %arrayidx20.sink = phi ptr [ %arrayidx20, %sw.epilog ], [ %arrayidx14, %sw.bb11 ], [ %arrayidx10, %sw.bb7 ], [ %arrayidx6, %sw.bb ]
  %21 = ptrtoint ptr %arrayidx20.sink to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 127, ptr %arrayidx20.sink, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then3.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lg4ff_init(ptr noundef %hid) local_unnamed_addr #0 align 64 {
entry:
  %t_wdata.sroa.10.i = alloca [23 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %report_list1 = getelementptr %struct.hid_device, ptr %hid, i32 0, i32 15, i32 1, i32 1
  %0 = ptrtoint ptr %report_list1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %report_list1, align 4
  %dev3 = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  %parent = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %parent4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parent4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent4, align 8
  %bcdDevice7 = getelementptr i8, ptr %5, i32 940
  %6 = ptrtoint ptr %bcdDevice7 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %bcdDevice7, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %inputs = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 36
  %9 = ptrtoint ptr %inputs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %inputs, align 4
  %cmp.i.not = icmp eq ptr %10, %inputs
  br i1 %cmp.i.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.5) #14
  br label %cleanup296

if.end:                                           ; preds = %entry
  %input = getelementptr inbounds %struct.hid_input, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %input, align 4
  %call15 = tail call ptr @hid_validate_values(ptr noundef %hid, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 7) #11
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.end.cleanup296_crit_edge, label %if.end18

if.end.cleanup296_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup296

if.end18:                                         ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i.i, align 4
  %tobool20.not = icmp eq ptr %14, null
  br i1 %tobool20.not, label %do.end24, label %if.end26

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.8) #14
  br label %cleanup296

if.end26:                                         ; preds = %if.end18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 104) #15
  %tobool28.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool28.not, label %if.end26.cleanup296_crit_edge, label %do.body31

if.end26.cleanup296_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup296

do.body31:                                        ; preds = %if.end26
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @lg4ff_init.__key, i16 noundef signext 3) #11
  %report35 = getelementptr inbounds %struct.lg4ff_device_entry, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %report35 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %1, ptr %report35, align 4
  %device_props = getelementptr inbounds %struct.lg_drv_data, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %device_props to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %device_props, align 4
  %product.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 11
  %18 = ptrtoint ptr %product.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %product.i, align 8
  %conv.i425 = trunc i32 %19 to i16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %20 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i, label %do.body31.do.end3.i.i_crit_edge, label %do.end.i.i

do.body31.do.end3.i.i_crit_edge:                  ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end3.i.i

do.end.i.i:                                       ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.2, i32 noundef 49812) #14
  br label %do.end3.i.i

do.end3.i.i:                                      ; preds = %do.end.i.i, %do.body31.do.end3.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 -15724, i16 %conv.i425)
  %cmp8.i.i = icmp eq i16 %conv.i425, -15724
  br i1 %cmp8.i.i, label %do.end3.i.i.if.end15.i.i_crit_edge, label %for.inc.i.i

do.end3.i.i.if.end15.i.i_crit_edge:               ; preds = %do.end3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i.i

for.inc.i.i:                                      ; preds = %do.end3.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %21 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.1.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.do.end3.1.i.i_crit_edge, label %do.end.1.i.i

for.inc.i.i.do.end3.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end3.1.i.i

do.end.1.i.i:                                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.1.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.2, i32 noundef 49816) #14
  br label %do.end3.1.i.i

do.end3.1.i.i:                                    ; preds = %do.end.1.i.i, %for.inc.i.i.do.end3.1.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 -15720, i16 %conv.i425)
  %cmp8.1.i.i = icmp eq i16 %conv.i425, -15720
  br i1 %cmp8.1.i.i, label %do.end3.1.i.i.if.end15.i.i_crit_edge, label %for.inc.1.i.i

do.end3.1.i.i.if.end15.i.i_crit_edge:             ; preds = %do.end3.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i.i

for.inc.1.i.i:                                    ; preds = %do.end3.1.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %22 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.2.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.2.i.i, label %for.inc.1.i.i.do.end3.2.i.i_crit_edge, label %do.end.2.i.i

for.inc.1.i.i.do.end3.2.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end3.2.i.i

do.end.2.i.i:                                     ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.2, i32 noundef 49817) #14
  br label %do.end3.2.i.i

do.end3.2.i.i:                                    ; preds = %do.end.2.i.i, %for.inc.1.i.i.do.end3.2.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 -15719, i16 %conv.i425)
  %cmp8.2.i.i = icmp eq i16 %conv.i425, -15719
  br i1 %cmp8.2.i.i, label %do.end3.2.i.i.if.end15.i.i_crit_edge, label %for.inc.2.i.i

do.end3.2.i.i.if.end15.i.i_crit_edge:             ; preds = %do.end3.2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i.i

for.inc.2.i.i:                                    ; preds = %do.end3.2.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %23 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.3.i.i = icmp eq i32 %23, 0
  br i1 %tobool.not.3.i.i, label %for.inc.2.i.i.do.end3.3.i.i_crit_edge, label %do.end.3.i.i

for.inc.2.i.i.do.end3.3.i.i_crit_edge:            ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end3.3.i.i

do.end.3.i.i:                                     ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.2, i32 noundef 49818) #14
  br label %do.end3.3.i.i

do.end3.3.i.i:                                    ; preds = %do.end.3.i.i, %for.inc.2.i.i.do.end3.3.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 -15718, i16 %conv.i425)
  %cmp8.3.i.i = icmp eq i16 %conv.i425, -15718
  br i1 %cmp8.3.i.i, label %do.end3.3.i.i.if.end15.i.i_crit_edge, label %for.inc.3.i.i

do.end3.3.i.i.if.end15.i.i_crit_edge:             ; preds = %do.end3.3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i.i

for.inc.3.i.i:                                    ; preds = %do.end3.3.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %24 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.4.i.i = icmp eq i32 %24, 0
  br i1 %tobool.not.4.i.i, label %for.inc.3.i.i.do.end3.4.i.i_crit_edge, label %do.end.4.i.i

for.inc.3.i.i.do.end3.4.i.i_crit_edge:            ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end3.4.i.i

do.end.4.i.i:                                     ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.2, i32 noundef 49819) #14
  br label %do.end3.4.i.i

do.end3.4.i.i:                                    ; preds = %do.end.4.i.i, %for.inc.3.i.i.do.end3.4.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 -15717, i16 %conv.i425)
  %cmp8.4.i.i = icmp eq i16 %conv.i425, -15717
  br i1 %cmp8.4.i.i, label %do.end3.4.i.i.if.end15.i.i_crit_edge, label %for.inc.4.i.i

do.end3.4.i.i.if.end15.i.i_crit_edge:             ; preds = %do.end3.4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i.i

for.inc.4.i.i:                                    ; preds = %do.end3.4.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %25 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.5.i.i = icmp eq i32 %25, 0
  br i1 %tobool.not.5.i.i, label %for.inc.4.i.i.do.end3.5.i.i_crit_edge, label %do.end.5.i.i

for.inc.4.i.i.do.end3.5.i.i_crit_edge:            ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end3.5.i.i

do.end.5.i.i:                                     ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.5.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.2, i32 noundef 49743) #14
  br label %do.end3.5.i.i

do.end3.5.i.i:                                    ; preds = %do.end.5.i.i, %for.inc.4.i.i.do.end3.5.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 -15793, i16 %conv.i425)
  %cmp8.5.i.i = icmp eq i16 %conv.i425, -15793
  br i1 %cmp8.5.i.i, label %do.end3.5.i.i.if.end15.i.i_crit_edge, label %do.end3.5.i.i.if.then.i_crit_edge

do.end3.5.i.i.if.then.i_crit_edge:                ; preds = %do.end3.5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

do.end3.5.i.i.if.end15.i.i_crit_edge:             ; preds = %do.end3.5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %do.end3.5.i.i.if.end15.i.i_crit_edge, %do.end3.4.i.i.if.end15.i.i_crit_edge, %do.end3.3.i.i.if.end15.i.i_crit_edge, %do.end3.2.i.i.if.end15.i.i_crit_edge, %do.end3.1.i.i.if.end15.i.i_crit_edge, %do.end3.i.i.if.end15.i.i_crit_edge
  %i.08.lcssa.i.i = phi i32 [ 1, %do.end3.i.i.if.end15.i.i_crit_edge ], [ 2, %do.end3.1.i.i.if.end15.i.i_crit_edge ], [ 3, %do.end3.2.i.i.if.end15.i.i_crit_edge ], [ 4, %do.end3.3.i.i.if.end15.i.i_crit_edge ], [ 5, %do.end3.4.i.i.if.end15.i.i_crit_edge ], [ 6, %do.end3.5.i.i.if.end15.i.i_crit_edge ]
  %shl.i.i = shl nuw nsw i32 1, %i.08.lcssa.i.i
  %and.i.i = and i32 %shl.i.i, 126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool27.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool27.not.i.i, label %if.end15.i.for.inc51.1.i_crit_edge.i, label %land.lhs.true.i.i

if.end15.i.for.inc51.1.i_crit_edge.i:             ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %.pre.i = and i16 %8, -256
  br label %for.inc51.1.i.i

land.lhs.true.i.i:                                ; preds = %if.end15.i.i
  %and301.i.i = and i16 %8, -8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4944, i16 %and301.i.i)
  %cmp32.i.i = icmp eq i16 %and301.i.i, 4944
  br i1 %cmp32.i.i, label %land.lhs.true.i.i.do.body35.i.i_crit_edge, label %land.lhs.true.1.i.i

land.lhs.true.i.i.do.body35.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body35.i.i

do.body35.i.i:                                    ; preds = %for.inc51.4.i.i.do.body35.i.i_crit_edge, %for.inc51.3.i.i.do.body35.i.i_crit_edge, %for.inc51.2.i.i.do.body35.i.i_crit_edge, %for.inc51.1.i.i.do.body35.i.i_crit_edge, %land.lhs.true.1.i.i.do.body35.i.i_crit_edge, %land.lhs.true.i.i.do.body35.i.i_crit_edge
  %.lcssa.i.i = phi ptr [ @lg4ff_g29_ident_info, %land.lhs.true.i.i.do.body35.i.i_crit_edge ], [ @lg4ff_g29_ident_info2, %land.lhs.true.1.i.i.do.body35.i.i_crit_edge ], [ @lg4ff_dfgt_ident_info, %for.inc51.1.i.i.do.body35.i.i_crit_edge ], [ @lg4ff_g27_ident_info, %for.inc51.2.i.i.do.body35.i.i_crit_edge ], [ @lg4ff_g25_ident_info, %for.inc51.3.i.i.do.body35.i.i_crit_edge ], [ @lg4ff_dfp_ident_info, %for.inc51.4.i.i.do.body35.i.i_crit_edge ]
  %real_product_id25.le.i.i = getelementptr inbounds %struct.lg4ff_wheel_ident_info, ptr %.lcssa.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %real_product_id25.le.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %real_product_id25.le.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %28 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool36.not.i.i = icmp eq i32 %28, 0
  br i1 %tobool36.not.i.i, label %do.body35.i.i.lg4ff_identify_multimode_wheel.exit.i_crit_edge, label %do.end40.i.i

do.body35.i.i.lg4ff_identify_multimode_wheel.exit.i_crit_edge: ; preds = %do.body35.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lg4ff_identify_multimode_wheel.exit.i

do.end40.i.i:                                     ; preds = %do.body35.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv42.i.i = zext i16 %27 to i32
  %conv43.i.i = and i32 %19, 65535
  %call44.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.2, i32 noundef %conv42.i.i, i32 noundef %conv43.i.i) #14
  br label %lg4ff_identify_multimode_wheel.exit.i

land.lhs.true.1.i.i:                              ; preds = %land.lhs.true.i.i
  %and301.1.i.i = and i16 %8, -256
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30464, i16 %and301.1.i.i)
  %cmp32.1.i.i = icmp eq i16 %and301.1.i.i, -30464
  br i1 %cmp32.1.i.i, label %land.lhs.true.1.i.i.do.body35.i.i_crit_edge, label %land.lhs.true.1.i.i.for.inc51.1.i.i_crit_edge

land.lhs.true.1.i.i.for.inc51.1.i.i_crit_edge:    ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc51.1.i.i

land.lhs.true.1.i.i.do.body35.i.i_crit_edge:      ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body35.i.i

for.inc51.1.i.i:                                  ; preds = %land.lhs.true.1.i.i.for.inc51.1.i.i_crit_edge, %if.end15.i.for.inc51.1.i_crit_edge.i
  %and301.2.i.pre-phi.i = phi i16 [ %.pre.i, %if.end15.i.for.inc51.1.i_crit_edge.i ], [ %and301.1.i.i, %land.lhs.true.1.i.i.for.inc51.1.i.i_crit_edge ]
  %and.2.i.i = and i32 %shl.i.i, 22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i.i)
  %tobool27.not.2.i.i = icmp ne i32 %and.2.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 4864, i16 %and301.2.i.pre-phi.i)
  %cmp32.2.i.i = icmp eq i16 %and301.2.i.pre-phi.i, 4864
  %or.cond.i.i = and i1 %tobool27.not.2.i.i, %cmp32.2.i.i
  br i1 %or.cond.i.i, label %for.inc51.1.i.i.do.body35.i.i_crit_edge, label %for.inc51.2.i.i

for.inc51.1.i.i.do.body35.i.i_crit_edge:          ; preds = %for.inc51.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body35.i.i

for.inc51.2.i.i:                                  ; preds = %for.inc51.1.i.i
  %and.3.i.i = and i32 %shl.i.i, 46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i.i)
  %tobool27.not.3.i.i = icmp ne i32 %and.3.i.i, 0
  %and301.3.i.i = and i16 %8, -16
  call void @__sanitizer_cov_trace_const_cmp2(i16 4656, i16 %and301.3.i.i)
  %cmp32.3.i.i = icmp eq i16 %and301.3.i.i, 4656
  %or.cond12.i.i = and i1 %cmp32.3.i.i, %tobool27.not.3.i.i
  br i1 %or.cond12.i.i, label %for.inc51.2.i.i.do.body35.i.i_crit_edge, label %for.inc51.3.i.i

for.inc51.2.i.i.do.body35.i.i_crit_edge:          ; preds = %for.inc51.2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body35.i.i

for.inc51.3.i.i:                                  ; preds = %for.inc51.2.i.i
  %and.4.i.i = and i32 %shl.i.i, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i.i)
  %tobool27.not.4.i.i = icmp ne i32 %and.4.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 4608, i16 %and301.2.i.pre-phi.i)
  %cmp32.4.i.i = icmp eq i16 %and301.2.i.pre-phi.i, 4608
  %or.cond13.i.i = and i1 %tobool27.not.4.i.i, %cmp32.4.i.i
  br i1 %or.cond13.i.i, label %for.inc51.3.i.i.do.body35.i.i_crit_edge, label %for.inc51.4.i.i

for.inc51.3.i.i.do.body35.i.i_crit_edge:          ; preds = %for.inc51.3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body35.i.i

for.inc51.4.i.i:                                  ; preds = %for.inc51.3.i.i
  %and.5.i.i = and i32 %shl.i.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i.i)
  %tobool27.not.5.i.i = icmp ne i32 %and.5.i.i, 0
  %and301.5.i.i = and i16 %8, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %and301.5.i.i)
  %cmp32.5.i.i = icmp eq i16 %and301.5.i.i, 4096
  %or.cond14.i.i = and i1 %cmp32.5.i.i, %tobool27.not.5.i.i
  br i1 %or.cond14.i.i, label %for.inc51.4.i.i.do.body35.i.i_crit_edge, label %for.inc51.5.i.i

for.inc51.4.i.i.do.body35.i.i_crit_edge:          ; preds = %for.inc51.4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body35.i.i

for.inc51.5.i.i:                                  ; preds = %for.inc51.4.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %29 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool55.not.i.i = icmp eq i32 %29, 0
  br i1 %tobool55.not.i.i, label %for.inc51.5.i.i.if.else_crit_edge, label %do.end59.i.i

for.inc51.5.i.i.if.else_crit_edge:                ; preds = %for.inc51.5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

do.end59.i.i:                                     ; preds = %for.inc51.5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv61.i.i = zext i16 %8 to i32
  %call62.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.2, i32 noundef %conv61.i.i) #14
  br label %if.then.i

lg4ff_identify_multimode_wheel.exit.i:            ; preds = %do.end40.i.i, %do.body35.i.i.lg4ff_identify_multimode_wheel.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool.not.i = icmp eq i16 %27, 0
  br i1 %tobool.not.i, label %lg4ff_identify_multimode_wheel.exit.i.if.then.i_crit_edge, label %if.end7.i

lg4ff_identify_multimode_wheel.exit.i.if.then.i_crit_edge: ; preds = %lg4ff_identify_multimode_wheel.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %lg4ff_identify_multimode_wheel.exit.i.if.then.i_crit_edge, %do.end59.i.i, %do.end3.5.i.i.if.then.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %.pr = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool1.not.i = icmp eq i32 %.pr, 0
  br i1 %tobool1.not.i, label %if.then.i.if.else_crit_edge, label %do.end.i

if.then.i.if.else_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.2) #14
  br label %if.else

if.end7.i:                                        ; preds = %lg4ff_identify_multimode_wheel.exit.i
  %conv8.i = and i32 %19, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 49812, i32 %conv8.i)
  %cmp.i426 = icmp ne i32 %conv8.i, 49812
  call void @__sanitizer_cov_trace_const_cmp2(i16 -15724, i16 %27)
  %cmp12.not.i = icmp eq i16 %27, -15724
  %or.cond.i = select i1 %cmp.i426, i1 true, i1 %cmp12.not.i
  br i1 %or.cond.i, label %if.end7.i.if.else_crit_edge, label %land.lhs.true14.i

if.end7.i.if.else_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true14.i:                                ; preds = %if.end7.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lg4ff_no_autoswitch to i32))
  %30 = load i32, ptr @lg4ff_no_autoswitch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool15.not.i = icmp eq i32 %30, 0
  br i1 %tobool15.not.i, label %if.then16.i, label %land.lhs.true14.i.if.else_crit_edge

land.lhs.true14.i.if.else_crit_edge:              ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then16.i:                                      ; preds = %land.lhs.true14.i
  %31 = zext i16 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.179)
  switch i16 %27, label %do.end22.i [
    i16 -15720, label %select.unfold.i
    i16 -15719, label %lg4ff_get_mode_switch_command.exit.i
    i16 -15717, label %if.then16.i.if.end24.i_crit_edge
    i16 -15793, label %sw.bb21.i.i
    i16 -15718, label %sw.bb27.i.i
  ]

if.then16.i.if.end24.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

sw.bb21.i.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

sw.bb27.i.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

select.unfold.i:                                  ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

lg4ff_get_mode_switch_command.exit.i:             ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

do.end22.i:                                       ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv23.i = zext i16 %27 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.58, i32 noundef %conv23.i) #14
  br label %if.else

if.end24.i:                                       ; preds = %lg4ff_get_mode_switch_command.exit.i, %select.unfold.i, %sw.bb27.i.i, %sw.bb21.i.i, %if.then16.i.if.end24.i_crit_edge
  %retval.0.i57.i = phi ptr [ @lg4ff_mode_switch_ext16_g25, %lg4ff_get_mode_switch_command.exit.i ], [ @lg4ff_mode_switch_ext01_dfp, %select.unfold.i ], [ @lg4ff_mode_switch_ext09_g29, %sw.bb21.i.i ], [ @lg4ff_mode_switch_ext09_dfgt, %sw.bb27.i.i ], [ @lg4ff_mode_switch_ext09_g27, %if.then16.i.if.end24.i_crit_edge ]
  %call25.i = tail call fastcc i32 @lg4ff_switch_compatibility_mode(ptr noundef %hid, ptr noundef nonnull %retval.0.i57.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end24.i.cleanup296_crit_edge, label %do.end30.i

if.end24.i.cleanup296_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup296

do.end30.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.61, i32 noundef %call25.i) #14
  br label %if.else

if.else:                                          ; preds = %do.end30.i, %do.end22.i, %land.lhs.true14.i.if.else_crit_edge, %if.end7.i.if.else_crit_edge, %do.end.i, %if.then.i.if.else_crit_edge, %for.inc51.5.i.i.if.else_crit_edge
  %real_product_id.0.ph = phi i16 [ %27, %land.lhs.true14.i.if.else_crit_edge ], [ %27, %do.end30.i ], [ %27, %do.end22.i ], [ %27, %if.end7.i.if.else_crit_edge ], [ %conv.i425, %do.end.i ], [ %conv.i425, %if.then.i.if.else_crit_edge ], [ %conv.i425, %for.inc51.5.i.i.if.else_crit_edge ]
  %cmp71 = phi i1 [ true, %land.lhs.true14.i.if.else_crit_edge ], [ true, %do.end30.i ], [ false, %do.end22.i ], [ true, %if.end7.i.if.else_crit_edge ], [ false, %do.end.i ], [ false, %if.then.i.if.else_crit_edge ], [ false, %for.inc51.5.i.i.if.else_crit_edge ]
  %32 = ptrtoint ptr %product.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %product.i, align 8
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.180)
  switch i32 %33, label %do.end68 [
    i32 49678, label %if.else.do.body50_crit_edge
    i32 49811, label %do.body50.fold.split
    i32 49812, label %do.body50.fold.split480
    i32 49813, label %do.body50.fold.split481
    i32 49816, label %do.body50.fold.split482
    i32 49817, label %do.body50.fold.split483
    i32 49818, label %do.body50.fold.split484
    i32 49819, label %do.body50.fold.split485
    i32 49743, label %do.body50.fold.split486
    i32 51715, label %do.body50.fold.split487
    i32 49820, label %do.body50.fold.split488
  ]

if.else.do.body50_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body50

do.body50.fold.split:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body50

do.body50.fold.split480:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body50

do.body50.fold.split481:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body50

do.body50.fold.split482:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body50

do.body50.fold.split483:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body50

do.body50.fold.split484:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body50

do.body50.fold.split485:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body50

do.body50.fold.split486:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body50

do.body50.fold.split487:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body50

do.body50.fold.split488:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body50

do.body50:                                        ; preds = %do.body50.fold.split488, %do.body50.fold.split487, %do.body50.fold.split486, %do.body50.fold.split485, %do.body50.fold.split484, %do.body50.fold.split483, %do.body50.fold.split482, %do.body50.fold.split481, %do.body50.fold.split480, %do.body50.fold.split, %if.else.do.body50_crit_edge
  %i.0463.lcssa = phi i32 [ 0, %if.else.do.body50_crit_edge ], [ 1, %do.body50.fold.split ], [ 2, %do.body50.fold.split480 ], [ 3, %do.body50.fold.split481 ], [ 4, %do.body50.fold.split482 ], [ 5, %do.body50.fold.split483 ], [ 6, %do.body50.fold.split484 ], [ 7, %do.body50.fold.split485 ], [ 8, %do.body50.fold.split486 ], [ 9, %do.body50.fold.split487 ], [ 10, %do.body50.fold.split488 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %35 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool51.not = icmp eq i32 %35, 0
  br i1 %tobool51.not, label %do.body50.if.end70_crit_edge, label %do.end55

do.body50.if.end70_crit_edge:                     ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

do.end55:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #13
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, i32 noundef %33) #14
  br label %if.end70

do.end68:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.18) #14
  br label %err_init

if.end70:                                         ; preds = %do.end55, %do.body50.if.end70_crit_edge
  br i1 %cmp71, label %for.body75.preheader, label %if.end70.if.end95_crit_edge

if.end70.if.end95_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

for.body75.preheader:                             ; preds = %if.end70
  %36 = zext i16 %real_product_id.0.ph to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.181)
  switch i16 %real_product_id.0.ph, label %do.end91 [
    i16 -15720, label %for.body75.preheader.if.end95_crit_edge
    i16 -15719, label %if.end95.fold.split
    i16 -15718, label %if.end95.fold.split489
    i16 -15717, label %if.end95.fold.split490
    i16 -15793, label %if.end95.fold.split491
  ]

for.body75.preheader.if.end95_crit_edge:          ; preds = %for.body75.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

do.end91:                                         ; preds = %for.body75.preheader
  call void @__sanitizer_cov_trace_pc() #13
  %conv93 = zext i16 %real_product_id.0.ph to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.21, i32 noundef %conv93) #14
  br label %err_init

if.end95.fold.split:                              ; preds = %for.body75.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

if.end95.fold.split489:                           ; preds = %for.body75.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

if.end95.fold.split490:                           ; preds = %for.body75.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

if.end95.fold.split491:                           ; preds = %for.body75.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

if.end95:                                         ; preds = %if.end95.fold.split491, %if.end95.fold.split490, %if.end95.fold.split489, %if.end95.fold.split, %for.body75.preheader.if.end95_crit_edge, %if.end70.if.end95_crit_edge
  %mmode_idx.1 = phi i32 [ -1, %if.end70.if.end95_crit_edge ], [ 0, %for.body75.preheader.if.end95_crit_edge ], [ 1, %if.end95.fold.split ], [ 2, %if.end95.fold.split489 ], [ 3, %if.end95.fold.split490 ], [ 4, %if.end95.fold.split491 ]
  %ff_effects = getelementptr [11 x %struct.lg4ff_wheel], ptr @lg4ff_devices, i32 0, i32 %i.0463.lcssa, i32 1
  %37 = ptrtoint ptr %ff_effects to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ff_effects, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %38, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %40)
  %cmp100465 = icmp sgt i16 %40, -1
  br i1 %cmp100465, label %for.body102.lr.ph, label %if.end95.for.end109_crit_edge

if.end95.for.end109_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end109

for.body102.lr.ph:                                ; preds = %if.end95
  %ffbit = getelementptr inbounds %struct.input_dev, ptr %12, i32 0, i32 12
  br label %for.body102

for.body102:                                      ; preds = %for.body102.for.body102_crit_edge, %for.body102.lr.ph
  %41 = phi i16 [ %40, %for.body102.lr.ph ], [ %43, %for.body102.for.body102_crit_edge ]
  %j.0466 = phi i32 [ 0, %for.body102.lr.ph ], [ %inc108, %for.body102.for.body102_crit_edge ]
  %conv99456 = zext i16 %41 to i32
  tail call void @_set_bit(i32 noundef %conv99456, ptr noundef %ffbit) #11
  %inc108 = add i32 %j.0466, 1
  %arrayidx98 = getelementptr i16, ptr %38, i32 %inc108
  %42 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx98, align 2
  %cmp100 = icmp sgt i16 %43, -1
  br i1 %cmp100, label %for.body102.for.body102_crit_edge, label %for.body102.for.end109_crit_edge

for.body102.for.end109_crit_edge:                 ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end109

for.body102.for.body102_crit_edge:                ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body102

for.end109:                                       ; preds = %for.body102.for.end109_crit_edge, %if.end95.for.end109_crit_edge
  %arrayidx97.le = getelementptr [11 x %struct.lg4ff_wheel], ptr @lg4ff_devices, i32 0, i32 %i.0463.lcssa
  %call110 = tail call i32 @input_ff_create_memless(ptr noundef %12, ptr noundef null, ptr noundef nonnull @lg4ff_play) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end113, label %for.end109.err_init_crit_edge

for.end109.err_init_crit_edge:                    ; preds = %for.end109
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_init

if.end113:                                        ; preds = %for.end109
  %arrayidx132 = getelementptr [5 x %struct.lg4ff_multimode_wheel], ptr @lg4ff_multimode_wheels, i32 0, i32 %mmode_idx.1
  %tobool.not.i427 = icmp ne ptr %arrayidx132, null
  %44 = and i1 %cmp71, %tobool.not.i427
  br i1 %44, label %if.then.i428, label %if.end113.lg4ff_init_wheel_data.exit_crit_edge

if.end113.lg4ff_init_wheel_data.exit_crit_edge:   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #13
  br label %lg4ff_init_wheel_data.exit

if.then.i428:                                     ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #13
  %alternate_modes1.i = getelementptr [5 x %struct.lg4ff_multimode_wheel], ptr @lg4ff_multimode_wheels, i32 0, i32 %mmode_idx.1, i32 1
  %45 = ptrtoint ptr %alternate_modes1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %alternate_modes1.i, align 4
  %real_tag2.i = getelementptr [5 x %struct.lg4ff_multimode_wheel], ptr @lg4ff_multimode_wheels, i32 0, i32 %mmode_idx.1, i32 2
  %47 = ptrtoint ptr %real_tag2.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %real_tag2.i, align 4
  %real_name3.i = getelementptr [5 x %struct.lg4ff_multimode_wheel], ptr @lg4ff_multimode_wheels, i32 0, i32 %mmode_idx.1, i32 3
  %49 = ptrtoint ptr %real_name3.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %real_name3.i, align 4
  br label %lg4ff_init_wheel_data.exit

lg4ff_init_wheel_data.exit:                       ; preds = %if.then.i428, %if.end113.lg4ff_init_wheel_data.exit_crit_edge
  %alternate_modes.0.i = phi i32 [ %46, %if.then.i428 ], [ 0, %if.end113.lg4ff_init_wheel_data.exit_crit_edge ]
  %real_tag.0.i = phi ptr [ %48, %if.then.i428 ], [ null, %if.end113.lg4ff_init_wheel_data.exit_crit_edge ]
  %real_name.0.i = phi ptr [ %50, %if.then.i428 ], [ null, %if.end113.lg4ff_init_wheel_data.exit_crit_edge ]
  %wdata452 = getelementptr inbounds %struct.lg4ff_device_entry, ptr %call7.i.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %t_wdata.sroa.10.i)
  %51 = call ptr @memset(ptr %t_wdata.sroa.10.i, i32 255, i32 3)
  %52 = ptrtoint ptr %arrayidx97.le to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx97.le, align 4
  %min_range5.i = getelementptr [11 x %struct.lg4ff_wheel], ptr @lg4ff_devices, i32 0, i32 %i.0463.lcssa, i32 2
  %54 = ptrtoint ptr %min_range5.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %min_range5.i, align 4
  %max_range6.i = getelementptr [11 x %struct.lg4ff_wheel], ptr @lg4ff_devices, i32 0, i32 %i.0463.lcssa, i32 3
  %56 = ptrtoint ptr %max_range6.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %max_range6.i, align 2
  %t_wdata.sroa.10.i.3.i.3.led.sroa_idx = getelementptr inbounds i8, ptr %t_wdata.sroa.10.i, i32 3
  %58 = call ptr @memset(ptr %t_wdata.sroa.10.i.3.i.3.led.sroa_idx, i32 0, i32 20)
  %set_range11.i = getelementptr [11 x %struct.lg4ff_wheel], ptr @lg4ff_devices, i32 0, i32 %i.0463.lcssa, i32 4
  %59 = ptrtoint ptr %set_range11.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %set_range11.i, align 4
  %61 = ptrtoint ptr %wdata452 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %53, ptr %wdata452, align 8
  %t_wdata.sroa.5.0..sroa_idx.i = getelementptr inbounds %struct.lg4ff_device_entry, ptr %call7.i.i, i32 0, i32 2, i32 1
  %62 = ptrtoint ptr %t_wdata.sroa.5.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 0, ptr %t_wdata.sroa.5.0..sroa_idx.i, align 4
  %t_wdata.sroa.6.0..sroa_idx.i = getelementptr inbounds %struct.lg4ff_device_entry, ptr %call7.i.i, i32 0, i32 2, i32 2
  %63 = ptrtoint ptr %t_wdata.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 0, ptr %t_wdata.sroa.6.0..sroa_idx.i, align 2
  %t_wdata.sroa.7.0..sroa_idx.i = getelementptr inbounds %struct.lg4ff_device_entry, ptr %call7.i.i, i32 0, i32 2, i32 3
  %64 = ptrtoint ptr %t_wdata.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %55, ptr %t_wdata.sroa.7.0..sroa_idx.i, align 8
  %t_wdata.sroa.8.0..sroa_idx.i = getelementptr inbounds %struct.lg4ff_device_entry, ptr %call7.i.i, i32 0, i32 2, i32 4
  %65 = ptrtoint ptr %t_wdata.sroa.8.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %57, ptr %t_wdata.sroa.8.0..sroa_idx.i, align 2
  %t_wdata.sroa.9.0..sroa_idx.i = getelementptr inbounds %struct.lg4ff_device_entry, ptr %call7.i.i, i32 0, i32 2, i32 5
  %66 = ptrtoint ptr %t_wdata.sroa.9.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %t_wdata.sroa.9.0..sroa_idx.i, align 4
  %t_wdata.sroa.10.0..sroa_idx.i = getelementptr inbounds i8, ptr %wdata452, i32 13
  %67 = call ptr @memcpy(ptr %t_wdata.sroa.10.0..sroa_idx.i, ptr %t_wdata.sroa.10.i, i32 23)
  %t_wdata.sroa.11.0..sroa_idx.i = getelementptr inbounds %struct.lg4ff_device_entry, ptr %call7.i.i, i32 0, i32 2, i32 7
  %68 = ptrtoint ptr %t_wdata.sroa.11.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %alternate_modes.0.i, ptr %t_wdata.sroa.11.0..sroa_idx.i, align 4
  %t_wdata.sroa.12.0..sroa_idx.i = getelementptr inbounds %struct.lg4ff_device_entry, ptr %call7.i.i, i32 0, i32 2, i32 8
  %69 = ptrtoint ptr %t_wdata.sroa.12.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %real_tag.0.i, ptr %t_wdata.sroa.12.0..sroa_idx.i, align 8
  %t_wdata.sroa.13.0..sroa_idx.i = getelementptr inbounds %struct.lg4ff_device_entry, ptr %call7.i.i, i32 0, i32 2, i32 9
  %70 = ptrtoint ptr %t_wdata.sroa.13.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %real_name.0.i, ptr %t_wdata.sroa.13.0..sroa_idx.i, align 4
  %t_wdata.sroa.14.0..sroa_idx.i = getelementptr inbounds %struct.lg4ff_device_entry, ptr %call7.i.i, i32 0, i32 2, i32 10
  %71 = ptrtoint ptr %t_wdata.sroa.14.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %real_product_id.0.ph, ptr %t_wdata.sroa.14.0..sroa_idx.i, align 8
  %t_wdata.sroa.15.0..sroa_idx.i = getelementptr inbounds i8, ptr %wdata452, i32 50
  %72 = ptrtoint ptr %t_wdata.sroa.15.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 -1, ptr %t_wdata.sroa.15.0..sroa_idx.i, align 2
  %t_wdata.sroa.1512.0..sroa_idx.i = getelementptr inbounds %struct.lg4ff_device_entry, ptr %call7.i.i, i32 0, i32 2, i32 11
  %73 = ptrtoint ptr %t_wdata.sroa.1512.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %60, ptr %t_wdata.sroa.1512.0..sroa_idx.i, align 4
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %t_wdata.sroa.10.i)
  %arrayidx.i = getelementptr %struct.input_dev, ptr %12, i32 0, i32 12, i32 3
  %74 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %arrayidx.i, align 4
  %76 = and i32 %75, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool138.not = icmp eq i32 %76, 0
  br i1 %tobool138.not, label %lg4ff_init_wheel_data.exit.if.end153_crit_edge, label %if.then139

lg4ff_init_wheel_data.exit.if.end153_crit_edge:   ; preds = %lg4ff_init_wheel_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end153

if.then139:                                       ; preds = %lg4ff_init_wheel_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 33, i16 %7)
  %77 = icmp eq i16 %7, 33
  %ff = getelementptr inbounds %struct.input_dev, ptr %12, i32 0, i32 20
  %78 = ptrtoint ptr %ff to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ff, align 8
  %set_autocenter = getelementptr inbounds %struct.ff_device, ptr %79, i32 0, i32 4
  %lg4ff_set_autocenter_ffex.lg4ff_set_autocenter_default = select i1 %77, ptr @lg4ff_set_autocenter_ffex, ptr @lg4ff_set_autocenter_default
  %80 = ptrtoint ptr %set_autocenter to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %lg4ff_set_autocenter_ffex.lg4ff_set_autocenter_default, ptr %set_autocenter, align 4
  %ff151 = getelementptr inbounds %struct.input_dev, ptr %12, i32 0, i32 20
  %81 = ptrtoint ptr %ff151 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ff151, align 8
  %set_autocenter152 = getelementptr inbounds %struct.ff_device, ptr %82, i32 0, i32 4
  %83 = ptrtoint ptr %set_autocenter152 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %set_autocenter152, align 4
  tail call void %84(ptr noundef %12, i16 noundef zeroext 0) #11
  br label %if.end153

if.end153:                                        ; preds = %if.then139, %lg4ff_init_wheel_data.exit.if.end153_crit_edge
  %call155 = tail call i32 @device_create_file(ptr noundef %dev3, ptr noundef nonnull @dev_attr_combine_pedals) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %if.end153.if.end162_crit_edge, label %do.end160

if.end153.if.end162_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end162

do.end160:                                        ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev3, ptr noundef nonnull @.str.24, i32 noundef %call155) #14
  br label %if.end162

if.end162:                                        ; preds = %do.end160, %if.end153.if.end162_crit_edge
  %call164 = tail call i32 @device_create_file(ptr noundef %dev3, ptr noundef nonnull @dev_attr_range) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %if.end162.if.end171_crit_edge, label %do.end169

if.end162.if.end171_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end171

do.end169:                                        ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev3, ptr noundef nonnull @.str.28, i32 noundef %call164) #14
  br label %if.end171

if.end171:                                        ; preds = %do.end169, %if.end162.if.end171_crit_edge
  br i1 %cmp71, label %if.then174, label %if.end171.do.body194_crit_edge

if.end171.do.body194_crit_edge:                   ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body194

if.then174:                                       ; preds = %if.end171
  %call176 = tail call i32 @device_create_file(ptr noundef %dev3, ptr noundef nonnull @dev_attr_real_id) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %if.then174.if.end183_crit_edge, label %do.end181

if.then174.if.end183_crit_edge:                   ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end183

do.end181:                                        ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev3, ptr noundef nonnull @.str.31, i32 noundef %call176) #14
  br label %if.end183

if.end183:                                        ; preds = %do.end181, %if.then174.if.end183_crit_edge
  %call185 = tail call i32 @device_create_file(ptr noundef %dev3, ptr noundef nonnull @dev_attr_alternate_modes) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call185)
  %tobool186.not = icmp eq i32 %call185, 0
  br i1 %tobool186.not, label %if.end183.do.body194_crit_edge, label %do.end190

if.end183.do.body194_crit_edge:                   ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body194

do.end190:                                        ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev3, ptr noundef nonnull @.str.34, i32 noundef %call185) #14
  br label %do.body194

do.body194:                                       ; preds = %do.end190, %if.end183.do.body194_crit_edge, %if.end171.do.body194_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %85 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool195.not = icmp eq i32 %85, 0
  br i1 %tobool195.not, label %do.body194.do.end204_crit_edge, label %do.end199

do.body194.do.end204_crit_edge:                   ; preds = %do.body194
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end204

do.end199:                                        ; preds = %do.body194
  call void @__sanitizer_cov_trace_pc() #13
  %call201 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.2) #14
  br label %do.end204

do.end204:                                        ; preds = %do.end199, %do.body194.do.end204_crit_edge
  %86 = ptrtoint ptr %t_wdata.sroa.8.0..sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %t_wdata.sroa.8.0..sroa_idx.i, align 2
  %88 = ptrtoint ptr %t_wdata.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %87, ptr %t_wdata.sroa.6.0..sroa_idx.i, align 2
  %89 = ptrtoint ptr %t_wdata.sroa.1512.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %t_wdata.sroa.1512.0..sroa_idx.i, align 4
  %tobool208.not = icmp eq ptr %90, null
  br i1 %tobool208.not, label %do.end204.if.end214_crit_edge, label %if.then209

do.end204.if.end214_crit_edge:                    ; preds = %do.end204
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end214

if.then209:                                       ; preds = %do.end204
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %90(ptr noundef %hid, i16 noundef zeroext %87) #11
  br label %if.end214

if.end214:                                        ; preds = %if.then209, %do.end204.if.end214_crit_edge
  %91 = ptrtoint ptr %t_wdata.sroa.9.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %t_wdata.sroa.9.0..sroa_idx.i, align 4
  %uglygep = getelementptr i8, ptr %call7.i.i, i32 64
  %92 = call ptr @memset(ptr %uglygep, i32 0, i32 20)
  %93 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.182)
  switch i32 %53, label %if.end214.do.end293_crit_edge [
    i32 49819, label %if.end214.if.then233_crit_edge
    i32 49743, label %if.end214.if.then233_crit_edge496
  ]

if.end214.if.then233_crit_edge496:                ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then233

if.end214.if.then233_crit_edge:                   ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then233

if.end214.do.end293_crit_edge:                    ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end293

if.then233:                                       ; preds = %if.end214.if.then233_crit_edge, %if.end214.if.then233_crit_edge496
  tail call fastcc void @lg4ff_set_leds(ptr noundef %hid, i8 noundef zeroext 0)
  %init_name.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18, i32 3
  %94 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i429 = icmp eq ptr %95, null
  br i1 %tobool.not.i429, label %if.end.i, label %if.then233.dev_name.exit_crit_edge

if.then233.dev_name.exit_crit_edge:               ; preds = %if.then233
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then233
  call void @__sanitizer_cov_trace_pc() #13
  %96 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev3, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then233.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %97, %if.end.i ], [ %95, %if.then233.dev_name.exit_crit_edge ]
  %call237 = tail call i32 @strlen(ptr noundef %retval.0.i) #16
  %add = add i32 %call237, 8
  %add242 = add i32 %call237, 408
  br label %for.cond238

for.cond238:                                      ; preds = %dev_name.exit435.for.cond238_crit_edge, %dev_name.exit
  %j.2 = phi i32 [ 0, %dev_name.exit ], [ %add254, %dev_name.exit435.for.cond238_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %j.2)
  %exitcond.not = icmp eq i32 %j.2, 5
  br i1 %exitcond.not, label %for.cond238.do.end293_crit_edge, label %if.end8.i.i

for.cond238.do.end293_crit_edge:                  ; preds = %for.cond238
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end293

if.end8.i.i:                                      ; preds = %for.cond238
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add242, i32 noundef 3520) #17
  %tobool244.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool244.not, label %if.end8.i.i.err_leds_crit_edge, label %if.end250

if.end8.i.i.err_leds_crit_edge:                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_leds

if.end250:                                        ; preds = %if.end8.i.i
  %arrayidx251 = getelementptr %struct.led_classdev, ptr %call9.i.i, i32 1
  %98 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i432 = icmp eq ptr %99, null
  br i1 %tobool.not.i432, label %if.end.i433, label %if.end250.dev_name.exit435_crit_edge

if.end250.dev_name.exit435_crit_edge:             ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit435

if.end.i433:                                      ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #13
  %100 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev3, align 4
  br label %dev_name.exit435

dev_name.exit435:                                 ; preds = %if.end.i433, %if.end250.dev_name.exit435_crit_edge
  %retval.0.i434 = phi ptr [ %101, %if.end.i433 ], [ %99, %if.end250.dev_name.exit435_crit_edge ]
  %add254 = add nuw nsw i32 %j.2, 1
  %call255 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx251, i32 noundef %add, ptr noundef nonnull @.str.42, ptr noundef %retval.0.i434, i32 noundef %add254)
  %102 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %arrayidx251, ptr %call9.i.i, align 128
  %brightness = getelementptr inbounds %struct.led_classdev, ptr %call9.i.i, i32 0, i32 1
  %103 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %brightness, align 4
  %max_brightness = getelementptr inbounds %struct.led_classdev, ptr %call9.i.i, i32 0, i32 2
  %104 = ptrtoint ptr %max_brightness to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 1, ptr %max_brightness, align 8
  %brightness_get = getelementptr inbounds %struct.led_classdev, ptr %call9.i.i, i32 0, i32 7
  %105 = ptrtoint ptr %brightness_get to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @lg4ff_led_get_brightness, ptr %brightness_get, align 4
  %brightness_set = getelementptr inbounds %struct.led_classdev, ptr %call9.i.i, i32 0, i32 5
  %106 = ptrtoint ptr %brightness_set to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @lg4ff_led_set_brightness, ptr %brightness_set, align 4
  %arrayidx259 = getelementptr %struct.lg4ff_device_entry, ptr %call7.i.i, i32 0, i32 2, i32 6, i32 %j.2
  %107 = ptrtoint ptr %arrayidx259 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call9.i.i, ptr %arrayidx259, align 4
  %call.i = tail call i32 @led_classdev_register_ext(ptr noundef %dev3, ptr noundef nonnull %call9.i.i, ptr noundef null) #11
  %tobool262.not = icmp eq i32 %call.i, 0
  br i1 %tobool262.not, label %dev_name.exit435.for.cond238_crit_edge, label %dev_name.exit435.err_leds_crit_edge

dev_name.exit435.err_leds_crit_edge:              ; preds = %dev_name.exit435
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_leds

dev_name.exit435.for.cond238_crit_edge:           ; preds = %dev_name.exit435
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond238

err_leds:                                         ; preds = %dev_name.exit435.err_leds_crit_edge, %if.end8.i.i.err_leds_crit_edge
  %.str.44.sink = phi ptr [ @.str.40, %if.end8.i.i.err_leds_crit_edge ], [ @.str.44, %dev_name.exit435.err_leds_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull %.str.44.sink, i32 noundef %j.2) #14
  %108 = ptrtoint ptr %uglygep to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %uglygep, align 8
  store ptr null, ptr %uglygep, align 8
  %tobool278.not = icmp eq ptr %109, null
  br i1 %tobool278.not, label %err_leds.for.inc281_crit_edge, label %if.end280

err_leds.for.inc281_crit_edge:                    ; preds = %err_leds
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc281

if.end280:                                        ; preds = %err_leds
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @led_classdev_unregister(ptr noundef nonnull %109) #11
  tail call void @kfree(ptr noundef nonnull %109) #11
  br label %for.inc281

for.inc281:                                       ; preds = %if.end280, %err_leds.for.inc281_crit_edge
  %arrayidx274.1 = getelementptr %struct.lg4ff_device_entry, ptr %call7.i.i, i32 0, i32 2, i32 6, i32 1
  %110 = ptrtoint ptr %arrayidx274.1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx274.1, align 4
  store ptr null, ptr %arrayidx274.1, align 4
  %tobool278.not.1 = icmp eq ptr %111, null
  br i1 %tobool278.not.1, label %for.inc281.for.inc281.1_crit_edge, label %if.end280.1

for.inc281.for.inc281.1_crit_edge:                ; preds = %for.inc281
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc281.1

if.end280.1:                                      ; preds = %for.inc281
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @led_classdev_unregister(ptr noundef nonnull %111) #11
  tail call void @kfree(ptr noundef nonnull %111) #11
  br label %for.inc281.1

for.inc281.1:                                     ; preds = %if.end280.1, %for.inc281.for.inc281.1_crit_edge
  %arrayidx274.2 = getelementptr %struct.lg4ff_device_entry, ptr %call7.i.i, i32 0, i32 2, i32 6, i32 2
  %112 = ptrtoint ptr %arrayidx274.2 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx274.2, align 8
  store ptr null, ptr %arrayidx274.2, align 8
  %tobool278.not.2 = icmp eq ptr %113, null
  br i1 %tobool278.not.2, label %for.inc281.1.for.inc281.2_crit_edge, label %if.end280.2

for.inc281.1.for.inc281.2_crit_edge:              ; preds = %for.inc281.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc281.2

if.end280.2:                                      ; preds = %for.inc281.1
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @led_classdev_unregister(ptr noundef nonnull %113) #11
  tail call void @kfree(ptr noundef nonnull %113) #11
  br label %for.inc281.2

for.inc281.2:                                     ; preds = %if.end280.2, %for.inc281.1.for.inc281.2_crit_edge
  %arrayidx274.3 = getelementptr %struct.lg4ff_device_entry, ptr %call7.i.i, i32 0, i32 2, i32 6, i32 3
  %114 = ptrtoint ptr %arrayidx274.3 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx274.3, align 4
  store ptr null, ptr %arrayidx274.3, align 4
  %tobool278.not.3 = icmp eq ptr %115, null
  br i1 %tobool278.not.3, label %for.inc281.2.for.inc281.3_crit_edge, label %if.end280.3

for.inc281.2.for.inc281.3_crit_edge:              ; preds = %for.inc281.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc281.3

if.end280.3:                                      ; preds = %for.inc281.2
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @led_classdev_unregister(ptr noundef nonnull %115) #11
  tail call void @kfree(ptr noundef nonnull %115) #11
  br label %for.inc281.3

for.inc281.3:                                     ; preds = %if.end280.3, %for.inc281.2.for.inc281.3_crit_edge
  %arrayidx274.4 = getelementptr %struct.lg4ff_device_entry, ptr %call7.i.i, i32 0, i32 2, i32 6, i32 4
  %116 = ptrtoint ptr %arrayidx274.4 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx274.4, align 8
  store ptr null, ptr %arrayidx274.4, align 8
  %tobool278.not.4 = icmp eq ptr %117, null
  br i1 %tobool278.not.4, label %for.inc281.3.do.end293_crit_edge, label %if.end280.4

for.inc281.3.do.end293_crit_edge:                 ; preds = %for.inc281.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end293

if.end280.4:                                      ; preds = %for.inc281.3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @led_classdev_unregister(ptr noundef nonnull %117) #11
  tail call void @kfree(ptr noundef nonnull %117) #11
  br label %do.end293

do.end293:                                        ; preds = %if.end280.4, %for.inc281.3.do.end293_crit_edge, %for.cond238.do.end293_crit_edge, %if.end214.do.end293_crit_edge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev3, ptr noundef nonnull @.str.47) #14
  br label %cleanup296

err_init:                                         ; preds = %for.end109.err_init_crit_edge, %do.end91, %do.end68
  %error.0 = phi i32 [ -1, %do.end68 ], [ -1, %do.end91 ], [ %call110, %for.end109.err_init_crit_edge ]
  %118 = ptrtoint ptr %device_props to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %device_props, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup296

cleanup296:                                       ; preds = %err_init, %do.end293, %if.end24.i.cleanup296_crit_edge, %if.end26.cleanup296_crit_edge, %do.end24, %if.end.cleanup296_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %error.0, %err_init ], [ 0, %do.end293 ], [ -1, %do.end24 ], [ -1, %if.end.cleanup296_crit_edge ], [ -12, %if.end26.cleanup296_crit_edge ], [ 0, %if.end24.i.cleanup296_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hid_validate_values(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_ff_create_memless(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lg4ff_play(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data, ptr nocapture noundef readonly %effect) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i89 = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18, i32 8
  %2 = ptrtoint ptr %driver_data.i.i89 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i89, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev3 = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.93) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %device_props = getelementptr inbounds %struct.lg_drv_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %device_props to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device_props, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %do.end8, label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev9 = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.96) #14
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %report = getelementptr inbounds %struct.lg4ff_device_entry, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %report to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %report, align 4
  %field = getelementptr inbounds %struct.hid_report, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %field, align 4
  %value11 = getelementptr inbounds %struct.hid_field, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %value11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %value11, align 4
  %12 = ptrtoint ptr %effect to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %effect, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 82, i16 %13)
  %cond = icmp eq i16 %13, 82
  br i1 %cond, label %sw.bb, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end10
  %u = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %14 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -128, i16 %15)
  %cmp = icmp slt i16 %15, -128
  %16 = tail call i16 @llvm.smin.i16(i16 %15, i16 127)
  %narrow = add nsw i16 %16, 128
  %narrow90 = select i1 %cmp, i16 0, i16 %narrow
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %5) #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %narrow90)
  %cmp33 = icmp eq i16 %narrow90, 128
  br i1 %cmp33, label %if.then35, label %if.end45

if.then35:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 19, ptr %11, align 4
  %arrayidx37 = getelementptr i32, ptr %11, i32 1
  %18 = call ptr @memset(ptr %arrayidx37, i32 0, i32 24)
  %19 = ptrtoint ptr %report to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %report, align 4
  tail call void @hid_hw_request(ptr noundef %1, ptr noundef %20, i32 noundef 9) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %5, i32 noundef %call28) #11
  br label %cleanup

if.end45:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %x.0 = sext i16 %narrow90 to i32
  %21 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 17, ptr %11, align 4
  %arrayidx47 = getelementptr i32, ptr %11, i32 1
  %22 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 8, ptr %arrayidx47, align 4
  %arrayidx48 = getelementptr i32, ptr %11, i32 2
  %23 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %x.0, ptr %arrayidx48, align 4
  %arrayidx49 = getelementptr i32, ptr %11, i32 3
  %24 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 128, ptr %arrayidx49, align 4
  %arrayidx50 = getelementptr i32, ptr %11, i32 4
  %25 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %arrayidx50, align 4
  %arrayidx51 = getelementptr i32, ptr %11, i32 5
  %26 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %arrayidx51, align 4
  %arrayidx52 = getelementptr i32, ptr %11, i32 6
  %27 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %arrayidx52, align 4
  %28 = ptrtoint ptr %report to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %report, align 4
  tail call void @hid_hw_request(ptr noundef %1, ptr noundef %29, i32 noundef 9) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %5, i32 noundef %call28) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.then35, %if.end10.cleanup_crit_edge, %do.end8, %do.end
  %retval.0 = phi i32 [ 0, %if.then35 ], [ -22, %do.end8 ], [ -22, %do.end ], [ 0, %if.end10.cleanup_crit_edge ], [ 0, %if.end45 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lg4ff_set_autocenter_ffex(ptr nocapture noundef readonly %dev, i16 noundef zeroext %magnitude) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %conv = zext i16 %magnitude to i32
  %mul = mul nuw nsw i32 %conv, 90
  %div = udiv i32 %mul, 65535
  %driver_data.i.i56 = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18, i32 8
  %2 = ptrtoint ptr %driver_data.i.i56 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i56, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev4 = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.93) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %device_props = getelementptr inbounds %struct.lg_drv_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %device_props to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device_props, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %do.end9, label %if.end11

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev10 = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.96) #14
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %report = getelementptr inbounds %struct.lg4ff_device_entry, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %report to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %report, align 4
  %field = getelementptr inbounds %struct.hid_report, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %field, align 4
  %value12 = getelementptr inbounds %struct.hid_field, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %value12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %value12, align 4
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %5) #11
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 254, ptr %11, align 4
  %arrayidx23 = getelementptr i32, ptr %11, i32 1
  %13 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %arrayidx23, align 4
  %arrayidx25 = getelementptr i32, ptr %11, i32 2
  %14 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %arrayidx25, align 4
  %arrayidx28 = getelementptr i32, ptr %11, i32 3
  %15 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %arrayidx28, align 4
  %arrayidx30 = getelementptr i32, ptr %11, i32 4
  %16 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %div, ptr %arrayidx30, align 4
  %arrayidx31 = getelementptr i32, ptr %11, i32 5
  %17 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %arrayidx31, align 4
  %arrayidx32 = getelementptr i32, ptr %11, i32 6
  %18 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %arrayidx32, align 4
  %19 = ptrtoint ptr %report to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %report, align 4
  tail call void @hid_hw_request(ptr noundef %1, ptr noundef %20, i32 noundef 9) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %5, i32 noundef %call17) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end9, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lg4ff_set_autocenter_default(ptr nocapture noundef readonly %dev, i16 noundef zeroext %magnitude) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i115 = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18, i32 8
  %2 = ptrtoint ptr %driver_data.i.i115 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i115, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev3 = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.93) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %device_props = getelementptr inbounds %struct.lg_drv_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %device_props to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device_props, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %do.end8, label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev9 = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.96) #14
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %report = getelementptr inbounds %struct.lg4ff_device_entry, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %report to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %report, align 4
  %field = getelementptr inbounds %struct.hid_report, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %field, align 4
  %value11 = getelementptr inbounds %struct.hid_field, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %value11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %value11, align 4
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %5) #11
  %conv20 = zext i16 %magnitude to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %magnitude)
  %cmp21 = icmp eq i16 %magnitude, 0
  br i1 %cmp21, label %if.then23, label %if.end33

if.then23:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 245, ptr %11, align 4
  %arrayidx25 = getelementptr i32, ptr %11, i32 1
  %13 = call ptr @memset(ptr %arrayidx25, i32 0, i32 24)
  %14 = ptrtoint ptr %report to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %report, align 4
  tail call void @hid_hw_request(ptr noundef %1, ptr noundef %15, i32 noundef 9) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %5, i32 noundef %call15) #11
  br label %cleanup

if.end33:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp2(i16 -21845, i16 %magnitude)
  %cmp35 = icmp ult i16 %magnitude, -21845
  br i1 %cmp35, label %if.then37, label %if.else

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %mul = mul nuw nsw i32 %conv20, 12
  %mul40 = shl nuw nsw i32 %conv20, 7
  br label %if.end47

if.else:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %sub = add nsw i32 %conv20, -43690
  %mul42 = mul nsw i32 %sub, 6
  %add = add nsw i32 %mul42, 524280
  %mul45 = mul nsw i32 %sub, 255
  %add46 = add nsw i32 %mul45, 5592320
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then37
  %expand_a.0 = phi i32 [ %mul, %if.then37 ], [ %add, %if.else ]
  %expand_b.0 = phi i32 [ %mul40, %if.then37 ], [ %add46, %if.else ]
  %wdata = getelementptr inbounds %struct.lg4ff_device_entry, ptr %5, i32 0, i32 2
  %16 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wdata, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.183)
  switch i32 %17, label %sw.default [
    i32 49813, label %if.end47.sw.epilog_crit_edge
    i32 51715, label %if.end47.sw.epilog_crit_edge116
  ]

if.end47.sw.epilog_crit_edge116:                  ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end47.sw.epilog_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.default:                                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  %shr = lshr i32 %expand_a.0, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end47.sw.epilog_crit_edge, %if.end47.sw.epilog_crit_edge116
  %expand_a.1 = phi i32 [ %shr, %sw.default ], [ %expand_a.0, %if.end47.sw.epilog_crit_edge ], [ %expand_a.0, %if.end47.sw.epilog_crit_edge116 ]
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 254, ptr %11, align 4
  %arrayidx49 = getelementptr i32, ptr %11, i32 1
  %20 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 13, ptr %arrayidx49, align 4
  %div = udiv i32 %expand_a.1, 43690
  %arrayidx50 = getelementptr i32, ptr %11, i32 2
  %21 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div, ptr %arrayidx50, align 4
  %arrayidx52 = getelementptr i32, ptr %11, i32 3
  %22 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div, ptr %arrayidx52, align 4
  %div53 = udiv i32 %expand_b.0, 43690
  %arrayidx54 = getelementptr i32, ptr %11, i32 4
  %23 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div53, ptr %arrayidx54, align 4
  %arrayidx55 = getelementptr i32, ptr %11, i32 5
  %24 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %arrayidx55, align 4
  %arrayidx56 = getelementptr i32, ptr %11, i32 6
  %25 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %arrayidx56, align 4
  %26 = ptrtoint ptr %report to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %report, align 4
  tail call void @hid_hw_request(ptr noundef %1, ptr noundef %27, i32 noundef 9) #11
  %28 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 20, ptr %11, align 4
  %29 = call ptr @memset(ptr %arrayidx49, i32 0, i32 24)
  %30 = ptrtoint ptr %report to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %report, align 4
  tail call void @hid_hw_request(ptr noundef %1, ptr noundef %31, i32 noundef 9) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %5, i32 noundef %call15) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then23, %do.end8, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lg4ff_set_leds(ptr noundef %hid, i8 noundef zeroext %leds) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.93) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %device_props = getelementptr inbounds %struct.lg_drv_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device_props to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device_props, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %do.end6, label %if.end8

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev7 = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.96) #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %report = getelementptr inbounds %struct.lg4ff_device_entry, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %report to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %report, align 4
  %field = getelementptr inbounds %struct.hid_report, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %field, align 4
  %value9 = getelementptr inbounds %struct.hid_field, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %value9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %value9, align 4
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %3) #11
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 248, ptr %9, align 4
  %arrayidx19 = getelementptr i32, ptr %9, i32 1
  %11 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 18, ptr %arrayidx19, align 4
  %conv20 = zext i8 %leds to i32
  %arrayidx21 = getelementptr i32, ptr %9, i32 2
  %12 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv20, ptr %arrayidx21, align 4
  %arrayidx22 = getelementptr i32, ptr %9, i32 3
  %13 = call ptr @memset(ptr %arrayidx22, i32 0, i32 16)
  %14 = ptrtoint ptr %report to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %report, align 4
  tail call void @hid_hw_request(ptr noundef %hid, ptr noundef %15, i32 noundef 9) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %3, i32 noundef %call13) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end6, %do.end
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lg4ff_led_get_brightness(ptr noundef readonly %led_cdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 11
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i.i = getelementptr i8, ptr %3, i32 164
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.170) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %device_props = getelementptr inbounds %struct.lg_drv_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %device_props to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device_props, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %do.end8, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %arrayidx = getelementptr %struct.lg4ff_device_entry, ptr %7, i32 0, i32 2, i32 6, i32 0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %cmp11 = icmp eq ptr %9, %led_cdev
  br i1 %cmp11, label %for.body.preheader.if.then12_crit_edge, label %for.inc

for.body.preheader.if.then12_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.173) #14
  br label %cleanup

if.then12:                                        ; preds = %for.inc.3.if.then12_crit_edge, %for.inc.2.if.then12_crit_edge, %for.inc.1.if.then12_crit_edge, %for.inc.if.then12_crit_edge, %for.body.preheader.if.then12_crit_edge
  %i.032.lcssa = phi i32 [ 0, %for.body.preheader.if.then12_crit_edge ], [ 1, %for.inc.if.then12_crit_edge ], [ 2, %for.inc.1.if.then12_crit_edge ], [ 3, %for.inc.2.if.then12_crit_edge ], [ 4, %for.inc.3.if.then12_crit_edge ]
  %led_state = getelementptr inbounds %struct.lg4ff_device_entry, ptr %7, i32 0, i32 2, i32 5
  %10 = ptrtoint ptr %led_state to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %led_state, align 4
  %conv = zext i8 %11 to i32
  %12 = shl nuw nsw i32 1, %i.032.lcssa
  %13 = and i32 %12, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %phi.cmp = icmp eq i32 %13, 0
  %phi.sel = select i1 %phi.cmp, i32 0, i32 255
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr %struct.lg4ff_device_entry, ptr %7, i32 0, i32 2, i32 6, i32 1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.1, align 4
  %cmp11.1 = icmp eq ptr %15, %led_cdev
  br i1 %cmp11.1, label %for.inc.if.then12_crit_edge, label %for.inc.1

for.inc.if.then12_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.lg4ff_device_entry, ptr %7, i32 0, i32 2, i32 6, i32 2
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.2, align 4
  %cmp11.2 = icmp eq ptr %17, %led_cdev
  br i1 %cmp11.2, label %for.inc.1.if.then12_crit_edge, label %for.inc.2

for.inc.1.if.then12_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.lg4ff_device_entry, ptr %7, i32 0, i32 2, i32 6, i32 3
  %18 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.3, align 4
  %cmp11.3 = icmp eq ptr %19, %led_cdev
  br i1 %cmp11.3, label %for.inc.2.if.then12_crit_edge, label %for.inc.3

for.inc.2.if.then12_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr %struct.lg4ff_device_entry, ptr %7, i32 0, i32 2, i32 6, i32 4
  %20 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.4, align 4
  %cmp11.4 = icmp eq ptr %21, %led_cdev
  br i1 %cmp11.4, label %for.inc.3.if.then12_crit_edge, label %for.inc.3.cleanup_crit_edge

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.3.if.then12_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

cleanup:                                          ; preds = %for.inc.3.cleanup_crit_edge, %if.then12, %do.end8, %do.end
  %retval.0 = phi i32 [ 0, %do.end8 ], [ 0, %do.end ], [ %phi.sel, %if.then12 ], [ 0, %for.inc.3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lg4ff_led_set_brightness(ptr noundef readonly %led_cdev, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 11
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 -3264
  %driver_data.i.i = getelementptr i8, ptr %3, i32 164
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.170) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %device_props = getelementptr inbounds %struct.lg_drv_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %device_props to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device_props, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %do.end8, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %arrayidx = getelementptr %struct.lg4ff_device_entry, ptr %7, i32 0, i32 2, i32 6, i32 0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %cmp11.not = icmp eq ptr %9, %led_cdev
  br i1 %cmp11.not, label %for.body.preheader.if.end13_crit_edge, label %for.inc

for.body.preheader.if.end13_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.173) #14
  br label %cleanup

if.end13:                                         ; preds = %for.inc.3.if.end13_crit_edge, %for.inc.2.if.end13_crit_edge, %for.inc.1.if.end13_crit_edge, %for.inc.if.end13_crit_edge, %for.body.preheader.if.end13_crit_edge
  %i.066.lcssa = phi i32 [ 0, %for.body.preheader.if.end13_crit_edge ], [ 1, %for.inc.if.end13_crit_edge ], [ 2, %for.inc.1.if.end13_crit_edge ], [ 3, %for.inc.2.if.end13_crit_edge ], [ 4, %for.inc.3.if.end13_crit_edge ]
  %led_state = getelementptr inbounds %struct.lg4ff_device_entry, ptr %7, i32 0, i32 2, i32 5
  %10 = ptrtoint ptr %led_state to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %led_state, align 4
  %conv = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp15 = icmp ne i32 %value, 0
  %12 = shl nuw nsw i32 1, %i.066.lcssa
  %13 = and i32 %12, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool17.not = icmp eq i32 %13, 0
  %or.cond = select i1 %cmp15, i1 true, i1 %tobool17.not
  br i1 %or.cond, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %14 = trunc i32 %12 to i8
  %15 = xor i8 %14, -1
  %conv23 = and i8 %11, %15
  %16 = ptrtoint ptr %led_state to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv23, ptr %led_state, align 4
  tail call fastcc void @lg4ff_set_leds(ptr noundef %add.ptr, i8 noundef zeroext %conv23)
  br label %cleanup

if.else:                                          ; preds = %if.end13
  %or.cond64 = select i1 %cmp15, i1 %tobool17.not, i1 false
  br i1 %or.cond64, label %if.then30, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then30:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %17 = trunc i32 %12 to i8
  %conv35 = or i8 %11, %17
  %18 = ptrtoint ptr %led_state to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv35, ptr %led_state, align 4
  tail call fastcc void @lg4ff_set_leds(ptr noundef %add.ptr, i8 noundef zeroext %conv35)
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr %struct.lg4ff_device_entry, ptr %7, i32 0, i32 2, i32 6, i32 1
  %19 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.1, align 4
  %cmp11.not.1 = icmp eq ptr %20, %led_cdev
  br i1 %cmp11.not.1, label %for.inc.if.end13_crit_edge, label %for.inc.1

for.inc.if.end13_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.lg4ff_device_entry, ptr %7, i32 0, i32 2, i32 6, i32 2
  %21 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.2, align 4
  %cmp11.not.2 = icmp eq ptr %22, %led_cdev
  br i1 %cmp11.not.2, label %for.inc.1.if.end13_crit_edge, label %for.inc.2

for.inc.1.if.end13_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.lg4ff_device_entry, ptr %7, i32 0, i32 2, i32 6, i32 3
  %23 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.3, align 4
  %cmp11.not.3 = icmp eq ptr %24, %led_cdev
  br i1 %cmp11.not.3, label %for.inc.2.if.end13_crit_edge, label %for.inc.3

for.inc.2.if.end13_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr %struct.lg4ff_device_entry, ptr %7, i32 0, i32 2, i32 6, i32 4
  %25 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.4, align 4
  %cmp11.not.4 = icmp eq ptr %26, %led_cdev
  br i1 %cmp11.not.4, label %for.inc.3.if.end13_crit_edge, label %for.inc.3.cleanup_crit_edge

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.3.if.end13_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

cleanup:                                          ; preds = %for.inc.3.cleanup_crit_edge, %if.then30, %if.else.cleanup_crit_edge, %if.then18, %do.end8, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lg4ff_deinit(ptr noundef %hid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.50) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %device_props = getelementptr inbounds %struct.lg_drv_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device_props to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device_props, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.do.body21_crit_edge, label %if.end4

if.end.do.body21_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body21

if.end4:                                          ; preds = %if.end
  %alternate_modes = getelementptr inbounds %struct.lg4ff_device_entry, ptr %3, i32 0, i32 2, i32 7
  %4 = ptrtoint ptr %alternate_modes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %alternate_modes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  br i1 %tobool5.not, label %if.end4.if.end9_crit_edge, label %if.then6

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %dev7 = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  tail call void @device_remove_file(ptr noundef %dev7, ptr noundef nonnull @dev_attr_real_id) #11
  tail call void @device_remove_file(ptr noundef %dev7, ptr noundef nonnull @dev_attr_alternate_modes) #11
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end4.if.end9_crit_edge
  %dev10 = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  tail call void @device_remove_file(ptr noundef %dev10, ptr noundef nonnull @dev_attr_combine_pedals) #11
  tail call void @device_remove_file(ptr noundef %dev10, ptr noundef nonnull @dev_attr_range) #11
  %arrayidx = getelementptr %struct.lg4ff_device_entry, ptr %3, i32 0, i32 2, i32 6, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  store ptr null, ptr %arrayidx, align 4
  %tobool17.not = icmp eq ptr %7, null
  br i1 %tobool17.not, label %if.end9.for.inc_crit_edge, label %if.end19

if.end9.for.inc_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end19:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @led_classdev_unregister(ptr noundef nonnull %7) #11
  tail call void @kfree(ptr noundef nonnull %7) #11
  br label %for.inc

for.inc:                                          ; preds = %if.end19, %if.end9.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.lg4ff_device_entry, ptr %3, i32 0, i32 2, i32 6, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1, align 4
  store ptr null, ptr %arrayidx.1, align 4
  %tobool17.not.1 = icmp eq ptr %9, null
  br i1 %tobool17.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end19.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

if.end19.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @led_classdev_unregister(ptr noundef nonnull %9) #11
  tail call void @kfree(ptr noundef nonnull %9) #11
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end19.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.lg4ff_device_entry, ptr %3, i32 0, i32 2, i32 6, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.2, align 4
  store ptr null, ptr %arrayidx.2, align 4
  %tobool17.not.2 = icmp eq ptr %11, null
  br i1 %tobool17.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end19.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

if.end19.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @led_classdev_unregister(ptr noundef nonnull %11) #11
  tail call void @kfree(ptr noundef nonnull %11) #11
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end19.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.lg4ff_device_entry, ptr %3, i32 0, i32 2, i32 6, i32 3
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.3, align 4
  store ptr null, ptr %arrayidx.3, align 4
  %tobool17.not.3 = icmp eq ptr %13, null
  br i1 %tobool17.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end19.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

if.end19.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @led_classdev_unregister(ptr noundef nonnull %13) #11
  tail call void @kfree(ptr noundef nonnull %13) #11
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end19.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.lg4ff_device_entry, ptr %3, i32 0, i32 2, i32 6, i32 4
  %14 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.4, align 4
  store ptr null, ptr %arrayidx.4, align 4
  %tobool17.not.4 = icmp eq ptr %15, null
  br i1 %tobool17.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end19.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4

if.end19.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @led_classdev_unregister(ptr noundef nonnull %15) #11
  tail call void @kfree(ptr noundef nonnull %15) #11
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end19.4, %for.inc.3.for.inc.4_crit_edge
  %16 = ptrtoint ptr %device_props to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %device_props, align 4
  tail call void @kfree(ptr noundef nonnull %3) #11
  br label %do.body21

do.body21:                                        ; preds = %for.inc.4, %if.end.do.body21_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %17 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool22.not = icmp eq i32 %17, 0
  br i1 %tobool22.not, label %do.body21.cleanup_crit_edge, label %do.end26

do.body21.cleanup_crit_edge:                      ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end26:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #13
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.2) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %do.body21.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %do.end26 ], [ 0, %do.body21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lg4ff_switch_compatibility_mode(ptr noundef %hid, ptr nocapture noundef readonly %s) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.93) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %device_props = getelementptr inbounds %struct.lg_drv_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device_props to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device_props, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %do.end6, label %if.end8

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev7 = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.96) #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %report = getelementptr inbounds %struct.lg4ff_device_entry, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %report to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %report, align 4
  %field = getelementptr inbounds %struct.hid_report, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %field, align 4
  %value9 = getelementptr inbounds %struct.hid_field, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %value9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %value9, align 4
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %3) #11
  %10 = ptrtoint ptr %s to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %s, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp2057.not = icmp eq i8 %11, 0
  br i1 %cmp2057.not, label %if.end8.for.end35_crit_edge, label %for.cond22.preheader.preheader

if.end8.for.end35_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end35

for.cond22.preheader.preheader:                   ; preds = %if.end8
  %arrayidx31.1 = getelementptr i32, ptr %9, i32 1
  %arrayidx31.2 = getelementptr i32, ptr %9, i32 2
  %arrayidx31.3 = getelementptr i32, ptr %9, i32 3
  %arrayidx31.4 = getelementptr i32, ptr %9, i32 4
  %arrayidx31.5 = getelementptr i32, ptr %9, i32 5
  %arrayidx31.6 = getelementptr i32, ptr %9, i32 6
  br label %for.cond22.preheader

for.cond22.preheader:                             ; preds = %for.cond22.preheader.for.cond22.preheader_crit_edge, %for.cond22.preheader.preheader
  %indvars.iv = phi i32 [ 0, %for.cond22.preheader.preheader ], [ %indvars.iv.next, %for.cond22.preheader.for.cond22.preheader_crit_edge ]
  %mul = mul nuw nsw i32 %indvars.iv, 7
  %arrayidx29 = getelementptr %struct.lg4ff_compat_mode_switch, ptr %s, i32 0, i32 1, i32 %mul
  %12 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %13 to i32
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv30, ptr %9, align 4
  %add.1 = add nuw nsw i32 %mul, 1
  %arrayidx29.1 = getelementptr %struct.lg4ff_compat_mode_switch, ptr %s, i32 0, i32 1, i32 %add.1
  %15 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx29.1, align 1
  %conv30.1 = zext i8 %16 to i32
  %17 = ptrtoint ptr %arrayidx31.1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv30.1, ptr %arrayidx31.1, align 4
  %add.2 = add nuw nsw i32 %mul, 2
  %arrayidx29.2 = getelementptr %struct.lg4ff_compat_mode_switch, ptr %s, i32 0, i32 1, i32 %add.2
  %18 = ptrtoint ptr %arrayidx29.2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx29.2, align 1
  %conv30.2 = zext i8 %19 to i32
  %20 = ptrtoint ptr %arrayidx31.2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv30.2, ptr %arrayidx31.2, align 4
  %add.3 = add nuw nsw i32 %mul, 3
  %arrayidx29.3 = getelementptr %struct.lg4ff_compat_mode_switch, ptr %s, i32 0, i32 1, i32 %add.3
  %21 = ptrtoint ptr %arrayidx29.3 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx29.3, align 1
  %conv30.3 = zext i8 %22 to i32
  %23 = ptrtoint ptr %arrayidx31.3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv30.3, ptr %arrayidx31.3, align 4
  %add.4 = add nuw nsw i32 %mul, 4
  %arrayidx29.4 = getelementptr %struct.lg4ff_compat_mode_switch, ptr %s, i32 0, i32 1, i32 %add.4
  %24 = ptrtoint ptr %arrayidx29.4 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx29.4, align 1
  %conv30.4 = zext i8 %25 to i32
  %26 = ptrtoint ptr %arrayidx31.4 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv30.4, ptr %arrayidx31.4, align 4
  %add.5 = add nuw nsw i32 %mul, 5
  %arrayidx29.5 = getelementptr %struct.lg4ff_compat_mode_switch, ptr %s, i32 0, i32 1, i32 %add.5
  %27 = ptrtoint ptr %arrayidx29.5 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx29.5, align 1
  %conv30.5 = zext i8 %28 to i32
  %29 = ptrtoint ptr %arrayidx31.5 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv30.5, ptr %arrayidx31.5, align 4
  %add.6 = add nuw nsw i32 %mul, 6
  %arrayidx29.6 = getelementptr %struct.lg4ff_compat_mode_switch, ptr %s, i32 0, i32 1, i32 %add.6
  %30 = ptrtoint ptr %arrayidx29.6 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx29.6, align 1
  %conv30.6 = zext i8 %31 to i32
  %32 = ptrtoint ptr %arrayidx31.6 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv30.6, ptr %arrayidx31.6, align 4
  %33 = ptrtoint ptr %report to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %report, align 4
  tail call void @hid_hw_request(ptr noundef %hid, ptr noundef %34, i32 noundef 9) #11
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %35 = ptrtoint ptr %s to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %s, align 1
  %37 = zext i8 %36 to i32
  %cmp20 = icmp ult i32 %indvars.iv.next, %37
  br i1 %cmp20, label %for.cond22.preheader.for.cond22.preheader_crit_edge, label %for.cond22.preheader.for.end35_crit_edge

for.cond22.preheader.for.end35_crit_edge:         ; preds = %for.cond22.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end35

for.cond22.preheader.for.cond22.preheader_crit_edge: ; preds = %for.cond22.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond22.preheader

for.end35:                                        ; preds = %for.cond22.preheader.for.end35_crit_edge, %if.end8.for.end35_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %3, i32 noundef %call13) #11
  %ll_driver.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 20
  %38 = ptrtoint ptr %ll_driver.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ll_driver.i, align 4
  %wait.i = getelementptr inbounds %struct.hid_ll_driver, ptr %39, i32 0, i32 7
  %40 = ptrtoint ptr %wait.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wait.i, align 4
  %tobool.not.i = icmp eq ptr %41, null
  br i1 %tobool.not.i, label %for.end35.cleanup_crit_edge, label %if.then.i

for.end35.cleanup_crit_edge:                      ; preds = %for.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %for.end35
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 %41(ptr noundef %hid) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %for.end35.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end6 ], [ -22, %do.end ], [ 0, %for.end35.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lg4ff_set_range_dfp(ptr noundef %hid, i16 noundef zeroext %range) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.93) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %device_props = getelementptr inbounds %struct.lg_drv_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device_props to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device_props, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %do.end6, label %if.end8

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev7 = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.96) #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %report = getelementptr inbounds %struct.lg4ff_device_entry, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %report to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %report, align 4
  %field = getelementptr inbounds %struct.hid_report, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %field, align 4
  %value9 = getelementptr inbounds %struct.hid_field, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %value9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %value9, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %10 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool11.not = icmp eq i32 %10, 0
  br i1 %tobool11.not, label %if.end8.do.body21_crit_edge, label %do.end15

if.end8.do.body21_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body21

do.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i16 %range to i32
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.2, i32 noundef %conv) #14
  br label %do.body21

do.body21:                                        ; preds = %do.end15, %if.end8.do.body21_crit_edge
  %call25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %3) #11
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 248, ptr %9, align 4
  %arrayidx31 = getelementptr i32, ptr %9, i32 1
  %arrayidx32 = getelementptr i32, ptr %9, i32 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 200, i16 %range)
  %cmp38 = icmp ugt i16 %range, 200
  %. = select i1 %cmp38, i32 3, i32 2
  %12 = getelementptr i32, ptr %9, i32 2
  %13 = call ptr @memset(ptr %12, i32 0, i32 20)
  %14 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %., ptr %arrayidx31, align 4
  %15 = ptrtoint ptr %report to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %report, align 4
  tail call void @hid_hw_request(ptr noundef %hid, ptr noundef %16, i32 noundef 9) #11
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 129, ptr %9, align 4
  %18 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 11, ptr %arrayidx31, align 4
  %19 = call ptr @memset(ptr %arrayidx32, i32 0, i32 20)
  %20 = zext i16 %range to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.184)
  switch i16 %range, label %if.end61 [
    i16 200, label %do.body21.if.then58_crit_edge
    i16 900, label %do.body21.if.then58_crit_edge122
  ]

do.body21.if.then58_crit_edge122:                 ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then58

do.body21.if.then58_crit_edge:                    ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then58

if.then58:                                        ; preds = %do.body21.if.then58_crit_edge, %do.body21.if.then58_crit_edge122
  %21 = ptrtoint ptr %report to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %report, align 4
  tail call void @hid_hw_request(ptr noundef %hid, ptr noundef %22, i32 noundef 9) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %3, i32 noundef %call25) #11
  br label %cleanup

if.end61:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx36 = getelementptr i32, ptr %9, i32 6
  %arrayidx35 = getelementptr i32, ptr %9, i32 5
  %arrayidx34 = getelementptr i32, ptr %9, i32 4
  %arrayidx33 = getelementptr i32, ptr %9, i32 3
  %.121 = select i1 %cmp38, i32 900, i32 200
  %conv37 = zext i16 %range to i32
  %sub = sub nsw i32 %.121, %conv37
  %23 = mul nsw i32 %sub, 2047
  %mul = add nsw i32 %23, 2047
  %div = sdiv i32 %mul, %.121
  %sub63 = sub nsw i32 4095, %div
  %shr = ashr i32 %div, 4
  %24 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %shr, ptr %arrayidx32, align 4
  %shr65 = ashr i32 %sub63, 4
  %25 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %shr65, ptr %arrayidx33, align 4
  %26 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 255, ptr %arrayidx34, align 4
  %and = shl nsw i32 %sub63, 4
  %shl = and i32 %and, 224
  %and68 = and i32 %div, 14
  %or = or i32 %shl, %and68
  %27 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or, ptr %arrayidx35, align 4
  %28 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 255, ptr %arrayidx36, align 4
  %29 = ptrtoint ptr %report to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %report, align 4
  tail call void @hid_hw_request(ptr noundef %hid, ptr noundef %30, i32 noundef 9) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %3, i32 noundef %call25) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then58, %do.end6, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lg4ff_set_range_g25(ptr noundef %hid, i16 noundef zeroext %range) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.93) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %device_props = getelementptr inbounds %struct.lg_drv_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device_props to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device_props, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %do.end6, label %if.end8

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev7 = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.96) #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %report = getelementptr inbounds %struct.lg4ff_device_entry, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %report to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %report, align 4
  %field = getelementptr inbounds %struct.hid_report, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %field, align 4
  %value9 = getelementptr inbounds %struct.hid_field, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %value9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %value9, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %10 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool11.not = icmp eq i32 %10, 0
  %.pre = zext i16 %range to i32
  br i1 %tobool11.not, label %if.end8.do.body21_crit_edge, label %do.end15

if.end8.do.body21_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body21

do.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.2, i32 noundef %.pre) #14
  br label %do.body21

do.body21:                                        ; preds = %do.end15, %if.end8.do.body21_crit_edge
  %call25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %3) #11
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 248, ptr %9, align 4
  %arrayidx31 = getelementptr i32, ptr %9, i32 1
  %12 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 129, ptr %arrayidx31, align 4
  %and = and i32 %.pre, 255
  %arrayidx33 = getelementptr i32, ptr %9, i32 2
  %13 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and, ptr %arrayidx33, align 4
  %14 = lshr i32 %.pre, 8
  %arrayidx36 = getelementptr i32, ptr %9, i32 3
  %15 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx36, align 4
  %arrayidx37 = getelementptr i32, ptr %9, i32 4
  %16 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %arrayidx37, align 4
  %arrayidx38 = getelementptr i32, ptr %9, i32 5
  %17 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %arrayidx38, align 4
  %arrayidx39 = getelementptr i32, ptr %9, i32 6
  %18 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %arrayidx39, align 4
  %19 = ptrtoint ptr %report to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %report, align 4
  tail call void @hid_hw_request(ptr noundef %hid, ptr noundef %20, i32 noundef 9) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %3, i32 noundef %call25) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body21, %do.end6, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lg4ff_combine_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.93) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %device_props = getelementptr inbounds %struct.lg_drv_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device_props to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device_props, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %do.end7, label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.96) #14
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %combine = getelementptr inbounds %struct.lg4ff_device_entry, ptr %3, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %combine to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %combine, align 4
  %conv = zext i16 %5 to i32
  %call10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.123, i32 noundef %conv) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end7, %do.end
  %retval.0 = phi i32 [ %call10, %if.end9 ], [ 0, %do.end7 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lg4ff_combine_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_strtoul(ptr noundef %buf, ptr noundef null, i32 noundef 10) #11
  %conv = trunc i32 %call to i16
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.93) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %device_props = getelementptr inbounds %struct.lg_drv_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device_props to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device_props, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %do.end8, label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.96) #14
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv11 = and i32 %call, 65534
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv11)
  %cmp.not = icmp eq i32 %conv11, 0
  %spec.store.select = select i1 %cmp.not, i16 %conv, i16 1
  %combine15 = getelementptr inbounds %struct.lg4ff_device_entry, ptr %3, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %combine15 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %spec.store.select, ptr %combine15, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end8, %do.end
  %retval.0 = phi i32 [ %count, %if.end10 ], [ -22, %do.end8 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lg4ff_range_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.93) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %device_props = getelementptr inbounds %struct.lg_drv_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device_props to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device_props, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %do.end7, label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.96) #14
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %range = getelementptr inbounds %struct.lg4ff_device_entry, ptr %3, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %range to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %range, align 2
  %conv = zext i16 %5 to i32
  %call10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.123, i32 noundef %conv) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end7, %do.end
  %retval.0 = phi i32 [ %call10, %if.end9 ], [ 0, %do.end7 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lg4ff_range_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -3264
  %call = tail call i32 @simple_strtoul(ptr noundef %buf, ptr noundef null, i32 noundef 10) #11
  %conv = trunc i32 %call to i16
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.93) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %device_props = getelementptr inbounds %struct.lg_drv_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device_props to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device_props, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %do.end8, label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.96) #14
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %conv11 = and i32 %call, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv11)
  %cmp = icmp eq i32 %conv11, 0
  br i1 %cmp, label %if.then13, label %if.end10.if.end14_crit_edge

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %max_range = getelementptr inbounds %struct.lg4ff_device_entry, ptr %3, i32 0, i32 2, i32 4
  %4 = ptrtoint ptr %max_range to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %max_range, align 2
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end10.if.end14_crit_edge
  %range.0 = phi i16 [ %5, %if.then13 ], [ %conv, %if.end10.if.end14_crit_edge ]
  %set_range = getelementptr inbounds %struct.lg4ff_device_entry, ptr %3, i32 0, i32 2, i32 11
  %6 = ptrtoint ptr %set_range to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_range, align 4
  %tobool16.not = icmp eq ptr %7, null
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %land.lhs.true

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end14
  %min_range = getelementptr inbounds %struct.lg4ff_device_entry, ptr %3, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %min_range to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %min_range, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %range.0, i16 %9)
  %cmp20.not = icmp ult i16 %range.0, %9
  br i1 %cmp20.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true22

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true22:                                  ; preds = %land.lhs.true
  %max_range25 = getelementptr inbounds %struct.lg4ff_device_entry, ptr %3, i32 0, i32 2, i32 4
  %10 = ptrtoint ptr %max_range25 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %max_range25, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %range.0, i16 %11)
  %cmp27.not = icmp ugt i16 %range.0, %11
  br i1 %cmp27.not, label %land.lhs.true22.cleanup_crit_edge, label %if.then29

land.lhs.true22.cleanup_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then29:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %7(ptr noundef %add.ptr, i16 noundef zeroext %range.0) #11
  %range33 = getelementptr inbounds %struct.lg4ff_device_entry, ptr %3, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %range33 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %range.0, ptr %range33, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %land.lhs.true22.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %do.end8, %do.end
  %retval.0 = phi i32 [ -22, %do.end8 ], [ -22, %do.end ], [ %count, %if.then29 ], [ %count, %land.lhs.true22.cleanup_crit_edge ], [ %count, %land.lhs.true.cleanup_crit_edge ], [ %count, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lg4ff_real_id_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.93) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %device_props = getelementptr inbounds %struct.lg_drv_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device_props to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device_props, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %do.end7, label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.96) #14
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %real_tag = getelementptr inbounds %struct.lg4ff_device_entry, ptr %3, i32 0, i32 2, i32 8
  %4 = ptrtoint ptr %real_tag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %real_tag, align 4
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %if.end9.do.end16_crit_edge, label %lor.lhs.false

if.end9.do.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

lor.lhs.false:                                    ; preds = %if.end9
  %real_name = getelementptr inbounds %struct.lg4ff_device_entry, ptr %3, i32 0, i32 2, i32 9
  %6 = ptrtoint ptr %real_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %real_name, align 4
  %tobool12.not = icmp eq ptr %7, null
  br i1 %tobool12.not, label %lor.lhs.false.do.end16_crit_edge, label %if.end18

lor.lhs.false.do.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

do.end16:                                         ; preds = %lor.lhs.false.do.end16_crit_edge, %if.end9.do.end16_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.139) #14
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %call23 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.141, ptr noundef nonnull %5, ptr noundef nonnull %7) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end16, %do.end7, %do.end
  %retval.0 = phi i32 [ %call23, %if.end18 ], [ 0, %do.end16 ], [ 0, %do.end7 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lg4ff_real_id_store(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lg4ff_alternate_modes_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %device_props = getelementptr inbounds %struct.lg_drv_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device_props to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device_props, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end9

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end9:                                          ; preds = %if.end
  %wdata = getelementptr inbounds %struct.lg4ff_device_entry, ptr %3, i32 0, i32 2
  %real_name = getelementptr inbounds %struct.lg4ff_device_entry, ptr %3, i32 0, i32 2, i32 9
  %4 = ptrtoint ptr %real_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %real_name, align 4
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %if.end9.cleanup.sink.split_crit_edge, label %for.cond.preheader

if.end9.cleanup.sink.split_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

for.cond.preheader:                               ; preds = %if.end9
  %alternate_modes = getelementptr inbounds %struct.lg4ff_device_entry, ptr %3, i32 0, i32 2, i32 7
  %real_product_id = getelementptr inbounds %struct.lg4ff_device_entry, ptr %3, i32 0, i32 2, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0100 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %count.099 = phi i32 [ 0, %for.cond.preheader ], [ %count.2, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %alternate_modes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %alternate_modes, align 4
  %shl = shl nuw nsw i32 1, %i.0100
  %and = and i32 %7, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %for.body.for.inc_crit_edge, label %if.then19

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then19:                                        ; preds = %for.body
  %add.ptr20 = getelementptr i8, ptr %buf, i32 %count.099
  %sub = sub i32 4096, %count.099
  %arrayidx = getelementptr [7 x %struct.lg4ff_alternate_mode], ptr @lg4ff_alternate_modes, i32 0, i32 %i.0100
  %tag = getelementptr [7 x %struct.lg4ff_alternate_mode], ptr @lg4ff_alternate_modes, i32 0, i32 %i.0100, i32 1
  %8 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tag, align 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool22.not = icmp eq i16 %11, 0
  %name = getelementptr [7 x %struct.lg4ff_alternate_mode], ptr @lg4ff_alternate_modes, i32 0, i32 %i.0100, i32 2
  %cond.in = select i1 %tobool22.not, ptr %real_name, ptr %name
  %12 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %cond = load ptr, ptr %cond.in, align 4
  %call26 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr20, i32 noundef %sub, ptr noundef nonnull @.str.148, ptr noundef %9, ptr noundef %cond) #11
  %add = add i32 %call26, %count.099
  call void @__sanitizer_cov_trace_const_cmp4(i32 4094, i32 %add)
  %cmp27 = icmp ugt i32 %add, 4094
  br i1 %cmp27, label %if.then19.cleanup_crit_edge, label %if.end29

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end29:                                         ; preds = %if.then19
  %conv = zext i16 %11 to i32
  %13 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wdata, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv)
  %cmp34 = icmp eq i32 %14, %conv
  br i1 %cmp34, label %if.end29.if.end56_crit_edge, label %lor.lhs.false

if.end29.if.end56_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

lor.lhs.false:                                    ; preds = %if.end29
  br i1 %tobool22.not, label %land.lhs.true, label %lor.lhs.false.if.else_crit_edge

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %15 = ptrtoint ptr %real_product_id to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %real_product_id, align 4
  %conv44 = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv44)
  %cmp45 = icmp eq i32 %14, %conv44
  br i1 %cmp45, label %land.lhs.true.if.end56_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true.if.end56_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %lor.lhs.false.if.else_crit_edge
  br label %if.end56

if.end56:                                         ; preds = %if.else, %land.lhs.true.if.end56_crit_edge, %if.end29.if.end56_crit_edge
  %.str.150.sink = phi ptr [ @.str.150, %if.else ], [ @.str.149, %land.lhs.true.if.end56_crit_edge ], [ @.str.149, %if.end29.if.end56_crit_edge ]
  %add.ptr52 = getelementptr i8, ptr %buf, i32 %add
  %sub53 = sub nuw nsw i32 4096, %add
  %call54 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr52, i32 noundef %sub53, ptr noundef nonnull %.str.150.sink) #11
  %count.1 = add i32 %call54, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 4094, i32 %count.1)
  %cmp57 = icmp ugt i32 %count.1, 4094
  br i1 %cmp57, label %if.end56.cleanup_crit_edge, label %if.end56.for.inc_crit_edge

if.end56.for.inc_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %if.end56.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %count.2 = phi i32 [ %count.1, %if.end56.for.inc_crit_edge ], [ %count.099, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0100, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end9.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.139.sink = phi ptr [ @.str.93, %entry.cleanup.sink.split_crit_edge ], [ @.str.96, %if.end.cleanup.sink.split_crit_edge ], [ @.str.139, %if.end9.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.139.sink) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %if.then19.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cleanup.sink.split ], [ %count.2, %for.inc.cleanup_crit_edge ], [ %count.1, %if.end56.cleanup_crit_edge ], [ %add, %if.then19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lg4ff_alternate_modes_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -3264
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.93) #14
  br label %cleanup106

if.end:                                           ; preds = %entry
  %device_props = getelementptr inbounds %struct.lg_drv_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device_props to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device_props, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %do.end7, label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.96) #14
  br label %cleanup106

if.end9:                                          ; preds = %if.end
  %call10 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.154, ptr noundef %buf) #11
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end9.cleanup106_crit_edge, label %if.end13

if.end9.cleanup106_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup106

if.end13:                                         ; preds = %if.end9
  %call14 = tail call i32 @strlen(ptr noundef nonnull %call10) #16
  %sub = add i32 %call14, -1
  %arrayidx = getelementptr i8, ptr %call10, i32 %sub
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %5)
  %cmp = icmp eq i8 %5, 10
  br i1 %cmp, label %if.then16, label %if.end13.if.end23_crit_edge

if.end13.if.end23_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call14)
  %cmp17 = icmp eq i32 %call14, 1
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call10) #11
  br label %cleanup106

if.end20:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end23

if.end23:                                         ; preds = %if.end20, %if.end13.if.end23_crit_edge
  %alternate_modes = getelementptr inbounds %struct.lg4ff_device_entry, ptr %3, i32 0, i32 2, i32 7
  %7 = ptrtoint ptr %alternate_modes to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %alternate_modes, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %if.end23.for.inc_crit_edge, label %if.then30

if.end23.for.inc_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then30:                                        ; preds = %if.end23
  %call31 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.71, ptr noundef nonnull %call10) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then30.if.then33_crit_edge, label %if.then30.for.inc_crit_edge

if.then30.for.inc_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then30.if.then33_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then33

if.then33:                                        ; preds = %if.then30.6.if.then33_crit_edge, %if.then30.5.if.then33_crit_edge, %if.then30.4.if.then33_crit_edge, %if.then30.3.if.then33_crit_edge, %if.then30.2.if.then33_crit_edge, %if.then30.1.if.then33_crit_edge, %if.then30.if.then33_crit_edge
  %i.0176.lcssa = phi i32 [ 0, %if.then30.if.then33_crit_edge ], [ 1, %if.then30.1.if.then33_crit_edge ], [ 2, %if.then30.2.if.then33_crit_edge ], [ 3, %if.then30.3.if.then33_crit_edge ], [ 4, %if.then30.4.if.then33_crit_edge ], [ 5, %if.then30.5.if.then33_crit_edge ], [ 6, %if.then30.6.if.then33_crit_edge ]
  %arrayidx26.le = getelementptr [7 x %struct.lg4ff_alternate_mode], ptr @lg4ff_alternate_modes, i32 0, i32 %i.0176.lcssa
  %9 = ptrtoint ptr %arrayidx26.le to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx26.le, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool34.not = icmp eq i16 %10, 0
  br i1 %tobool34.not, label %if.then35, label %if.then33.if.end48_crit_edge

if.then33.if.end48_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then35:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  %real_product_id = getelementptr inbounds %struct.lg4ff_device_entry, ptr %3, i32 0, i32 2, i32 10
  %11 = ptrtoint ptr %real_product_id to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %real_product_id, align 4
  br label %if.end48

for.inc:                                          ; preds = %if.then30.for.inc_crit_edge, %if.end23.for.inc_crit_edge
  %and.1 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool29.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool29.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then30.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

if.then30.1:                                      ; preds = %for.inc
  %call31.1 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.73, ptr noundef nonnull %call10) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.1)
  %tobool32.not.1 = icmp eq i32 %call31.1, 0
  br i1 %tobool32.not.1, label %if.then30.1.if.then33_crit_edge, label %if.then30.1.for.inc.1_crit_edge

if.then30.1.for.inc.1_crit_edge:                  ; preds = %if.then30.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

if.then30.1.if.then33_crit_edge:                  ; preds = %if.then30.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then33

for.inc.1:                                        ; preds = %if.then30.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %and.2 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool29.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool29.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then30.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

if.then30.2:                                      ; preds = %for.inc.1
  %call31.2 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.75, ptr noundef nonnull %call10) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.2)
  %tobool32.not.2 = icmp eq i32 %call31.2, 0
  br i1 %tobool32.not.2, label %if.then30.2.if.then33_crit_edge, label %if.then30.2.for.inc.2_crit_edge

if.then30.2.for.inc.2_crit_edge:                  ; preds = %if.then30.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

if.then30.2.if.then33_crit_edge:                  ; preds = %if.then30.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then33

for.inc.2:                                        ; preds = %if.then30.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %and.3 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool29.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool29.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then30.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

if.then30.3:                                      ; preds = %for.inc.2
  %call31.3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.77, ptr noundef nonnull %call10) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.3)
  %tobool32.not.3 = icmp eq i32 %call31.3, 0
  br i1 %tobool32.not.3, label %if.then30.3.if.then33_crit_edge, label %if.then30.3.for.inc.3_crit_edge

if.then30.3.for.inc.3_crit_edge:                  ; preds = %if.then30.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

if.then30.3.if.then33_crit_edge:                  ; preds = %if.then30.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then33

for.inc.3:                                        ; preds = %if.then30.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %and.4 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool29.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool29.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then30.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4

if.then30.4:                                      ; preds = %for.inc.3
  %call31.4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.79, ptr noundef nonnull %call10) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.4)
  %tobool32.not.4 = icmp eq i32 %call31.4, 0
  br i1 %tobool32.not.4, label %if.then30.4.if.then33_crit_edge, label %if.then30.4.for.inc.4_crit_edge

if.then30.4.for.inc.4_crit_edge:                  ; preds = %if.then30.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4

if.then30.4.if.then33_crit_edge:                  ; preds = %if.then30.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then33

for.inc.4:                                        ; preds = %if.then30.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %and.5 = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool29.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool29.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then30.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.5

if.then30.5:                                      ; preds = %for.inc.4
  %call31.5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.81, ptr noundef nonnull %call10) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.5)
  %tobool32.not.5 = icmp eq i32 %call31.5, 0
  br i1 %tobool32.not.5, label %if.then30.5.if.then33_crit_edge, label %if.then30.5.for.inc.5_crit_edge

if.then30.5.for.inc.5_crit_edge:                  ; preds = %if.then30.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.5

if.then30.5.if.then33_crit_edge:                  ; preds = %if.then30.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then33

for.inc.5:                                        ; preds = %if.then30.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %and.6 = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool29.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool29.not.6, label %for.inc.5.do.end46_crit_edge, label %if.then30.6

for.inc.5.do.end46_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end46

if.then30.6:                                      ; preds = %for.inc.5
  %call31.6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.83, ptr noundef nonnull %call10) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.6)
  %tobool32.not.6 = icmp eq i32 %call31.6, 0
  br i1 %tobool32.not.6, label %if.then30.6.if.then33_crit_edge, label %if.then30.6.do.end46_crit_edge

if.then30.6.do.end46_crit_edge:                   ; preds = %if.then30.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end46

if.then30.6.if.then33_crit_edge:                  ; preds = %if.then30.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then33

do.end46:                                         ; preds = %if.then30.6.do.end46_crit_edge, %for.inc.5.do.end46_crit_edge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.156, ptr noundef nonnull %call10) #14
  tail call void @kfree(ptr noundef nonnull %call10) #11
  br label %cleanup106

if.end48:                                         ; preds = %if.then35, %if.then33.if.end48_crit_edge
  %target_product_id.3164 = phi i16 [ %10, %if.then33.if.end48_crit_edge ], [ %12, %if.then35 ]
  tail call void @kfree(ptr noundef nonnull %call10) #11
  %conv49 = zext i16 %target_product_id.3164 to i32
  %wdata50 = getelementptr inbounds %struct.lg4ff_device_entry, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %wdata50 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wdata50, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv49)
  %cmp52 = icmp eq i32 %14, %conv49
  br i1 %cmp52, label %if.end48.cleanup106_crit_edge, label %if.end55

if.end48.cleanup106_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup106

if.end55:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_const_cmp2(i16 -15724, i16 %target_product_id.3164)
  %cmp57 = icmp eq i16 %target_product_id.3164, -15724
  br i1 %cmp57, label %land.lhs.true, label %if.end55.if.end66_crit_edge

if.end55.if.end66_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66

land.lhs.true:                                    ; preds = %if.end55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lg4ff_no_autoswitch to i32))
  %15 = load i32, ptr @lg4ff_no_autoswitch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool59.not = icmp eq i32 %15, 0
  br i1 %tobool59.not, label %do.end63, label %land.lhs.true.if.end66_crit_edge

land.lhs.true.if.end66_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66

do.end63:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %real_name = getelementptr inbounds %struct.lg4ff_device_entry, ptr %3, i32 0, i32 2, i32 9
  %16 = ptrtoint ptr %real_name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %real_name, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.159, ptr noundef %17) #14
  br label %cleanup106

if.end66:                                         ; preds = %land.lhs.true.if.end66_crit_edge, %if.end55.if.end66_crit_edge
  %real_product_id68 = getelementptr inbounds %struct.lg4ff_device_entry, ptr %3, i32 0, i32 2, i32 10
  %18 = ptrtoint ptr %real_product_id68 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %real_product_id68, align 4
  %20 = and i16 %19, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -15720, i16 %20)
  %switch157 = icmp eq i16 %20, -15720
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv49)
  %cmp81 = icmp ugt i32 %14, %conv49
  %or.cond = select i1 %switch157, i1 %cmp81, i1 false
  br i1 %or.cond, label %do.end86, label %if.end91

do.end86:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  %real_name89 = getelementptr inbounds %struct.lg4ff_device_entry, ptr %3, i32 0, i32 2, i32 9
  %21 = ptrtoint ptr %real_name89 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %real_name89, align 4
  %name = getelementptr [7 x %struct.lg4ff_alternate_mode], ptr @lg4ff_alternate_modes, i32 0, i32 %i.0176.lcssa, i32 2
  %23 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.162, ptr noundef %22, ptr noundef %24) #14
  br label %cleanup106

if.end91:                                         ; preds = %if.end66
  %25 = zext i16 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.185)
  switch i16 %19, label %if.end91.do.end99_crit_edge [
    i16 -15720, label %sw.bb.i
    i16 -15719, label %sw.bb3.i
    i16 -15717, label %sw.bb8.i
    i16 -15793, label %sw.bb15.i
    i16 -15718, label %sw.bb23.i
  ]

if.end91.do.end99_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end99

sw.bb.i:                                          ; preds = %if.end91
  call void @__sanitizer_cov_trace_const_cmp2(i16 -15720, i16 %target_product_id.3164)
  %cond.i = icmp eq i16 %target_product_id.3164, -15720
  br i1 %cond.i, label %sw.bb.i.if.end102_crit_edge, label %sw.bb.i.do.end99_crit_edge

sw.bb.i.do.end99_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end99

sw.bb.i.if.end102_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102

sw.bb3.i:                                         ; preds = %if.end91
  %26 = zext i16 %target_product_id.3164 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.186)
  switch i16 %target_product_id.3164, label %sw.bb3.i.do.end99_crit_edge [
    i16 -15720, label %sw.bb3.i.if.end102_crit_edge
    i16 -15719, label %if.end102.fold.split
  ]

sw.bb3.i.if.end102_crit_edge:                     ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102

sw.bb3.i.do.end99_crit_edge:                      ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end99

sw.bb8.i:                                         ; preds = %if.end91
  %switch.tableidx = add i16 %target_product_id.3164, 15724
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %switch.tableidx)
  %27 = icmp ult i16 %switch.tableidx, 8
  br i1 %27, label %switch.hole_check, label %sw.bb8.i.do.end99_crit_edge

sw.bb8.i.do.end99_crit_edge:                      ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end99

sw.bb15.i:                                        ; preds = %if.end91
  %28 = zext i16 %target_product_id.3164 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.187)
  switch i16 %target_product_id.3164, label %sw.bb15.i.do.end99_crit_edge [
    i16 -15720, label %sw.bb15.i.if.end102_crit_edge
    i16 -15718, label %sw.bb18.i
    i16 -15719, label %sw.bb19.i
    i16 -15717, label %sw.bb20.i
    i16 -15793, label %sw.bb21.i
  ]

sw.bb15.i.if.end102_crit_edge:                    ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102

sw.bb15.i.do.end99_crit_edge:                     ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end99

sw.bb18.i:                                        ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102

sw.bb19.i:                                        ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102

sw.bb20.i:                                        ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102

sw.bb21.i:                                        ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102

sw.bb23.i:                                        ; preds = %if.end91
  %29 = zext i16 %target_product_id.3164 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.188)
  switch i16 %target_product_id.3164, label %sw.bb23.i.do.end99_crit_edge [
    i16 -15724, label %sw.bb23.i.if.end102_crit_edge
    i16 -15720, label %sw.bb26.i
    i16 -15718, label %sw.bb27.i
  ]

sw.bb23.i.if.end102_crit_edge:                    ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102

sw.bb23.i.do.end99_crit_edge:                     ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end99

sw.bb26.i:                                        ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102

sw.bb27.i:                                        ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102

do.end99:                                         ; preds = %switch.hole_check.do.end99_crit_edge, %sw.bb23.i.do.end99_crit_edge, %sw.bb15.i.do.end99_crit_edge, %sw.bb8.i.do.end99_crit_edge, %sw.bb3.i.do.end99_crit_edge, %sw.bb.i.do.end99_crit_edge, %if.end91.do.end99_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.165, i32 noundef %conv49) #14
  br label %cleanup106

if.end102.fold.split:                             ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102

switch.hole_check:                                ; preds = %sw.bb8.i
  %switch.maskindex = trunc i16 %switch.tableidx to i8
  %switch.shifted = lshr i8 -79, %switch.maskindex
  %30 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %switch.lobit.not = icmp eq i8 %30, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end99_crit_edge, label %switch.lookup

switch.hole_check.do.end99_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end99

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  %31 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [8 x ptr], ptr @switch.table.lg4ff_alternate_modes_store, i32 0, i32 %31
  %32 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %32)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %if.end102

if.end102:                                        ; preds = %switch.lookup, %if.end102.fold.split, %sw.bb27.i, %sw.bb26.i, %sw.bb23.i.if.end102_crit_edge, %sw.bb21.i, %sw.bb20.i, %sw.bb19.i, %sw.bb18.i, %sw.bb15.i.if.end102_crit_edge, %sw.bb3.i.if.end102_crit_edge, %sw.bb.i.if.end102_crit_edge
  %retval.0.i168 = phi ptr [ @lg4ff_mode_switch_ext09_dfex, %sw.bb23.i.if.end102_crit_edge ], [ @lg4ff_mode_switch_ext09_dfp, %sw.bb15.i.if.end102_crit_edge ], [ @lg4ff_mode_switch_ext09_dfgt, %sw.bb18.i ], [ @lg4ff_mode_switch_ext09_g25, %sw.bb19.i ], [ @lg4ff_mode_switch_ext09_g27, %sw.bb20.i ], [ @lg4ff_mode_switch_ext09_g29, %sw.bb21.i ], [ @lg4ff_mode_switch_ext09_dfp, %sw.bb26.i ], [ @lg4ff_mode_switch_ext09_dfgt, %sw.bb27.i ], [ @lg4ff_mode_switch_ext01_dfp, %sw.bb.i.if.end102_crit_edge ], [ @lg4ff_mode_switch_ext01_dfp, %sw.bb3.i.if.end102_crit_edge ], [ @lg4ff_mode_switch_ext16_g25, %if.end102.fold.split ], [ %switch.load, %switch.lookup ]
  %call103 = tail call fastcc i32 @lg4ff_switch_compatibility_mode(ptr noundef %add.ptr, ptr noundef nonnull %retval.0.i168)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %cmp104 = icmp eq i32 %call103, 0
  %count.call103 = select i1 %cmp104, i32 %count, i32 %call103
  br label %cleanup106

cleanup106:                                       ; preds = %if.end102, %do.end99, %do.end86, %do.end63, %if.end48.cleanup106_crit_edge, %do.end46, %if.then19, %if.end9.cleanup106_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %if.then19 ], [ -22, %do.end46 ], [ -22, %do.end86 ], [ %count.call103, %if.end102 ], [ -22, %do.end99 ], [ -22, %do.end63 ], [ -22, %do.end7 ], [ -22, %do.end ], [ -12, %if.end9.cleanup106_crit_edge ], [ %count, %if.end48.cleanup106_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smin.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 174)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 174)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !170, !171, !172, !174, !175, !176, !178, !180, !182, !184, !185, !186, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !202, !203, !204, !206, !208, !209, !210, !212, !213, !215, !216, !217, !219, !220, !222, !223, !224, !226, !227, !229, !230, !232, !233, !234, !236, !237, !239, !241, !242, !243, !245, !246, !248, !249, !251, !252, !253, !255, !256, !258, !259, !260, !262, !263, !265, !266, !268, !269, !270, !272, !273, !275, !276, !277, !279, !281, !282, !284, !285, !286, !288, !289, !291, !292, !294, !296, !298, !300, !301, !302, !304, !305, !307, !309, !310, !311, !313, !314, !315, !317, !318, !319, !321, !322, !323, !325, !326, !327, !329, !330, !332, !333, !334, !335, !337, !338, !339, !341, !342, !343, !345}
!llvm.module.flags = !{!346, !347, !348, !349, !350, !351, !352, !353}
!llvm.ident = !{!354}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-lg4ff.c", i32 307, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @lg4ff_adjust_input_event._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @lg4ff_adjust_input_event._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/hid/hid-lg4ff.c", i32 1270, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @lg4ff_init._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @lg4ff_init._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-lg4ff.c", i32 1282, i32 3}
!15 = !{ptr @lg4ff_init._entry.7, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @lg4ff_init._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @lg4ff_init.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/hid/hid-lg4ff.c", i32 1288, i32 2}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/hid/hid-lg4ff.c", i32 1302, i32 3}
!22 = !{ptr @lg4ff_init._entry.11, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @lg4ff_init._entry_ptr.13, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/hid/hid-lg4ff.c", i32 1310, i32 4}
!26 = !{ptr @lg4ff_init._entry.14, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @lg4ff_init._entry_ptr.16, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/hid/hid-lg4ff.c", i32 1316, i32 3}
!30 = !{ptr @lg4ff_init._entry.17, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @lg4ff_init._entry_ptr.19, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.21, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hid/hid-lg4ff.c", i32 1330, i32 4}
!34 = !{ptr @lg4ff_init._entry.20, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @lg4ff_init._entry_ptr.22, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.24, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hid/hid-lg4ff.c", i32 1368, i32 3}
!38 = !{ptr @.str.25, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @lg4ff_init._entry.23, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @lg4ff_init._entry_ptr.26, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.28, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hid/hid-lg4ff.c", i32 1371, i32 3}
!43 = !{ptr @lg4ff_init._entry.27, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @lg4ff_init._entry_ptr.29, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.31, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/hid/hid-lg4ff.c", i32 1375, i32 4}
!47 = !{ptr @lg4ff_init._entry.30, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @lg4ff_init._entry_ptr.32, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.34, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/hid/hid-lg4ff.c", i32 1378, i32 4}
!51 = !{ptr @lg4ff_init._entry.33, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @lg4ff_init._entry_ptr.35, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.37, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hid/hid-lg4ff.c", i32 1380, i32 2}
!55 = !{ptr @lg4ff_init._entry.36, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @lg4ff_init._entry_ptr.38, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.40, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/hid/hid-lg4ff.c", i32 1406, i32 5}
!59 = !{ptr @lg4ff_init._entry.39, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @lg4ff_init._entry_ptr.41, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.42, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/hid/hid-lg4ff.c", i32 1411, i32 28}
!63 = !{ptr @.str.44, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/hid/hid-lg4ff.c", i32 1422, i32 5}
!65 = !{ptr @lg4ff_init._entry.43, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @lg4ff_init._entry_ptr.45, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.47, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/hid/hid-lg4ff.c", i32 1439, i32 2}
!69 = !{ptr @.str.48, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @lg4ff_init._entry.46, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @lg4ff_init._entry_ptr.49, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.50, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/hid/hid-lg4ff.c", i32 1455, i32 3}
!74 = !{ptr @.str.51, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @lg4ff_deinit._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @lg4ff_deinit._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.53, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/hid/hid-lg4ff.c", i32 1491, i32 2}
!79 = !{ptr @lg4ff_deinit._entry.52, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @lg4ff_deinit._entry_ptr.54, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.55, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/hid/hid-lg4ff.c", i32 1224, i32 3}
!83 = !{ptr @.str.56, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @lg4ff_handle_multimode_wheel._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @lg4ff_handle_multimode_wheel._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.58, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/hid/hid-lg4ff.c", i32 1236, i32 4}
!88 = !{ptr @lg4ff_handle_multimode_wheel._entry.57, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @lg4ff_handle_multimode_wheel._entry_ptr.59, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.61, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/hid/hid-lg4ff.c", i32 1244, i32 4}
!92 = !{ptr @lg4ff_handle_multimode_wheel._entry.60, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @lg4ff_handle_multimode_wheel._entry_ptr.62, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.63, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/hid/hid-lg4ff.c", i32 1187, i32 3}
!96 = !{ptr @.str.64, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @lg4ff_identify_multimode_wheel._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @lg4ff_identify_multimode_wheel._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.66, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/hid/hid-lg4ff.c", i32 1204, i32 4}
!101 = !{ptr @lg4ff_identify_multimode_wheel._entry.65, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @lg4ff_identify_multimode_wheel._entry_ptr.67, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.69, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/hid/hid-lg4ff.c", i32 1211, i32 2}
!105 = !{ptr @lg4ff_identify_multimode_wheel._entry.68, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @lg4ff_identify_multimode_wheel._entry_ptr.70, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.71, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/hid/hid-lg4ff.c", i32 164, i32 32}
!109 = !{ptr @.str.72, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/hid/hid-lg4ff.c", i32 164, i32 42}
!111 = !{ptr @.str.73, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/hid/hid-lg4ff.c", i32 165, i32 57}
!113 = !{ptr @.str.74, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/hid/hid-lg4ff.c", i32 165, i32 73}
!115 = !{ptr @.str.75, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/hid/hid-lg4ff.c", i32 166, i32 60}
!117 = !{ptr @.str.76, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/hid/hid-lg4ff.c", i32 166, i32 75}
!119 = !{ptr @.str.77, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/hid/hid-lg4ff.c", i32 167, i32 60}
!121 = !{ptr @.str.78, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/hid/hid-lg4ff.c", i32 167, i32 75}
!123 = !{ptr @.str.79, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/hid/hid-lg4ff.c", i32 168, i32 62}
!125 = !{ptr @.str.80, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/hid/hid-lg4ff.c", i32 168, i32 78}
!127 = !{ptr @.str.81, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/hid/hid-lg4ff.c", i32 169, i32 60}
!129 = !{ptr @.str.82, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/hid/hid-lg4ff.c", i32 169, i32 75}
!131 = !{ptr @.str.83, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/hid/hid-lg4ff.c", i32 170, i32 60}
!133 = !{ptr @.str.84, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/hid/hid-lg4ff.c", i32 170, i32 75}
!135 = !{ptr @lg4ff_alternate_modes, !136, !"lg4ff_alternate_modes", i1 false, i1 false}
!136 = !{!"../drivers/hid/hid-lg4ff.c", i32 163, i32 42}
!137 = distinct !{null, !138, !"lg4ff_main_checklist", i1 false, i1 false}
!138 = !{!"../drivers/hid/hid-lg4ff.c", i32 217, i32 45}
!139 = !{ptr @lg4ff_g29_ident_info, !140, !"lg4ff_g29_ident_info", i1 false, i1 false}
!140 = !{!"../drivers/hid/hid-lg4ff.c", i32 202, i32 44}
!141 = !{ptr @lg4ff_g29_ident_info2, !142, !"lg4ff_g29_ident_info2", i1 false, i1 false}
!142 = !{!"../drivers/hid/hid-lg4ff.c", i32 209, i32 44}
!143 = !{ptr @lg4ff_dfgt_ident_info, !144, !"lg4ff_dfgt_ident_info", i1 false, i1 false}
!144 = !{!"../drivers/hid/hid-lg4ff.c", i32 195, i32 44}
!145 = !{ptr @lg4ff_g27_ident_info, !146, !"lg4ff_g27_ident_info", i1 false, i1 false}
!146 = !{!"../drivers/hid/hid-lg4ff.c", i32 188, i32 44}
!147 = !{ptr @lg4ff_g25_ident_info, !148, !"lg4ff_g25_ident_info", i1 false, i1 false}
!148 = !{!"../drivers/hid/hid-lg4ff.c", i32 181, i32 44}
!149 = !{ptr @lg4ff_dfp_ident_info, !150, !"lg4ff_dfp_ident_info", i1 false, i1 false}
!150 = !{!"../drivers/hid/hid-lg4ff.c", i32 174, i32 44}
!151 = !{ptr @lg4ff_mode_switch_ext01_dfp, !152, !"lg4ff_mode_switch_ext01_dfp", i1 false, i1 false}
!152 = !{!"../drivers/hid/hid-lg4ff.c", i32 265, i32 46}
!153 = !{ptr @lg4ff_mode_switch_ext16_g25, !154, !"lg4ff_mode_switch_ext16_g25", i1 false, i1 false}
!154 = !{!"../drivers/hid/hid-lg4ff.c", i32 271, i32 46}
!155 = !{ptr @lg4ff_mode_switch_ext09_dfex, !156, !"lg4ff_mode_switch_ext09_dfex", i1 false, i1 false}
!156 = !{!"../drivers/hid/hid-lg4ff.c", i32 228, i32 46}
!157 = !{ptr @lg4ff_mode_switch_ext09_dfp, !158, !"lg4ff_mode_switch_ext09_dfp", i1 false, i1 false}
!158 = !{!"../drivers/hid/hid-lg4ff.c", i32 234, i32 46}
!159 = !{ptr @lg4ff_mode_switch_ext09_g25, !160, !"lg4ff_mode_switch_ext09_g25", i1 false, i1 false}
!160 = !{!"../drivers/hid/hid-lg4ff.c", i32 240, i32 46}
!161 = !{ptr @lg4ff_mode_switch_ext09_g27, !162, !"lg4ff_mode_switch_ext09_g27", i1 false, i1 false}
!162 = !{!"../drivers/hid/hid-lg4ff.c", i32 252, i32 46}
!163 = !{ptr @lg4ff_mode_switch_ext09_dfgt, !164, !"lg4ff_mode_switch_ext09_dfgt", i1 false, i1 false}
!164 = !{!"../drivers/hid/hid-lg4ff.c", i32 246, i32 46}
!165 = !{ptr @lg4ff_mode_switch_ext09_g29, !166, !"lg4ff_mode_switch_ext09_g29", i1 false, i1 false}
!166 = !{!"../drivers/hid/hid-lg4ff.c", i32 258, i32 46}
!167 = !{ptr @.str.93, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/hid/hid-lg4ff.c", i32 773, i32 3}
!169 = !{ptr @.str.94, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @lg4ff_switch_compatibility_mode._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @lg4ff_switch_compatibility_mode._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.96, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/hid/hid-lg4ff.c", i32 779, i32 3}
!174 = !{ptr @lg4ff_switch_compatibility_mode._entry.95, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @lg4ff_switch_compatibility_mode._entry_ptr.97, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @lg4ff_devices, !177, !"lg4ff_devices", i1 false, i1 false}
!177 = !{!"../drivers/hid/hid-lg4ff.c", i32 131, i32 33}
!178 = !{ptr @no_wheel_effects, !179, !"no_wheel_effects", i1 false, i1 false}
!179 = !{!"../drivers/hid/hid-lg4ff.c", i32 94, i32 27}
!180 = !{ptr @lg4ff_wheel_effects, !181, !"lg4ff_wheel_effects", i1 false, i1 false}
!181 = !{!"../drivers/hid/hid-lg4ff.c", i32 88, i32 27}
!182 = !{ptr @.str.98, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/hid/hid-lg4ff.c", i32 629, i32 3}
!184 = !{ptr @lg4ff_set_range_dfp._entry, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @lg4ff_set_range_dfp._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @lg4ff_set_range_dfp._entry.99, !187, !"_entry", i1 false, i1 false}
!187 = !{!"../drivers/hid/hid-lg4ff.c", i32 635, i32 3}
!188 = !{ptr @lg4ff_set_range_dfp._entry_ptr.100, !187, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.102, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/hid/hid-lg4ff.c", i32 639, i32 2}
!191 = !{ptr @lg4ff_set_range_dfp._entry.101, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @lg4ff_set_range_dfp._entry_ptr.103, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.104, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/hid/hid-lg4ff.c", i32 593, i32 3}
!195 = !{ptr @lg4ff_set_range_g25._entry, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @lg4ff_set_range_g25._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @lg4ff_set_range_g25._entry.105, !198, !"_entry", i1 false, i1 false}
!198 = !{!"../drivers/hid/hid-lg4ff.c", i32 599, i32 3}
!199 = !{ptr @lg4ff_set_range_g25._entry_ptr.106, !198, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.108, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/hid/hid-lg4ff.c", i32 603, i32 2}
!202 = !{ptr @lg4ff_set_range_g25._entry.107, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @lg4ff_set_range_g25._entry_ptr.109, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @lg4ff_multimode_wheels, !205, !"lg4ff_multimode_wheels", i1 false, i1 false}
!205 = !{!"../drivers/hid/hid-lg4ff.c", i32 145, i32 43}
!206 = !{ptr @.str.110, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/hid/hid-lg4ff.c", i32 417, i32 3}
!208 = !{ptr @lg4ff_play._entry, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @lg4ff_play._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @lg4ff_play._entry.111, !211, !"_entry", i1 false, i1 false}
!211 = !{!"../drivers/hid/hid-lg4ff.c", i32 423, i32 3}
!212 = !{ptr @lg4ff_play._entry_ptr.112, !211, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.113, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/hid/hid-lg4ff.c", i32 559, i32 3}
!215 = !{ptr @lg4ff_set_autocenter_ffex._entry, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @lg4ff_set_autocenter_ffex._entry_ptr, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @lg4ff_set_autocenter_ffex._entry.114, !218, !"_entry", i1 false, i1 false}
!218 = !{!"../drivers/hid/hid-lg4ff.c", i32 565, i32 3}
!219 = !{ptr @lg4ff_set_autocenter_ffex._entry_ptr.115, !218, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.116, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/hid/hid-lg4ff.c", i32 479, i32 3}
!222 = !{ptr @lg4ff_set_autocenter_default._entry, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @lg4ff_set_autocenter_default._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @lg4ff_set_autocenter_default._entry.117, !225, !"_entry", i1 false, i1 false}
!225 = !{!"../drivers/hid/hid-lg4ff.c", i32 485, i32 3}
!226 = !{ptr @lg4ff_set_autocenter_default._entry_ptr.118, !225, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.119, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/hid/hid-lg4ff.c", i32 983, i32 8}
!229 = !{ptr @dev_attr_combine_pedals, !228, !"dev_attr_combine_pedals", i1 false, i1 false}
!230 = !{ptr @.str.120, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/hid/hid-lg4ff.c", i32 943, i32 3}
!232 = !{ptr @lg4ff_combine_show._entry, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @lg4ff_combine_show._entry_ptr, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @lg4ff_combine_show._entry.121, !235, !"_entry", i1 false, i1 false}
!235 = !{!"../drivers/hid/hid-lg4ff.c", i32 949, i32 3}
!236 = !{ptr @lg4ff_combine_show._entry_ptr.122, !235, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.123, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/hid/hid-lg4ff.c", i32 953, i32 36}
!239 = !{ptr @.str.124, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/hid/hid-lg4ff.c", i32 967, i32 3}
!241 = !{ptr @lg4ff_combine_store._entry, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @lg4ff_combine_store._entry_ptr, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @lg4ff_combine_store._entry.125, !244, !"_entry", i1 false, i1 false}
!244 = !{!"../drivers/hid/hid-lg4ff.c", i32 973, i32 3}
!245 = !{ptr @lg4ff_combine_store._entry_ptr.126, !244, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.127, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/hid/hid-lg4ff.c", i32 1044, i32 8}
!248 = !{ptr @dev_attr_range, !247, !"dev_attr_range", i1 false, i1 false}
!249 = !{ptr @.str.128, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/hid/hid-lg4ff.c", i32 996, i32 3}
!251 = !{ptr @lg4ff_range_show._entry, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @lg4ff_range_show._entry_ptr, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @lg4ff_range_show._entry.129, !254, !"_entry", i1 false, i1 false}
!254 = !{!"../drivers/hid/hid-lg4ff.c", i32 1002, i32 3}
!255 = !{ptr @lg4ff_range_show._entry_ptr.130, !254, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.131, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/hid/hid-lg4ff.c", i32 1022, i32 3}
!258 = !{ptr @lg4ff_range_store._entry, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @lg4ff_range_store._entry_ptr, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @lg4ff_range_store._entry.132, !261, !"_entry", i1 false, i1 false}
!261 = !{!"../drivers/hid/hid-lg4ff.c", i32 1028, i32 3}
!262 = !{ptr @lg4ff_range_store._entry_ptr.133, !261, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.134, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/hid/hid-lg4ff.c", i32 1079, i32 8}
!265 = !{ptr @dev_attr_real_id, !264, !"dev_attr_real_id", i1 false, i1 false}
!266 = !{ptr @.str.135, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/hid/hid-lg4ff.c", i32 1055, i32 3}
!268 = !{ptr @lg4ff_real_id_show._entry, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @lg4ff_real_id_show._entry_ptr, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @lg4ff_real_id_show._entry.136, !271, !"_entry", i1 false, i1 false}
!271 = !{!"../drivers/hid/hid-lg4ff.c", i32 1061, i32 3}
!272 = !{ptr @lg4ff_real_id_show._entry_ptr.137, !271, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.139, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/hid/hid-lg4ff.c", i32 1066, i32 3}
!275 = !{ptr @lg4ff_real_id_show._entry.138, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @lg4ff_real_id_show._entry_ptr.140, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.141, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/hid/hid-lg4ff.c", i32 1070, i32 36}
!279 = !{ptr @.str.142, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/hid/hid-lg4ff.c", i32 931, i32 8}
!281 = !{ptr @dev_attr_alternate_modes, !280, !"dev_attr_alternate_modes", i1 false, i1 false}
!282 = !{ptr @.str.143, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/hid/hid-lg4ff.c", i32 808, i32 3}
!284 = !{ptr @lg4ff_alternate_modes_show._entry, !283, !"_entry", i1 false, i1 false}
!285 = !{ptr @lg4ff_alternate_modes_show._entry_ptr, !283, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @lg4ff_alternate_modes_show._entry.144, !287, !"_entry", i1 false, i1 false}
!287 = !{!"../drivers/hid/hid-lg4ff.c", i32 814, i32 3}
!288 = !{ptr @lg4ff_alternate_modes_show._entry_ptr.145, !287, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @lg4ff_alternate_modes_show._entry.146, !290, !"_entry", i1 false, i1 false}
!290 = !{!"../drivers/hid/hid-lg4ff.c", i32 819, i32 3}
!291 = !{ptr @lg4ff_alternate_modes_show._entry_ptr.147, !290, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.148, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/hid/hid-lg4ff.c", i32 826, i32 55}
!294 = !{ptr @.str.149, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/hid/hid-lg4ff.c", i32 835, i32 56}
!296 = !{ptr @.str.150, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/hid/hid-lg4ff.c", i32 837, i32 56}
!298 = !{ptr @.str.151, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/hid/hid-lg4ff.c", i32 859, i32 3}
!300 = !{ptr @lg4ff_alternate_modes_store._entry, !299, !"_entry", i1 false, i1 false}
!301 = !{ptr @lg4ff_alternate_modes_store._entry_ptr, !299, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @lg4ff_alternate_modes_store._entry.152, !303, !"_entry", i1 false, i1 false}
!303 = !{!"../drivers/hid/hid-lg4ff.c", i32 865, i32 3}
!304 = !{ptr @lg4ff_alternate_modes_store._entry_ptr.153, !303, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.154, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/hid/hid-lg4ff.c", i32 870, i32 31}
!307 = !{ptr @.str.156, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/hid/hid-lg4ff.c", i32 899, i32 3}
!309 = !{ptr @lg4ff_alternate_modes_store._entry.155, !308, !"_entry", i1 false, i1 false}
!310 = !{ptr @lg4ff_alternate_modes_store._entry_ptr.157, !308, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.159, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/hid/hid-lg4ff.c", i32 910, i32 3}
!313 = !{ptr @lg4ff_alternate_modes_store._entry.158, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @lg4ff_alternate_modes_store._entry_ptr.160, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.162, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/hid/hid-lg4ff.c", i32 918, i32 3}
!317 = !{ptr @lg4ff_alternate_modes_store._entry.161, !316, !"_entry", i1 false, i1 false}
!318 = !{ptr @lg4ff_alternate_modes_store._entry_ptr.163, !316, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.165, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/hid/hid-lg4ff.c", i32 924, i32 3}
!321 = !{ptr @lg4ff_alternate_modes_store._entry.164, !320, !"_entry", i1 false, i1 false}
!322 = !{ptr @lg4ff_alternate_modes_store._entry_ptr.166, !320, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.167, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/hid/hid-lg4ff.c", i32 1091, i32 3}
!325 = !{ptr @lg4ff_set_leds._entry, !324, !"_entry", i1 false, i1 false}
!326 = !{ptr @lg4ff_set_leds._entry_ptr, !324, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @lg4ff_set_leds._entry.168, !328, !"_entry", i1 false, i1 false}
!328 = !{!"../drivers/hid/hid-lg4ff.c", i32 1097, i32 3}
!329 = !{ptr @lg4ff_set_leds._entry_ptr.169, !328, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @.str.170, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/hid/hid-lg4ff.c", i32 1159, i32 3}
!332 = !{ptr @.str.171, !331, !"<string literal>", i1 false, i1 false}
!333 = !{ptr @lg4ff_led_get_brightness._entry, !331, !"_entry", i1 false, i1 false}
!334 = !{ptr @lg4ff_led_get_brightness._entry_ptr, !331, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.173, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/hid/hid-lg4ff.c", i32 1166, i32 3}
!337 = !{ptr @lg4ff_led_get_brightness._entry.172, !336, !"_entry", i1 false, i1 false}
!338 = !{ptr @lg4ff_led_get_brightness._entry_ptr.174, !336, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @.str.175, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/hid/hid-lg4ff.c", i32 1124, i32 3}
!341 = !{ptr @lg4ff_led_set_brightness._entry, !340, !"_entry", i1 false, i1 false}
!342 = !{ptr @lg4ff_led_set_brightness._entry_ptr, !340, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @lg4ff_led_set_brightness._entry.176, !344, !"_entry", i1 false, i1 false}
!344 = !{!"../drivers/hid/hid-lg4ff.c", i32 1131, i32 3}
!345 = !{ptr @lg4ff_led_set_brightness._entry_ptr.177, !344, !"_entry_ptr", i1 false, i1 false}
!346 = !{i32 1, !"wchar_size", i32 2}
!347 = !{i32 1, !"min_enum_size", i32 4}
!348 = !{i32 8, !"branch-target-enforcement", i32 0}
!349 = !{i32 8, !"sign-return-address", i32 0}
!350 = !{i32 8, !"sign-return-address-all", i32 0}
!351 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!352 = !{i32 7, !"uwtable", i32 1}
!353 = !{i32 7, !"frame-pointer", i32 2}
!354 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
