; ModuleID = '/llk/IR_all_yes/drivers/greybus/control.c_pt.bc'
source_filename = "../drivers/greybus/control.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.gb_control = type { %struct.device, ptr, ptr, i8, i8, i8, i8, ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.gb_connection = type { ptr, ptr, ptr, %struct.kref, i16, i16, %struct.list_head, %struct.list_head, ptr, i32, %struct.mutex, %struct.spinlock, i32, %struct.list_head, [16 x i8], ptr, %struct.atomic_t, ptr, i8 }
%struct.gb_interface = type { %struct.device, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i8, i8, i8, i32, i32, i32, i32, i32, i64, ptr, ptr, i32, %struct.mutex, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, %struct.completion }
%struct.gb_control_bundle_version_request = type { i8 }
%struct.gb_control_bundle_version_response = type { i8, i8 }
%struct.gb_bundle = type { %struct.device, ptr, i8, i8, i8, i8, i32, ptr, %struct.list_head, ptr, %struct.list_head }
%struct.gb_control_get_manifest_size_response = type { i16 }
%struct.gb_control_connected_request = type { i16 }
%struct.gb_control_disconnected_request = type { i16 }
%struct.gb_operation = type { ptr, ptr, ptr, i32, i8, i16, i32, %struct.work_struct, ptr, %struct.completion, %struct.timer_list, %struct.kref, %struct.atomic_t, i32, %struct.list_head, ptr }
%struct.gb_message = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gb_control_bundle_pm_request = type { i8 }
%struct.gb_control_bundle_pm_response = type { i8 }
%struct.gb_control_intf_pm_response = type { i8 }
%struct.gb_control_version_request = type { i8, i8 }
%struct.gb_control_version_response = type { i8, i8 }

