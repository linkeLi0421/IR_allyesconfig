; ModuleID = '/llk/IR_all_yes/drivers/media/usb/pvrusb2/pvrusb2-sysfs.c_pt.bc'
source_filename = "../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pvr2_channel = type { ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.pvr2_sysfs = type { %struct.pvr2_channel, ptr, ptr, ptr, ptr, %struct.device_attribute, %struct.device_attribute, %struct.device_attribute, %struct.device_attribute, %struct.device_attribute, %struct.device_attribute, i32, i32, i32, i32, i32, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.pvr2_sysfs_ctl_item = type { %struct.device_attribute, %struct.device_attribute, %struct.device_attribute, %struct.device_attribute, %struct.device_attribute, %struct.device_attribute, %struct.device_attribute, %struct.device_attribute, %struct.device_attribute, ptr, i32, ptr, ptr, [8 x ptr], %struct.attribute_group, i32, [80 x i8] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.pvr2_sysfs_debugifc = type { %struct.device_attribute, %struct.device_attribute, i32, i32 }
%struct.pvr2_context = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.pvr2_context_stream, %struct.mutex, i32, i32, i32, ptr }
%struct.pvr2_context_stream = type { ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@pvrusb2_debug = external dso_local local_unnamed_addr global i32, align 4
@pvr2_sysfs_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016pvrusb2: Creating pvr2_sysfs id=%p\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pvr2_sysfs_create\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/usb/pvrusb2/pvrusb2-sysfs.c\00", [54 x i8] zeroinitializer }, align 32
@pvr2_sysfs_create._entry_ptr = internal global ptr @pvr2_sysfs_create._entry, section ".printk_index", align 4
@pvr2_sysfs_class_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 778, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016pvrusb2: Creating and registering pvr2_sysfs_class id=%p\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pvr2_sysfs_class_create\00", [40 x i8] zeroinitializer }, align 32
@pvr2_sysfs_class_create._entry_ptr = internal global ptr @pvr2_sysfs_class_create._entry, section ".printk_index", align 4
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pvrusb2\00", [24 x i8] zeroinitializer }, align 32
@pvr2_sysfs_class_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pvr2_sysfs_class_create._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.2, i32 784, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016pvrusb2: Registration failed for pvr2_sysfs_class id=%p\0A\00", [37 x i8] zeroinitializer }, align 32
@pvr2_sysfs_class_create._entry_ptr.8 = internal global ptr @pvr2_sysfs_class_create._entry.6, section ".printk_index", align 4
@pvr2_sysfs_class_destroy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 794, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016pvrusb2: Unregistering pvr2_sysfs_class id=%p\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pvr2_sysfs_class_destroy\00", [39 x i8] zeroinitializer }, align 32
@pvr2_sysfs_class_destroy._entry_ptr = internal global ptr @pvr2_sysfs_class_destroy._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pvr2_sysfs_internal_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 749, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016pvrusb2: Destroying pvr2_sysfs id=%p\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pvr2_sysfs_internal_check\00", [38 x i8] zeroinitializer }, align 32
@pvr2_sysfs_internal_check._entry_ptr = internal global ptr @pvr2_sysfs_internal_check._entry, section ".printk_index", align 4
@class_dev_destroy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016pvrusb2: Destroying class_dev id=%p\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"class_dev_destroy\00", [46 x i8] zeroinitializer }, align 32
@class_dev_destroy._entry_ptr = internal global ptr @class_dev_destroy._entry, section ".printk_index", align 4
@pvr2_sysfs_tear_down_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016pvrusb2: Destroying pvr2_sysfs_ctl_item id=%p\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pvr2_sysfs_tear_down_controls\00", [34 x i8] zeroinitializer }, align 32
@pvr2_sysfs_tear_down_controls._entry_ptr = internal global ptr @pvr2_sysfs_tear_down_controls._entry, section ".printk_index", align 4
@class_dev_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 629, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016pvrusb2: Creating class_dev id=%p\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"class_dev_create\00", [47 x i8] zeroinitializer }, align 32
@class_dev_create._entry_ptr = internal global ptr @class_dev_create._entry, section ".printk_index", align 4
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@class_dev_create._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.18, ptr @.str.2, i32 643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016pvrusb2: device_register failed\0A\00", [61 x i8] zeroinitializer }, align 32
@class_dev_create._entry_ptr.22 = internal global ptr @class_dev_create._entry.20, section ".printk_index", align 4
@class_dev_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"v4l_minor_number\00", [47 x i8] zeroinitializer }, align 32
@class_dev_create._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.18, ptr @.str.2, i32 658, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016pvrusb2: device_create_file error: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@class_dev_create._entry_ptr.26 = internal global ptr @class_dev_create._entry.24, section ".printk_index", align 4
@class_dev_create.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"v4l_radio_minor_number\00", [41 x i8] zeroinitializer }, align 32
@class_dev_create._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.18, ptr @.str.2, i32 673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@class_dev_create._entry_ptr.30 = internal global ptr @class_dev_create._entry.29, section ".printk_index", align 4
@class_dev_create.__key.31 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"unit_number\00", [20 x i8] zeroinitializer }, align 32
@class_dev_create._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.18, ptr @.str.2, i32 687, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@class_dev_create._entry_ptr.34 = internal global ptr @class_dev_create._entry.33, section ".printk_index", align 4
@class_dev_create.__key.35 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bus_info_str\00", [19 x i8] zeroinitializer }, align 32
@class_dev_create._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.18, ptr @.str.2, i32 702, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@class_dev_create._entry_ptr.38 = internal global ptr @class_dev_create._entry.37, section ".printk_index", align 4
@class_dev_create.__key.39 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"device_hardware_type\00", [43 x i8] zeroinitializer }, align 32
@class_dev_create._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.18, ptr @.str.2, i32 717, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@class_dev_create._entry_ptr.42 = internal global ptr @class_dev_create._entry.41, section ".printk_index", align 4
@class_dev_create.__key.43 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"device_hardware_description\00", [36 x i8] zeroinitializer }, align 32
@class_dev_create._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.18, ptr @.str.2, i32 732, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@class_dev_create._entry_ptr.46 = internal global ptr @class_dev_create._entry.45, section ".printk_index", align 4
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@pvr2_sysfs_add_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016pvrusb2: Creating pvr2_sysfs_ctl_item id=%p\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pvr2_sysfs_add_control\00", [41 x i8] zeroinitializer }, align 32
@pvr2_sysfs_add_control._entry_ptr = internal global ptr @pvr2_sysfs_add_control._entry, section ".printk_index", align 4
@pvr2_sysfs_add_control.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@pvr2_sysfs_add_control.__key.52 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@pvr2_sysfs_add_control.__key.54 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"min_val\00", [24 x i8] zeroinitializer }, align 32
@pvr2_sysfs_add_control.__key.56 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max_val\00", [24 x i8] zeroinitializer }, align 32
@pvr2_sysfs_add_control.__key.58 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"def_val\00", [24 x i8] zeroinitializer }, align 32
@pvr2_sysfs_add_control.__key.60 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cur_val\00", [24 x i8] zeroinitializer }, align 32
@pvr2_sysfs_add_control.__key.62 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"custom_val\00", [21 x i8] zeroinitializer }, align 32
@pvr2_sysfs_add_control.__key.64 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"enum_val\00", [23 x i8] zeroinitializer }, align 32
@pvr2_sysfs_add_control.__key.66 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bit_val\00", [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ctl_%s\00", [25 x i8] zeroinitializer }, align 32
@pvr2_sysfs_add_control._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.50, ptr @.str.2, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016pvrusb2: sysfs_create_group error: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@pvr2_sysfs_add_control._entry_ptr.71 = internal global ptr @pvr2_sysfs_add_control._entry.69, section ".printk_index", align 4
@show_name._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.2, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016pvrusb2: pvr2_sysfs(%p) show_name(cid=%d) is %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"show_name\00", [22 x i8] zeroinitializer }, align 32
@show_name._entry_ptr = internal global ptr @show_name._entry, section ".printk_index", align 4
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"integer\00", [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"enum\00", [27 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bitmask\00", [24 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"boolean\00", [24 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"?\00", [30 x i8] zeroinitializer }, align 32
@show_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016pvrusb2: pvr2_sysfs(%p) show_type(cid=%d) is %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"show_type\00", [22 x i8] zeroinitializer }, align 32
@show_type._entry_ptr = internal global ptr @show_type._entry, section ".printk_index", align 4
@show_min._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.2, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016pvrusb2: pvr2_sysfs(%p) show_min(cid=%d) is %ld\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"show_min\00", [23 x i8] zeroinitializer }, align 32
@show_min._entry_ptr = internal global ptr @show_min._entry, section ".printk_index", align 4
@.str.83 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%ld\0A\00", [27 x i8] zeroinitializer }, align 32
@show_max._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.2, i32 130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016pvrusb2: pvr2_sysfs(%p) show_max(cid=%d) is %ld\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"show_max\00", [23 x i8] zeroinitializer }, align 32
@show_max._entry_ptr = internal global ptr @show_max._entry, section ".printk_index", align 4
@show_def._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016pvrusb2: pvr2_sysfs(%p) show_def(cid=%d) is %.*s (%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"show_def\00", [23 x i8] zeroinitializer }, align 32
@show_def._entry_ptr = internal global ptr @show_def._entry, section ".printk_index", align 4
@show_enum._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.2, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016pvrusb2: pvr2_sysfs(%p) show_enum(cid=%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"show_enum\00", [22 x i8] zeroinitializer }, align 32
@show_enum._entry_ptr = internal global ptr @show_enum._entry, section ".printk_index", align 4
@show_bits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.2, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016pvrusb2: pvr2_sysfs(%p) show_bits(cid=%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"show_bits\00", [22 x i8] zeroinitializer }, align 32
@show_bits._entry_ptr = internal global ptr @show_bits._entry, section ".printk_index", align 4
@show_val_norm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.2, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016pvrusb2: pvr2_sysfs(%p) show_val_norm(cid=%d) is %.*s (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"show_val_norm\00", [18 x i8] zeroinitializer }, align 32
@show_val_norm._entry_ptr = internal global ptr @show_val_norm._entry, section ".printk_index", align 4
@store_val_norm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016pvrusb2: pvr2_sysfs(%p) store_val_norm(cid=%d) \22%.*s\22\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"store_val_norm\00", [17 x i8] zeroinitializer }, align 32
@store_val_norm._entry_ptr = internal global ptr @store_val_norm._entry, section ".printk_index", align 4
@show_val_custom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.2, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016pvrusb2: pvr2_sysfs(%p) show_val_custom(cid=%d) is %.*s (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"show_val_custom\00", [16 x i8] zeroinitializer }, align 32
@show_val_custom._entry_ptr = internal global ptr @show_val_custom._entry, section ".printk_index", align 4
@store_val_custom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.2, i32 280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016pvrusb2: pvr2_sysfs(%p) store_val_custom(cid=%d) \22%.*s\22\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"store_val_custom\00", [47 x i8] zeroinitializer }, align 32
@store_val_custom._entry_ptr = internal global ptr @store_val_custom._entry, section ".printk_index", align 4
@pvr2_sysfs_add_debugifc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.100 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"debugcmd\00", [23 x i8] zeroinitializer }, align 32
@pvr2_sysfs_add_debugifc.__key.101 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.102 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"debuginfo\00", [22 x i8] zeroinitializer }, align 32
@pvr2_sysfs_add_debugifc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.103, ptr @.str.2, i32 434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pvr2_sysfs_add_debugifc\00", [40 x i8] zeroinitializer }, align 32
@pvr2_sysfs_add_debugifc._entry_ptr = internal global ptr @pvr2_sysfs_add_debugifc._entry, section ".printk_index", align 4
@pvr2_sysfs_add_debugifc._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.103, ptr @.str.2, i32 442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pvr2_sysfs_add_debugifc._entry_ptr.105 = internal global ptr @pvr2_sysfs_add_debugifc._entry.104, section ".printk_index", align 4
@pvr2_sysfs_class_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.2, i32 494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016pvrusb2: Destroying pvr2_sysfs_class id=%p\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pvr2_sysfs_class_release\00", [39 x i8] zeroinitializer }, align 32
@pvr2_sysfs_class_release._entry_ptr = internal global ptr @pvr2_sysfs_class_release._entry, section ".printk_index", align 4
@pvr2_sysfs_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.2, i32 501, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016pvrusb2: Releasing class_dev id=%p\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pvr2_sysfs_release\00", [45 x i8] zeroinitializer }, align 32
@pvr2_sysfs_release._entry_ptr = internal global ptr @pvr2_sysfs_release._entry, section ".printk_index", align 4
@switch.table.show_type = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 762, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 777, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 779, i32 20 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 782, i32 6 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 783, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 794, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 749, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 538, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 484, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 629, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 633, i32 26 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 642, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 648, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 649, i32 41 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 656, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 663, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 664, i32 47 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 671, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 678, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 679, i32 36 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 685, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 692, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 693, i32 33 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 700, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 707, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 708, i32 33 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 715, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 722, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 723, i32 33 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 730, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 554, i32 33 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 566, i32 33 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 298, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 312, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 313, i32 29 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 317, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 318, i32 29 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 322, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 323, i32 28 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 327, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 328, i32 28 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 332, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 333, i32 28 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 337, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 338, i32 28 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 341, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 342, i32 31 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 345, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 346, i32 29 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 350, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 351, i32 29 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 389, i32 48 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 397, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 81, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 97, i32 28 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 98, i32 29 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 99, i32 32 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 100, i32 29 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 101, i32 18 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 103, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 116, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 118, i32 35 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 129, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 147, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 210, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 235, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 166, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 265, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 185, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 279, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 420, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 421, i32 33 }
@___asan_gen_.455 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 425, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 426, i32 34 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 432, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 440, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 494, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.485 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.486 = private constant [45 x i8] c"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 501, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant [23 x i8] c"switch.table.show_type\00", align 1
@llvm.compiler.used = appending global [159 x ptr] [ptr @class_dev_create._entry, ptr @class_dev_create._entry.20, ptr @class_dev_create._entry.24, ptr @class_dev_create._entry.29, ptr @class_dev_create._entry.33, ptr @class_dev_create._entry.37, ptr @class_dev_create._entry.41, ptr @class_dev_create._entry.45, ptr @class_dev_create._entry_ptr, ptr @class_dev_create._entry_ptr.22, ptr @class_dev_create._entry_ptr.26, ptr @class_dev_create._entry_ptr.30, ptr @class_dev_create._entry_ptr.34, ptr @class_dev_create._entry_ptr.38, ptr @class_dev_create._entry_ptr.42, ptr @class_dev_create._entry_ptr.46, ptr @class_dev_destroy._entry, ptr @class_dev_destroy._entry_ptr, ptr @pvr2_sysfs_add_control._entry, ptr @pvr2_sysfs_add_control._entry.69, ptr @pvr2_sysfs_add_control._entry_ptr, ptr @pvr2_sysfs_add_control._entry_ptr.71, ptr @pvr2_sysfs_add_debugifc._entry, ptr @pvr2_sysfs_add_debugifc._entry.104, ptr @pvr2_sysfs_add_debugifc._entry_ptr, ptr @pvr2_sysfs_add_debugifc._entry_ptr.105, ptr @pvr2_sysfs_class_create._entry, ptr @pvr2_sysfs_class_create._entry.6, ptr @pvr2_sysfs_class_create._entry_ptr, ptr @pvr2_sysfs_class_create._entry_ptr.8, ptr @pvr2_sysfs_class_destroy._entry, ptr @pvr2_sysfs_class_destroy._entry_ptr, ptr @pvr2_sysfs_class_release._entry, ptr @pvr2_sysfs_class_release._entry_ptr, ptr @pvr2_sysfs_create._entry, ptr @pvr2_sysfs_create._entry_ptr, ptr @pvr2_sysfs_internal_check._entry, ptr @pvr2_sysfs_internal_check._entry_ptr, ptr @pvr2_sysfs_release._entry, ptr @pvr2_sysfs_release._entry_ptr, ptr @pvr2_sysfs_tear_down_controls._entry, ptr @pvr2_sysfs_tear_down_controls._entry_ptr, ptr @show_bits._entry, ptr @show_bits._entry_ptr, ptr @show_def._entry, ptr @show_def._entry_ptr, ptr @show_enum._entry, ptr @show_enum._entry_ptr, ptr @show_max._entry, ptr @show_max._entry_ptr, ptr @show_min._entry, ptr @show_min._entry_ptr, ptr @show_name._entry, ptr @show_name._entry_ptr, ptr @show_type._entry, ptr @show_type._entry_ptr, ptr @show_val_custom._entry, ptr @show_val_custom._entry_ptr, ptr @show_val_norm._entry, ptr @show_val_norm._entry_ptr, ptr @store_val_custom._entry, ptr @store_val_custom._entry_ptr, ptr @store_val_norm._entry, ptr @store_val_norm._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @pvr2_sysfs_class_create.__key, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @class_dev_create.__key, ptr @.str.23, ptr @.str.25, ptr @class_dev_create.__key.27, ptr @.str.28, ptr @class_dev_create.__key.31, ptr @.str.32, ptr @class_dev_create.__key.35, ptr @.str.36, ptr @class_dev_create.__key.39, ptr @.str.40, ptr @class_dev_create.__key.43, ptr @.str.44, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @pvr2_sysfs_add_control.__key, ptr @.str.51, ptr @pvr2_sysfs_add_control.__key.52, ptr @.str.53, ptr @pvr2_sysfs_add_control.__key.54, ptr @.str.55, ptr @pvr2_sysfs_add_control.__key.56, ptr @.str.57, ptr @pvr2_sysfs_add_control.__key.58, ptr @.str.59, ptr @pvr2_sysfs_add_control.__key.60, ptr @.str.61, ptr @pvr2_sysfs_add_control.__key.62, ptr @.str.63, ptr @pvr2_sysfs_add_control.__key.64, ptr @.str.65, ptr @pvr2_sysfs_add_control.__key.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @pvr2_sysfs_add_debugifc.__key, ptr @.str.100, ptr @pvr2_sysfs_add_debugifc.__key.101, ptr @.str.102, ptr @.str.103, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @switch.table.show_type], section "llvm.metadata"
@0 = internal global [127 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_sysfs_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_sysfs_class_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_sysfs_class_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_sysfs_class_create._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_sysfs_class_destroy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_sysfs_internal_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @class_dev_destroy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_sysfs_tear_down_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @class_dev_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @class_dev_create._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @class_dev_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @class_dev_create._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @class_dev_create.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @class_dev_create._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @class_dev_create.__key.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @class_dev_create._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @class_dev_create.__key.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @class_dev_create._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @class_dev_create.__key.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @class_dev_create._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @class_dev_create.__key.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @class_dev_create._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_sysfs_add_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_sysfs_add_control.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_sysfs_add_control.__key.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_sysfs_add_control.__key.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_sysfs_add_control.__key.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_sysfs_add_control.__key.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_sysfs_add_control.__key.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_sysfs_add_control.__key.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_sysfs_add_control.__key.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_sysfs_add_control.__key.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_sysfs_add_control._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_name._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_min._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_max._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_def._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_enum._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_bits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_val_norm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @store_val_norm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_val_custom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @store_val_custom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_sysfs_add_debugifc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_sysfs_add_debugifc.__key.101 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_sysfs_add_debugifc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_sysfs_add_debugifc._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_sysfs_class_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_sysfs_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.show_type to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pvr2_sysfs_create(ptr noundef %mp, ptr noundef %class_ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 236) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %1 = load i32, ptr @pvrusb2_debug, align 4
  %and = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.do.end7_crit_edge, label %do.end

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %call7.i.i) #9
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  tail call void @pvr2_channel_init(ptr noundef nonnull %call7.i.i, ptr noundef %mp) #5
  %check_func = getelementptr inbounds %struct.pvr2_channel, ptr %call7.i.i, i32 0, i32 6
  %2 = ptrtoint ptr %check_func to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @pvr2_sysfs_internal_check, ptr %check_func, align 8
  %hdw.i = getelementptr inbounds %struct.pvr2_channel, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %hdw.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hdw.i, align 8
  %call.i = tail call ptr @pvr2_hdw_get_dev(ptr noundef %4) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end7.cleanup_crit_edge, label %if.end.i

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %do.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 928) #8
  %tobool2.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %do.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %6 = load i32, ptr @pvrusb2_debug, align 4
  %and.i = and i32 %6, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %do.body.i.do.end11.i_crit_edge, label %do.end.i

