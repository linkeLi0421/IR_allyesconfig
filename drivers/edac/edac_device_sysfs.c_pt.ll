; ModuleID = '/llk/IR_all_yes/drivers/edac/edac_device_sysfs.c_pt.bc'
source_filename = "../drivers/edac/edac_device_sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.ctl_info_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.instance_attribute = type { %struct.attribute, ptr, ptr }
%struct.edac_dev_sysfs_block_attribute = type { %struct.attribute, ptr, ptr, ptr, i32 }
%struct.edac_device_ctl_info = type { %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.completion, [32 x i8], i32, ptr, %struct.edac_device_counter, %struct.kobject }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.edac_device_counter = type { i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.edac_dev_sysfs_attribute = type { %struct.attribute, ptr, ptr }
%struct.edac_device_instance = type { ptr, [35 x i8], %struct.edac_device_counter, i32, ptr, %struct.kobject }
%struct.edac_device_block = type { ptr, [32 x i8], %struct.edac_device_counter, i32, ptr, %struct.kobject }

@edac_debug_level = external dso_local local_unnamed_addr global i32, align 4
@edac_device_register_sysfs_main_kobj._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017EDAC DEBUG: %s: \0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"edac_device_register_sysfs_main_kobj\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/edac/edac_device_sysfs.c\00", [63 x i8] zeroinitializer }, align 32
@edac_device_register_sysfs_main_kobj._entry_ptr = internal global ptr @edac_device_register_sysfs_main_kobj._entry, section ".printk_index", align 4
@ktype_device_ctrl = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @edac_device_ctrl_master_release, ptr @device_ctl_info_ops, ptr @device_ctrl_attr, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@edac_device_register_sysfs_main_kobj._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017EDAC DEBUG: %s: Failed to register '.../edac/%s'\0A\00", [44 x i8] zeroinitializer }, align 32
@edac_device_register_sysfs_main_kobj._entry_ptr.6 = internal global ptr @edac_device_register_sysfs_main_kobj._entry.4, section ".printk_index", align 4
@edac_device_register_sysfs_main_kobj._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017EDAC DEBUG: %s: Registered '.../edac/%s' kobject\0A\00", [44 x i8] zeroinitializer }, align 32
@edac_device_register_sysfs_main_kobj._entry_ptr.9 = internal global ptr @edac_device_register_sysfs_main_kobj._entry.7, section ".printk_index", align 4
@edac_device_unregister_sysfs_main_kobj._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.10, ptr @.str.2, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"edac_device_unregister_sysfs_main_kobj\00", [57 x i8] zeroinitializer }, align 32
@edac_device_unregister_sysfs_main_kobj._entry_ptr = internal global ptr @edac_device_unregister_sysfs_main_kobj._entry, section ".printk_index", align 4
@edac_device_unregister_sysfs_main_kobj._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017EDAC DEBUG: %s: name of kobject is: %s\0A\00", [54 x i8] zeroinitializer }, align 32
@edac_device_unregister_sysfs_main_kobj._entry_ptr.13 = internal global ptr @edac_device_unregister_sysfs_main_kobj._entry.11, section ".printk_index", align 4
@edac_device_create_sysfs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 807, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017EDAC DEBUG: %s: idx=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"edac_device_create_sysfs\00", [39 x i8] zeroinitializer }, align 32
@edac_device_create_sysfs._entry_ptr = internal global ptr @edac_device_create_sysfs._entry, section ".printk_index", align 4
@edac_device_create_sysfs._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 812, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017EDAC DEBUG: %s: failed to add sysfs attribs\0A\00", [49 x i8] zeroinitializer }, align 32
@edac_device_create_sysfs._entry_ptr.18 = internal global ptr @edac_device_create_sysfs._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"device\00", [25 x i8] zeroinitializer }, align 32
@edac_device_create_sysfs._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.15, ptr @.str.2, i32 822, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017EDAC DEBUG: %s: sysfs_create_link() returned err= %d\0A\00", [40 x i8] zeroinitializer }, align 32
@edac_device_create_sysfs._entry_ptr.22 = internal global ptr @edac_device_create_sysfs._entry.20, section ".printk_index", align 4
@edac_device_create_sysfs._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.15, ptr @.str.2, i32 833, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\017EDAC DEBUG: %s: edac_device_create_instances() returned err= %d\0A\00", [61 x i8] zeroinitializer }, align 32
@edac_device_create_sysfs._entry_ptr.25 = internal global ptr @edac_device_create_sysfs._entry.23, section ".printk_index", align 4
@edac_device_create_sysfs._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.15, ptr @.str.2, i32 838, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017EDAC DEBUG: %s: create-instances done, idx=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@edac_device_create_sysfs._entry_ptr.28 = internal global ptr @edac_device_create_sysfs._entry.26, section ".printk_index", align 4
@edac_device_remove_sysfs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.29, ptr @.str.2, i32 861, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"edac_device_remove_sysfs\00", [39 x i8] zeroinitializer }, align 32
@edac_device_remove_sysfs._entry_ptr = internal global ptr @edac_device_remove_sysfs._entry, section ".printk_index", align 4
@device_ctl_info_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @edac_dev_ctl_info_show, ptr @edac_dev_ctl_info_store }, [24 x i8] zeroinitializer }, align 32
@device_ctrl_attr = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @attr_ctl_info_panic_on_ue, ptr @attr_ctl_info_log_ue, ptr @attr_ctl_info_log_ce, ptr @attr_ctl_info_poll_msec, ptr null], [44 x i8] zeroinitializer }, align 32
@edac_device_ctrl_master_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017EDAC DEBUG: %s: control index=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"edac_device_ctrl_master_release\00", [32 x i8] zeroinitializer }, align 32
@edac_device_ctrl_master_release._entry_ptr = internal global ptr @edac_device_ctrl_master_release._entry, section ".printk_index", align 4
@attr_ctl_info_panic_on_ue = internal global { %struct.ctl_info_attribute, [36 x i8] } { %struct.ctl_info_attribute { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @edac_device_ctl_panic_on_ue_show, ptr @edac_device_ctl_panic_on_ue_store }, [36 x i8] zeroinitializer }, align 32
@attr_ctl_info_log_ue = internal global { %struct.ctl_info_attribute, [36 x i8] } { %struct.ctl_info_attribute { %struct.attribute { ptr @.str.34, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @edac_device_ctl_log_ue_show, ptr @edac_device_ctl_log_ue_store }, [36 x i8] zeroinitializer }, align 32
@attr_ctl_info_log_ce = internal global { %struct.ctl_info_attribute, [36 x i8] } { %struct.ctl_info_attribute { %struct.attribute { ptr @.str.35, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @edac_device_ctl_log_ce_show, ptr @edac_device_ctl_log_ce_store }, [36 x i8] zeroinitializer }, align 32
@attr_ctl_info_poll_msec = internal global { %struct.ctl_info_attribute, [36 x i8] } { %struct.ctl_info_attribute { %struct.attribute { ptr @.str.36, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @edac_device_ctl_poll_msec_show, ptr @edac_device_ctl_poll_msec_store }, [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"panic_on_ue\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"log_ue\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"log_ce\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"poll_msec\00", [22 x i8] zeroinitializer }, align 32
@edac_device_create_instances._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.37, ptr @.str.2, i32 705, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"edac_device_create_instances\00", [35 x i8] zeroinitializer }, align 32
@edac_device_create_instances._entry_ptr = internal global ptr @edac_device_create_instances._entry, section ".printk_index", align 4
@ktype_instance_ctrl = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @edac_device_ctrl_instance_release, ptr @device_instance_ops, ptr @device_instance_attr, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@edac_device_create_instance._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 638, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017EDAC DEBUG: %s: Failed to register instance '%s'\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"edac_device_create_instance\00", [36 x i8] zeroinitializer }, align 32
@edac_device_create_instance._entry_ptr = internal global ptr @edac_device_create_instance._entry, section ".printk_index", align 4
@edac_device_create_instance._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 644, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017EDAC DEBUG: %s: now register '%d' blocks for instance %d\0A\00", [36 x i8] zeroinitializer }, align 32
@edac_device_create_instance._entry_ptr.42 = internal global ptr @edac_device_create_instance._entry.40, section ".printk_index", align 4
@edac_device_create_instance._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.2, i32 661, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017EDAC DEBUG: %s: Registered instance %d '%s' kobject\0A\00", [41 x i8] zeroinitializer }, align 32
@edac_device_create_instance._entry_ptr.45 = internal global ptr @edac_device_create_instance._entry.43, section ".printk_index", align 4
@device_instance_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @edac_dev_instance_show, ptr @edac_dev_instance_store }, [24 x i8] zeroinitializer }, align 32
@device_instance_attr = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @attr_instance_ce_count, ptr @attr_instance_ue_count, ptr null], [20 x i8] zeroinitializer }, align 32
@edac_device_ctrl_instance_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.46, ptr @.str.2, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"edac_device_ctrl_instance_release\00", [62 x i8] zeroinitializer }, align 32
@edac_device_ctrl_instance_release._entry_ptr = internal global ptr @edac_device_ctrl_instance_release._entry, section ".printk_index", align 4
@attr_instance_ce_count = internal global { %struct.instance_attribute, [36 x i8] } { %struct.instance_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @instance_ce_count_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@attr_instance_ue_count = internal global { %struct.instance_attribute, [36 x i8] } { %struct.instance_attribute { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @instance_ue_count_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ce_count\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ue_count\00", [23 x i8] zeroinitializer }, align 32
@edac_device_create_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 518, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\017EDAC DEBUG: %s: Instance '%s' inst_p=%p  block '%s'  block_p=%p\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"edac_device_create_block\00", [39 x i8] zeroinitializer }, align 32
@edac_device_create_block._entry_ptr = internal global ptr @edac_device_create_block._entry, section ".printk_index", align 4
@edac_device_create_block._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.2, i32 520, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017EDAC DEBUG: %s: block kobj=%p  block kobj->parent=%p\0A\00", [40 x i8] zeroinitializer }, align 32
@edac_device_create_block._entry_ptr.53 = internal global ptr @edac_device_create_block._entry.51, section ".printk_index", align 4
@ktype_block_ctrl = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @edac_device_ctrl_block_release, ptr @device_block_ops, ptr @device_block_attr, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@edac_device_create_block._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.50, ptr @.str.2, i32 539, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@edac_device_create_block._entry_ptr.55 = internal global ptr @edac_device_create_block._entry.54, section ".printk_index", align 4
@edac_device_create_block._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.50, ptr @.str.2, i32 554, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\017EDAC DEBUG: %s: creating block attrib='%s' attrib->%p to kobj=%p\0A\00", [60 x i8] zeroinitializer }, align 32
@edac_device_create_block._entry_ptr.58 = internal global ptr @edac_device_create_block._entry.56, section ".printk_index", align 4
@device_block_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @edac_dev_block_show, ptr @edac_dev_block_store }, [24 x i8] zeroinitializer }, align 32
@device_block_attr = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @attr_block_ce_count, ptr @attr_block_ue_count, ptr null], [20 x i8] zeroinitializer }, align 32
@edac_device_ctrl_block_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.59, ptr @.str.2, i32 435, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"edac_device_ctrl_block_release\00", [33 x i8] zeroinitializer }, align 32
@edac_device_ctrl_block_release._entry_ptr = internal global ptr @edac_device_ctrl_block_release._entry, section ".printk_index", align 4
@attr_block_ce_count = internal global { %struct.edac_dev_sysfs_block_attribute, [60 x i8] } { %struct.edac_dev_sysfs_block_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @block_ce_count_show, ptr null, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@attr_block_ue_count = internal global { %struct.edac_dev_sysfs_block_attribute, [60 x i8] } { %struct.edac_dev_sysfs_block_attribute { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @block_ue_count_show, ptr null, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 236, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [18 x i8] c"ktype_device_ctrl\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 217, i32 25 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 260, i32 8 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 262, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 272, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 291, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 292, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 807, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 812, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 820, i32 27 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 822, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 832, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 838, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 861, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [20 x i8] c"device_ctl_info_ops\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 142, i32 31 }
@___asan_gen_.147 = private unnamed_addr constant [17 x i8] c"device_ctrl_attr\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 166, i32 35 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 205, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant [26 x i8] c"attr_ctl_info_panic_on_ue\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [21 x i8] c"attr_ctl_info_log_ue\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [21 x i8] c"attr_ctl_info_log_ce\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [24 x i8] c"attr_ctl_info_poll_msec\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 159, i32 1 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 69, i32 23 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 155, i32 1 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 157, i32 1 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 162, i32 1 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 705, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant [20 x i8] c"ktype_instance_ctrl\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 399, i32 25 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 637, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 643, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 660, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant [20 x i8] c"device_instance_ops\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 371, i32 31 }
@___asan_gen_.219 = private unnamed_addr constant [21 x i8] c"device_instance_attr\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 392, i32 35 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 329, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant [23 x i8] c"attr_instance_ce_count\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [23 x i8] c"attr_instance_ue_count\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 388, i32 1 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 389, i32 1 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 517, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 519, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant [17 x i8] c"ktype_block_ctrl\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 497, i32 25 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 539, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 552, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant [17 x i8] c"device_block_ops\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 474, i32 31 }
@___asan_gen_.270 = private unnamed_addr constant [18 x i8] c"device_block_attr\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 490, i32 47 }
@___asan_gen_.273 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.276 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 435, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant [20 x i8] c"attr_block_ce_count\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 486, i32 1 }
@___asan_gen_.282 = private unnamed_addr constant [20 x i8] c"attr_block_ue_count\00", align 1
@___asan_gen_.283 = private constant [36 x i8] c"../drivers/edac/edac_device_sysfs.c\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 487, i32 1 }
@llvm.compiler.used = appending global [97 x ptr] [ptr @edac_device_create_block._entry, ptr @edac_device_create_block._entry.51, ptr @edac_device_create_block._entry.54, ptr @edac_device_create_block._entry.56, ptr @edac_device_create_block._entry_ptr, ptr @edac_device_create_block._entry_ptr.53, ptr @edac_device_create_block._entry_ptr.55, ptr @edac_device_create_block._entry_ptr.58, ptr @edac_device_create_instance._entry, ptr @edac_device_create_instance._entry.40, ptr @edac_device_create_instance._entry.43, ptr @edac_device_create_instance._entry_ptr, ptr @edac_device_create_instance._entry_ptr.42, ptr @edac_device_create_instance._entry_ptr.45, ptr @edac_device_create_instances._entry, ptr @edac_device_create_instances._entry_ptr, ptr @edac_device_create_sysfs._entry, ptr @edac_device_create_sysfs._entry.16, ptr @edac_device_create_sysfs._entry.20, ptr @edac_device_create_sysfs._entry.23, ptr @edac_device_create_sysfs._entry.26, ptr @edac_device_create_sysfs._entry_ptr, ptr @edac_device_create_sysfs._entry_ptr.18, ptr @edac_device_create_sysfs._entry_ptr.22, ptr @edac_device_create_sysfs._entry_ptr.25, ptr @edac_device_create_sysfs._entry_ptr.28, ptr @edac_device_ctrl_block_release._entry, ptr @edac_device_ctrl_block_release._entry_ptr, ptr @edac_device_ctrl_instance_release._entry, ptr @edac_device_ctrl_instance_release._entry_ptr, ptr @edac_device_ctrl_master_release._entry, ptr @edac_device_ctrl_master_release._entry_ptr, ptr @edac_device_register_sysfs_main_kobj._entry, ptr @edac_device_register_sysfs_main_kobj._entry.4, ptr @edac_device_register_sysfs_main_kobj._entry.7, ptr @edac_device_register_sysfs_main_kobj._entry_ptr, ptr @edac_device_register_sysfs_main_kobj._entry_ptr.6, ptr @edac_device_register_sysfs_main_kobj._entry_ptr.9, ptr @edac_device_remove_sysfs._entry, ptr @edac_device_remove_sysfs._entry_ptr, ptr @edac_device_unregister_sysfs_main_kobj._entry, ptr @edac_device_unregister_sysfs_main_kobj._entry.11, ptr @edac_device_unregister_sysfs_main_kobj._entry_ptr, ptr @edac_device_unregister_sysfs_main_kobj._entry_ptr.13, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ktype_device_ctrl, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @device_ctl_info_ops, ptr @device_ctrl_attr, ptr @.str.30, ptr @.str.31, ptr @attr_ctl_info_panic_on_ue, ptr @attr_ctl_info_log_ue, ptr @attr_ctl_info_log_ce, ptr @attr_ctl_info_poll_msec, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @ktype_instance_ctrl, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @device_instance_ops, ptr @device_instance_attr, ptr @.str.46, ptr @attr_instance_ce_count, ptr @attr_instance_ue_count, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @ktype_block_ctrl, ptr @.str.57, ptr @device_block_ops, ptr @device_block_attr, ptr @.str.59, ptr @attr_block_ce_count, ptr @attr_block_ue_count], section "llvm.metadata"
@0 = internal global [75 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_device_register_sysfs_main_kobj._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ktype_device_ctrl to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_device_register_sysfs_main_kobj._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_device_register_sysfs_main_kobj._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_device_unregister_sysfs_main_kobj._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_device_unregister_sysfs_main_kobj._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_device_create_sysfs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_device_create_sysfs._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_device_create_sysfs._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_device_create_sysfs._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_device_create_sysfs._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_device_remove_sysfs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_ctl_info_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_ctrl_attr to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_device_ctrl_master_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_ctl_info_panic_on_ue to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_ctl_info_log_ue to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_ctl_info_log_ce to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_ctl_info_poll_msec to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_device_create_instances._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ktype_instance_ctrl to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_device_create_instance._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_device_create_instance._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_device_create_instance._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_instance_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_instance_attr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_device_ctrl_instance_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_instance_ce_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_instance_ue_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_device_create_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_device_create_block._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ktype_block_ctrl to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_device_create_block._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_device_create_block._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_block_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_block_attr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_device_ctrl_block_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_block_ce_count to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_block_ue_count to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @edac_device_register_sysfs_main_kobj(ptr noundef %edac_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %0 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call ptr @edac_get_sysfs_subsys() #5
  %edac_subsys5 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 9
  %1 = ptrtoint ptr %edac_subsys5 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call4, ptr %edac_subsys5, align 4
  %kobj = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 24
  %2 = call ptr @memset(ptr %kobj, i32 0, i32 136)
  %owner = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 1
  %3 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %owner, align 4
  %call7 = tail call zeroext i1 @try_module_get(ptr noundef null) #5
  br i1 %call7, label %if.end9, label %do.end3.cleanup_crit_edge

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %do.end3
  %dev_root = getelementptr inbounds %struct.bus_type, ptr %call4, i32 0, i32 2
  %4 = ptrtoint ptr %dev_root to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_root, align 4
  %name = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 20
  %call12 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %kobj, ptr noundef nonnull @ktype_device_ctrl, ptr noundef %5, ptr noundef nonnull @.str.3, ptr noundef %name) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.end27, label %do.body14

do.body14:                                        ; preds = %if.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %6 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp15 = icmp sgt i32 %6, 0
  br i1 %cmp15, label %do.end19, label %do.body14.err_kobj_reg_crit_edge

do.body14.err_kobj_reg_crit_edge:                 ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_kobj_reg

do.end19:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, ptr noundef %name) #8
  br label %err_kobj_reg

if.end27:                                         ; preds = %if.end9
  %call29 = tail call i32 @kobject_uevent(ptr noundef %kobj, i32 noundef 0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %7 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp31 = icmp sgt i32 %7, 3
  br i1 %cmp31, label %do.end35, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end35:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, ptr noundef %name) #8
  br label %cleanup

err_kobj_reg:                                     ; preds = %do.end19, %do.body14.err_kobj_reg_crit_edge
  tail call void @kobject_put(ptr noundef %kobj) #5
  %8 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %9) #5
  br label %cleanup

cleanup:                                          ; preds = %err_kobj_reg, %do.end35, %if.end27.cleanup_crit_edge, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end35 ], [ 0, %if.end27.cleanup_crit_edge ], [ %call12, %err_kobj_reg ], [ -19, %do.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_get_sysfs_subsys() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @edac_device_unregister_sysfs_main_kobj(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %0 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp = icmp sgt i32 %0, -1
  br i1 %cmp, label %do.body3, label %entry.do.end12_crit_edge

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end12

do.body3:                                         ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.10) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %.pr = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp4 = icmp sgt i32 %.pr, 3
  br i1 %cmp4, label %do.end7, label %do.body3.do.end12_crit_edge

do.body3.do.end12_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end12

do.end7:                                          ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  %kobj = getelementptr inbounds %struct.edac_device_ctl_info, ptr %dev, i32 0, i32 24
  %1 = ptrtoint ptr %kobj to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %kobj, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, ptr noundef %2) #8
  br label %do.end12