@gb_control_get_manifest_size_operation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 114, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to get manifest size: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"gb_control_get_manifest_size_operation\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/greybus/control.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gb_control_get_manifest_size_operation._entry_ptr = internal global ptr @gb_control_get_manifest_size_operation._entry, section ".printk_index", align 4
@gb_control_disconnecting_operation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 170, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to send disconnecting: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"gb_control_disconnecting_operation\00", [61 x i8] zeroinitializer }, align 32
@gb_control_disconnecting_operation._entry_ptr = internal global ptr @gb_control_disconnecting_operation._entry, section ".printk_index", align 4
@gb_control_mode_switch_operation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 193, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to send mode switch: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"gb_control_mode_switch_operation\00", [63 x i8] zeroinitializer }, align 32
@gb_control_mode_switch_operation._entry_ptr = internal global ptr @gb_control_mode_switch_operation._entry, section ".printk_index", align 4
@gb_control_bundle_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 227, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to send bundle %u suspend: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"gb_control_bundle_suspend\00", [38 x i8] zeroinitializer }, align 32
@gb_control_bundle_suspend._entry_ptr = internal global ptr @gb_control_bundle_suspend._entry, section ".printk_index", align 4
@gb_control_bundle_suspend._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 233, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to suspend bundle %u: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@gb_control_bundle_suspend._entry_ptr.13 = internal global ptr @gb_control_bundle_suspend._entry.11, section ".printk_index", align 4
@gb_control_bundle_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 252, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to send bundle %u resume: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"gb_control_bundle_resume\00", [39 x i8] zeroinitializer }, align 32
@gb_control_bundle_resume._entry_ptr = internal global ptr @gb_control_bundle_resume._entry, section ".printk_index", align 4
@gb_control_bundle_resume._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 258, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to resume bundle %u: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@gb_control_bundle_resume._entry_ptr.18 = internal global ptr @gb_control_bundle_resume._entry.16, section ".printk_index", align 4
@gb_control_bundle_deactivate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 278, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to send bundle %u deactivate: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"gb_control_bundle_deactivate\00", [35 x i8] zeroinitializer }, align 32
@gb_control_bundle_deactivate._entry_ptr = internal global ptr @gb_control_bundle_deactivate._entry, section ".printk_index", align 4
@gb_control_bundle_deactivate._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 284, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to deactivate bundle %u: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@gb_control_bundle_deactivate._entry_ptr.23 = internal global ptr @gb_control_bundle_deactivate._entry.21, section ".printk_index", align 4
@gb_control_bundle_activate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 307, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to send bundle %u activate: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"gb_control_bundle_activate\00", [37 x i8] zeroinitializer }, align 32
@gb_control_bundle_activate._entry_ptr = internal global ptr @gb_control_bundle_activate._entry, section ".printk_index", align 4
@gb_control_bundle_activate._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 313, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to activate bundle %u: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@gb_control_bundle_activate._entry_ptr.28 = internal global ptr @gb_control_bundle_activate._entry.26, section ".printk_index", align 4
@gb_control_interface_suspend_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 342, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"failed to send interface suspend prepare: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"gb_control_interface_suspend_prepare\00", [59 x i8] zeroinitializer }, align 32
@gb_control_interface_suspend_prepare._entry_ptr = internal global ptr @gb_control_interface_suspend_prepare._entry, section ".printk_index", align 4
@gb_control_interface_suspend_prepare._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 348, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"interface error while preparing suspend: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@gb_control_interface_suspend_prepare._entry_ptr.33 = internal global ptr @gb_control_interface_suspend_prepare._entry.31, section ".printk_index", align 4
@gb_control_interface_deactivate_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 365, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"failed to send interface deactivate prepare: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"gb_control_interface_deactivate_prepare\00", [56 x i8] zeroinitializer }, align 32
@gb_control_interface_deactivate_prepare._entry_ptr = internal global ptr @gb_control_interface_deactivate_prepare._entry, section ".printk_index", align 4
@gb_control_interface_deactivate_prepare._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.2, i32 371, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"interface error while preparing deactivate: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@gb_control_interface_deactivate_prepare._entry_ptr.38 = internal global ptr @gb_control_interface_deactivate_prepare._entry.36, section ".printk_index", align 4
@gb_control_interface_hibernate_abort._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 389, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"failed to send interface aborting hibernate: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"gb_control_interface_hibernate_abort\00", [59 x i8] zeroinitializer }, align 32
@gb_control_interface_hibernate_abort._entry_ptr = internal global ptr @gb_control_interface_hibernate_abort._entry, section ".printk_index", align 4
@gb_control_interface_hibernate_abort._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.2, i32 395, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"interface error while aborting hibernate: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@gb_control_interface_hibernate_abort._entry_ptr.43 = internal global ptr @gb_control_interface_hibernate_abort._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"greybus_control\00", [16 x i8] zeroinitializer }, align 32
@greybus_control_type = dso_local global { %struct.device_type, [40 x i8] } { %struct.device_type { ptr @.str.44, ptr null, ptr null, ptr null, ptr @gb_control_release, ptr null }, [40 x i8] zeroinitializer }, align 32
@gb_control_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 459, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to create control connection: %ld\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gb_control_create\00", [46 x i8] zeroinitializer }, align 32
@gb_control_create._entry_ptr = internal global ptr @gb_control_create._entry, section ".printk_index", align 4
@greybus_bus_type = external dso_local global %struct.bus_type, align 4
@control_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @control_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s.ctrl\00", [24 x i8] zeroinitializer }, align 32
@gb_control_enable.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.49, ptr @.str.2, ptr @.str.50, i8 0, i8 120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"greybus\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gb_control_enable\00", [46 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@gb_control_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.2, i32 489, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to enable control connection: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@gb_control_enable._entry_ptr = internal global ptr @gb_control_enable._entry, section ".printk_index", align 4
@gb_control_disable.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.52, ptr @.str.2, ptr @.str.50, i8 0, i8 -128, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gb_control_disable\00", [45 x i8] zeroinitializer }, align 32
@gb_control_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.53, ptr @.str.2, i32 536, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gb_control_resume\00", [46 x i8] zeroinitializer }, align 32
@gb_control_resume._entry_ptr = internal global ptr @gb_control_resume._entry, section ".printk_index", align 4
@gb_control_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 551, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to register control device: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gb_control_add\00", [17 x i8] zeroinitializer }, align 32
@gb_control_add._entry_ptr = internal global ptr @gb_control_add._entry, section ".printk_index", align 4
@gb_control_get_bundle_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 72, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to get bundle %u class version: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"gb_control_get_bundle_version\00", [34 x i8] zeroinitializer }, align 32
@gb_control_get_bundle_version._entry_ptr = internal global ptr @gb_control_get_bundle_version._entry, section ".printk_index", align 4
@gb_control_get_bundle_version.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.57, ptr @.str.2, ptr @.str.58, i8 0, i8 20, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s - %u: %u.%u\0A\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@control_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @control_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@control_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_vendor_string, ptr @dev_attr_product_string, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_vendor_string = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @vendor_string_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_product_string = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @product_string_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vendor_string\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"product_string\00", [17 x i8] zeroinitializer }, align 32
@gb_control_get_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 35, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to get control-protocol version: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gb_control_get_version\00", [41 x i8] zeroinitializer }, align 32
@gb_control_get_version._entry_ptr = internal global ptr @gb_control_get_version._entry, section ".printk_index", align 4
@gb_control_get_version._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.2, i32 42, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"unsupported major control-protocol version (%u > %u)\0A\00", [42 x i8] zeroinitializer }, align 32
@gb_control_get_version._entry_ptr.65 = internal global ptr @gb_control_get_version._entry.63, section ".printk_index", align 4
@gb_control_get_version.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.62, ptr @.str.2, ptr @.str.66, i8 0, i8 12, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s - %u.%u\0A\00", [20 x i8] zeroinitializer }, align 32
@switch.table.gb_control_bundle_suspend = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 -22, i32 -16, i32 -121, i32 -42], [16 x i8] zeroinitializer }, align 32
@switch.table.gb_control_bundle_resume = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 -22, i32 -16, i32 -121, i32 -42], [16 x i8] zeroinitializer }, align 32
@switch.table.gb_control_bundle_deactivate = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 -22, i32 -16, i32 -121, i32 -42], [16 x i8] zeroinitializer }, align 32
@switch.table.gb_control_bundle_activate = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 -22, i32 -16, i32 -121, i32 -42], [16 x i8] zeroinitializer }, align 32
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 113, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 169, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 193, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 226, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 232, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 251, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 257, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 276, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 283, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 305, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 312, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 341, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 347, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 364, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 370, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 387, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 394, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 440, i32 11 }
@___asan_gen_.211 = private unnamed_addr constant [21 x i8] c"greybus_control_type\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 439, i32 20 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 457, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant [15 x i8] c"control_groups\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 472, i32 30 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 483, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 487, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 514, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 535, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 549, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 70, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 79, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant [14 x i8] c"control_group\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 425, i32 1 }
@___asan_gen_.277 = private unnamed_addr constant [14 x i8] c"control_attrs\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 420, i32 26 }
@___asan_gen_.280 = private unnamed_addr constant [23 x i8] c"dev_attr_vendor_string\00", align 1
@___asan_gen_.283 = private unnamed_addr constant [24 x i8] c"dev_attr_product_string\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 409, i32 8 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 418, i32 8 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 33, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 40, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.308 = private constant [29 x i8] c"../drivers/greybus/control.c\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 49, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant [39 x i8] c"switch.table.gb_control_bundle_suspend\00", align 1
@___asan_gen_.311 = private unnamed_addr constant [38 x i8] c"switch.table.gb_control_bundle_resume\00", align 1
@___asan_gen_.312 = private unnamed_addr constant [42 x i8] c"switch.table.gb_control_bundle_deactivate\00", align 1
@___asan_gen_.313 = private unnamed_addr constant [40 x i8] c"switch.table.gb_control_bundle_activate\00", align 1
@llvm.compiler.used = appending global [109 x ptr] [ptr @gb_control_add._entry, ptr @gb_control_add._entry_ptr, ptr @gb_control_bundle_activate._entry, ptr @gb_control_bundle_activate._entry.26, ptr @gb_control_bundle_activate._entry_ptr, ptr @gb_control_bundle_activate._entry_ptr.28, ptr @gb_control_bundle_deactivate._entry, ptr @gb_control_bundle_deactivate._entry.21, ptr @gb_control_bundle_deactivate._entry_ptr, ptr @gb_control_bundle_deactivate._entry_ptr.23, ptr @gb_control_bundle_resume._entry, ptr @gb_control_bundle_resume._entry.16, ptr @gb_control_bundle_resume._entry_ptr, ptr @gb_control_bundle_resume._entry_ptr.18, ptr @gb_control_bundle_suspend._entry, ptr @gb_control_bundle_suspend._entry.11, ptr @gb_control_bundle_suspend._entry_ptr, ptr @gb_control_bundle_suspend._entry_ptr.13, ptr @gb_control_create._entry, ptr @gb_control_create._entry_ptr, ptr @gb_control_disconnecting_operation._entry, ptr @gb_control_disconnecting_operation._entry_ptr, ptr @gb_control_enable._entry, ptr @gb_control_enable._entry_ptr, ptr @gb_control_get_bundle_version._entry, ptr @gb_control_get_bundle_version._entry_ptr, ptr @gb_control_get_manifest_size_operation._entry, ptr @gb_control_get_manifest_size_operation._entry_ptr, ptr @gb_control_get_version._entry, ptr @gb_control_get_version._entry.63, ptr @gb_control_get_version._entry_ptr, ptr @gb_control_get_version._entry_ptr.65, ptr @gb_control_interface_deactivate_prepare._entry, ptr @gb_control_interface_deactivate_prepare._entry.36, ptr @gb_control_interface_deactivate_prepare._entry_ptr, ptr @gb_control_interface_deactivate_prepare._entry_ptr.38, ptr @gb_control_interface_hibernate_abort._entry, ptr @gb_control_interface_hibernate_abort._entry.41, ptr @gb_control_interface_hibernate_abort._entry_ptr, ptr @gb_control_interface_hibernate_abort._entry_ptr.43, ptr @gb_control_interface_suspend_prepare._entry, ptr @gb_control_interface_suspend_prepare._entry.31, ptr @gb_control_interface_suspend_prepare._entry_ptr, ptr @gb_control_interface_suspend_prepare._entry_ptr.33, ptr @gb_control_mode_switch_operation._entry, ptr @gb_control_mode_switch_operation._entry_ptr, ptr @gb_control_resume._entry, ptr @gb_control_resume._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @greybus_control_type, ptr @.str.45, ptr @.str.46, ptr @control_groups, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @control_group, ptr @control_attrs, ptr @dev_attr_vendor_string, ptr @dev_attr_product_string, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @switch.table.gb_control_bundle_suspend, ptr @switch.table.gb_control_bundle_resume, ptr @switch.table.gb_control_bundle_deactivate, ptr @switch.table.gb_control_bundle_activate], section "llvm.metadata"
@0 = internal global [85 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_control_get_manifest_size_operation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_control_disconnecting_operation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_control_mode_switch_operation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_control_bundle_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_control_bundle_suspend._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_control_bundle_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_control_bundle_resume._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_control_bundle_deactivate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_control_bundle_deactivate._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_control_bundle_activate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_control_bundle_activate._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_control_interface_suspend_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_control_interface_suspend_prepare._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_control_interface_deactivate_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_control_interface_deactivate_prepare._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_control_interface_hibernate_abort._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_control_interface_hibernate_abort._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @greybus_control_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_control_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @control_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_control_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_control_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_control_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_control_get_bundle_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @control_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @control_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vendor_string to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_product_string to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_control_get_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_control_get_version._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gb_control_bundle_suspend to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gb_control_bundle_resume to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gb_control_bundle_deactivate to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gb_control_bundle_activate to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_control_get_bundle_versions(ptr nocapture noundef readonly %control) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %has_bundle_version = getelementptr inbounds %struct.gb_control, ptr %control, i32 0, i32 6
  %0 = ptrtoint ptr %has_bundle_version to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %has_bundle_version, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %connection = getelementptr inbounds %struct.gb_control, ptr %control, i32 0, i32 2
  %2 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connection, align 4
  %intf1 = getelementptr inbounds %struct.gb_connection, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf1, align 4
  %bundles = getelementptr inbounds %struct.gb_interface, ptr %5, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ %bundles, %if.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %6 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %bundles
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %bundle.0 = getelementptr i8, ptr %.pn, i32 -956
  %call = tail call fastcc i32 @gb_control_get_bundle_version(ptr noundef %control, ptr noundef %bundle.0)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %for.body.for.cond_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gb_control_get_bundle_version(ptr nocapture noundef readonly %control, ptr nocapture noundef %bundle) unnamed_addr #0 align 64 {
entry:
  %request = alloca %struct.gb_control_bundle_version_request, align 1
  %response = alloca %struct.gb_control_bundle_version_response, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %connection = getelementptr inbounds %struct.gb_control, ptr %control, i32 0, i32 2
  %0 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connection, align 4
  %intf1 = getelementptr inbounds %struct.gb_connection, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %request) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %response) #6
  %4 = ptrtoint ptr %response to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %response, align 1, !annotation !154
  %5 = getelementptr inbounds %struct.gb_control_bundle_version_response, ptr %response, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !154
  %id = getelementptr inbounds %struct.gb_bundle, ptr %bundle, i32 0, i32 2
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %id, align 4
  %9 = ptrtoint ptr %request to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %request, align 1
  %call.i = call i32 @gb_operation_sync_timeout(ptr noundef %1, i32 noundef 11, ptr noundef nonnull %request, i32 noundef 1, ptr noundef nonnull %response, i32 noundef 2, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %id, align 4
  %conv = zext i8 %11 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.56, i32 noundef %conv, i32 noundef %call.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %response, align 1
  %class_major = getelementptr inbounds %struct.gb_bundle, ptr %bundle, i32 0, i32 4
  %14 = ptrtoint ptr %class_major to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %class_major, align 2
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %5, align 1
  %class_minor = getelementptr inbounds %struct.gb_bundle, ptr %bundle, i32 0, i32 5
  %17 = ptrtoint ptr %class_minor to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %class_minor, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gb_control_get_bundle_version.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gb_control_get_bundle_version, %if.then9)) #6
          to label %cleanup [label %if.then9], !srcloc !155

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %id, align 4
  %conv12 = zext i8 %19 to i32
  %20 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %response, align 1
  %conv14 = zext i8 %21 to i32
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %5, align 1
  %conv16 = zext i8 %23 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gb_control_get_bundle_version.__UNIQUE_ID_ddebug230, ptr noundef %3, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.57, i32 noundef %conv12, i32 noundef %conv14, i32 noundef %conv16) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %response) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %request) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_control_get_manifest_size_operation(ptr nocapture noundef readonly %intf) local_unnamed_addr #0 align 64 {