do.body.i.do.end11.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end11.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull %call7.i.i.i) #9
  br label %do.end11.i

do.end11.i:                                       ; preds = %do.end.i, %do.body.i.do.end11.i_crit_edge
  %class12.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 33
  %7 = ptrtoint ptr %class12.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %class_ptr, ptr %class12.i, align 4
  %8 = ptrtoint ptr %hdw.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hdw.i, align 8
  %call15.i = tail call ptr @pvr2_hdw_get_device_identifier(ptr noundef %9) #5
  %call16.i = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.19, ptr noundef %call15.i) #5
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %call.i, i32 0, i32 15
  %call17.i = tail call ptr @get_device(ptr noundef %dev.i) #5
  %parent.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call17.i, ptr %parent.i, align 8
  %class_dev18.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %class_dev18.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i.i, ptr %class_dev18.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call19.i = tail call i32 @device_register(ptr noundef nonnull %call7.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %do.body35.i, label %do.body22.i

do.body22.i:                                      ; preds = %do.end11.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %13 = load i32, ptr @pvrusb2_debug, align 4
  %and23.i = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %do.body22.i.do.end33.i_crit_edge, label %do.end28.i

do.body22.i.do.end33.i_crit_edge:                 ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end33.i

do.end28.i:                                       ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #7
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #9
  br label %do.end33.i

do.end33.i:                                       ; preds = %do.end28.i, %do.body22.i.do.end33.i_crit_edge
  tail call void @put_device(ptr noundef nonnull %call7.i.i.i) #5
  br label %cleanup

do.body35.i:                                      ; preds = %do.end11.i
  %attr_v4l_minor_number.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %call7.i.i, i32 0, i32 5
  %key.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 3
  %14 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @class_dev_create.__key, ptr %key.i, align 4
  %15 = ptrtoint ptr %attr_v4l_minor_number.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.23, ptr %attr_v4l_minor_number.i, align 4
  %mode.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 1
  %16 = ptrtoint ptr %mode.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 292, ptr %mode.i, align 8
  %show.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %call7.i.i, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %show.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @v4l_minor_number_show, ptr %show.i, align 8
  %store.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %call7.i.i, i32 0, i32 5, i32 2
  %18 = ptrtoint ptr %store.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %store.i, align 4
  %19 = ptrtoint ptr %class_dev18.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %class_dev18.i, align 4
  %call46.i = tail call i32 @device_create_file(ptr noundef %20, ptr noundef %attr_v4l_minor_number.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %cmp.i = icmp slt i32 %call46.i, 0
  br i1 %cmp.i, label %do.body48.i, label %if.else.i

do.body48.i:                                      ; preds = %do.body35.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %21 = load i32, ptr @pvrusb2_debug, align 4
  %and49.i = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool50.not.i = icmp eq i32 %and49.i, 0
  br i1 %tobool50.not.i, label %do.body48.i.do.body61.i_crit_edge, label %do.end54.i

do.body48.i.do.body61.i_crit_edge:                ; preds = %do.body48.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body61.i

do.end54.i:                                       ; preds = %do.body48.i
  call void @__sanitizer_cov_trace_pc() #7
  %call56.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %call46.i) #9
  br label %do.body61.i

if.else.i:                                        ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #7
  %v4l_minor_number_created_ok.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %call7.i.i, i32 0, i32 11
  %22 = ptrtoint ptr %v4l_minor_number_created_ok.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %v4l_minor_number_created_ok.i, align 4
  br label %do.body61.i

do.body61.i:                                      ; preds = %if.else.i, %do.end54.i, %do.body48.i.do.body61.i_crit_edge
  %attr_v4l_radio_minor_number.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %call7.i.i, i32 0, i32 6
  %key63.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 3
  %23 = ptrtoint ptr %key63.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @class_dev_create.__key.27, ptr %key63.i, align 8
  %24 = ptrtoint ptr %attr_v4l_radio_minor_number.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.28, ptr %attr_v4l_radio_minor_number.i, align 8
  %mode71.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 1
  %25 = ptrtoint ptr %mode71.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 292, ptr %mode71.i, align 4
  %show73.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %call7.i.i, i32 0, i32 6, i32 1
  %26 = ptrtoint ptr %show73.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @v4l_radio_minor_number_show, ptr %show73.i, align 4
  %store75.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %call7.i.i, i32 0, i32 6, i32 2
  %27 = ptrtoint ptr %store75.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %store75.i, align 8
  %28 = ptrtoint ptr %class_dev18.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %class_dev18.i, align 4
  %call78.i = tail call i32 @device_create_file(ptr noundef %29, ptr noundef %attr_v4l_radio_minor_number.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78.i)
  %cmp79.i = icmp slt i32 %call78.i, 0
  br i1 %cmp79.i, label %do.body81.i, label %if.else93.i

do.body81.i:                                      ; preds = %do.body61.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %30 = load i32, ptr @pvrusb2_debug, align 4
  %and82.i = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82.i)
  %tobool83.not.i = icmp eq i32 %and82.i, 0
  br i1 %tobool83.not.i, label %do.body81.i.do.body95.i_crit_edge, label %do.end87.i

do.body81.i.do.body95.i_crit_edge:                ; preds = %do.body81.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body95.i

do.end87.i:                                       ; preds = %do.body81.i
  call void @__sanitizer_cov_trace_pc() #7
  %call89.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %call78.i) #9
  br label %do.body95.i

if.else93.i:                                      ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #7
  %v4l_radio_minor_number_created_ok.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %call7.i.i, i32 0, i32 12
  %31 = ptrtoint ptr %v4l_radio_minor_number_created_ok.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %v4l_radio_minor_number_created_ok.i, align 8
  br label %do.body95.i