do.end12:                                         ; preds = %do.end7, %do.body3.do.end12_crit_edge, %entry.do.end12_crit_edge
  %kobj13 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %dev, i32 0, i32 24
  tail call void @kobject_put(ptr noundef %kobj13) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @edac_device_create_sysfs(ptr noundef %edac_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %kobj = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %0 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp = icmp sgt i32 %0, -1
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev_idx = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 2
  %1 = ptrtoint ptr %dev_idx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dev_idx, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %2) #8
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %sysfs_attributes.i = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 8
  %3 = ptrtoint ptr %sysfs_attributes.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sysfs_attributes.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %do.end3.if.end17_crit_edge, label %while.cond.preheader.i

do.end3.if.end17_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

while.cond.preheader.i:                           ; preds = %do.end3
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %cmp.not9.i = icmp eq ptr %6, null
  br i1 %cmp.not9.i, label %while.cond.preheader.i.if.end17_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.if.end17_crit_edge:        ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

while.cond.i:                                     ; preds = %while.body.i
  %incdec.ptr.i = getelementptr %struct.edac_dev_sysfs_attribute, ptr %sysfs_attrib.010.i, i32 1
  %7 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %incdec.ptr.i, align 4
  %cmp.not.i = icmp eq ptr %8, null
  br i1 %cmp.not.i, label %while.cond.i.if.end17_crit_edge, label %while.cond.i.while.body.i_crit_edge

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.cond.i.if.end17_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %sysfs_attrib.010.i = phi ptr [ %incdec.ptr.i, %while.cond.i.while.body.i_crit_edge ], [ %4, %while.cond.preheader.i.while.body.i_crit_edge ]
  %call.i.i = tail call i32 @sysfs_create_file_ns(ptr noundef %kobj, ptr noundef %sysfs_attrib.010.i, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i, label %while.cond.i, label %do.body6

do.body6:                                         ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %9 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp7 = icmp sgt i32 %9, -1
  br i1 %cmp7, label %do.end11, label %do.body6.cleanup_crit_edge

do.body6.cleanup_crit_edge:                       ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end11:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15) #8
  br label %cleanup