entry:
  %response = alloca %struct.gb_control_get_manifest_size_response, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %response) #6
  %0 = ptrtoint ptr %response to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %response, align 2, !annotation !154
  %control = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 1
  %1 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %control, align 8
  %connection1 = getelementptr inbounds %struct.gb_control, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %connection1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %connection1, align 4
  %call.i = call i32 @gb_operation_sync_timeout(ptr noundef %4, i32 noundef 3, ptr noundef null, i32 noundef 0, ptr noundef nonnull %response, i32 noundef 2, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %intf2 = getelementptr inbounds %struct.gb_connection, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %intf2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %intf2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str, i32 noundef %call.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %response to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %response, align 2
  %9 = call i16 @llvm.bswap.i16(i16 %8)
  %conv = zext i16 %9 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %conv, %if.end ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %response) #6
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_control_get_manifest_operation(ptr nocapture noundef readonly %intf, ptr noundef %manifest, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %control = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 1
  %0 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %control, align 8
  %connection1 = getelementptr inbounds %struct.gb_control, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %connection1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connection1, align 4
  %call.i = tail call i32 @gb_operation_sync_timeout(ptr noundef %3, i32 noundef 4, ptr noundef null, i32 noundef 0, ptr noundef %manifest, i32 noundef %size, i32 noundef 1000) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_control_connected_operation(ptr nocapture noundef readonly %control, i16 noundef zeroext %cport_id) local_unnamed_addr #0 align 64 {
entry:
  %request = alloca %struct.gb_control_connected_request, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %request) #6
  %0 = tail call i16 @llvm.bswap.i16(i16 %cport_id)
  %1 = ptrtoint ptr %request to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %0, ptr %request, align 2
  %connection = getelementptr inbounds %struct.gb_control, ptr %control, i32 0, i32 2
  %2 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connection, align 4
  %call.i = call i32 @gb_operation_sync_timeout(ptr noundef %3, i32 noundef 5, ptr noundef nonnull %request, i32 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 1000) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %request) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_control_disconnected_operation(ptr nocapture noundef readonly %control, i16 noundef zeroext %cport_id) local_unnamed_addr #0 align 64 {