do.body95.i:                                      ; preds = %if.else93.i, %do.end87.i, %do.body81.i.do.body95.i_crit_edge
  %attr_unit_number.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %call7.i.i, i32 0, i32 7
  %key97.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 3
  %32 = ptrtoint ptr %key97.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @class_dev_create.__key.31, ptr %key97.i, align 4
  %33 = ptrtoint ptr %attr_unit_number.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.32, ptr %attr_unit_number.i, align 4
  %mode105.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 1
  %34 = ptrtoint ptr %mode105.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 292, ptr %mode105.i, align 8
  %show107.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %call7.i.i, i32 0, i32 7, i32 1
  %35 = ptrtoint ptr %show107.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @unit_number_show, ptr %show107.i, align 8
  %store109.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %call7.i.i, i32 0, i32 7, i32 2
  %36 = ptrtoint ptr %store109.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %store109.i, align 4
  %37 = ptrtoint ptr %class_dev18.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %class_dev18.i, align 4
  %call112.i = tail call i32 @device_create_file(ptr noundef %38, ptr noundef %attr_unit_number.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112.i)
  %cmp113.i = icmp slt i32 %call112.i, 0
  br i1 %cmp113.i, label %do.body115.i, label %if.else127.i

do.body115.i:                                     ; preds = %do.body95.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %39 = load i32, ptr @pvrusb2_debug, align 4
  %and116.i = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116.i)
  %tobool117.not.i = icmp eq i32 %and116.i, 0
  br i1 %tobool117.not.i, label %do.body115.i.do.body129.i_crit_edge, label %do.end121.i

do.body115.i.do.body129.i_crit_edge:              ; preds = %do.body115.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body129.i

do.end121.i:                                      ; preds = %do.body115.i
  call void @__sanitizer_cov_trace_pc() #7
  %call123.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %call112.i) #9
  br label %do.body129.i

if.else127.i:                                     ; preds = %do.body95.i
  call void @__sanitizer_cov_trace_pc() #7
  %unit_number_created_ok.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %call7.i.i, i32 0, i32 13
  %40 = ptrtoint ptr %unit_number_created_ok.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %unit_number_created_ok.i, align 4
  br label %do.body129.i

do.body129.i:                                     ; preds = %if.else127.i, %do.end121.i, %do.body115.i.do.body129.i_crit_edge
  %attr_bus_info.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %call7.i.i, i32 0, i32 8
  %key131.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 3
  %41 = ptrtoint ptr %key131.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @class_dev_create.__key.35, ptr %key131.i, align 8
  %42 = ptrtoint ptr %attr_bus_info.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.36, ptr %attr_bus_info.i, align 8
  %mode139.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 1
  %43 = ptrtoint ptr %mode139.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 292, ptr %mode139.i, align 4
  %show141.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %call7.i.i, i32 0, i32 8, i32 1
  %44 = ptrtoint ptr %show141.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @bus_info_show, ptr %show141.i, align 4
  %store143.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %call7.i.i, i32 0, i32 8, i32 2
  %45 = ptrtoint ptr %store143.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %store143.i, align 8
  %46 = ptrtoint ptr %class_dev18.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %class_dev18.i, align 4
  %call146.i = tail call i32 @device_create_file(ptr noundef %47, ptr noundef %attr_bus_info.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i)
  %cmp147.i = icmp slt i32 %call146.i, 0
  br i1 %cmp147.i, label %do.body149.i, label %if.else161.i

do.body149.i:                                     ; preds = %do.body129.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %48 = load i32, ptr @pvrusb2_debug, align 4
  %and150.i = and i32 %48, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150.i)
  %tobool151.not.i = icmp eq i32 %and150.i, 0
  br i1 %tobool151.not.i, label %do.body149.i.do.body163.i_crit_edge, label %do.end155.i

do.body149.i.do.body163.i_crit_edge:              ; preds = %do.body149.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body163.i

do.end155.i:                                      ; preds = %do.body149.i
  call void @__sanitizer_cov_trace_pc() #7
  %call157.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %call146.i) #9
  br label %do.body163.i

if.else161.i:                                     ; preds = %do.body129.i
  call void @__sanitizer_cov_trace_pc() #7
  %bus_info_created_ok.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %call7.i.i, i32 0, i32 14
  %49 = ptrtoint ptr %bus_info_created_ok.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %bus_info_created_ok.i, align 8
  br label %do.body163.i

do.body163.i:                                     ; preds = %if.else161.i, %do.end155.i, %do.body149.i.do.body163.i_crit_edge
  %attr_hdw_name.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %call7.i.i, i32 0, i32 9
  %key165.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 3
  %50 = ptrtoint ptr %key165.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @class_dev_create.__key.39, ptr %key165.i, align 4
  %51 = ptrtoint ptr %attr_hdw_name.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.40, ptr %attr_hdw_name.i, align 4
  %mode173.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 1
  %52 = ptrtoint ptr %mode173.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 292, ptr %mode173.i, align 8
  %show175.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %call7.i.i, i32 0, i32 9, i32 1
  %53 = ptrtoint ptr %show175.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @hdw_name_show, ptr %show175.i, align 8
  %store177.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %call7.i.i, i32 0, i32 9, i32 2
  %54 = ptrtoint ptr %store177.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %store177.i, align 4
  %55 = ptrtoint ptr %class_dev18.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %class_dev18.i, align 4
  %call180.i = tail call i32 @device_create_file(ptr noundef %56, ptr noundef %attr_hdw_name.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180.i)
  %cmp181.i = icmp slt i32 %call180.i, 0
  br i1 %cmp181.i, label %do.body183.i, label %if.else195.i

do.body183.i:                                     ; preds = %do.body163.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %57 = load i32, ptr @pvrusb2_debug, align 4
  %and184.i = and i32 %57, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and184.i)
  %tobool185.not.i = icmp eq i32 %and184.i, 0
  br i1 %tobool185.not.i, label %do.body183.i.do.body197.i_crit_edge, label %do.end189.i

do.body183.i.do.body197.i_crit_edge:              ; preds = %do.body183.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body197.i

do.end189.i:                                      ; preds = %do.body183.i
  call void @__sanitizer_cov_trace_pc() #7
  %call191.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %call180.i) #9
  br label %do.body197.i

if.else195.i:                                     ; preds = %do.body163.i
  call void @__sanitizer_cov_trace_pc() #7
  %hdw_name_created_ok.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %call7.i.i, i32 0, i32 15
  %58 = ptrtoint ptr %hdw_name_created_ok.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %hdw_name_created_ok.i, align 4
  br label %do.body197.i

do.body197.i:                                     ; preds = %if.else195.i, %do.end189.i, %do.body183.i.do.body197.i_crit_edge
  %attr_hdw_desc.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %call7.i.i, i32 0, i32 10
  %key199.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %call7.i.i, i32 0, i32 10, i32 0, i32 3
  %59 = ptrtoint ptr %key199.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @class_dev_create.__key.43, ptr %key199.i, align 8
  %60 = ptrtoint ptr %attr_hdw_desc.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @.str.44, ptr %attr_hdw_desc.i, align 8
  %mode207.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %call7.i.i, i32 0, i32 10, i32 0, i32 1
  %61 = ptrtoint ptr %mode207.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 292, ptr %mode207.i, align 4
  %show209.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %call7.i.i, i32 0, i32 10, i32 1
  %62 = ptrtoint ptr %show209.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @hdw_desc_show, ptr %show209.i, align 4
  %store211.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %call7.i.i, i32 0, i32 10, i32 2
  %63 = ptrtoint ptr %store211.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %store211.i, align 8
  %64 = ptrtoint ptr %class_dev18.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %class_dev18.i, align 4
  %call214.i = tail call i32 @device_create_file(ptr noundef %65, ptr noundef %attr_hdw_desc.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call214.i)
  %cmp215.i = icmp slt i32 %call214.i, 0
  br i1 %cmp215.i, label %do.body217.i, label %if.else229.i

do.body217.i:                                     ; preds = %do.body197.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %66 = load i32, ptr @pvrusb2_debug, align 4
  %and218.i = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and218.i)
  %tobool219.not.i = icmp eq i32 %and218.i, 0
  br i1 %tobool219.not.i, label %do.body217.i.if.end230.i_crit_edge, label %do.end223.i

do.body217.i.if.end230.i_crit_edge:               ; preds = %do.body217.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end230.i

do.end223.i:                                      ; preds = %do.body217.i
  call void @__sanitizer_cov_trace_pc() #7
  %call225.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %call214.i) #9
  br label %if.end230.i

if.else229.i:                                     ; preds = %do.body197.i
  call void @__sanitizer_cov_trace_pc() #7
  %hdw_desc_created_ok.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %call7.i.i, i32 0, i32 16
  %67 = ptrtoint ptr %hdw_desc_created_ok.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %hdw_desc_created_ok.i, align 8
  br label %if.end230.i

if.end230.i:                                      ; preds = %if.else229.i, %do.end223.i, %do.body217.i.if.end230.i_crit_edge
  %68 = ptrtoint ptr %hdw.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hdw.i, align 8
  %call.i.i = tail call i32 @pvr2_hdw_get_ctrl_count(ptr noundef %69) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp4.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp4.not.i.i, label %if.end230.i.pvr2_sysfs_add_controls.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.end230.i.pvr2_sysfs_add_controls.exit.i_crit_edge: ; preds = %if.end230.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pvr2_sysfs_add_controls.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end230.i
  %item_last.i.i.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %call7.i.i, i32 0, i32 4
  %item_first.i.i.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %call7.i.i, i32 0, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %pvr2_sysfs_add_control.exit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %idx.05.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %pvr2_sysfs_add_control.exit.i.i.for.body.i.i_crit_edge ]
  %70 = ptrtoint ptr %hdw.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hdw.i, align 8
  %call.i.i.i = tail call ptr @pvr2_hdw_get_ctrl_by_index(ptr noundef %71, i32 noundef %idx.05.i.i) #5
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i.pvr2_sysfs_add_control.exit.i.i_crit_edge, label %if.end.i.i.i

for.body.i.i.pvr2_sysfs_add_control.exit.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pvr2_sysfs_add_control.exit.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %72 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %72, i32 noundef 3520, i32 noundef 404) #8
  %tobool2.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.pvr2_sysfs_add_control.exit.i.i_crit_edge, label %do.body.i.i.i

if.end.i.i.i.pvr2_sysfs_add_control.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pvr2_sysfs_add_control.exit.i.i

do.body.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %73 = load i32, ptr @pvrusb2_debug, align 4
  %and.i.i.i = and i32 %73, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %do.body.i.i.i.do.end11.i.i.i_crit_edge, label %do.end.i.i.i

do.body.i.i.i.do.end11.i.i.i_crit_edge:           ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end11.i.i.i

do.end.i.i.i:                                     ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call8.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull %call7.i.i.i.i.i) #9
  br label %do.end11.i.i.i