if.end17:                                         ; preds = %while.cond.i.if.end17_crit_edge, %while.cond.preheader.i.if.end17_crit_edge, %do.end3.if.end17_crit_edge
  %dev = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 13
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %call19 = tail call i32 @sysfs_create_link(ptr noundef %kobj, ptr noundef %11, ptr noundef nonnull @.str.19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %12 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp.i = icmp sgt i32 %12, -1
  br i1 %tobool20.not, label %if.end33, label %do.body22

do.body22:                                        ; preds = %if.end17
  br i1 %cmp.i, label %do.end27, label %do.body22.err_remove_main_attribs_crit_edge

do.body22.err_remove_main_attribs_crit_edge:      ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_remove_main_attribs

do.end27:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #7
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.15, i32 noundef %call19) #8
  br label %err_remove_main_attribs

if.end33:                                         ; preds = %if.end17
  br i1 %cmp.i, label %do.end.i, label %if.end33.do.end3.i_crit_edge

if.end33.do.end3.i_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end3.i

do.end.i:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.37) #8
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.end33.do.end3.i_crit_edge
  %nr_instances.i = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 21
  %13 = ptrtoint ptr %nr_instances.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr_instances.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp4100.not.i = icmp eq i32 %14, 0
  br i1 %cmp4100.not.i, label %do.end3.i.do.body49_crit_edge, label %for.body.lr.ph.i

do.end3.i.do.body49_crit_edge:                    ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body49

for.body.lr.ph.i:                                 ; preds = %do.end3.i
  %instances.i.i = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 22
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc11.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0101.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc12.i, %for.inc11.i.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %instances.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %instances.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.edac_device_instance, ptr %16, i32 %i.0101.i
  %kobj.i.i = getelementptr %struct.edac_device_instance, ptr %16, i32 %i.0101.i, i32 5
  %17 = call ptr @memset(ptr %kobj.i.i, i32 0, i32 136)
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %edac_dev, ptr %arrayidx.i.i, align 4
  %call.i.i75 = tail call ptr @kobject_get(ptr noundef %kobj) #5
  %tobool.not.i.i = icmp eq ptr %call.i.i75, null
  br i1 %tobool.not.i.i, label %for.body.i.edac_device_create_instance.exit.i_crit_edge, label %if.end.i.i

for.body.i.edac_device_create_instance.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %edac_device_create_instance.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  %name.i.i = getelementptr %struct.edac_device_instance, ptr %16, i32 %i.0101.i, i32 1
  %call4.i.i = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %kobj.i.i, ptr noundef nonnull @ktype_instance_ctrl, ptr noundef %kobj, ptr noundef nonnull @.str.3, ptr noundef %name.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp.not.i.i = icmp eq i32 %call4.i.i, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %19 = load i32, ptr @edac_debug_level, align 4
  br i1 %cmp.not.i.i, label %do.body16.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp6.i.i = icmp sgt i32 %19, 1
  br i1 %cmp6.i.i, label %do.end.i.i, label %do.body.i.i.do.end14.i.i_crit_edge

do.body.i.i.do.end14.i.i_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call11.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, ptr noundef %name.i.i) #8
  br label %do.end14.i.i

do.end14.i.i:                                     ; preds = %do.end.i.i, %do.body.i.i.do.end14.i.i_crit_edge
  tail call void @kobject_put(ptr noundef nonnull %call.i.i75) #5
  br label %edac_device_create_instance.exit.i

do.body16.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp17.i.i = icmp sgt i32 %19, 3
  br i1 %cmp17.i.i, label %do.end21.i.i, label %do.body16.i.i.do.end26.i.i_crit_edge

do.body16.i.i.do.end26.i.i_crit_edge:             ; preds = %do.body16.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end26.i.i

do.end21.i.i:                                     ; preds = %do.body16.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %nr_blocks.i.i = getelementptr %struct.edac_device_instance, ptr %16, i32 %i.0101.i, i32 3
  %20 = ptrtoint ptr %nr_blocks.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr_blocks.i.i, align 4
  %call23.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.39, i32 noundef %21, i32 noundef %i.0101.i) #8
  br label %do.end26.i.i

do.end26.i.i:                                     ; preds = %do.end21.i.i, %do.body16.i.i.do.end26.i.i_crit_edge
  %nr_blocks27.i.i = getelementptr %struct.edac_device_instance, ptr %16, i32 %i.0101.i, i32 3
  %22 = ptrtoint ptr %nr_blocks27.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr_blocks27.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp28114.not.i.i = icmp eq i32 %23, 0
  br i1 %cmp28114.not.i.i, label %do.end26.i.i.for.end41.i.i_crit_edge, label %for.body.lr.ph.i.i

do.end26.i.i.for.end41.i.i_crit_edge:             ; preds = %do.end26.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end41.i.i

for.body.lr.ph.i.i:                               ; preds = %do.end26.i.i
  %blocks.i.i = getelementptr %struct.edac_device_instance, ptr %16, i32 %i.0101.i, i32 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc39.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.0115.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc40.i.i, %for.inc39.i.i.for.body.i.i_crit_edge ]
  %24 = ptrtoint ptr %blocks.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %blocks.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %26 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %26)
  %cmp.i.i.i = icmp sgt i32 %26, 3
  br i1 %cmp.i.i.i, label %do.body6.i.i.i, label %for.body.i.i.do.end17.i.i.i_crit_edge

for.body.i.i.do.end17.i.i.i_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end17.i.i.i

do.body6.i.i.i:                                   ; preds = %for.body.i.i
  %arrayidx29.i.i = getelementptr %struct.edac_device_block, ptr %25, i32 %i.0115.i.i
  %name2.i.i.i = getelementptr %struct.edac_device_block, ptr %25, i32 %i.0115.i.i, i32 1
  %call.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, ptr noundef %name.i.i, ptr noundef %arrayidx.i.i, ptr noundef %name2.i.i.i, ptr noundef %arrayidx29.i.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %.pr.i.i.i = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr.i.i.i)
  %cmp7.i.i.i = icmp sgt i32 %.pr.i.i.i, 3
  br i1 %cmp7.i.i.i, label %do.end11.i.i.i, label %do.body6.i.i.i.do.end17.i.i.i_crit_edge

do.body6.i.i.i.do.end17.i.i.i_crit_edge:          ; preds = %do.body6.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end17.i.i.i

do.end11.i.i.i:                                   ; preds = %do.body6.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %kobj.i.i.i = getelementptr %struct.edac_device_block, ptr %25, i32 %i.0115.i.i, i32 5
  %parent.i.i.i = getelementptr %struct.edac_device_block, ptr %25, i32 %i.0115.i.i, i32 5, i32 2
  %call14.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.50, ptr noundef %kobj.i.i.i, ptr noundef %parent.i.i.i) #8
  br label %do.end17.i.i.i