entry:
  %request = alloca %struct.gb_control_disconnected_request, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %request) #6
  %0 = tail call i16 @llvm.bswap.i16(i16 %cport_id)
  %1 = ptrtoint ptr %request to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %0, ptr %request, align 2
  %connection = getelementptr inbounds %struct.gb_control, ptr %control, i32 0, i32 2
  %2 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connection, align 4
  %call.i = call i32 @gb_operation_sync_timeout(ptr noundef %3, i32 noundef 6, ptr noundef nonnull %request, i32 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 1000) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %request) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_control_disconnecting_operation(ptr noundef %control, i16 noundef zeroext %cport_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %connection = getelementptr inbounds %struct.gb_control, ptr %control, i32 0, i32 2
  %0 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connection, align 4
  %call = tail call ptr @gb_operation_create_core(ptr noundef %1, i8 noundef zeroext 12, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef 3264) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %request1 = getelementptr inbounds %struct.gb_operation, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %request1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %request1, align 4
  %payload = getelementptr inbounds %struct.gb_message, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %payload, align 4
  %6 = tail call i16 @llvm.bswap.i16(i16 %cport_id)
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %6, ptr %5, align 1
  %call.i = tail call i32 @gb_operation_request_send_sync_timeout(ptr noundef nonnull %call, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %do.end

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %control, ptr noundef nonnull @.str.5, i32 noundef %call.i) #9
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.end.if.end6_crit_edge
  tail call void @gb_operation_put(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end6 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gb_operation_create_core(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_operation_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_control_mode_switch_operation(ptr noundef %control) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %connection = getelementptr inbounds %struct.gb_control, ptr %control, i32 0, i32 2
  %0 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connection, align 4
  %call = tail call ptr @gb_operation_create_core(ptr noundef %1, i8 noundef zeroext 14, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 3264) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @gb_operation_request_send_sync_timeout(ptr noundef nonnull %call, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %do.end

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %control, ptr noundef nonnull @.str.7, i32 noundef %call.i) #9
  br label %if.end4

if.end4:                                          ; preds = %do.end, %if.end.if.end4_crit_edge
  tail call void @gb_operation_put(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end4 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_control_bundle_suspend(ptr noundef %control, i8 noundef zeroext %bundle_id) local_unnamed_addr #0 align 64 {
entry:
  %request = alloca %struct.gb_control_bundle_pm_request, align 1
  %response = alloca %struct.gb_control_bundle_pm_response, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %request) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %response) #6
  %0 = ptrtoint ptr %response to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %response, align 1, !annotation !154
  %1 = ptrtoint ptr %request to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %bundle_id, ptr %request, align 1
  %connection = getelementptr inbounds %struct.gb_control, ptr %control, i32 0, i32 2
  %2 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connection, align 4
  %call.i = call i32 @gb_operation_sync_timeout(ptr noundef %3, i32 noundef 15, ptr noundef nonnull %request, i32 noundef 1, ptr noundef nonnull %response, i32 noundef 1, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %bundle_id to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %control, ptr noundef nonnull @.str.9, i32 noundef %conv, i32 noundef %call.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %response, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %do.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end7:                                          ; preds = %if.end
  %conv2 = zext i8 %5 to i32
  %conv9 = zext i8 %bundle_id to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %control, ptr noundef nonnull @.str.12, i32 noundef %conv9, i32 noundef %conv2) #9
  %6 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %response, align 1
  %switch.tableidx = add i8 %7, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %8 = icmp ult i8 %switch.tableidx, 4
  br i1 %8, label %switch.lookup, label %do.end7.cleanup_crit_edge

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  %9 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.gb_control_bundle_suspend, i32 0, i32 %9
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %do.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ %switch.load, %switch.lookup ], [ -121, %do.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %response) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %request) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_control_bundle_resume(ptr noundef %control, i8 noundef zeroext %bundle_id) local_unnamed_addr #0 align 64 {
entry:
  %request = alloca %struct.gb_control_bundle_pm_request, align 1
  %response = alloca %struct.gb_control_bundle_pm_response, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %request) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %response) #6
  %0 = ptrtoint ptr %response to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %response, align 1, !annotation !154
  %1 = ptrtoint ptr %request to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %bundle_id, ptr %request, align 1
  %connection = getelementptr inbounds %struct.gb_control, ptr %control, i32 0, i32 2
  %2 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connection, align 4
  %call.i = call i32 @gb_operation_sync_timeout(ptr noundef %3, i32 noundef 16, ptr noundef nonnull %request, i32 noundef 1, ptr noundef nonnull %response, i32 noundef 1, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %bundle_id to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %control, ptr noundef nonnull @.str.14, i32 noundef %conv, i32 noundef %call.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %response, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %do.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end7:                                          ; preds = %if.end
  %conv2 = zext i8 %5 to i32
  %conv9 = zext i8 %bundle_id to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %control, ptr noundef nonnull @.str.17, i32 noundef %conv9, i32 noundef %conv2) #9
  %6 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %response, align 1
  %switch.tableidx = add i8 %7, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %8 = icmp ult i8 %switch.tableidx, 4
  br i1 %8, label %switch.lookup, label %do.end7.cleanup_crit_edge

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  %9 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.gb_control_bundle_resume, i32 0, i32 %9
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %do.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ %switch.load, %switch.lookup ], [ -121, %do.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %response) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %request) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_control_bundle_deactivate(ptr noundef %control, i8 noundef zeroext %bundle_id) local_unnamed_addr #0 align 64 {
entry:
  %request = alloca %struct.gb_control_bundle_pm_request, align 1
  %response = alloca %struct.gb_control_bundle_pm_response, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %request) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %response) #6
  %0 = ptrtoint ptr %response to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %response, align 1, !annotation !154
  %1 = ptrtoint ptr %request to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %bundle_id, ptr %request, align 1
  %connection = getelementptr inbounds %struct.gb_control, ptr %control, i32 0, i32 2
  %2 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connection, align 4
  %call.i = call i32 @gb_operation_sync_timeout(ptr noundef %3, i32 noundef 17, ptr noundef nonnull %request, i32 noundef 1, ptr noundef nonnull %response, i32 noundef 1, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %bundle_id to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %control, ptr noundef nonnull @.str.19, i32 noundef %conv, i32 noundef %call.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %response, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %do.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end7:                                          ; preds = %if.end
  %conv2 = zext i8 %5 to i32
  %conv9 = zext i8 %bundle_id to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %control, ptr noundef nonnull @.str.22, i32 noundef %conv9, i32 noundef %conv2) #9
  %6 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %response, align 1
  %switch.tableidx = add i8 %7, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %8 = icmp ult i8 %switch.tableidx, 4
  br i1 %8, label %switch.lookup, label %do.end7.cleanup_crit_edge

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  %9 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.gb_control_bundle_deactivate, i32 0, i32 %9
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %do.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ %switch.load, %switch.lookup ], [ -121, %do.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %response) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %request) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_control_bundle_activate(ptr noundef %control, i8 noundef zeroext %bundle_id) local_unnamed_addr #0 align 64 {
entry:
  %request = alloca %struct.gb_control_bundle_pm_request, align 1
  %response = alloca %struct.gb_control_bundle_pm_response, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %request) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %response) #6
  %0 = ptrtoint ptr %response to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %response, align 1, !annotation !154
  %has_bundle_activate = getelementptr inbounds %struct.gb_control, ptr %control, i32 0, i32 5
  %1 = ptrtoint ptr %has_bundle_activate to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %has_bundle_activate, align 2, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %request to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %bundle_id, ptr %request, align 1
  %connection = getelementptr inbounds %struct.gb_control, ptr %control, i32 0, i32 2
  %4 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %connection, align 4
  %call.i = call i32 @gb_operation_sync_timeout(ptr noundef %5, i32 noundef 18, ptr noundef nonnull %request, i32 noundef 1, ptr noundef nonnull %response, i32 noundef 1, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %bundle_id to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %control, ptr noundef nonnull @.str.24, i32 noundef %conv, i32 noundef %call.i) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %6 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %response, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.not = icmp eq i8 %7, 0
  br i1 %cmp.not, label %if.end4.cleanup_crit_edge, label %do.end10

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end10:                                         ; preds = %if.end4
  %conv5 = zext i8 %7 to i32
  %conv12 = zext i8 %bundle_id to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %control, ptr noundef nonnull @.str.27, i32 noundef %conv12, i32 noundef %conv5) #9
  %8 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %response, align 1
  %switch.tableidx = add i8 %9, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %10 = icmp ult i8 %switch.tableidx, 4
  br i1 %10, label %switch.lookup, label %do.end10.cleanup_crit_edge

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #8
  %11 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.gb_control_bundle_activate, i32 0, i32 %11
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %do.end10.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ %switch.load, %switch.lookup ], [ -121, %do.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %response) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %request) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_control_interface_suspend_prepare(ptr noundef %control) local_unnamed_addr #0 align 64 {
entry:
  %response = alloca %struct.gb_control_intf_pm_response, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %response) #6
  %0 = ptrtoint ptr %response to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %response, align 1, !annotation !154
  %connection = getelementptr inbounds %struct.gb_control, ptr %control, i32 0, i32 2
  %1 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %connection, align 4
  %call.i = call i32 @gb_operation_sync_timeout(ptr noundef %2, i32 noundef 19, ptr noundef null, i32 noundef 0, ptr noundef nonnull %response, i32 noundef 1, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %control, ptr noundef nonnull @.str.29, i32 noundef %call.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %response, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp.not = icmp eq i8 %4, 0
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %do.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %4 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %control, ptr noundef nonnull @.str.32, i32 noundef %conv) #9
  %5 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %response, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %switch.selectcmp.i = icmp eq i8 %6, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 -42, i32 -121
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %switch.selectcmp2.i = icmp eq i8 %6, 1
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 -16, i32 %switch.select.i
  br label %cleanup