do.end11.i.i.i:                                   ; preds = %do.end.i.i.i, %do.body.i.i.i.do.end11.i.i.i_crit_edge
  %cptr12.i.i.i = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 9
  %74 = ptrtoint ptr %cptr12.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call.i.i.i, ptr %cptr12.i.i.i, align 4
  %ctl_id13.i.i.i = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 10
  %75 = ptrtoint ptr %ctl_id13.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %idx.05.i.i, ptr %ctl_id13.i.i.i, align 8
  %chptr.i.i.i = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 11
  %76 = ptrtoint ptr %chptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call7.i.i, ptr %chptr.i.i.i, align 4
  %item_next.i.i.i = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 12
  %77 = ptrtoint ptr %item_next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %item_next.i.i.i, align 8
  %78 = ptrtoint ptr %item_last.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %item_last.i.i.i, align 8
  %tobool14.not.i.i.i = icmp eq ptr %79, null
  %item_next17.i.i.i = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %79, i32 0, i32 12
  %item_first.sink.i.i.i = select i1 %tobool14.not.i.i.i, ptr %item_first.i.i.i, ptr %item_next17.i.i.i
  %80 = ptrtoint ptr %item_first.sink.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call7.i.i.i.i.i, ptr %item_first.sink.i.i.i, align 4
  store ptr %call7.i.i.i.i.i, ptr %item_last.i.i.i, align 8
  %key.i.i.i = getelementptr inbounds %struct.attribute, ptr %call7.i.i.i.i.i, i32 0, i32 3
  %81 = ptrtoint ptr %key.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @pvr2_sysfs_add_control.__key, ptr %key.i.i.i, align 8
  %82 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @.str.51, ptr %call7.i.i.i.i.i, align 8
  %mode.i.i.i = getelementptr inbounds %struct.attribute, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %83 = ptrtoint ptr %mode.i.i.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 292, ptr %mode.i.i.i, align 4
  %show.i.i.i = getelementptr inbounds %struct.device_attribute, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %84 = ptrtoint ptr %show.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @show_name, ptr %show.i.i.i, align 4
  %attr_type.i.i.i = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %key30.i.i.i = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 0, i32 3
  %85 = ptrtoint ptr %key30.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @pvr2_sysfs_add_control.__key.52, ptr %key30.i.i.i, align 4
  %86 = ptrtoint ptr %attr_type.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @.str.53, ptr %attr_type.i.i.i, align 4
  %mode38.i.i.i = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 0, i32 1
  %87 = ptrtoint ptr %mode38.i.i.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 292, ptr %mode38.i.i.i, align 8
  %show40.i.i.i = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 1
  %88 = ptrtoint ptr %show40.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @show_type, ptr %show40.i.i.i, align 8
  %attr_min.i.i.i = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 2
  %key43.i.i.i = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 2, i32 0, i32 3
  %89 = ptrtoint ptr %key43.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @pvr2_sysfs_add_control.__key.54, ptr %key43.i.i.i, align 8
  %90 = ptrtoint ptr %attr_min.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @.str.55, ptr %attr_min.i.i.i, align 8
  %mode51.i.i.i = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 2, i32 0, i32 1
  %91 = ptrtoint ptr %mode51.i.i.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 292, ptr %mode51.i.i.i, align 4
  %show53.i.i.i = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 2, i32 1
  %92 = ptrtoint ptr %show53.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @show_min, ptr %show53.i.i.i, align 4
  %attr_max.i.i.i = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 3
  %key56.i.i.i = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 3, i32 0, i32 3
  %93 = ptrtoint ptr %key56.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @pvr2_sysfs_add_control.__key.56, ptr %key56.i.i.i, align 4
  %94 = ptrtoint ptr %attr_max.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @.str.57, ptr %attr_max.i.i.i, align 4
  %mode64.i.i.i = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 3, i32 0, i32 1
  %95 = ptrtoint ptr %mode64.i.i.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 292, ptr %mode64.i.i.i, align 8
  %show66.i.i.i = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 3, i32 1
  %96 = ptrtoint ptr %show66.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @show_max, ptr %show66.i.i.i, align 8
  %attr_def.i.i.i = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 4
  %key69.i.i.i = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 4, i32 0, i32 3
  %97 = ptrtoint ptr %key69.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @pvr2_sysfs_add_control.__key.58, ptr %key69.i.i.i, align 8
  %98 = ptrtoint ptr %attr_def.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @.str.59, ptr %attr_def.i.i.i, align 8
  %mode77.i.i.i = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 4, i32 0, i32 1
  %99 = ptrtoint ptr %mode77.i.i.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 292, ptr %mode77.i.i.i, align 4
  %show79.i.i.i = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 4, i32 1
  %100 = ptrtoint ptr %show79.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @show_def, ptr %show79.i.i.i, align 4
  %attr_val.i.i.i = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 7
  %key82.i.i.i = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 7, i32 0, i32 3
  %101 = ptrtoint ptr %key82.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @pvr2_sysfs_add_control.__key.60, ptr %key82.i.i.i, align 4
  %102 = ptrtoint ptr %attr_val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @.str.61, ptr %attr_val.i.i.i, align 4
  %mode90.i.i.i = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 7, i32 0, i32 1
  %103 = ptrtoint ptr %mode90.i.i.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 292, ptr %mode90.i.i.i, align 8
  %attr_custom.i.i.i = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 8
  %key93.i.i.i = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 8, i32 0, i32 3
  %104 = ptrtoint ptr %key93.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @pvr2_sysfs_add_control.__key.62, ptr %key93.i.i.i, align 8
  %105 = ptrtoint ptr %attr_custom.i.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @.str.63, ptr %attr_custom.i.i.i, align 8
  %mode101.i.i.i = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 8, i32 0, i32 1
  %106 = ptrtoint ptr %mode101.i.i.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 292, ptr %mode101.i.i.i, align 4
  %attr_enum.i.i.i = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 5
  %key104.i.i.i = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 5, i32 0, i32 3
  %107 = ptrtoint ptr %key104.i.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @pvr2_sysfs_add_control.__key.64, ptr %key104.i.i.i, align 4
  %108 = ptrtoint ptr %attr_enum.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @.str.65, ptr %attr_enum.i.i.i, align 4
  %mode112.i.i.i = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 5, i32 0, i32 1
  %109 = ptrtoint ptr %mode112.i.i.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 292, ptr %mode112.i.i.i, align 8
  %show114.i.i.i = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 5, i32 1
  %110 = ptrtoint ptr %show114.i.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @show_enum, ptr %show114.i.i.i, align 8
  %attr_bits.i.i.i = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 6
  %key117.i.i.i = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 6, i32 0, i32 3
  %111 = ptrtoint ptr %key117.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr @pvr2_sysfs_add_control.__key.66, ptr %key117.i.i.i, align 8
  %112 = ptrtoint ptr %attr_bits.i.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @.str.67, ptr %attr_bits.i.i.i, align 8
  %mode125.i.i.i = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 6, i32 0, i32 1
  %113 = ptrtoint ptr %mode125.i.i.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 292, ptr %mode125.i.i.i, align 4
  %show127.i.i.i = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 6, i32 1
  %114 = ptrtoint ptr %show127.i.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @show_bits, ptr %show127.i.i.i, align 4
  %call128.i.i.i = tail call i32 @pvr2_ctrl_is_writable(ptr noundef nonnull %call.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128.i.i.i)
  %tobool129.not.i.i.i = icmp eq i32 %call128.i.i.i, 0
  br i1 %tobool129.not.i.i.i, label %do.end11.i.i.i.if.end141.i.i.i_crit_edge, label %if.then130.i.i.i

do.end11.i.i.i.if.end141.i.i.i_crit_edge:         ; preds = %do.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end141.i.i.i

if.then130.i.i.i:                                 ; preds = %do.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %115 = ptrtoint ptr %mode90.i.i.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %mode90.i.i.i, align 8
  %117 = or i16 %116, 144
  store i16 %117, ptr %mode90.i.i.i, align 8
  %118 = ptrtoint ptr %mode101.i.i.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %mode101.i.i.i, align 4
  %120 = or i16 %119, 144
  store i16 %120, ptr %mode101.i.i.i, align 4
  br label %if.end141.i.i.i

if.end141.i.i.i:                                  ; preds = %if.then130.i.i.i, %do.end11.i.i.i.if.end141.i.i.i_crit_edge
  %attr_gen.i.i.i = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 13
  %121 = ptrtoint ptr %attr_gen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call7.i.i.i.i.i, ptr %attr_gen.i.i.i, align 4
  %arrayidx148.i.i.i = getelementptr %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 13, i32 1
  %122 = ptrtoint ptr %arrayidx148.i.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %attr_type.i.i.i, ptr %arrayidx148.i.i.i, align 8
  %arrayidx153.i.i.i = getelementptr %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 13, i32 2
  %123 = ptrtoint ptr %arrayidx153.i.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %attr_val.i.i.i, ptr %arrayidx153.i.i.i, align 4
  %arrayidx158.i.i.i = getelementptr %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 13, i32 3
  %124 = ptrtoint ptr %arrayidx158.i.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %attr_def.i.i.i, ptr %arrayidx158.i.i.i, align 8
  %show160.i.i.i = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 7, i32 1
  %125 = ptrtoint ptr %show160.i.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr @show_val_norm, ptr %show160.i.i.i, align 8
  %store.i.i.i = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 7, i32 2
  %126 = ptrtoint ptr %store.i.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr @store_val_norm, ptr %store.i.i.i, align 4
  %call162.i.i.i = tail call i32 @pvr2_ctrl_has_custom_symbols(ptr noundef nonnull %call.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162.i.i.i)
  %tobool163.not.i.i.i = icmp eq i32 %call162.i.i.i, 0
  br i1 %tobool163.not.i.i.i, label %if.end141.i.i.i.if.end174.i.i.i_crit_edge, label %if.then164.i.i.i

if.end141.i.i.i.if.end174.i.i.i_crit_edge:        ; preds = %if.end141.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end174.i.i.i

if.then164.i.i.i:                                 ; preds = %if.end141.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx169.i.i.i = getelementptr %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 13, i32 4
  %127 = ptrtoint ptr %arrayidx169.i.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %attr_custom.i.i.i, ptr %arrayidx169.i.i.i, align 4
  %show171.i.i.i = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 8, i32 1
  %128 = ptrtoint ptr %show171.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr @show_val_custom, ptr %show171.i.i.i, align 4
  %store173.i.i.i = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 8, i32 2
  %129 = ptrtoint ptr %store173.i.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr @store_val_custom, ptr %store173.i.i.i, align 8
  br label %if.end174.i.i.i

if.end174.i.i.i:                                  ; preds = %if.then164.i.i.i, %if.end141.i.i.i.if.end174.i.i.i_crit_edge
  %acnt.0.i.i.i = phi i32 [ 5, %if.then164.i.i.i ], [ 4, %if.end141.i.i.i.if.end174.i.i.i_crit_edge ]
  %call175.i.i.i = tail call i32 @pvr2_ctrl_get_type(ptr noundef nonnull %call.i.i.i) #5
  %130 = zext i32 %call175.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %130, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call175.i.i.i, label %if.end174.i.i.i.sw.epilog.i.i.i_crit_edge [
    i32 1, label %if.end174.i.i.i.sw.epilog.sink.split.i.i.i_crit_edge
    i32 0, label %sw.bb181.i.i.i
    i32 2, label %sw.bb192.i.i.i
  ]

if.end174.i.i.i.sw.epilog.sink.split.i.i.i_crit_edge: ; preds = %if.end174.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split.i.i.i

if.end174.i.i.i.sw.epilog.i.i.i_crit_edge:        ; preds = %if.end174.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.i.i

sw.bb181.i.i.i:                                   ; preds = %if.end174.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc185.i.i.i = add nuw nsw i32 %acnt.0.i.i.i, 1
  %arrayidx186.i.i.i = getelementptr %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 13, i32 %acnt.0.i.i.i
  %131 = ptrtoint ptr %arrayidx186.i.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %attr_min.i.i.i, ptr %arrayidx186.i.i.i, align 4
  br label %sw.epilog.sink.split.i.i.i

sw.bb192.i.i.i:                                   ; preds = %if.end174.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split.i.i.i

sw.epilog.sink.split.i.i.i:                       ; preds = %sw.bb192.i.i.i, %sw.bb181.i.i.i, %if.end174.i.i.i.sw.epilog.sink.split.i.i.i_crit_edge
  %acnt.0.sink.i.i.i = phi i32 [ %acnt.0.i.i.i, %sw.bb192.i.i.i ], [ %inc185.i.i.i, %sw.bb181.i.i.i ], [ %acnt.0.i.i.i, %if.end174.i.i.i.sw.epilog.sink.split.i.i.i_crit_edge ]
  %attr_bits.sink.i.i.i = phi ptr [ %attr_bits.i.i.i, %sw.bb192.i.i.i ], [ %attr_max.i.i.i, %sw.bb181.i.i.i ], [ %attr_enum.i.i.i, %if.end174.i.i.i.sw.epilog.sink.split.i.i.i_crit_edge ]
  %arrayidx197.i.i.i = getelementptr %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 13, i32 %acnt.0.sink.i.i.i
  %132 = ptrtoint ptr %arrayidx197.i.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %attr_bits.sink.i.i.i, ptr %arrayidx197.i.i.i, align 4
  br label %sw.epilog.i.i.i

sw.epilog.i.i.i:                                  ; preds = %sw.epilog.sink.split.i.i.i, %if.end174.i.i.i.sw.epilog.i.i.i_crit_edge
  %name198.i.i.i = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 16
  %call199.i.i.i = tail call ptr @pvr2_ctrl_get_name(ptr noundef nonnull %call.i.i.i) #5
  %call200.i.i.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %name198.i.i.i, i32 noundef 79, ptr noundef nonnull @.str.68, ptr noundef %call199.i.i.i) #5
  %arrayidx202.i.i.i = getelementptr %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 16, i32 %call200.i.i.i
  %133 = ptrtoint ptr %arrayidx202.i.i.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 0, ptr %arrayidx202.i.i.i, align 1
  %grp.i.i.i = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 14
  %134 = ptrtoint ptr %grp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %name198.i.i.i, ptr %grp.i.i.i, align 4
  %attrs.i.i.i = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 14, i32 3
  %135 = ptrtoint ptr %attrs.i.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %attr_gen.i.i.i, ptr %attrs.i.i.i, align 8
  %136 = ptrtoint ptr %class_dev18.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %class_dev18.i, align 4
  %call210.i.i.i = tail call i32 @sysfs_create_group(ptr noundef %137, ptr noundef %grp.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call210.i.i.i)
  %tobool211.not.i.i.i = icmp eq i32 %call210.i.i.i, 0
  br i1 %tobool211.not.i.i.i, label %if.end225.i.i.i, label %do.body213.i.i.i

do.body213.i.i.i:                                 ; preds = %sw.epilog.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %138 = load i32, ptr @pvrusb2_debug, align 4
  %and214.i.i.i = and i32 %138, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and214.i.i.i)
  %tobool215.not.i.i.i = icmp eq i32 %and214.i.i.i, 0
  br i1 %tobool215.not.i.i.i, label %do.body213.i.i.i.pvr2_sysfs_add_control.exit.i.i_crit_edge, label %do.end219.i.i.i

do.body213.i.i.i.pvr2_sysfs_add_control.exit.i.i_crit_edge: ; preds = %do.body213.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pvr2_sysfs_add_control.exit.i.i

do.end219.i.i.i:                                  ; preds = %do.body213.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call221.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %call210.i.i.i) #9
  br label %pvr2_sysfs_add_control.exit.i.i