do.end17.i.i.i:                                   ; preds = %do.end11.i.i.i, %do.body6.i.i.i.do.end17.i.i.i_crit_edge, %for.body.i.i.do.end17.i.i.i_crit_edge
  %kobj18.i.i.i = getelementptr %struct.edac_device_block, ptr %25, i32 %i.0115.i.i, i32 5
  %27 = call ptr @memset(ptr %kobj18.i.i.i, i32 0, i32 136)
  %call20.i.i.i = tail call ptr @kobject_get(ptr noundef %kobj) #5
  %tobool.not.i.i.i = icmp eq ptr %call20.i.i.i, null
  br i1 %tobool.not.i.i.i, label %do.end17.i.i.i.edac_device_create_block.exit.i.i_crit_edge, label %if.end22.i.i.i

do.end17.i.i.i.edac_device_create_block.exit.i.i_crit_edge: ; preds = %do.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %edac_device_create_block.exit.i.i

if.end22.i.i.i:                                   ; preds = %do.end17.i.i.i
  %name25.i.i.i = getelementptr %struct.edac_device_block, ptr %25, i32 %i.0115.i.i, i32 1
  %call27.i.i.i = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %kobj18.i.i.i, ptr noundef nonnull @ktype_block_ctrl, ptr noundef %kobj.i.i, ptr noundef nonnull @.str.3, ptr noundef %name25.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %tobool28.not.i.i.i = icmp eq i32 %call27.i.i.i, 0
  br i1 %tobool28.not.i.i.i, label %if.end43.i.i.i, label %do.body30.i.i.i

do.body30.i.i.i:                                  ; preds = %if.end22.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %28 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp31.i.i.i = icmp sgt i32 %28, 0
  br i1 %cmp31.i.i.i, label %do.end35.i.i.i, label %do.body30.i.i.i.do.end42.i.i.i_crit_edge

do.body30.i.i.i.do.end42.i.i.i_crit_edge:         ; preds = %do.body30.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end42.i.i.i

do.end35.i.i.i:                                   ; preds = %do.body30.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call39.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.50, ptr noundef %name25.i.i.i) #8
  br label %do.end42.i.i.i

do.end42.i.i.i:                                   ; preds = %do.end35.i.i.i, %do.body30.i.i.i.do.end42.i.i.i_crit_edge
  tail call void @kobject_put(ptr noundef nonnull %call20.i.i.i) #5
  br label %edac_device_create_block.exit.i.i

if.end43.i.i.i:                                   ; preds = %if.end22.i.i.i
  %block_attributes.i.i.i = getelementptr %struct.edac_device_block, ptr %25, i32 %i.0115.i.i, i32 4
  %29 = ptrtoint ptr %block_attributes.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %block_attributes.i.i.i, align 4
  %tobool44.not.i.i.i = icmp eq ptr %30, null
  br i1 %tobool44.not.i.i.i, label %if.end43.i.i.i.for.inc39.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end43.i.i.i.for.inc39.i.i_crit_edge:           ; preds = %if.end43.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc39.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end43.i.i.i
  %nr_attribs.i.i.i = getelementptr %struct.edac_device_block, ptr %25, i32 %i.0115.i.i, i32 3
  %31 = ptrtoint ptr %nr_attribs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nr_attribs.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp48100.i.i.i = icmp sgt i32 %32, 0
  br i1 %cmp48100.i.i.i, label %land.lhs.true.i.i.i.do.body49.i.i.i_crit_edge, label %land.lhs.true.i.i.i.for.inc39.i.i_crit_edge

land.lhs.true.i.i.i.for.inc39.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc39.i.i

land.lhs.true.i.i.i.do.body49.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  br label %do.body49.i.i.i

do.body49.i.i.i:                                  ; preds = %for.inc.i.i.i.do.body49.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.body49.i.i.i_crit_edge
  %i.0102.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.do.body49.i.i.i_crit_edge ], [ 0, %land.lhs.true.i.i.i.do.body49.i.i.i_crit_edge ]
  %sysfs_attrib.0101.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %for.inc.i.i.i.do.body49.i.i.i_crit_edge ], [ %30, %land.lhs.true.i.i.i.do.body49.i.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %33 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %33)
  %cmp50.i.i.i = icmp sgt i32 %33, 3
  br i1 %cmp50.i.i.i, label %do.end54.i.i.i, label %do.body49.i.i.i.do.end61.i.i.i_crit_edge

do.body49.i.i.i.do.end61.i.i.i_crit_edge:         ; preds = %do.body49.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end61.i.i.i

do.end54.i.i.i:                                   ; preds = %do.body49.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %sysfs_attrib.0101.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sysfs_attrib.0101.i.i.i, align 4
  %call58.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.50, ptr noundef %35, ptr noundef %sysfs_attrib.0101.i.i.i, ptr noundef %kobj18.i.i.i) #8
  br label %do.end61.i.i.i

do.end61.i.i.i:                                   ; preds = %do.end54.i.i.i, %do.body49.i.i.i.do.end61.i.i.i_crit_edge
  %call.i.i.i.i = tail call i32 @sysfs_create_file_ns(ptr noundef %kobj18.i.i.i, ptr noundef %sysfs_attrib.0101.i.i.i, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool65.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool65.not.i.i.i, label %for.inc.i.i.i, label %err_on_attrib.i.i.i

for.inc.i.i.i:                                    ; preds = %do.end61.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.0102.i.i.i, 1
  %incdec.ptr.i.i.i = getelementptr %struct.edac_dev_sysfs_block_attribute, ptr %sysfs_attrib.0101.i.i.i, i32 1
  %36 = ptrtoint ptr %nr_attribs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nr_attribs.i.i.i, align 4
  %cmp48.i.i.i = icmp slt i32 %inc.i.i.i, %37
  br i1 %cmp48.i.i.i, label %for.inc.i.i.i.do.body49.i.i.i_crit_edge, label %for.inc.i.i.i.for.inc39.i.i_crit_edge

for.inc.i.i.i.for.inc39.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc39.i.i

for.inc.i.i.i.do.body49.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body49.i.i.i

err_on_attrib.i.i.i:                              ; preds = %do.end61.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kobject_put(ptr noundef %kobj18.i.i.i) #5
  br label %edac_device_create_block.exit.i.i

edac_device_create_block.exit.i.i:                ; preds = %err_on_attrib.i.i.i, %do.end42.i.i.i, %do.end17.i.i.i.edac_device_create_block.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ -19, %do.end42.i.i.i ], [ %call.i.i.i.i, %err_on_attrib.i.i.i ], [ -19, %do.end17.i.i.i.edac_device_create_block.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0115.i.i)
  %cmp34117.i.i = icmp sgt i32 %i.0115.i.i, 0
  br i1 %cmp34117.i.i, label %edac_device_create_block.exit.i.i.for.body35.i.i_crit_edge, label %edac_device_create_block.exit.i.i.err_release_instance_kobj.i.i_crit_edge

edac_device_create_block.exit.i.i.err_release_instance_kobj.i.i_crit_edge: ; preds = %edac_device_create_block.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_release_instance_kobj.i.i

edac_device_create_block.exit.i.i.for.body35.i.i_crit_edge: ; preds = %edac_device_create_block.exit.i.i
  br label %for.body35.i.i

for.body35.i.i:                                   ; preds = %edac_device_delete_block.exit.i.i.for.body35.i.i_crit_edge, %edac_device_create_block.exit.i.i.for.body35.i.i_crit_edge
  %j.0118.i.i = phi i32 [ %inc.i.i, %edac_device_delete_block.exit.i.i.for.body35.i.i_crit_edge ], [ 0, %edac_device_create_block.exit.i.i.for.body35.i.i_crit_edge ]
  %38 = ptrtoint ptr %blocks.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %blocks.i.i, align 4
  %block_attributes.i89.i.i = getelementptr %struct.edac_device_block, ptr %39, i32 %j.0118.i.i, i32 4
  %40 = ptrtoint ptr %block_attributes.i89.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %block_attributes.i89.i.i, align 4
  %tobool.not.i90.i.i = icmp eq ptr %41, null
  br i1 %tobool.not.i90.i.i, label %for.body35.i.i.edac_device_delete_block.exit.i.i_crit_edge, label %land.lhs.true.i92.i.i

for.body35.i.i.edac_device_delete_block.exit.i.i_crit_edge: ; preds = %for.body35.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %edac_device_delete_block.exit.i.i

land.lhs.true.i92.i.i:                            ; preds = %for.body35.i.i
  %nr_attribs.i91.i.i = getelementptr %struct.edac_device_block, ptr %39, i32 %j.0118.i.i, i32 3
  %42 = ptrtoint ptr %nr_attribs.i91.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nr_attribs.i91.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp1.i.i.i = icmp sgt i32 %43, 0
  br i1 %cmp1.i.i.i, label %for.body.lr.ph.i.i.i, label %land.lhs.true.i92.i.i.edac_device_delete_block.exit.i.i_crit_edge

land.lhs.true.i92.i.i.edac_device_delete_block.exit.i.i_crit_edge: ; preds = %land.lhs.true.i92.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %edac_device_delete_block.exit.i.i