cleanup:                                          ; preds = %do.end5, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %switch.select3.i, %do.end5 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %response) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_control_interface_deactivate_prepare(ptr noundef %control) local_unnamed_addr #0 align 64 {
entry:
  %response = alloca %struct.gb_control_intf_pm_response, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %response) #6
  %0 = ptrtoint ptr %response to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %response, align 1, !annotation !154
  %connection = getelementptr inbounds %struct.gb_control, ptr %control, i32 0, i32 2
  %1 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %connection, align 4
  %call.i = call i32 @gb_operation_sync_timeout(ptr noundef %2, i32 noundef 20, ptr noundef null, i32 noundef 0, ptr noundef nonnull %response, i32 noundef 1, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %control, ptr noundef nonnull @.str.34, i32 noundef %call.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %response, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp.not = icmp eq i8 %4, 0
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %do.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %4 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %control, ptr noundef nonnull @.str.37, i32 noundef %conv) #9
  %5 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %response, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %switch.selectcmp.i = icmp eq i8 %6, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 -42, i32 -121
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %switch.selectcmp2.i = icmp eq i8 %6, 1
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 -16, i32 %switch.select.i
  br label %cleanup

cleanup:                                          ; preds = %do.end5, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %switch.select3.i, %do.end5 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %response) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_control_interface_hibernate_abort(ptr noundef %control) local_unnamed_addr #0 align 64 {
entry:
  %response = alloca %struct.gb_control_intf_pm_response, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %response) #6
  %0 = ptrtoint ptr %response to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %response, align 1, !annotation !154
  %connection = getelementptr inbounds %struct.gb_control, ptr %control, i32 0, i32 2
  %1 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %connection, align 4
  %call.i = call i32 @gb_operation_sync_timeout(ptr noundef %2, i32 noundef 21, ptr noundef null, i32 noundef 0, ptr noundef nonnull %response, i32 noundef 1, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %control, ptr noundef nonnull @.str.39, i32 noundef %call.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %response, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp.not = icmp eq i8 %4, 0
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %do.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %4 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %control, ptr noundef nonnull @.str.42, i32 noundef %conv) #9
  %5 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %response, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %switch.selectcmp.i = icmp eq i8 %6, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 -42, i32 -121
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %switch.selectcmp2.i = icmp eq i8 %6, 1
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 -16, i32 %switch.select.i
  br label %cleanup