if.end225.i.i.i:                                  ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %created_ok.i.i.i = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %call7.i.i.i.i.i, i32 0, i32 15
  %139 = ptrtoint ptr %created_ok.i.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 1, ptr %created_ok.i.i.i, align 8
  br label %pvr2_sysfs_add_control.exit.i.i

pvr2_sysfs_add_control.exit.i.i:                  ; preds = %if.end225.i.i.i, %do.end219.i.i.i, %do.body213.i.i.i.pvr2_sysfs_add_control.exit.i.i_crit_edge, %if.end.i.i.i.pvr2_sysfs_add_control.exit.i.i_crit_edge, %for.body.i.i.pvr2_sysfs_add_control.exit.i.i_crit_edge
  %inc.i.i = add nuw i32 %idx.05.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %call.i.i
  br i1 %exitcond.not.i.i, label %pvr2_sysfs_add_control.exit.i.i.pvr2_sysfs_add_controls.exit.i_crit_edge, label %pvr2_sysfs_add_control.exit.i.i.for.body.i.i_crit_edge

pvr2_sysfs_add_control.exit.i.i.for.body.i.i_crit_edge: ; preds = %pvr2_sysfs_add_control.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

pvr2_sysfs_add_control.exit.i.i.pvr2_sysfs_add_controls.exit.i_crit_edge: ; preds = %pvr2_sysfs_add_control.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pvr2_sysfs_add_controls.exit.i

pvr2_sysfs_add_controls.exit.i:                   ; preds = %pvr2_sysfs_add_control.exit.i.i.pvr2_sysfs_add_controls.exit.i_crit_edge, %if.end230.i.pvr2_sysfs_add_controls.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %140 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %140, i32 noundef 3520, i32 noundef 64) #8
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %pvr2_sysfs_add_controls.exit.i.cleanup_crit_edge, label %do.body.i.i

pvr2_sysfs_add_controls.exit.i.cleanup_crit_edge: ; preds = %pvr2_sysfs_add_controls.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body.i.i:                                      ; preds = %pvr2_sysfs_add_controls.exit.i
  %key.i.i = getelementptr inbounds %struct.attribute, ptr %call7.i.i.i.i, i32 0, i32 3
  %141 = ptrtoint ptr %key.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr @pvr2_sysfs_add_debugifc.__key, ptr %key.i.i, align 8
  %142 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr @.str.100, ptr %call7.i.i.i.i, align 8
  %mode.i.i = getelementptr inbounds %struct.attribute, ptr %call7.i.i.i.i, i32 0, i32 1
  %143 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 436, ptr %mode.i.i, align 4
  %show.i.i = getelementptr inbounds %struct.device_attribute, ptr %call7.i.i.i.i, i32 0, i32 1
  %144 = ptrtoint ptr %show.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr @debugcmd_show, ptr %show.i.i, align 4
  %store.i.i = getelementptr inbounds %struct.device_attribute, ptr %call7.i.i.i.i, i32 0, i32 2
  %145 = ptrtoint ptr %store.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr @debugcmd_store, ptr %store.i.i, align 8
  %attr_debuginfo.i.i = getelementptr inbounds %struct.pvr2_sysfs_debugifc, ptr %call7.i.i.i.i, i32 0, i32 1
  %key9.i.i = getelementptr inbounds %struct.pvr2_sysfs_debugifc, ptr %call7.i.i.i.i, i32 0, i32 1, i32 0, i32 3
  %146 = ptrtoint ptr %key9.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr @pvr2_sysfs_add_debugifc.__key.101, ptr %key9.i.i, align 4
  %147 = ptrtoint ptr %attr_debuginfo.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr @.str.102, ptr %attr_debuginfo.i.i, align 4
  %mode17.i.i = getelementptr inbounds %struct.pvr2_sysfs_debugifc, ptr %call7.i.i.i.i, i32 0, i32 1, i32 0, i32 1
  %148 = ptrtoint ptr %mode17.i.i to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 292, ptr %mode17.i.i, align 8
  %show19.i.i = getelementptr inbounds %struct.pvr2_sysfs_debugifc, ptr %call7.i.i.i.i, i32 0, i32 1, i32 1
  %149 = ptrtoint ptr %show19.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr @debuginfo_show, ptr %show19.i.i, align 8
  %debugifc.i.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %call7.i.i, i32 0, i32 2
  %150 = ptrtoint ptr %debugifc.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %call7.i.i.i.i, ptr %debugifc.i.i, align 8
  %151 = ptrtoint ptr %class_dev18.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %class_dev18.i, align 4
  %call21.i.i = tail call i32 @device_create_file(ptr noundef %152, ptr noundef nonnull %call7.i.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i.i)
  %cmp.i.i = icmp slt i32 %call21.i.i, 0
  br i1 %cmp.i.i, label %do.body23.i.i, label %if.else.i.i

do.body23.i.i:                                    ; preds = %do.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %153 = load i32, ptr @pvrusb2_debug, align 4
  %and.i.i = and i32 %153, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool24.not.i.i, label %do.body23.i.i.if.end33.i.i_crit_edge, label %do.end28.i.i

do.body23.i.i.if.end33.i.i_crit_edge:             ; preds = %do.body23.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33.i.i

do.end28.i.i:                                     ; preds = %do.body23.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call29.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %call21.i.i) #9
  br label %if.end33.i.i

if.else.i.i:                                      ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %debugcmd_created_ok.i.i = getelementptr inbounds %struct.pvr2_sysfs_debugifc, ptr %call7.i.i.i.i, i32 0, i32 2
  %154 = ptrtoint ptr %debugcmd_created_ok.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 1, ptr %debugcmd_created_ok.i.i, align 8
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %if.else.i.i, %do.end28.i.i, %do.body23.i.i.if.end33.i.i_crit_edge
  %155 = ptrtoint ptr %class_dev18.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %class_dev18.i, align 4
  %call36.i.i = tail call i32 @device_create_file(ptr noundef %156, ptr noundef %attr_debuginfo.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i.i)
  %cmp37.i.i = icmp slt i32 %call36.i.i, 0
  br i1 %cmp37.i.i, label %do.body39.i.i, label %if.else51.i.i

do.body39.i.i:                                    ; preds = %if.end33.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %157 = load i32, ptr @pvrusb2_debug, align 4
  %and40.i.i = and i32 %157, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i.i)
  %tobool41.not.i.i = icmp eq i32 %and40.i.i, 0
  br i1 %tobool41.not.i.i, label %do.body39.i.i.cleanup_crit_edge, label %do.end45.i.i

do.body39.i.i.cleanup_crit_edge:                  ; preds = %do.body39.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end45.i.i:                                     ; preds = %do.body39.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call47.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %call36.i.i) #9
  br label %cleanup

if.else51.i.i:                                    ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %debuginfo_created_ok.i.i = getelementptr inbounds %struct.pvr2_sysfs_debugifc, ptr %call7.i.i.i.i, i32 0, i32 3
  %158 = ptrtoint ptr %debuginfo_created_ok.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 1, ptr %debuginfo_created_ok.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else51.i.i, %do.end45.i.i, %do.body39.i.i.cleanup_crit_edge, %pvr2_sysfs_add_controls.exit.i.cleanup_crit_edge, %do.end33.i, %if.end.i.cleanup_crit_edge, %do.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pvr2_channel_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pvr2_sysfs_internal_check(ptr noundef %chp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chp, align 4
  %disconnect_flag = getelementptr inbounds %struct.pvr2_context, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %disconnect_flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %disconnect_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %4 = load i32, ptr @pvrusb2_debug, align 4
  %and = and i32 %4, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.do.end7_crit_edge, label %do.end

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %chp) #9
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  %class_dev.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %chp, i32 0, i32 1
  %5 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %class_dev.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %do.end7.class_dev_destroy.exit_crit_edge, label %if.end.i

do.end7.class_dev_destroy.exit_crit_edge:         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %class_dev_destroy.exit

if.end.i:                                         ; preds = %do.end7
  %debugifc.i.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %chp, i32 0, i32 2
  %7 = ptrtoint ptr %debugifc.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %debugifc.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.pvr2_sysfs_tear_down_debugifc.exit.i_crit_edge, label %if.end.i.i

if.end.i.pvr2_sysfs_tear_down_debugifc.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pvr2_sysfs_tear_down_debugifc.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  %debuginfo_created_ok.i.i = getelementptr inbounds %struct.pvr2_sysfs_debugifc, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %debuginfo_created_ok.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debuginfo_created_ok.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end5.i.i_crit_edge, label %if.then3.i.i

if.end.i.i.if.end5.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %attr_debuginfo.i.i = getelementptr inbounds %struct.pvr2_sysfs_debugifc, ptr %8, i32 0, i32 1
  tail call void @device_remove_file(ptr noundef nonnull %6, ptr noundef %attr_debuginfo.i.i) #5
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then3.i.i, %if.end.i.i.if.end5.i.i_crit_edge
  %11 = ptrtoint ptr %debugifc.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %debugifc.i.i, align 4
  %debugcmd_created_ok.i.i = getelementptr inbounds %struct.pvr2_sysfs_debugifc, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %debugcmd_created_ok.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %debugcmd_created_ok.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool7.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool7.not.i.i, label %if.end5.i.i.if.end11.i.i_crit_edge, label %if.then8.i.i

if.end5.i.i.if.end11.i.i_crit_edge:               ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.i.i

if.then8.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %class_dev.i, align 4
  tail call void @device_remove_file(ptr noundef %16, ptr noundef %12) #5
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then8.i.i, %if.end5.i.i.if.end11.i.i_crit_edge
  %17 = ptrtoint ptr %debugifc.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %debugifc.i.i, align 4
  tail call void @kfree(ptr noundef %18) #5
  %19 = ptrtoint ptr %debugifc.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %debugifc.i.i, align 4
  br label %pvr2_sysfs_tear_down_debugifc.exit.i

pvr2_sysfs_tear_down_debugifc.exit.i:             ; preds = %if.end11.i.i, %if.end.i.pvr2_sysfs_tear_down_debugifc.exit.i_crit_edge
  %item_first.i.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %chp, i32 0, i32 3
  %20 = ptrtoint ptr %item_first.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %item_first.i.i, align 4
  %tobool.not14.i.i = icmp eq ptr %21, null
  br i1 %tobool.not14.i.i, label %pvr2_sysfs_tear_down_debugifc.exit.i.pvr2_sysfs_tear_down_controls.exit.i_crit_edge, label %pvr2_sysfs_tear_down_debugifc.exit.i.for.body.i.i_crit_edge

pvr2_sysfs_tear_down_debugifc.exit.i.for.body.i.i_crit_edge: ; preds = %pvr2_sysfs_tear_down_debugifc.exit.i
  br label %for.body.i.i

pvr2_sysfs_tear_down_debugifc.exit.i.pvr2_sysfs_tear_down_controls.exit.i_crit_edge: ; preds = %pvr2_sysfs_tear_down_debugifc.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pvr2_sysfs_tear_down_controls.exit.i

for.body.i.i:                                     ; preds = %do.end7.i.i.for.body.i.i_crit_edge, %pvr2_sysfs_tear_down_debugifc.exit.i.for.body.i.i_crit_edge
  %cip1.015.i.i = phi ptr [ %23, %do.end7.i.i.for.body.i.i_crit_edge ], [ %21, %pvr2_sysfs_tear_down_debugifc.exit.i.for.body.i.i_crit_edge ]
  %item_next.i.i = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %cip1.015.i.i, i32 0, i32 12
  %22 = ptrtoint ptr %item_next.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %item_next.i.i, align 4
  %created_ok.i.i = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %cip1.015.i.i, i32 0, i32 15
  %24 = ptrtoint ptr %created_ok.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %created_ok.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool1.not.i.i = icmp eq i32 %25, 0
  br i1 %tobool1.not.i.i, label %for.body.i.i.do.body.i.i_crit_edge, label %if.then.i.i

for.body.i.i.do.body.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %class_dev.i, align 4
  %grp.i.i = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %cip1.015.i.i, i32 0, i32 14
  tail call void @sysfs_remove_group(ptr noundef %27, ptr noundef %grp.i.i) #5
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then.i.i, %for.body.i.i.do.body.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %28 = load i32, ptr @pvrusb2_debug, align 4
  %and.i.i = and i32 %28, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not.i65.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool2.not.i65.i, label %do.body.i.i.do.end7.i.i_crit_edge, label %do.end.i.i

do.body.i.i.do.end7.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull %cip1.015.i.i) #9
  br label %do.end7.i.i

do.end7.i.i:                                      ; preds = %do.end.i.i, %do.body.i.i.do.end7.i.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %cip1.015.i.i) #5
  %tobool.not.i66.i = icmp eq ptr %23, null
  br i1 %tobool.not.i66.i, label %do.end7.i.i.pvr2_sysfs_tear_down_controls.exit.i_crit_edge, label %do.end7.i.i.for.body.i.i_crit_edge

do.end7.i.i.for.body.i.i_crit_edge:               ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

do.end7.i.i.pvr2_sysfs_tear_down_controls.exit.i_crit_edge: ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pvr2_sysfs_tear_down_controls.exit.i