for.body.lr.ph.i.i.i:                             ; preds = %land.lhs.true.i92.i.i
  %kobj.i94.i.i = getelementptr %struct.edac_device_block, ptr %39, i32 %j.0118.i.i, i32 5
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.03.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i95.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %sysfs_attrib.02.i.i.i = phi ptr [ %41, %for.body.lr.ph.i.i.i ], [ %incdec.ptr.i96.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  tail call void @sysfs_remove_file_ns(ptr noundef %kobj.i94.i.i, ptr noundef %sysfs_attrib.02.i.i.i, ptr noundef null) #5
  %inc.i95.i.i = add nuw nsw i32 %i.03.i.i.i, 1
  %incdec.ptr.i96.i.i = getelementptr %struct.edac_dev_sysfs_block_attribute, ptr %sysfs_attrib.02.i.i.i, i32 1
  %44 = ptrtoint ptr %nr_attribs.i91.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nr_attribs.i91.i.i, align 4
  %cmp.i97.i.i = icmp slt i32 %inc.i95.i.i, %45
  br i1 %cmp.i97.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge, label %for.body.i.i.i.edac_device_delete_block.exit.i.i_crit_edge

for.body.i.i.i.edac_device_delete_block.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %edac_device_delete_block.exit.i.i

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i

edac_device_delete_block.exit.i.i:                ; preds = %for.body.i.i.i.edac_device_delete_block.exit.i.i_crit_edge, %land.lhs.true.i92.i.i.edac_device_delete_block.exit.i.i_crit_edge, %for.body35.i.i.edac_device_delete_block.exit.i.i_crit_edge
  %kobj3.i.i.i = getelementptr %struct.edac_device_block, ptr %39, i32 %j.0118.i.i, i32 5
  tail call void @kobject_put(ptr noundef %kobj3.i.i.i) #5
  %inc.i.i = add nuw nsw i32 %j.0118.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %i.0115.i.i
  br i1 %exitcond.not.i.i, label %edac_device_delete_block.exit.i.i.err_release_instance_kobj.i.i_crit_edge, label %edac_device_delete_block.exit.i.i.for.body35.i.i_crit_edge

edac_device_delete_block.exit.i.i.for.body35.i.i_crit_edge: ; preds = %edac_device_delete_block.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body35.i.i

edac_device_delete_block.exit.i.i.err_release_instance_kobj.i.i_crit_edge: ; preds = %edac_device_delete_block.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_release_instance_kobj.i.i

for.inc39.i.i:                                    ; preds = %for.inc.i.i.i.for.inc39.i.i_crit_edge, %land.lhs.true.i.i.i.for.inc39.i.i_crit_edge, %if.end43.i.i.i.for.inc39.i.i_crit_edge
  %call70.i.i.i = tail call i32 @kobject_uevent(ptr noundef %kobj18.i.i.i, i32 noundef 0) #5
  %inc40.i.i = add nuw i32 %i.0115.i.i, 1
  %46 = ptrtoint ptr %nr_blocks27.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nr_blocks27.i.i, align 4
  %cmp28.i.i = icmp ult i32 %inc40.i.i, %47
  br i1 %cmp28.i.i, label %for.inc39.i.i.for.body.i.i_crit_edge, label %for.inc39.i.i.for.end41.i.i_crit_edge

for.inc39.i.i.for.end41.i.i_crit_edge:            ; preds = %for.inc39.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end41.i.i

for.inc39.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc39.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.end41.i.i:                                    ; preds = %for.inc39.i.i.for.end41.i.i_crit_edge, %do.end26.i.i.for.end41.i.i_crit_edge
  %call43.i.i = tail call i32 @kobject_uevent(ptr noundef %kobj.i.i, i32 noundef 0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %48 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %48)
  %cmp45.i.i = icmp sgt i32 %48, 3
  br i1 %cmp45.i.i, label %do.end49.i.i, label %for.end41.i.i.for.inc11.i_crit_edge

for.end41.i.i.for.inc11.i_crit_edge:              ; preds = %for.end41.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc11.i

do.end49.i.i:                                     ; preds = %for.end41.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call53.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.39, i32 noundef %i.0101.i, ptr noundef %name.i.i) #8
  br label %for.inc11.i

err_release_instance_kobj.i.i:                    ; preds = %edac_device_delete_block.exit.i.i.err_release_instance_kobj.i.i_crit_edge, %edac_device_create_block.exit.i.i.err_release_instance_kobj.i.i_crit_edge
  tail call void @kobject_put(ptr noundef %kobj.i.i) #5
  br label %edac_device_create_instance.exit.i

edac_device_create_instance.exit.i:               ; preds = %err_release_instance_kobj.i.i, %do.end14.i.i, %for.body.i.edac_device_create_instance.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call4.i.i, %do.end14.i.i ], [ %retval.0.i.i.i, %err_release_instance_kobj.i.i ], [ -19, %for.body.i.edac_device_create_instance.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0101.i)
  %cmp8104.i = icmp sgt i32 %i.0101.i, 0
  br i1 %cmp8104.i, label %edac_device_create_instance.exit.i.for.body9.i_crit_edge, label %edac_device_create_instance.exit.i.do.body37_crit_edge

edac_device_create_instance.exit.i.do.body37_crit_edge: ; preds = %edac_device_create_instance.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body37

edac_device_create_instance.exit.i.for.body9.i_crit_edge: ; preds = %edac_device_create_instance.exit.i
  br label %for.body9.i

for.body9.i:                                      ; preds = %edac_device_delete_instance.exit.i.for.body9.i_crit_edge, %edac_device_create_instance.exit.i.for.body9.i_crit_edge
  %j.0105.i = phi i32 [ %inc.i, %edac_device_delete_instance.exit.i.for.body9.i_crit_edge ], [ 0, %edac_device_create_instance.exit.i.for.body9.i_crit_edge ]
  %49 = ptrtoint ptr %instances.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %instances.i.i, align 4
  %nr_blocks.i25.i = getelementptr %struct.edac_device_instance, ptr %50, i32 %j.0105.i, i32 3
  %51 = ptrtoint ptr %nr_blocks.i25.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %nr_blocks.i25.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp7.not.i.i = icmp eq i32 %52, 0
  br i1 %cmp7.not.i.i, label %for.body9.i.edac_device_delete_instance.exit.i_crit_edge, label %for.body.lr.ph.i27.i

for.body9.i.edac_device_delete_instance.exit.i_crit_edge: ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %edac_device_delete_instance.exit.i

for.body.lr.ph.i27.i:                             ; preds = %for.body9.i
  %blocks.i26.i = getelementptr %struct.edac_device_instance, ptr %50, i32 %j.0105.i, i32 4
  br label %for.body.i30.i

for.body.i30.i:                                   ; preds = %edac_device_delete_block.exit.i44.i.for.body.i30.i_crit_edge, %for.body.lr.ph.i27.i
  %i.08.i.i = phi i32 [ 0, %for.body.lr.ph.i27.i ], [ %inc.i43.i, %edac_device_delete_block.exit.i44.i.for.body.i30.i_crit_edge ]
  %53 = ptrtoint ptr %blocks.i26.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %blocks.i26.i, align 4
  %block_attributes.i.i28.i = getelementptr %struct.edac_device_block, ptr %54, i32 %i.08.i.i, i32 4
  %55 = ptrtoint ptr %block_attributes.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %block_attributes.i.i28.i, align 4
  %tobool.not.i.i29.i = icmp eq ptr %56, null
  br i1 %tobool.not.i.i29.i, label %for.body.i30.i.edac_device_delete_block.exit.i44.i_crit_edge, label %land.lhs.true.i.i33.i

for.body.i30.i.edac_device_delete_block.exit.i44.i_crit_edge: ; preds = %for.body.i30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %edac_device_delete_block.exit.i44.i

land.lhs.true.i.i33.i:                            ; preds = %for.body.i30.i
  %nr_attribs.i.i31.i = getelementptr %struct.edac_device_block, ptr %54, i32 %i.08.i.i, i32 3
  %57 = ptrtoint ptr %nr_attribs.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %nr_attribs.i.i31.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp1.i.i32.i = icmp sgt i32 %58, 0
  br i1 %cmp1.i.i32.i, label %for.body.lr.ph.i.i35.i, label %land.lhs.true.i.i33.i.edac_device_delete_block.exit.i44.i_crit_edge

land.lhs.true.i.i33.i.edac_device_delete_block.exit.i44.i_crit_edge: ; preds = %land.lhs.true.i.i33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %edac_device_delete_block.exit.i44.i

for.body.lr.ph.i.i35.i:                           ; preds = %land.lhs.true.i.i33.i
  %kobj.i.i34.i = getelementptr %struct.edac_device_block, ptr %54, i32 %i.08.i.i, i32 5
  br label %for.body.i.i41.i

for.body.i.i41.i:                                 ; preds = %for.body.i.i41.i.for.body.i.i41.i_crit_edge, %for.body.lr.ph.i.i35.i
  %i.03.i.i36.i = phi i32 [ 0, %for.body.lr.ph.i.i35.i ], [ %inc.i.i38.i, %for.body.i.i41.i.for.body.i.i41.i_crit_edge ]
  %sysfs_attrib.02.i.i37.i = phi ptr [ %56, %for.body.lr.ph.i.i35.i ], [ %incdec.ptr.i.i39.i, %for.body.i.i41.i.for.body.i.i41.i_crit_edge ]
  tail call void @sysfs_remove_file_ns(ptr noundef %kobj.i.i34.i, ptr noundef %sysfs_attrib.02.i.i37.i, ptr noundef null) #5
  %inc.i.i38.i = add nuw nsw i32 %i.03.i.i36.i, 1
  %incdec.ptr.i.i39.i = getelementptr %struct.edac_dev_sysfs_block_attribute, ptr %sysfs_attrib.02.i.i37.i, i32 1
  %59 = ptrtoint ptr %nr_attribs.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %nr_attribs.i.i31.i, align 4
  %cmp.i.i40.i = icmp slt i32 %inc.i.i38.i, %60
  br i1 %cmp.i.i40.i, label %for.body.i.i41.i.for.body.i.i41.i_crit_edge, label %for.body.i.i41.i.edac_device_delete_block.exit.i44.i_crit_edge

for.body.i.i41.i.edac_device_delete_block.exit.i44.i_crit_edge: ; preds = %for.body.i.i41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %edac_device_delete_block.exit.i44.i

for.body.i.i41.i.for.body.i.i41.i_crit_edge:      ; preds = %for.body.i.i41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i41.i

edac_device_delete_block.exit.i44.i:              ; preds = %for.body.i.i41.i.edac_device_delete_block.exit.i44.i_crit_edge, %land.lhs.true.i.i33.i.edac_device_delete_block.exit.i44.i_crit_edge, %for.body.i30.i.edac_device_delete_block.exit.i44.i_crit_edge
  %kobj3.i.i42.i = getelementptr %struct.edac_device_block, ptr %54, i32 %i.08.i.i, i32 5
  tail call void @kobject_put(ptr noundef %kobj3.i.i42.i) #5
  %inc.i43.i = add nuw i32 %i.08.i.i, 1
  %61 = ptrtoint ptr %nr_blocks.i25.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %nr_blocks.i25.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i43.i, %62
  br i1 %cmp.i.i, label %edac_device_delete_block.exit.i44.i.for.body.i30.i_crit_edge, label %edac_device_delete_block.exit.i44.i.edac_device_delete_instance.exit.i_crit_edge