cleanup:                                          ; preds = %do.end5, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %switch.select3.i, %do.end5 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %response) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_control_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %connection = getelementptr inbounds %struct.gb_control, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connection, align 4
  tail call void @gb_connection_destroy(ptr noundef %1) #6
  %vendor_string = getelementptr inbounds %struct.gb_control, ptr %dev, i32 0, i32 7
  %2 = ptrtoint ptr %vendor_string to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vendor_string, align 4
  tail call void @kfree(ptr noundef %3) #6
  %product_string = getelementptr inbounds %struct.gb_control, ptr %dev, i32 0, i32 8
  %4 = ptrtoint ptr %product_string to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %product_string, align 8
  tail call void @kfree(ptr noundef %5) #6
  tail call void @kfree(ptr noundef %dev) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gb_control_create(ptr noundef %intf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 952) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %intf2 = getelementptr inbounds %struct.gb_control, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %intf2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %intf, ptr %intf2, align 8
  %call3 = tail call ptr @gb_connection_create_control(ptr noundef %intf) #6
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call3 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %intf, ptr noundef nonnull @.str.45, i32 noundef %2) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %connection9 = getelementptr inbounds %struct.gb_control, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %connection9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %connection9, align 4
  %parent = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %intf, ptr %parent, align 8
  %bus = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @greybus_bus_type, ptr %bus, align 8
  %type = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @greybus_control_type, ptr %type, align 4
  %groups = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 34
  %7 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @control_groups, ptr %groups, align 8
  %dma_mask = getelementptr inbounds %struct.device, ptr %intf, i32 0, i32 18
  %8 = ptrtoint ptr %dma_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_mask, align 8
  %dma_mask17 = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 18
  %10 = ptrtoint ptr %dma_mask17 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %dma_mask17, align 8
  tail call void @device_initialize(ptr noundef nonnull %call7.i.i) #6
  %init_name.i = getelementptr inbounds %struct.device, ptr %intf, i32 0, i32 3
  %11 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end8.dev_name.exit_crit_edge

if.end8.dev_name.exit_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %intf, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end8.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %14, %if.end.i ], [ %12, %if.end8.dev_name.exit_crit_edge ]
  %call22 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.47, ptr noundef %retval.0.i) #6
  %15 = ptrtoint ptr %connection9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %connection9, align 4
  %private.i = getelementptr inbounds %struct.gb_connection, ptr %16, i32 0, i32 17
  %17 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %private.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call3, %do.end ], [ %call7.i.i, %dev_name.exit ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gb_connection_create_control(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_control_enable(ptr nocapture noundef %control) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gb_control_enable.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gb_control_enable, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !155

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %connection = getelementptr inbounds %struct.gb_control, ptr %control, i32 0, i32 2
  %0 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connection, align 4
  %intf = getelementptr inbounds %struct.gb_connection, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gb_control_enable.__UNIQUE_ID_ddebug231, ptr noundef %3, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.49) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %connection3 = getelementptr inbounds %struct.gb_control, ptr %control, i32 0, i32 2
  %4 = ptrtoint ptr %connection3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %connection3, align 4
  %call4 = tail call i32 @gb_connection_enable_tx(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end13, label %do.end9

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %connection3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %connection3, align 4
  %intf11 = getelementptr inbounds %struct.gb_connection, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %intf11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %intf11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.51, i32 noundef %call4) #9
  br label %cleanup

if.end13:                                         ; preds = %do.end
  %call14 = tail call fastcc i32 @gb_control_get_version(ptr noundef %control)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %err_disable_connection

if.end17:                                         ; preds = %if.end13
  %protocol_major = getelementptr inbounds %struct.gb_control, ptr %control, i32 0, i32 3
  %10 = ptrtoint ptr %protocol_major to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %protocol_major, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp.not = icmp eq i8 %11, 0
  br i1 %cmp.not, label %lor.lhs.false, label %if.end17.if.then22_crit_edge

if.end17.if.then22_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then22

lor.lhs.false:                                    ; preds = %if.end17
  %protocol_minor = getelementptr inbounds %struct.gb_control, ptr %control, i32 0, i32 4
  %12 = ptrtoint ptr %protocol_minor to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %protocol_minor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp20 = icmp ugt i8 %13, 1
  br i1 %cmp20, label %lor.lhs.false.if.then22_crit_edge, label %lor.lhs.false.if.end23_crit_edge

lor.lhs.false.if.end23_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

lor.lhs.false.if.then22_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then22

if.then22:                                        ; preds = %lor.lhs.false.if.then22_crit_edge, %if.end17.if.then22_crit_edge
  %has_bundle_version = getelementptr inbounds %struct.gb_control, ptr %control, i32 0, i32 6
  %14 = ptrtoint ptr %has_bundle_version to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %has_bundle_version, align 1
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %lor.lhs.false.if.end23_crit_edge
  %intf24 = getelementptr inbounds %struct.gb_control, ptr %control, i32 0, i32 1
  %15 = ptrtoint ptr %intf24 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %intf24, align 8
  %quirks = getelementptr inbounds %struct.gb_interface, ptr %16, i32 0, i32 16
  %17 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %quirks, align 8
  %and = and i32 %18, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %if.then26, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %has_bundle_activate = getelementptr inbounds %struct.gb_control, ptr %control, i32 0, i32 5
  %19 = ptrtoint ptr %has_bundle_activate to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %has_bundle_activate, align 2
  br label %cleanup

err_disable_connection:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %connection3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %connection3, align 4
  tail call void @gb_connection_disable(ptr noundef %21) #6
  br label %cleanup

cleanup:                                          ; preds = %err_disable_connection, %if.then26, %if.end23.cleanup_crit_edge, %do.end9
  %retval.0 = phi i32 [ %call4, %do.end9 ], [ %call14, %err_disable_connection ], [ 0, %if.then26 ], [ 0, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_connection_enable_tx(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gb_control_get_version(ptr nocapture noundef %control) unnamed_addr #0 align 64 {
entry:
  %request = alloca %struct.gb_control_version_request, align 1
  %response = alloca %struct.gb_control_version_response, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %connection = getelementptr inbounds %struct.gb_control, ptr %control, i32 0, i32 2
  %0 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connection, align 4
  %intf1 = getelementptr inbounds %struct.gb_connection, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %request) #6
  %4 = getelementptr inbounds %struct.gb_control_version_request, ptr %request, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %response) #6
  %5 = ptrtoint ptr %response to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %response, align 1, !annotation !154
  %6 = getelementptr inbounds %struct.gb_control_version_response, ptr %response, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %6, align 1, !annotation !154
  %8 = ptrtoint ptr %request to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %request, align 1
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %4, align 1
  %call.i = call i32 @gb_operation_sync_timeout(ptr noundef %1, i32 noundef 1, ptr noundef nonnull %request, i32 noundef 2, ptr noundef nonnull %response, i32 noundef 2, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.61, i32 noundef %call.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %response, align 1
  %12 = ptrtoint ptr %request to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %request, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %13)
  %cmp = icmp ugt i8 %11, %13
  br i1 %cmp, label %do.end10, label %if.end16

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv5 = zext i8 %13 to i32
  %conv = zext i8 %11 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.64, i32 noundef %conv, i32 noundef %conv5) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %protocol_major = getelementptr inbounds %struct.gb_control, ptr %control, i32 0, i32 3
  %14 = ptrtoint ptr %protocol_major to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %11, ptr %protocol_major, align 8
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %6, align 1
  %protocol_minor = getelementptr inbounds %struct.gb_control, ptr %control, i32 0, i32 4
  %17 = ptrtoint ptr %protocol_minor to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %protocol_minor, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gb_control_get_version.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gb_control_get_version, %if.then24)) #6
          to label %cleanup [label %if.then24], !srcloc !155