pvr2_sysfs_tear_down_controls.exit.i:             ; preds = %do.end7.i.i.pvr2_sysfs_tear_down_controls.exit.i_crit_edge, %pvr2_sysfs_tear_down_debugifc.exit.i.pvr2_sysfs_tear_down_controls.exit.i_crit_edge
  %hdw_desc_created_ok.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %chp, i32 0, i32 16
  %29 = ptrtoint ptr %hdw_desc_created_ok.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hdw_desc_created_ok.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool1.not.i = icmp eq i32 %30, 0
  br i1 %tobool1.not.i, label %pvr2_sysfs_tear_down_controls.exit.i.if.end4.i_crit_edge, label %if.then2.i

pvr2_sysfs_tear_down_controls.exit.i.if.end4.i_crit_edge: ; preds = %pvr2_sysfs_tear_down_controls.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i

if.then2.i:                                       ; preds = %pvr2_sysfs_tear_down_controls.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %class_dev.i, align 4
  %attr_hdw_desc.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %chp, i32 0, i32 10
  tail call void @device_remove_file(ptr noundef %32, ptr noundef %attr_hdw_desc.i) #5
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %pvr2_sysfs_tear_down_controls.exit.i.if.end4.i_crit_edge
  %hdw_name_created_ok.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %chp, i32 0, i32 15
  %33 = ptrtoint ptr %hdw_name_created_ok.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hdw_name_created_ok.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool5.not.i = icmp eq i32 %34, 0
  br i1 %tobool5.not.i, label %if.end4.i.if.end8.i_crit_edge, label %if.then6.i

if.end4.i.if.end8.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %class_dev.i, align 4
  %attr_hdw_name.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %chp, i32 0, i32 9
  tail call void @device_remove_file(ptr noundef %36, ptr noundef %attr_hdw_name.i) #5
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.end4.i.if.end8.i_crit_edge
  %bus_info_created_ok.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %chp, i32 0, i32 14
  %37 = ptrtoint ptr %bus_info_created_ok.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bus_info_created_ok.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool9.not.i = icmp eq i32 %38, 0
  br i1 %tobool9.not.i, label %if.end8.i.if.end12.i_crit_edge, label %if.then10.i

if.end8.i.if.end12.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %class_dev.i, align 4
  %attr_bus_info.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %chp, i32 0, i32 8
  tail call void @device_remove_file(ptr noundef %40, ptr noundef %attr_bus_info.i) #5
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %if.end8.i.if.end12.i_crit_edge
  %v4l_minor_number_created_ok.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %chp, i32 0, i32 11
  %41 = ptrtoint ptr %v4l_minor_number_created_ok.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %v4l_minor_number_created_ok.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool13.not.i = icmp eq i32 %42, 0
  br i1 %tobool13.not.i, label %if.end12.i.if.end16.i_crit_edge, label %if.then14.i

if.end12.i.if.end16.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

if.then14.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %class_dev.i, align 4
  %attr_v4l_minor_number.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %chp, i32 0, i32 5
  tail call void @device_remove_file(ptr noundef %44, ptr noundef %attr_v4l_minor_number.i) #5
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %if.end12.i.if.end16.i_crit_edge
  %v4l_radio_minor_number_created_ok.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %chp, i32 0, i32 12
  %45 = ptrtoint ptr %v4l_radio_minor_number_created_ok.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %v4l_radio_minor_number_created_ok.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool17.not.i = icmp eq i32 %46, 0
  br i1 %tobool17.not.i, label %if.end16.i.if.end20.i_crit_edge, label %if.then18.i

if.end16.i.if.end20.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.i

if.then18.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %class_dev.i, align 4
  %attr_v4l_radio_minor_number.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %chp, i32 0, i32 6
  tail call void @device_remove_file(ptr noundef %48, ptr noundef %attr_v4l_radio_minor_number.i) #5
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then18.i, %if.end16.i.if.end20.i_crit_edge
  %unit_number_created_ok.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %chp, i32 0, i32 13
  %49 = ptrtoint ptr %unit_number_created_ok.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %unit_number_created_ok.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool21.not.i = icmp eq i32 %50, 0
  br i1 %tobool21.not.i, label %if.end20.i.do.body.i_crit_edge, label %if.then22.i

if.end20.i.do.body.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

if.then22.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %class_dev.i, align 4
  %attr_unit_number.i = getelementptr inbounds %struct.pvr2_sysfs, ptr %chp, i32 0, i32 7
  tail call void @device_remove_file(ptr noundef %52, ptr noundef %attr_unit_number.i) #5
  br label %do.body.i

do.body.i:                                        ; preds = %if.then22.i, %if.end20.i.do.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %53 = load i32, ptr @pvrusb2_debug, align 4
  %and.i = and i32 %53, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool25.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool25.not.i, label %do.body.i.do.end31.i_crit_edge, label %do.end.i

do.body.i.do.end31.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end31.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %class_dev.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %55) #9
  br label %do.end31.i

do.end31.i:                                       ; preds = %do.end.i, %do.body.i.do.end31.i_crit_edge
  %56 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %class_dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %57, i32 0, i32 8
  %58 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %driver_data.i.i, align 4
  %59 = load ptr, ptr %class_dev.i, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %parent.i, align 8
  store ptr null, ptr %parent.i, align 8
  tail call void @put_device(ptr noundef %61) #5
  %62 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %class_dev.i, align 4
  tail call void @device_unregister(ptr noundef %63) #5
  %64 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %class_dev.i, align 4
  br label %class_dev_destroy.exit

class_dev_destroy.exit:                           ; preds = %do.end31.i, %do.end7.class_dev_destroy.exit_crit_edge
  tail call void @pvr2_channel_done(ptr noundef %chp) #5
  tail call void @kfree(ptr noundef %chp) #5
  br label %cleanup

cleanup:                                          ; preds = %class_dev_destroy.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pvr2_sysfs_class_create() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 60) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %1 = load i32, ptr @pvrusb2_debug, align 4
  %and = and i32 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.do.end7_crit_edge, label %do.end

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull %call7.i.i) #9
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.5, ptr %call7.i.i, align 8
  %class_release = getelementptr inbounds %struct.class, ptr %call7.i.i, i32 0, i32 7
  %3 = ptrtoint ptr %class_release to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @pvr2_sysfs_class_release, ptr %class_release, align 4
  %dev_release = getelementptr inbounds %struct.class, ptr %call7.i.i, i32 0, i32 8
  %4 = ptrtoint ptr %dev_release to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @pvr2_sysfs_release, ptr %dev_release, align 8
  %call12 = tail call i32 @__class_register(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @pvr2_sysfs_class_create.__key) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.end7.cleanup_crit_edge, label %do.body15

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body15:                                        ; preds = %do.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %5 = load i32, ptr @pvrusb2_debug, align 4
  %and16 = and i32 %5, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.body15.do.end26_crit_edge, label %do.end21

do.body15.do.end26_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end26

do.end21:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #7
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull %call7.i.i) #9
  br label %do.end26

do.end26:                                         ; preds = %do.end21, %do.body15.do.end26_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %do.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %do.end26 ], [ %call7.i.i, %do.end7.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pvr2_sysfs_class_release(ptr noundef %class) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %0 = load i32, ptr @pvrusb2_debug, align 4
  %and = and i32 %0, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef %class) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  tail call void @kfree(ptr noundef %class) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pvr2_sysfs_release(ptr noundef %class_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %0 = load i32, ptr @pvrusb2_debug, align 4
  %and = and i32 %0, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %class_dev) #9
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  tail call void @kfree(ptr noundef %class_dev) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pvr2_sysfs_class_destroy(ptr noundef %clp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %0 = load i32, ptr @pvrusb2_debug, align 4
  %and = and i32 %0, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %clp) #9
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %tobool3.not = icmp eq ptr %clp, null
  br i1 %tobool3.not, label %do.end2.if.end5_crit_edge, label %if.then4