edac_device_delete_block.exit.i44.i.edac_device_delete_instance.exit.i_crit_edge: ; preds = %edac_device_delete_block.exit.i44.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %edac_device_delete_instance.exit.i

edac_device_delete_block.exit.i44.i.for.body.i30.i_crit_edge: ; preds = %edac_device_delete_block.exit.i44.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i30.i

edac_device_delete_instance.exit.i:               ; preds = %edac_device_delete_block.exit.i44.i.edac_device_delete_instance.exit.i_crit_edge, %for.body9.i.edac_device_delete_instance.exit.i_crit_edge
  %kobj.i45.i = getelementptr %struct.edac_device_instance, ptr %50, i32 %j.0105.i, i32 5
  tail call void @kobject_put(ptr noundef %kobj.i45.i) #5
  %inc.i = add nuw nsw i32 %j.0105.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %i.0101.i
  br i1 %exitcond.not.i, label %edac_device_delete_instance.exit.i.do.body37_crit_edge, label %edac_device_delete_instance.exit.i.for.body9.i_crit_edge

edac_device_delete_instance.exit.i.for.body9.i_crit_edge: ; preds = %edac_device_delete_instance.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body9.i

edac_device_delete_instance.exit.i.do.body37_crit_edge: ; preds = %edac_device_delete_instance.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body37

for.inc11.i:                                      ; preds = %do.end49.i.i, %for.end41.i.i.for.inc11.i_crit_edge
  %inc12.i = add nuw i32 %i.0101.i, 1
  %63 = ptrtoint ptr %nr_instances.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %nr_instances.i, align 4
  %cmp4.i = icmp ult i32 %inc12.i, %64
  br i1 %cmp4.i, label %for.inc11.i.for.body.i_crit_edge, label %for.inc11.i.do.body49_crit_edge

for.inc11.i.do.body49_crit_edge:                  ; preds = %for.inc11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body49

for.inc11.i.for.body.i_crit_edge:                 ; preds = %for.inc11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

do.body37:                                        ; preds = %edac_device_delete_instance.exit.i.do.body37_crit_edge, %edac_device_create_instance.exit.i.do.body37_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %65 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %65)
  %cmp38 = icmp sgt i32 %65, -1
  br i1 %cmp38, label %do.end42, label %do.body37.err_remove_link_crit_edge

do.body37.err_remove_link_crit_edge:              ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_remove_link

do.end42:                                         ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #7
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.15, i32 noundef %retval.0.i.i) #8
  br label %err_remove_link

do.body49:                                        ; preds = %for.inc11.i.do.body49_crit_edge, %do.end3.i.do.body49_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %66 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %66)
  %cmp50 = icmp sgt i32 %66, 3
  br i1 %cmp50, label %do.end54, label %do.body49.cleanup_crit_edge

do.body49.cleanup_crit_edge:                      ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end54:                                         ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #7
  %dev_idx56 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 2
  %67 = ptrtoint ptr %dev_idx56 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dev_idx56, align 4
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.15, i32 noundef %68) #8
  br label %cleanup

err_remove_link:                                  ; preds = %do.end42, %do.body37.err_remove_link_crit_edge
  tail call void @sysfs_remove_link(ptr noundef %kobj, ptr noundef nonnull @.str.19) #5
  br label %err_remove_main_attribs

err_remove_main_attribs:                          ; preds = %err_remove_link, %do.end27, %do.body22.err_remove_main_attribs_crit_edge
  %err.0 = phi i32 [ %call19, %do.end27 ], [ %call19, %do.body22.err_remove_main_attribs_crit_edge ], [ %retval.0.i.i, %err_remove_link ]
  %69 = ptrtoint ptr %sysfs_attributes.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %sysfs_attributes.i, align 4
  %tobool.not.i77 = icmp eq ptr %70, null
  br i1 %tobool.not.i77, label %err_remove_main_attribs.cleanup_crit_edge, label %while.cond.preheader.i78

err_remove_main_attribs.cleanup_crit_edge:        ; preds = %err_remove_main_attribs
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.cond.preheader.i78:                         ; preds = %err_remove_main_attribs
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %cmp.not5.i = icmp eq ptr %72, null
  br i1 %cmp.not5.i, label %while.cond.preheader.i78.cleanup_crit_edge, label %while.cond.preheader.i78.while.body.i82_crit_edge

while.cond.preheader.i78.while.body.i82_crit_edge: ; preds = %while.cond.preheader.i78
  br label %while.body.i82

while.cond.preheader.i78.cleanup_crit_edge:       ; preds = %while.cond.preheader.i78
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.i82:                                   ; preds = %while.body.i82.while.body.i82_crit_edge, %while.cond.preheader.i78.while.body.i82_crit_edge
  %sysfs_attrib.06.i = phi ptr [ %incdec.ptr.i80, %while.body.i82.while.body.i82_crit_edge ], [ %70, %while.cond.preheader.i78.while.body.i82_crit_edge ]
  tail call void @sysfs_remove_file_ns(ptr noundef %kobj, ptr noundef %sysfs_attrib.06.i, ptr noundef null) #5
  %incdec.ptr.i80 = getelementptr %struct.edac_dev_sysfs_attribute, ptr %sysfs_attrib.06.i, i32 1
  %73 = ptrtoint ptr %incdec.ptr.i80 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %incdec.ptr.i80, align 4
  %cmp.not.i81 = icmp eq ptr %74, null
  br i1 %cmp.not.i81, label %while.body.i82.cleanup_crit_edge, label %while.body.i82.while.body.i82_crit_edge

while.body.i82.while.body.i82_crit_edge:          ; preds = %while.body.i82
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i82

while.body.i82.cleanup_crit_edge:                 ; preds = %while.body.i82
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %while.body.i82.cleanup_crit_edge, %while.cond.preheader.i78.cleanup_crit_edge, %err_remove_main_attribs.cleanup_crit_edge, %do.end54, %do.body49.cleanup_crit_edge, %do.end11, %do.body6.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end54 ], [ 0, %do.body49.cleanup_crit_edge ], [ %call.i.i, %do.end11 ], [ %call.i.i, %do.body6.cleanup_crit_edge ], [ %err.0, %err_remove_main_attribs.cleanup_crit_edge ], [ %err.0, %while.cond.preheader.i78.cleanup_crit_edge ], [ %err.0, %while.body.i82.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @edac_device_remove_sysfs(ptr noundef %edac_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %0 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp = icmp sgt i32 %0, -1
  br i1 %cmp, label %do.end, label %entry.do.end2_crit_edge

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.29) #8
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %sysfs_attributes.i = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 8
  %1 = ptrtoint ptr %sysfs_attributes.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sysfs_attributes.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %do.end2.edac_device_remove_main_sysfs_attributes.exit_crit_edge, label %while.cond.preheader.i

do.end2.edac_device_remove_main_sysfs_attributes.exit_crit_edge: ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %edac_device_remove_main_sysfs_attributes.exit

while.cond.preheader.i:                           ; preds = %do.end2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %cmp.not5.i = icmp eq ptr %4, null
  br i1 %cmp.not5.i, label %while.cond.preheader.i.edac_device_remove_main_sysfs_attributes.exit_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.edac_device_remove_main_sysfs_attributes.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %edac_device_remove_main_sysfs_attributes.exit

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %kobj.i = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 24
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %sysfs_attrib.06.i = phi ptr [ %2, %while.body.lr.ph.i ], [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ]
  tail call void @sysfs_remove_file_ns(ptr noundef %kobj.i, ptr noundef %sysfs_attrib.06.i, ptr noundef null) #5
  %incdec.ptr.i = getelementptr %struct.edac_dev_sysfs_attribute, ptr %sysfs_attrib.06.i, i32 1
  %5 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr.i, align 4
  %cmp.not.i = icmp eq ptr %6, null
  br i1 %cmp.not.i, label %while.body.i.edac_device_remove_main_sysfs_attributes.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.body.i.edac_device_remove_main_sysfs_attributes.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %edac_device_remove_main_sysfs_attributes.exit

edac_device_remove_main_sysfs_attributes.exit:    ; preds = %while.body.i.edac_device_remove_main_sysfs_attributes.exit_crit_edge, %while.cond.preheader.i.edac_device_remove_main_sysfs_attributes.exit_crit_edge, %do.end2.edac_device_remove_main_sysfs_attributes.exit_crit_edge
  %kobj = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 24
  tail call void @sysfs_remove_link(ptr noundef %kobj, ptr noundef nonnull @.str.19) #5
  %nr_instances.i = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 21
  %7 = ptrtoint ptr %nr_instances.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_instances.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp4.not.i = icmp eq i32 %8, 0
  br i1 %cmp4.not.i, label %edac_device_remove_main_sysfs_attributes.exit.edac_device_delete_instances.exit_crit_edge, label %for.body.lr.ph.i

edac_device_remove_main_sysfs_attributes.exit.edac_device_delete_instances.exit_crit_edge: ; preds = %edac_device_remove_main_sysfs_attributes.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %edac_device_delete_instances.exit

for.body.lr.ph.i:                                 ; preds = %edac_device_remove_main_sysfs_attributes.exit
  %instances.i.i = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 22
  br label %for.body.i

for.body.i:                                       ; preds = %edac_device_delete_instance.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %edac_device_delete_instance.exit.i.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %instances.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %instances.i.i, align 4
  %nr_blocks.i.i = getelementptr %struct.edac_device_instance, ptr %10, i32 %i.05.i, i32 3
  %11 = ptrtoint ptr %nr_blocks.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_blocks.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp7.not.i.i = icmp eq i32 %12, 0
  br i1 %cmp7.not.i.i, label %for.body.i.edac_device_delete_instance.exit.i_crit_edge, label %for.body.lr.ph.i.i

for.body.i.edac_device_delete_instance.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %edac_device_delete_instance.exit.i

for.body.lr.ph.i.i:                               ; preds = %for.body.i
  %blocks.i.i = getelementptr %struct.edac_device_instance, ptr %10, i32 %i.05.i, i32 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %edac_device_delete_block.exit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.08.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %edac_device_delete_block.exit.i.i.for.body.i.i_crit_edge ]
  %13 = ptrtoint ptr %blocks.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %blocks.i.i, align 4
  %block_attributes.i.i.i = getelementptr %struct.edac_device_block, ptr %14, i32 %i.08.i.i, i32 4
  %15 = ptrtoint ptr %block_attributes.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %block_attributes.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i.edac_device_delete_block.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