if.then24:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %response, align 1
  %conv27 = zext i8 %19 to i32
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %6, align 1
  %conv29 = zext i8 %21 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gb_control_get_version.__UNIQUE_ID_ddebug229, ptr noundef %3, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.62, i32 noundef %conv27, i32 noundef %conv29) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end16, %do.end10, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -524, %do.end10 ], [ 0, %if.then24 ], [ 0, %if.end16 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %response) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %request) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gb_control_disable(ptr nocapture noundef readonly %control) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gb_control_disable.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gb_control_disable, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !155

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %connection = getelementptr inbounds %struct.gb_control, ptr %control, i32 0, i32 2
  %0 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connection, align 4
  %intf = getelementptr inbounds %struct.gb_connection, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gb_control_disable.__UNIQUE_ID_ddebug232, ptr noundef %3, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.52) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %intf3 = getelementptr inbounds %struct.gb_control, ptr %control, i32 0, i32 1
  %4 = ptrtoint ptr %intf3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf3, align 8
  %disconnected = getelementptr inbounds %struct.gb_interface, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %disconnected, align 8, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  %connection7 = getelementptr inbounds %struct.gb_control, ptr %control, i32 0, i32 2
  %8 = ptrtoint ptr %connection7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %connection7, align 4
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gb_connection_disable_forced(ptr noundef %9) #6
  br label %if.end8

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gb_connection_disable(ptr noundef %9) #6
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_disable_forced(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_control_suspend(ptr nocapture noundef readonly %control) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %connection = getelementptr inbounds %struct.gb_control, ptr %control, i32 0, i32 2
  %0 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connection, align 4
  tail call void @gb_connection_disable(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_control_resume(ptr nocapture noundef readonly %control) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %connection = getelementptr inbounds %struct.gb_control, ptr %control, i32 0, i32 2
  %0 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connection, align 4
  %call = tail call i32 @gb_connection_enable_tx(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connection, align 4
  %intf = getelementptr inbounds %struct.gb_connection, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.51, i32 noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_control_add(ptr noundef %control) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @device_add(ptr noundef %control) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %control, ptr noundef nonnull @.str.54, i32 noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gb_control_del(ptr noundef %control) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state_in_sysfs.i = getelementptr inbounds %struct.kobject, ptr %control, i32 0, i32 8
  %0 = ptrtoint ptr %state_in_sysfs.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %state_in_sysfs.i, align 4
  %1 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @device_del(ptr noundef %control) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gb_control_get(ptr noundef returned %control) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @get_device(ptr noundef %control) #6
  ret ptr %control
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gb_control_put(ptr noundef %control) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @put_device(ptr noundef %control) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gb_control_mode_switch_prepare(ptr nocapture noundef readonly %control) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %connection = getelementptr inbounds %struct.gb_control, ptr %control, i32 0, i32 2
  %0 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connection, align 4
  tail call void @gb_connection_mode_switch_prepare(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_mode_switch_prepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gb_control_mode_switch_complete(ptr nocapture noundef readonly %control) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %connection = getelementptr inbounds %struct.gb_control, ptr %control, i32 0, i32 2
  %0 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connection, align 4
  tail call void @gb_connection_mode_switch_complete(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_mode_switch_complete(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_operation_sync_timeout(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_operation_request_send_sync_timeout(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vendor_string_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vendor_string = getelementptr inbounds %struct.gb_control, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %vendor_string to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vendor_string, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.50, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @product_string_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %product_string = getelementptr inbounds %struct.gb_control, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %product_string to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %product_string, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.50, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !85, !87, !88, !89, !90, !92, !94, !95, !96, !97, !99, !100, !101, !103, !104, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !118, !120, !121, !123, !124, !126, !128, !129, !131, !132, !134, !135, !136, !137, !139, !140, !141, !143}
!llvm.module.flags = !{!144, !145, !146, !147, !148, !149, !150, !151}
!llvm.ident = !{!152}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/greybus/control.c", i32 113, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @gb_control_get_manifest_size_operation._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @gb_control_get_manifest_size_operation._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/greybus/control.c", i32 169, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @gb_control_disconnecting_operation._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @gb_control_disconnecting_operation._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/greybus/control.c", i32 193, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @gb_control_mode_switch_operation._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @gb_control_mode_switch_operation._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/greybus/control.c", i32 226, i32 3}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @gb_control_bundle_suspend._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @gb_control_bundle_suspend._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/greybus/control.c", i32 232, i32 3}
!25 = !{ptr @gb_control_bundle_suspend._entry.11, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @gb_control_bundle_suspend._entry_ptr.13, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/greybus/control.c", i32 251, i32 3}
!29 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @gb_control_bundle_resume._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @gb_control_bundle_resume._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/greybus/control.c", i32 257, i32 3}
!34 = !{ptr @gb_control_bundle_resume._entry.16, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @gb_control_bundle_resume._entry_ptr.18, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/greybus/control.c", i32 276, i32 3}
!38 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @gb_control_bundle_deactivate._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @gb_control_bundle_deactivate._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/greybus/control.c", i32 283, i32 3}
!43 = !{ptr @gb_control_bundle_deactivate._entry.21, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @gb_control_bundle_deactivate._entry_ptr.23, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/greybus/control.c", i32 305, i32 3}
!47 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @gb_control_bundle_activate._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @gb_control_bundle_activate._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/greybus/control.c", i32 312, i32 3}
!52 = !{ptr @gb_control_bundle_activate._entry.26, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @gb_control_bundle_activate._entry_ptr.28, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/greybus/control.c", i32 341, i32 3}
!56 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @gb_control_interface_suspend_prepare._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @gb_control_interface_suspend_prepare._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/greybus/control.c", i32 347, i32 3}
!61 = !{ptr @gb_control_interface_suspend_prepare._entry.31, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @gb_control_interface_suspend_prepare._entry_ptr.33, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/greybus/control.c", i32 364, i32 3}
!65 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @gb_control_interface_deactivate_prepare._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @gb_control_interface_deactivate_prepare._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/greybus/control.c", i32 370, i32 3}
!70 = !{ptr @gb_control_interface_deactivate_prepare._entry.36, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @gb_control_interface_deactivate_prepare._entry_ptr.38, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/greybus/control.c", i32 387, i32 3}
!74 = !{ptr @.str.40, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @gb_control_interface_hibernate_abort._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @gb_control_interface_hibernate_abort._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/greybus/control.c", i32 394, i32 3}
!79 = !{ptr @gb_control_interface_hibernate_abort._entry.41, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @gb_control_interface_hibernate_abort._entry_ptr.43, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.44, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/greybus/control.c", i32 440, i32 11}
!83 = !{ptr @greybus_control_type, !84, !"greybus_control_type", i1 false, i1 false}
!84 = !{!"../drivers/greybus/control.c", i32 439, i32 20}
!85 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/greybus/control.c", i32 457, i32 3}
!87 = !{ptr @.str.46, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @gb_control_create._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @gb_control_create._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/greybus/control.c", i32 472, i32 30}
!92 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/greybus/control.c", i32 483, i32 2}
!94 = !{ptr @.str.49, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.50, !93, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @gb_control_enable.__UNIQUE_ID_ddebug231, !93, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!97 = !{ptr @.str.51, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/greybus/control.c", i32 487, i32 3}
!99 = !{ptr @gb_control_enable._entry, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @gb_control_enable._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/greybus/control.c", i32 514, i32 2}
!103 = !{ptr @gb_control_disable.__UNIQUE_ID_ddebug232, !102, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!104 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/greybus/control.c", i32 535, i32 3}
!106 = !{ptr @gb_control_resume._entry, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @gb_control_resume._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/greybus/control.c", i32 549, i32 3}
!110 = !{ptr @.str.55, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @gb_control_add._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @gb_control_add._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/greybus/control.c", i32 70, i32 3}
!115 = !{ptr @.str.57, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @gb_control_get_bundle_version._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @gb_control_get_bundle_version._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.58, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/greybus/control.c", i32 79, i32 2}
!120 = !{ptr @gb_control_get_bundle_version.__UNIQUE_ID_ddebug230, !119, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!121 = !{ptr @control_groups, !122, !"control_groups", i1 false, i1 false}
!122 = !{!"../drivers/greybus/control.c", i32 425, i32 1}
!123 = !{ptr @control_group, !122, !"control_group", i1 false, i1 false}
!124 = !{ptr @control_attrs, !125, !"control_attrs", i1 false, i1 false}
!125 = !{!"../drivers/greybus/control.c", i32 420, i32 26}
!126 = !{ptr @.str.59, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/greybus/control.c", i32 409, i32 8}
!128 = !{ptr @dev_attr_vendor_string, !127, !"dev_attr_vendor_string", i1 false, i1 false}
!129 = !{ptr @.str.60, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/greybus/control.c", i32 418, i32 8}
!131 = !{ptr @dev_attr_product_string, !130, !"dev_attr_product_string", i1 false, i1 false}
!132 = !{ptr @.str.61, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/greybus/control.c", i32 33, i32 3}
!134 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @gb_control_get_version._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @gb_control_get_version._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.64, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/greybus/control.c", i32 40, i32 3}
!139 = !{ptr @gb_control_get_version._entry.63, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @gb_control_get_version._entry_ptr.65, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.66, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/greybus/control.c", i32 49, i32 2}
!143 = !{ptr @gb_control_get_version.__UNIQUE_ID_ddebug229, !142, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!144 = !{i32 1, !"wchar_size", i32 2}
!145 = !{i32 1, !"min_enum_size", i32 4}
!146 = !{i32 8, !"branch-target-enforcement", i32 0}
!147 = !{i32 8, !"sign-return-address", i32 0}
!148 = !{i32 8, !"sign-return-address-all", i32 0}
!149 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!150 = !{i32 7, !"uwtable", i32 1}
!151 = !{i32 7, !"frame-pointer", i32 2}
!152 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!153 = !{i8 0, i8 2}
!154 = !{!"auto-init"}
!155 = !{i64 2148703803, i64 2148703808, i64 2148703821, i64 2148703865, i64 2148703899, i64 2148703920}