do.end2.if.end5_crit_edge:                        ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then4:                                         ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @class_unregister(ptr noundef nonnull %clp) #5
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %do.end2.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pvr2_channel_done(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pvr2_hdw_get_dev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pvr2_hdw_get_device_identifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v4l_minor_number_show(ptr nocapture noundef readonly %class_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %class_dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %hdw = getelementptr inbounds %struct.pvr2_channel, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdw, align 4
  %call1 = tail call i32 @pvr2_hdw_v4l_get_minor_number(ptr noundef %3, i32 noundef 0) #5
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.47, i32 noundef %call1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v4l_radio_minor_number_show(ptr nocapture noundef readonly %class_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %class_dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %hdw = getelementptr inbounds %struct.pvr2_channel, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdw, align 4
  %call1 = tail call i32 @pvr2_hdw_v4l_get_minor_number(ptr noundef %3, i32 noundef 2) #5
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.47, i32 noundef %call1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unit_number_show(ptr nocapture noundef readonly %class_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %class_dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %hdw = getelementptr inbounds %struct.pvr2_channel, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdw, align 4
  %call1 = tail call i32 @pvr2_hdw_get_unit_number(ptr noundef %3) #5
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.47, i32 noundef %call1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bus_info_show(ptr nocapture noundef readonly %class_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %class_dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %hdw = getelementptr inbounds %struct.pvr2_channel, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdw, align 4
  %call1 = tail call ptr @pvr2_hdw_get_bus_info(ptr noundef %3) #5
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.48, ptr noundef %call1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdw_name_show(ptr nocapture noundef readonly %class_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %class_dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %hdw = getelementptr inbounds %struct.pvr2_channel, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdw, align 4
  %call1 = tail call ptr @pvr2_hdw_get_type(ptr noundef %3) #5
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.48, ptr noundef %call1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdw_desc_show(ptr nocapture noundef readonly %class_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %class_dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %hdw = getelementptr inbounds %struct.pvr2_channel, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdw, align 4
  %call1 = tail call ptr @pvr2_hdw_get_desc(ptr noundef %3) #5
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.48, ptr noundef %call1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_hdw_v4l_get_minor_number(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_hdw_get_unit_number(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pvr2_hdw_get_bus_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pvr2_hdw_get_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pvr2_hdw_get_desc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_hdw_get_ctrl_count(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pvr2_hdw_get_ctrl_by_index(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_name(ptr nocapture noundef readnone %class_dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cptr = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %attr, i32 0, i32 9
  %0 = ptrtoint ptr %cptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cptr, align 4
  %call = tail call ptr @pvr2_ctrl_get_desc(ptr noundef %1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %2 = load i32, ptr @pvrusb2_debug, align 4
  %and = and i32 %2, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %chptr = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %attr, i32 0, i32 11
  %3 = ptrtoint ptr %chptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chptr, align 4
  %ctl_id = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, ptr %attr, i32 0, i32 10
  %5 = ptrtoint ptr %ctl_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ctl_id, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %4, i32 noundef %6, ptr noundef %call) #9
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %tobool6.not = icmp eq ptr %call, null
  br i1 %tobool6.not, label %do.end5.cleanup_crit_edge, label %if.end8

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.48, ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ -22, %do.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_type(ptr nocapture noundef readnone %class_dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cptr = getelementptr i8, ptr %attr, i32 224
  %0 = ptrtoint ptr %cptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cptr, align 4
  %call = tail call i32 @pvr2_ctrl_get_type(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call)
  %2 = icmp ult i32 %call, 4
  br i1 %2, label %switch.lookup, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.show_type, i32 0, i32 %call
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %do.body

do.body:                                          ; preds = %switch.lookup, %entry.do.body_crit_edge
  %name.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.78, %entry.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %4 = load i32, ptr @pvrusb2_debug, align 4
  %and = and i32 %4, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end8_crit_edge, label %do.end

do.body.do.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end8

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %chptr = getelementptr i8, ptr %attr, i32 232
  %5 = ptrtoint ptr %chptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chptr, align 4
  %ctl_id = getelementptr i8, ptr %attr, i32 228
  %7 = ptrtoint ptr %ctl_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ctl_id, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %6, i32 noundef %8, ptr noundef nonnull %name.0) #9
  br label %do.end8

do.end8:                                          ; preds = %do.end, %do.body.do.end8_crit_edge
  %call9 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.48, ptr noundef nonnull %name.0) #5
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_min(ptr nocapture noundef readnone %class_dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cptr = getelementptr i8, ptr %attr, i32 196
  %0 = ptrtoint ptr %cptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cptr, align 4
  %call = tail call i32 @pvr2_ctrl_get_min(ptr noundef %1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %2 = load i32, ptr @pvrusb2_debug, align 4
  %and = and i32 %2, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %chptr = getelementptr i8, ptr %attr, i32 204
  %3 = ptrtoint ptr %chptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chptr, align 4
  %ctl_id = getelementptr i8, ptr %attr, i32 200
  %5 = ptrtoint ptr %ctl_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ctl_id, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef %4, i32 noundef %6, i32 noundef %call) #9
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %call6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.83, i32 noundef %call) #5
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_max(ptr nocapture noundef readnone %class_dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cptr = getelementptr i8, ptr %attr, i32 168
  %0 = ptrtoint ptr %cptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cptr, align 4
  %call = tail call i32 @pvr2_ctrl_get_max(ptr noundef %1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %2 = load i32, ptr @pvrusb2_debug, align 4
  %and = and i32 %2, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %chptr = getelementptr i8, ptr %attr, i32 176
  %3 = ptrtoint ptr %chptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chptr, align 4
  %ctl_id = getelementptr i8, ptr %attr, i32 172
  %5 = ptrtoint ptr %ctl_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ctl_id, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef %4, i32 noundef %6, i32 noundef %call) #9
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %call6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.83, i32 noundef %call) #5
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_def(ptr nocapture noundef readnone %class_dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  %val = alloca i32, align 4
  %cnt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !245
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cnt) #5
  %1 = ptrtoint ptr %cnt to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %cnt, align 4
  %cptr = getelementptr i8, ptr %attr, i32 140
  %2 = ptrtoint ptr %cptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cptr, align 4
  %call = call i32 @pvr2_ctrl_get_def(ptr noundef %3, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %cptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cptr, align 4
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %call2 = call i32 @pvr2_ctrl_value_to_sym(ptr noundef %5, i32 noundef -1, i32 noundef %7, ptr noundef %buf, i32 noundef 4095, ptr noundef nonnull %cnt) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %8 = load i32, ptr @pvrusb2_debug, align 4
  %and = and i32 %8, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.do.end9_crit_edge, label %do.end

if.end.do.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %chptr = getelementptr i8, ptr %attr, i32 148
  %9 = ptrtoint ptr %chptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chptr, align 4
  %ctl_id = getelementptr i8, ptr %attr, i32 144
  %11 = ptrtoint ptr %ctl_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ctl_id, align 4
  %13 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cnt, align 4
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef %10, i32 noundef %12, i32 noundef %14, ptr noundef %buf, i32 noundef %16) #9
  br label %do.end9

do.end9:                                          ; preds = %do.end, %if.end.do.end9_crit_edge
  %17 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cnt, align 4
  %arrayidx = getelementptr i8, ptr %buf, i32 %18
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 10, ptr %arrayidx, align 1
  %add = add i32 %18, 1
  br label %cleanup

cleanup:                                          ; preds = %do.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %do.end9 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cnt) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_enum(ptr nocapture noundef readnone %class_dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  %ccnt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ccnt) #5
  %0 = ptrtoint ptr %ccnt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ccnt, align 4, !annotation !245
  %cptr = getelementptr i8, ptr %attr, i32 112
  %1 = ptrtoint ptr %cptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cptr, align 4
  %call = tail call i32 @pvr2_ctrl_get_cnt(ptr noundef %2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp28.not = icmp eq i32 %call, 0
  br i1 %cmp28.not, label %entry.do.body_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %val.030 = phi i32 [ %inc7, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %bcnt.029 = phi i32 [ %bcnt.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %3 = ptrtoint ptr %cptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cptr, align 4
  %add.ptr2 = getelementptr i8, ptr %buf, i32 %bcnt.029
  %sub = sub i32 4096, %bcnt.029
  %call3 = call i32 @pvr2_ctrl_get_valname(ptr noundef %4, i32 noundef %val.030, ptr noundef %add.ptr2, i32 noundef %sub, ptr noundef nonnull %ccnt) #5
  %5 = ptrtoint ptr %ccnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ccnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %for.body
  %add = add i32 %6, %bcnt.029
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add)
  %cmp4 = icmp ugt i32 %add, 4095
  br i1 %cmp4, label %if.end.do.body_crit_edge, label %if.end6

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr i8, ptr %buf, i32 %add
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 10, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %add, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end6, %for.body.for.inc_crit_edge
  %bcnt.1 = phi i32 [ %inc, %if.end6 ], [ %bcnt.029, %for.body.for.inc_crit_edge ]
  %inc7 = add nuw i32 %val.030, 1
  %exitcond.not = icmp eq i32 %inc7, %call
  br i1 %exitcond.not, label %for.inc.do.body_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %if.end.do.body_crit_edge, %entry.do.body_crit_edge
  %bcnt.2 = phi i32 [ 0, %entry.do.body_crit_edge ], [ %bcnt.1, %for.inc.do.body_crit_edge ], [ %add, %if.end.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %8 = load i32, ptr @pvrusb2_debug, align 4
  %and = and i32 %8, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %do.body.do.end15_crit_edge, label %do.end

do.body.do.end15_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end15

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %chptr = getelementptr i8, ptr %attr, i32 120
  %9 = ptrtoint ptr %chptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chptr, align 4
  %ctl_id = getelementptr i8, ptr %attr, i32 116
  %11 = ptrtoint ptr %ctl_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ctl_id, align 4
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %10, i32 noundef %12) #9
  br label %do.end15

do.end15:                                         ; preds = %do.end, %do.body.do.end15_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ccnt) #5
  ret i32 %bcnt.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_bits(ptr nocapture noundef readnone %class_dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  %ccnt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ccnt) #5
  %0 = ptrtoint ptr %ccnt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ccnt, align 4, !annotation !245
  %cptr = getelementptr i8, ptr %attr, i32 84
  %1 = ptrtoint ptr %cptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cptr, align 4
  %call = tail call i32 @pvr2_ctrl_get_mask(ptr noundef %2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not32 = icmp eq i32 %call, 0
  br i1 %tobool.not32, label %entry.do.body_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %valid_bits.035 = phi i32 [ %valid_bits.1, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %msk.034 = phi i32 [ %shl, %for.inc.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  %bcnt.033 = phi i32 [ %bcnt.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %and = and i32 %valid_bits.035, %msk.034
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %for.body
  %3 = ptrtoint ptr %cptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cptr, align 4
  %add.ptr4 = getelementptr i8, ptr %buf, i32 %bcnt.033
  %sub = sub i32 4096, %bcnt.033
  %call5 = call i32 @pvr2_ctrl_get_valname(ptr noundef %4, i32 noundef %msk.034, ptr noundef %add.ptr4, i32 noundef %sub, ptr noundef nonnull %ccnt) #5
  %5 = ptrtoint ptr %ccnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ccnt, align 4
  %add = add i32 %6, %bcnt.033
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add)
  %cmp = icmp ugt i32 %add, 4095
  br i1 %cmp, label %if.end.do.body_crit_edge, label %if.end7

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %neg = xor i32 %msk.034, -1
  %and2 = and i32 %valid_bits.035, %neg
  %arrayidx = getelementptr i8, ptr %buf, i32 %add
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 10, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %add, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end7, %for.body.for.inc_crit_edge
  %bcnt.1 = phi i32 [ %inc, %if.end7 ], [ %bcnt.033, %for.body.for.inc_crit_edge ]
  %valid_bits.1 = phi i32 [ %and2, %if.end7 ], [ %valid_bits.035, %for.body.for.inc_crit_edge ]
  %shl = shl i32 %msk.034, 1
  %tobool.not = icmp eq i32 %valid_bits.1, 0
  br i1 %tobool.not, label %for.inc.do.body_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %if.end.do.body_crit_edge, %entry.do.body_crit_edge
  %bcnt.2 = phi i32 [ 0, %entry.do.body_crit_edge ], [ %bcnt.1, %for.inc.do.body_crit_edge ], [ %add, %if.end.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %8 = load i32, ptr @pvrusb2_debug, align 4
  %and8 = and i32 %8, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.body.do.end16_crit_edge, label %do.end

do.body.do.end16_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end16

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %chptr = getelementptr i8, ptr %attr, i32 92
  %9 = ptrtoint ptr %chptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chptr, align 4
  %ctl_id = getelementptr i8, ptr %attr, i32 88
  %11 = ptrtoint ptr %ctl_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ctl_id, align 4
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef %10, i32 noundef %12) #9
  br label %do.end16

do.end16:                                         ; preds = %do.end, %do.body.do.end16_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ccnt) #5
  ret i32 %bcnt.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_ctrl_is_writable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_val_norm(ptr nocapture noundef readnone %class_dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  %val = alloca i32, align 4
  %cnt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !245
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cnt) #5
  %1 = ptrtoint ptr %cnt to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %cnt, align 4
  %cptr = getelementptr i8, ptr %attr, i32 56
  %2 = ptrtoint ptr %cptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cptr, align 4
  %call = call i32 @pvr2_ctrl_get_value(ptr noundef %3, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %cptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cptr, align 4
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %call2 = call i32 @pvr2_ctrl_value_to_sym(ptr noundef %5, i32 noundef -1, i32 noundef %7, ptr noundef %buf, i32 noundef 4095, ptr noundef nonnull %cnt) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %8 = load i32, ptr @pvrusb2_debug, align 4
  %and = and i32 %8, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.do.end9_crit_edge, label %do.end

if.end.do.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %chptr = getelementptr i8, ptr %attr, i32 64
  %9 = ptrtoint ptr %chptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chptr, align 4
  %ctl_id = getelementptr i8, ptr %attr, i32 60
  %11 = ptrtoint ptr %ctl_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ctl_id, align 4
  %13 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cnt, align 4
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef %10, i32 noundef %12, i32 noundef %14, ptr noundef %buf, i32 noundef %16) #9
  br label %do.end9

do.end9:                                          ; preds = %do.end, %if.end.do.end9_crit_edge
  %17 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cnt, align 4
  %arrayidx = getelementptr i8, ptr %buf, i32 %18
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 10, ptr %arrayidx, align 1
  %add = add i32 %18, 1
  br label %cleanup

cleanup:                                          ; preds = %do.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %do.end9 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cnt) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_val_norm(ptr nocapture noundef readnone %class_dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %mask.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %0 = load i32, ptr @pvrusb2_debug, align 4
  %and = and i32 %0, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %chptr = getelementptr i8, ptr %attr, i32 64
  %1 = ptrtoint ptr %chptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chptr, align 4
  %ctl_id = getelementptr i8, ptr %attr, i32 60
  %3 = ptrtoint ptr %ctl_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ctl_id, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef %2, i32 noundef %4, i32 noundef %count, ptr noundef %buf) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #5
  %5 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %mask.i, align 4, !annotation !245
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val.i, align 4, !annotation !245
  %cptr1.i = getelementptr i8, ptr %attr, i32 56
  %7 = ptrtoint ptr %cptr1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cptr1.i, align 4
  %call2.i = call i32 @pvr2_ctrl_sym_to_value(ptr noundef %8, ptr noundef %buf, i32 noundef %count, ptr noundef nonnull %mask.i, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %do.end4.store_val_any.exit_crit_edge, label %if.end4.i

do.end4.store_val_any.exit_crit_edge:             ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %store_val_any.exit

if.end4.i:                                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %cptr1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cptr1.i, align 4
  %11 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mask.i, align 4
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val.i, align 4
  %call6.i = call i32 @pvr2_ctrl_set_mask_value(ptr noundef %10, i32 noundef %12, i32 noundef %14) #5
  %chptr.i = getelementptr i8, ptr %attr, i32 64
  %15 = ptrtoint ptr %chptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chptr.i, align 4
  %hdw.i = getelementptr inbounds %struct.pvr2_channel, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %hdw.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hdw.i, align 4
  %call7.i = call i32 @pvr2_hdw_commit_ctl(ptr noundef %18) #5
  br label %store_val_any.exit

store_val_any.exit:                               ; preds = %if.end4.i, %do.end4.store_val_any.exit_crit_edge
  %retval.0.i = phi i32 [ %call6.i, %if.end4.i ], [ %call2.i, %do.end4.store_val_any.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool6.not = icmp eq i32 %retval.0.i, 0
  %spec.select = select i1 %tobool6.not, i32 %count, i32 %retval.0.i
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_ctrl_has_custom_symbols(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_val_custom(ptr nocapture noundef readnone %class_dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  %val = alloca i32, align 4
  %cnt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !245
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cnt) #5
  %1 = ptrtoint ptr %cnt to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %cnt, align 4
  %cptr = getelementptr i8, ptr %attr, i32 28
  %2 = ptrtoint ptr %cptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cptr, align 4
  %call = call i32 @pvr2_ctrl_get_value(ptr noundef %3, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %cptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cptr, align 4
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %call2 = call i32 @pvr2_ctrl_custom_value_to_sym(ptr noundef %5, i32 noundef -1, i32 noundef %7, ptr noundef %buf, i32 noundef 4095, ptr noundef nonnull %cnt) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %8 = load i32, ptr @pvrusb2_debug, align 4
  %and = and i32 %8, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.do.end9_crit_edge, label %do.end

if.end.do.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %chptr = getelementptr i8, ptr %attr, i32 36
  %9 = ptrtoint ptr %chptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chptr, align 4
  %ctl_id = getelementptr i8, ptr %attr, i32 32
  %11 = ptrtoint ptr %ctl_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ctl_id, align 4
  %13 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cnt, align 4
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %10, i32 noundef %12, i32 noundef %14, ptr noundef %buf, i32 noundef %16) #9
  br label %do.end9

do.end9:                                          ; preds = %do.end, %if.end.do.end9_crit_edge
  %17 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cnt, align 4
  %arrayidx = getelementptr i8, ptr %buf, i32 %18
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 10, ptr %arrayidx, align 1
  %add = add i32 %18, 1
  br label %cleanup

cleanup:                                          ; preds = %do.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %do.end9 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cnt) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_val_custom(ptr nocapture noundef readnone %class_dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %mask.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %0 = load i32, ptr @pvrusb2_debug, align 4
  %and = and i32 %0, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %chptr = getelementptr i8, ptr %attr, i32 36
  %1 = ptrtoint ptr %chptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chptr, align 4
  %ctl_id = getelementptr i8, ptr %attr, i32 32
  %3 = ptrtoint ptr %ctl_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ctl_id, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef %2, i32 noundef %4, i32 noundef %count, ptr noundef %buf) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #5
  %5 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %mask.i, align 4, !annotation !245
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val.i, align 4, !annotation !245
  %cptr1.i = getelementptr i8, ptr %attr, i32 28
  %7 = ptrtoint ptr %cptr1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cptr1.i, align 4
  %call.i = call i32 @pvr2_ctrl_custom_sym_to_value(ptr noundef %8, ptr noundef %buf, i32 noundef %count, ptr noundef nonnull %mask.i, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end4.store_val_any.exit_crit_edge, label %if.end4.i

do.end4.store_val_any.exit_crit_edge:             ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %store_val_any.exit

if.end4.i:                                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %cptr1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cptr1.i, align 4
  %11 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mask.i, align 4
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val.i, align 4
  %call6.i = call i32 @pvr2_ctrl_set_mask_value(ptr noundef %10, i32 noundef %12, i32 noundef %14) #5
  %chptr.i = getelementptr i8, ptr %attr, i32 36
  %15 = ptrtoint ptr %chptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chptr.i, align 4
  %hdw.i = getelementptr inbounds %struct.pvr2_channel, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %hdw.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hdw.i, align 4
  %call7.i = call i32 @pvr2_hdw_commit_ctl(ptr noundef %18) #5
  br label %store_val_any.exit

store_val_any.exit:                               ; preds = %if.end4.i, %do.end4.store_val_any.exit_crit_edge
  %retval.0.i = phi i32 [ %call6.i, %if.end4.i ], [ %call.i, %do.end4.store_val_any.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool6.not = icmp eq i32 %retval.0.i, 0
  %spec.select = select i1 %tobool6.not, i32 %count, i32 %retval.0.i
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_ctrl_get_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pvr2_ctrl_get_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pvr2_ctrl_get_desc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_ctrl_get_min(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_ctrl_get_max(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_ctrl_get_def(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_ctrl_value_to_sym(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_ctrl_get_cnt(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_ctrl_get_valname(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_ctrl_get_mask(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_ctrl_get_value(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_ctrl_custom_sym_to_value(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_ctrl_sym_to_value(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_ctrl_set_mask_value(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_hdw_commit_ctl(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_ctrl_custom_value_to_sym(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @debugcmd_show(ptr nocapture noundef readonly %class_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %class_dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %hdw = getelementptr inbounds %struct.pvr2_channel, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdw, align 4
  %call1 = tail call i32 @pvr2_debugifc_print_status(ptr noundef %3, ptr noundef %buf, i32 noundef 4096) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @debugcmd_store(ptr nocapture noundef readonly %class_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %class_dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %hdw = getelementptr inbounds %struct.pvr2_channel, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdw, align 4
  %call1 = tail call i32 @pvr2_debugifc_docmd(ptr noundef %3, ptr noundef %buf, i32 noundef %count) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  %call1.count = select i1 %cmp, i32 %call1, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call1.count, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @debuginfo_show(ptr nocapture noundef readonly %class_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %class_dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %hdw = getelementptr inbounds %struct.pvr2_channel, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdw, align 4
  tail call void @pvr2_hdw_trigger_module_log(ptr noundef %3) #5
  %4 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdw, align 4
  %call3 = tail call i32 @pvr2_debugifc_print_info(ptr noundef %5, ptr noundef %buf, i32 noundef 4096) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_debugifc_print_status(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_debugifc_docmd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pvr2_hdw_trigger_module_log(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_debugifc_print_info(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 127)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 127)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !15, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !44, !46, !48, !49, !50, !52, !54, !56, !57, !58, !60, !62, !64, !65, !67, !69, !71, !72, !74, !76, !78, !79, !81, !83, !85, !86, !88, !90, !92, !93, !95, !97, !99, !100, !101, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !143, !144, !146, !147, !148, !149, !151, !153, !155, !157, !159, !161, !162, !163, !164, !166, !167, !168, !169, !171, !173, !174, !175, !176, !178, !179, !180, !181, !183, !184, !185, !186, !188, !189, !190, !191, !193, !194, !195, !196, !198, !199, !200, !201, !203, !204, !205, !206, !208, !209, !210, !211, !213, !215, !217, !219, !221, !222, !223, !225, !226, !228, !229, !230, !231, !233, !234, !235}
!llvm.module.flags = !{!236, !237, !238, !239, !240, !241, !242, !243}
!llvm.ident = !{!244}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 762, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @pvr2_sysfs_create._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @pvr2_sysfs_create._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 777, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @pvr2_sysfs_class_create._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @pvr2_sysfs_class_create._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 779, i32 20}
!13 = !{ptr @pvr2_sysfs_class_create.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 782, i32 6}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 783, i32 3}
!17 = !{ptr @pvr2_sysfs_class_create._entry.6, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @pvr2_sysfs_class_create._entry_ptr.8, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 794, i32 2}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @pvr2_sysfs_class_destroy._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @pvr2_sysfs_class_destroy._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 749, i32 2}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @pvr2_sysfs_internal_check._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @pvr2_sysfs_internal_check._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 538, i32 2}
!31 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @class_dev_destroy._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @class_dev_destroy._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 484, i32 3}
!36 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @pvr2_sysfs_tear_down_controls._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @pvr2_sysfs_tear_down_controls._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 629, i32 2}
!41 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @class_dev_create._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @class_dev_create._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 633, i32 26}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 642, i32 3}
!48 = !{ptr @class_dev_create._entry.20, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @class_dev_create._entry_ptr.22, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @class_dev_create.__key, !51, !"__key", i1 false, i1 false}
!51 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 648, i32 2}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 649, i32 41}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 656, i32 3}
!56 = !{ptr @class_dev_create._entry.24, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @class_dev_create._entry_ptr.26, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @class_dev_create.__key.27, !59, !"__key", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 663, i32 2}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 664, i32 47}
!62 = !{ptr @class_dev_create._entry.29, !63, !"_entry", i1 false, i1 false}
!63 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 671, i32 3}
!64 = !{ptr @class_dev_create._entry_ptr.30, !63, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @class_dev_create.__key.31, !66, !"__key", i1 false, i1 false}
!66 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 678, i32 2}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 679, i32 36}
!69 = !{ptr @class_dev_create._entry.33, !70, !"_entry", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 685, i32 3}
!71 = !{ptr @class_dev_create._entry_ptr.34, !70, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @class_dev_create.__key.35, !73, !"__key", i1 false, i1 false}
!73 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 692, i32 2}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 693, i32 33}
!76 = !{ptr @class_dev_create._entry.37, !77, !"_entry", i1 false, i1 false}
!77 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 700, i32 3}
!78 = !{ptr @class_dev_create._entry_ptr.38, !77, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @class_dev_create.__key.39, !80, !"__key", i1 false, i1 false}
!80 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 707, i32 2}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 708, i32 33}
!83 = !{ptr @class_dev_create._entry.41, !84, !"_entry", i1 false, i1 false}
!84 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 715, i32 3}
!85 = !{ptr @class_dev_create._entry_ptr.42, !84, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @class_dev_create.__key.43, !87, !"__key", i1 false, i1 false}
!87 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 722, i32 2}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 723, i32 33}
!90 = !{ptr @class_dev_create._entry.45, !91, !"_entry", i1 false, i1 false}
!91 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 730, i32 3}
!92 = !{ptr @class_dev_create._entry_ptr.46, !91, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 554, i32 33}
!95 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 566, i32 33}
!97 = !{ptr @.str.49, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 298, i32 2}
!99 = !{ptr @.str.50, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @pvr2_sysfs_add_control._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @pvr2_sysfs_add_control._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @pvr2_sysfs_add_control.__key, !103, !"__key", i1 false, i1 false}
!103 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 312, i32 2}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 313, i32 29}
!106 = !{ptr @pvr2_sysfs_add_control.__key.52, !107, !"__key", i1 false, i1 false}
!107 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 317, i32 2}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 318, i32 29}
!110 = !{ptr @pvr2_sysfs_add_control.__key.54, !111, !"__key", i1 false, i1 false}
!111 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 322, i32 2}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 323, i32 28}
!114 = !{ptr @pvr2_sysfs_add_control.__key.56, !115, !"__key", i1 false, i1 false}
!115 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 327, i32 2}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 328, i32 28}
!118 = !{ptr @pvr2_sysfs_add_control.__key.58, !119, !"__key", i1 false, i1 false}
!119 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 332, i32 2}
!120 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 333, i32 28}
!122 = !{ptr @pvr2_sysfs_add_control.__key.60, !123, !"__key", i1 false, i1 false}
!123 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 337, i32 2}
!124 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 338, i32 28}
!126 = !{ptr @pvr2_sysfs_add_control.__key.62, !127, !"__key", i1 false, i1 false}
!127 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 341, i32 2}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 342, i32 31}
!130 = !{ptr @pvr2_sysfs_add_control.__key.64, !131, !"__key", i1 false, i1 false}
!131 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 345, i32 2}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 346, i32 29}
!134 = !{ptr @pvr2_sysfs_add_control.__key.66, !135, !"__key", i1 false, i1 false}
!135 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 350, i32 2}
!136 = !{ptr @.str.67, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 351, i32 29}
!138 = !{ptr @.str.68, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 389, i32 48}
!140 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 397, i32 3}
!142 = !{ptr @pvr2_sysfs_add_control._entry.69, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @pvr2_sysfs_add_control._entry_ptr.71, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.72, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 81, i32 2}
!146 = !{ptr @.str.73, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @show_name._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @show_name._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.74, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 97, i32 28}
!151 = !{ptr @.str.75, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 98, i32 29}
!153 = !{ptr @.str.76, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 99, i32 32}
!155 = !{ptr @.str.77, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 100, i32 29}
!157 = !{ptr @.str.78, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 101, i32 18}
!159 = !{ptr @.str.79, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 103, i32 2}
!161 = !{ptr @.str.80, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @show_type._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @show_type._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.81, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 116, i32 2}
!166 = !{ptr @.str.82, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @show_min._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @show_min._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.83, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 118, i32 35}
!171 = !{ptr @.str.84, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 129, i32 2}
!173 = !{ptr @.str.85, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @show_max._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @show_max._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.86, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 147, i32 2}
!178 = !{ptr @.str.87, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @show_def._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @show_def._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.88, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 210, i32 2}
!183 = !{ptr @.str.89, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @show_enum._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @show_enum._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.90, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 235, i32 2}
!188 = !{ptr @.str.91, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @show_bits._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @show_bits._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.92, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 166, i32 2}
!193 = !{ptr @.str.93, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @show_val_norm._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @show_val_norm._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.94, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 265, i32 2}
!198 = !{ptr @.str.95, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @store_val_norm._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @store_val_norm._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.96, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 185, i32 2}
!203 = !{ptr @.str.97, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @show_val_custom._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @show_val_custom._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.98, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 279, i32 2}
!208 = !{ptr @.str.99, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @store_val_custom._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @store_val_custom._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @pvr2_sysfs_add_debugifc.__key, !212, !"__key", i1 false, i1 false}
!212 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 420, i32 2}
!213 = !{ptr @.str.100, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 421, i32 33}
!215 = !{ptr @pvr2_sysfs_add_debugifc.__key.101, !216, !"__key", i1 false, i1 false}
!216 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 425, i32 2}
!217 = !{ptr @.str.102, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 426, i32 34}
!219 = !{ptr @.str.103, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 432, i32 3}
!221 = !{ptr @pvr2_sysfs_add_debugifc._entry, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @pvr2_sysfs_add_debugifc._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @pvr2_sysfs_add_debugifc._entry.104, !224, !"_entry", i1 false, i1 false}
!224 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 440, i32 3}
!225 = !{ptr @pvr2_sysfs_add_debugifc._entry_ptr.105, !224, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.106, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 494, i32 2}
!228 = !{ptr @.str.107, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @pvr2_sysfs_class_release._entry, !227, !"_entry", i1 false, i1 false}
!230 = !{ptr @pvr2_sysfs_class_release._entry_ptr, !227, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.108, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-sysfs.c", i32 501, i32 2}
!233 = !{ptr @.str.109, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @pvr2_sysfs_release._entry, !232, !"_entry", i1 false, i1 false}
!235 = !{ptr @pvr2_sysfs_release._entry_ptr, !232, !"_entry_ptr", i1 false, i1 false}
!236 = !{i32 1, !"wchar_size", i32 2}
!237 = !{i32 1, !"min_enum_size", i32 4}
!238 = !{i32 8, !"branch-target-enforcement", i32 0}
!239 = !{i32 8, !"sign-return-address", i32 0}
!240 = !{i32 8, !"sign-return-address-all", i32 0}
!241 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!242 = !{i32 7, !"uwtable", i32 1}
!243 = !{i32 7, !"frame-pointer", i32 2}
!244 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!245 = !{!"auto-init"}