for.body.i.i.edac_device_delete_block.exit.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %edac_device_delete_block.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i
  %nr_attribs.i.i.i = getelementptr %struct.edac_device_block, ptr %14, i32 %i.08.i.i, i32 3
  %17 = ptrtoint ptr %nr_attribs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr_attribs.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp1.i.i.i = icmp sgt i32 %18, 0
  br i1 %cmp1.i.i.i, label %for.body.lr.ph.i.i.i, label %land.lhs.true.i.i.i.edac_device_delete_block.exit.i.i_crit_edge

land.lhs.true.i.i.i.edac_device_delete_block.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %edac_device_delete_block.exit.i.i

for.body.lr.ph.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %kobj.i.i.i = getelementptr %struct.edac_device_block, ptr %14, i32 %i.08.i.i, i32 5
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.03.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %sysfs_attrib.02.i.i.i = phi ptr [ %16, %for.body.lr.ph.i.i.i ], [ %incdec.ptr.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  tail call void @sysfs_remove_file_ns(ptr noundef %kobj.i.i.i, ptr noundef %sysfs_attrib.02.i.i.i, ptr noundef null) #5
  %inc.i.i.i = add nuw nsw i32 %i.03.i.i.i, 1
  %incdec.ptr.i.i.i = getelementptr %struct.edac_dev_sysfs_block_attribute, ptr %sysfs_attrib.02.i.i.i, i32 1
  %19 = ptrtoint ptr %nr_attribs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nr_attribs.i.i.i, align 4
  %cmp.i.i.i = icmp slt i32 %inc.i.i.i, %20
  br i1 %cmp.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge, label %for.body.i.i.i.edac_device_delete_block.exit.i.i_crit_edge

for.body.i.i.i.edac_device_delete_block.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %edac_device_delete_block.exit.i.i

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i

edac_device_delete_block.exit.i.i:                ; preds = %for.body.i.i.i.edac_device_delete_block.exit.i.i_crit_edge, %land.lhs.true.i.i.i.edac_device_delete_block.exit.i.i_crit_edge, %for.body.i.i.edac_device_delete_block.exit.i.i_crit_edge
  %kobj3.i.i.i = getelementptr %struct.edac_device_block, ptr %14, i32 %i.08.i.i, i32 5
  tail call void @kobject_put(ptr noundef %kobj3.i.i.i) #5
  %inc.i.i = add nuw i32 %i.08.i.i, 1
  %21 = ptrtoint ptr %nr_blocks.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nr_blocks.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %22
  br i1 %cmp.i.i, label %edac_device_delete_block.exit.i.i.for.body.i.i_crit_edge, label %edac_device_delete_block.exit.i.i.edac_device_delete_instance.exit.i_crit_edge

edac_device_delete_block.exit.i.i.edac_device_delete_instance.exit.i_crit_edge: ; preds = %edac_device_delete_block.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %edac_device_delete_instance.exit.i

edac_device_delete_block.exit.i.i.for.body.i.i_crit_edge: ; preds = %edac_device_delete_block.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

edac_device_delete_instance.exit.i:               ; preds = %edac_device_delete_block.exit.i.i.edac_device_delete_instance.exit.i_crit_edge, %for.body.i.edac_device_delete_instance.exit.i_crit_edge
  %kobj.i.i = getelementptr %struct.edac_device_instance, ptr %10, i32 %i.05.i, i32 5
  tail call void @kobject_put(ptr noundef %kobj.i.i) #5
  %inc.i = add nuw i32 %i.05.i, 1
  %23 = ptrtoint ptr %nr_instances.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr_instances.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %24
  br i1 %cmp.i, label %edac_device_delete_instance.exit.i.for.body.i_crit_edge, label %edac_device_delete_instance.exit.i.edac_device_delete_instances.exit_crit_edge

edac_device_delete_instance.exit.i.edac_device_delete_instances.exit_crit_edge: ; preds = %edac_device_delete_instance.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %edac_device_delete_instances.exit

edac_device_delete_instance.exit.i.for.body.i_crit_edge: ; preds = %edac_device_delete_instance.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

edac_device_delete_instances.exit:                ; preds = %edac_device_delete_instance.exit.i.edac_device_delete_instances.exit_crit_edge, %edac_device_remove_main_sysfs_attributes.exit.edac_device_delete_instances.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @edac_device_ctrl_master_release(ptr noundef %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %0 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %cmp = icmp sgt i32 %0, 3
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev_idx = getelementptr i8, ptr %kobj, i32 -268
  %1 = ptrtoint ptr %dev_idx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dev_idx, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef %2) #8
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %add.ptr = getelementptr i8, ptr %kobj, i32 -280
  %owner = getelementptr i8, ptr %kobj, i32 -272
  %3 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %4) #5
  tail call void @kfree(ptr noundef %add.ptr) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edac_dev_ctl_info_show(ptr noundef %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %show = getelementptr inbounds %struct.ctl_info_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %show, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %kobj, i32 -280
  %call = tail call i32 %1(ptr noundef %add.ptr, ptr noundef %buffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edac_dev_ctl_info_store(ptr noundef %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buffer, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %store = getelementptr inbounds %struct.ctl_info_attribute, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %store, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %kobj, i32 -280
  %call = tail call i32 %1(ptr noundef %add.ptr, ptr noundef %buffer, i32 noundef %count) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edac_device_ctl_panic_on_ue_show(ptr nocapture noundef readonly %ctl_info, ptr nocapture noundef writeonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %panic_on_ue = getelementptr inbounds %struct.edac_device_ctl_info, ptr %ctl_info, i32 0, i32 5
  %0 = ptrtoint ptr %panic_on_ue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %panic_on_ue, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data, ptr noundef nonnull @.str.33, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edac_device_ctl_panic_on_ue_store(ptr nocapture noundef writeonly %ctl_info, ptr noundef %data, i32 noundef returned %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_strtoul(ptr noundef %data, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %panic_on_ue = getelementptr inbounds %struct.edac_device_ctl_info, ptr %ctl_info, i32 0, i32 5
  %0 = ptrtoint ptr %panic_on_ue to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %conv, ptr %panic_on_ue, align 4
  ret i32 %count
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edac_device_ctl_log_ue_show(ptr nocapture noundef readonly %ctl_info, ptr nocapture noundef writeonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %log_ue = getelementptr inbounds %struct.edac_device_ctl_info, ptr %ctl_info, i32 0, i32 3
  %0 = ptrtoint ptr %log_ue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %log_ue, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data, ptr noundef nonnull @.str.33, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edac_device_ctl_log_ue_store(ptr nocapture noundef writeonly %ctl_info, ptr noundef %data, i32 noundef returned %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_strtoul(ptr noundef %data, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %log_ue = getelementptr inbounds %struct.edac_device_ctl_info, ptr %ctl_info, i32 0, i32 3
  %0 = ptrtoint ptr %log_ue to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %conv, ptr %log_ue, align 4
  ret i32 %count
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edac_device_ctl_log_ce_show(ptr nocapture noundef readonly %ctl_info, ptr nocapture noundef writeonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %log_ce = getelementptr inbounds %struct.edac_device_ctl_info, ptr %ctl_info, i32 0, i32 4
  %0 = ptrtoint ptr %log_ce to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %log_ce, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data, ptr noundef nonnull @.str.33, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edac_device_ctl_log_ce_store(ptr nocapture noundef writeonly %ctl_info, ptr noundef %data, i32 noundef returned %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_strtoul(ptr noundef %data, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %log_ce = getelementptr inbounds %struct.edac_device_ctl_info, ptr %ctl_info, i32 0, i32 4
  %0 = ptrtoint ptr %log_ce to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %conv, ptr %log_ce, align 4
  ret i32 %count
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edac_device_ctl_poll_msec_show(ptr nocapture noundef readonly %ctl_info, ptr nocapture noundef writeonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %poll_msec = getelementptr inbounds %struct.edac_device_ctl_info, ptr %ctl_info, i32 0, i32 6
  %0 = ptrtoint ptr %poll_msec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %poll_msec, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data, ptr noundef nonnull @.str.33, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edac_device_ctl_poll_msec_store(ptr noundef %ctl_info, ptr noundef %data, i32 noundef returned %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_strtoul(ptr noundef %data, ptr noundef null, i32 noundef 0) #5
  tail call void @edac_device_reset_delay_period(ptr noundef %ctl_info, i32 noundef %call) #5
  ret i32 %count
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_device_reset_delay_period(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @edac_device_ctrl_instance_release(ptr nocapture noundef readonly %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %0 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.46) #8
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %add.ptr = getelementptr i8, ptr %kobj, i32 -56
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  %kobj5 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %2, i32 0, i32 24
  tail call void @kobject_put(ptr noundef %kobj5) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edac_dev_instance_show(ptr noundef %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %show = getelementptr inbounds %struct.instance_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %show, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %kobj, i32 -56
  %call = tail call i32 %1(ptr noundef %add.ptr, ptr noundef %buffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edac_dev_instance_store(ptr noundef %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buffer, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %store = getelementptr inbounds %struct.instance_attribute, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %store, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %kobj, i32 -56
  %call = tail call i32 %1(ptr noundef %add.ptr, ptr noundef %buffer, i32 noundef %count) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @instance_ce_count_show(ptr nocapture noundef readonly %instance, ptr nocapture noundef writeonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ce_count = getelementptr inbounds %struct.edac_device_instance, ptr %instance, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %ce_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ce_count, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data, ptr noundef nonnull @.str.33, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @instance_ue_count_show(ptr nocapture noundef readonly %instance, ptr nocapture noundef writeonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %counters = getelementptr inbounds %struct.edac_device_instance, ptr %instance, i32 0, i32 2
  %0 = ptrtoint ptr %counters to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %counters, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data, ptr noundef nonnull @.str.33, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @edac_device_ctrl_block_release(ptr nocapture noundef readonly %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %0 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.59) #8
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %add.ptr = getelementptr i8, ptr %kobj, i32 -52
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %kobj5 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %4, i32 0, i32 24
  tail call void @kobject_put(ptr noundef %kobj5) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edac_dev_block_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %show = getelementptr inbounds %struct.edac_dev_sysfs_block_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %show, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %1(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edac_dev_block_store(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buffer, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %store = getelementptr inbounds %struct.edac_dev_sysfs_block_attribute, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %store, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %1(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buffer, i32 noundef %count) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @block_ce_count_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ce_count = getelementptr i8, ptr %kobj, i32 -12
  %0 = ptrtoint ptr %ce_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ce_count, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data, ptr noundef nonnull @.str.33, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @block_ue_count_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %counters = getelementptr i8, ptr %kobj, i32 -16
  %0 = ptrtoint ptr %counters to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %counters, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data, ptr noundef nonnull @.str.33, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !55, !56, !57, !58, !60, !62, !64, !65, !67, !69, !70, !72, !73, !75, !76, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !97, !98, !99, !101, !103, !105, !106, !108, !109, !111, !112, !113, !114, !116, !117, !118, !120, !121, !123, !124, !125, !127, !129, !130, !131, !133, !135, !137}
!llvm.module.flags = !{!139, !140, !141, !142, !143, !144, !145, !146}
!llvm.ident = !{!147}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/edac/edac_device_sysfs.c", i32 236, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @edac_device_register_sysfs_main_kobj._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @edac_device_register_sysfs_main_kobj._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/edac/edac_device_sysfs.c", i32 260, i32 8}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/edac/edac_device_sysfs.c", i32 262, i32 3}
!10 = !{ptr @edac_device_register_sysfs_main_kobj._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @edac_device_register_sysfs_main_kobj._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/edac/edac_device_sysfs.c", i32 272, i32 2}
!14 = !{ptr @edac_device_register_sysfs_main_kobj._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @edac_device_register_sysfs_main_kobj._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/edac/edac_device_sysfs.c", i32 291, i32 2}
!18 = !{ptr @edac_device_unregister_sysfs_main_kobj._entry, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @edac_device_unregister_sysfs_main_kobj._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/edac/edac_device_sysfs.c", i32 292, i32 2}
!22 = !{ptr @edac_device_unregister_sysfs_main_kobj._entry.11, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @edac_device_unregister_sysfs_main_kobj._entry_ptr.13, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/edac/edac_device_sysfs.c", i32 807, i32 2}
!26 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @edac_device_create_sysfs._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @edac_device_create_sysfs._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/edac/edac_device_sysfs.c", i32 812, i32 3}
!31 = !{ptr @edac_device_create_sysfs._entry.16, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @edac_device_create_sysfs._entry_ptr.18, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/edac/edac_device_sysfs.c", i32 820, i32 27}
!35 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/edac/edac_device_sysfs.c", i32 822, i32 3}
!37 = !{ptr @edac_device_create_sysfs._entry.20, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @edac_device_create_sysfs._entry_ptr.22, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/edac/edac_device_sysfs.c", i32 832, i32 3}
!41 = !{ptr @edac_device_create_sysfs._entry.23, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @edac_device_create_sysfs._entry_ptr.25, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.27, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/edac/edac_device_sysfs.c", i32 838, i32 2}
!45 = !{ptr @edac_device_create_sysfs._entry.26, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @edac_device_create_sysfs._entry_ptr.28, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.29, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/edac/edac_device_sysfs.c", i32 861, i32 2}
!49 = !{ptr @edac_device_remove_sysfs._entry, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @edac_device_remove_sysfs._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @ktype_device_ctrl, !52, !"ktype_device_ctrl", i1 false, i1 false}
!52 = !{!"../drivers/edac/edac_device_sysfs.c", i32 217, i32 25}
!53 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/edac/edac_device_sysfs.c", i32 205, i32 2}
!55 = !{ptr @.str.31, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @edac_device_ctrl_master_release._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @edac_device_ctrl_master_release._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @device_ctl_info_ops, !59, !"device_ctl_info_ops", i1 false, i1 false}
!59 = !{!"../drivers/edac/edac_device_sysfs.c", i32 142, i32 31}
!60 = !{ptr @device_ctrl_attr, !61, !"device_ctrl_attr", i1 false, i1 false}
!61 = !{!"../drivers/edac/edac_device_sysfs.c", i32 166, i32 35}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/edac/edac_device_sysfs.c", i32 159, i32 1}
!64 = !{ptr @attr_ctl_info_panic_on_ue, !63, !"attr_ctl_info_panic_on_ue", i1 false, i1 false}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/edac/edac_device_sysfs.c", i32 69, i32 23}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/edac/edac_device_sysfs.c", i32 155, i32 1}
!69 = !{ptr @attr_ctl_info_log_ue, !68, !"attr_ctl_info_log_ue", i1 false, i1 false}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/edac/edac_device_sysfs.c", i32 157, i32 1}
!72 = !{ptr @attr_ctl_info_log_ce, !71, !"attr_ctl_info_log_ce", i1 false, i1 false}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/edac/edac_device_sysfs.c", i32 162, i32 1}
!75 = !{ptr @attr_ctl_info_poll_msec, !74, !"attr_ctl_info_poll_msec", i1 false, i1 false}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/edac/edac_device_sysfs.c", i32 705, i32 2}
!78 = !{ptr @edac_device_create_instances._entry, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @edac_device_create_instances._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/edac/edac_device_sysfs.c", i32 637, i32 3}
!82 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @edac_device_create_instance._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @edac_device_create_instance._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/edac/edac_device_sysfs.c", i32 643, i32 2}
!87 = !{ptr @edac_device_create_instance._entry.40, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @edac_device_create_instance._entry_ptr.42, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/edac/edac_device_sysfs.c", i32 660, i32 2}
!91 = !{ptr @edac_device_create_instance._entry.43, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @edac_device_create_instance._entry_ptr.45, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @ktype_instance_ctrl, !94, !"ktype_instance_ctrl", i1 false, i1 false}
!94 = !{!"../drivers/edac/edac_device_sysfs.c", i32 399, i32 25}
!95 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/edac/edac_device_sysfs.c", i32 329, i32 2}
!97 = !{ptr @edac_device_ctrl_instance_release._entry, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @edac_device_ctrl_instance_release._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @device_instance_ops, !100, !"device_instance_ops", i1 false, i1 false}
!100 = !{!"../drivers/edac/edac_device_sysfs.c", i32 371, i32 31}
!101 = !{ptr @device_instance_attr, !102, !"device_instance_attr", i1 false, i1 false}
!102 = !{!"../drivers/edac/edac_device_sysfs.c", i32 392, i32 35}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/edac/edac_device_sysfs.c", i32 388, i32 1}
!105 = !{ptr @attr_instance_ce_count, !104, !"attr_instance_ce_count", i1 false, i1 false}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/edac/edac_device_sysfs.c", i32 389, i32 1}
!108 = !{ptr @attr_instance_ue_count, !107, !"attr_instance_ue_count", i1 false, i1 false}
!109 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/edac/edac_device_sysfs.c", i32 517, i32 2}
!111 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @edac_device_create_block._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @edac_device_create_block._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/edac/edac_device_sysfs.c", i32 519, i32 2}
!116 = !{ptr @edac_device_create_block._entry.51, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @edac_device_create_block._entry_ptr.53, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @edac_device_create_block._entry.54, !119, !"_entry", i1 false, i1 false}
!119 = !{!"../drivers/edac/edac_device_sysfs.c", i32 539, i32 3}
!120 = !{ptr @edac_device_create_block._entry_ptr.55, !119, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/edac/edac_device_sysfs.c", i32 552, i32 4}
!123 = !{ptr @edac_device_create_block._entry.56, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @edac_device_create_block._entry_ptr.58, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @ktype_block_ctrl, !126, !"ktype_block_ctrl", i1 false, i1 false}
!126 = !{!"../drivers/edac/edac_device_sysfs.c", i32 497, i32 25}
!127 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/edac/edac_device_sysfs.c", i32 435, i32 2}
!129 = !{ptr @edac_device_ctrl_block_release._entry, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @edac_device_ctrl_block_release._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @device_block_ops, !132, !"device_block_ops", i1 false, i1 false}
!132 = !{!"../drivers/edac/edac_device_sysfs.c", i32 474, i32 31}
!133 = !{ptr @device_block_attr, !134, !"device_block_attr", i1 false, i1 false}
!134 = !{!"../drivers/edac/edac_device_sysfs.c", i32 490, i32 47}
!135 = !{ptr @attr_block_ce_count, !136, !"attr_block_ce_count", i1 false, i1 false}
!136 = !{!"../drivers/edac/edac_device_sysfs.c", i32 486, i32 1}
!137 = !{ptr @attr_block_ue_count, !138, !"attr_block_ue_count", i1 false, i1 false}
!138 = !{!"../drivers/edac/edac_device_sysfs.c", i32 487, i32 1}
!139 = !{i32 1, !"wchar_size", i32 2}
!140 = !{i32 1, !"min_enum_size", i32 4}
!141 = !{i32 8, !"branch-target-enforcement", i32 0}
!142 = !{i32 8, !"sign-return-address", i32 0}
!143 = !{i32 8, !"sign-return-address-all", i32 0}
!144 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!145 = !{i32 7, !"uwtable", i32 1}
!146 = !{i32 7, !"frame-pointer", i32 2}
!147 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
