; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/drm_sysfs.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+drm_sysfs_hotplug_event\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_sysfs_hotplug_event\09\09\09\09"
module asm "\09.long\09__crc_drm_sysfs_hotplug_event\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sysfs_hotplug_event:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sysfs_hotplug_event\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sysfs_hotplug_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_sysfs_connector_hotplug_event\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_sysfs_connector_hotplug_event\09\09\09\09"
module asm "\09.long\09__crc_drm_sysfs_connector_hotplug_event\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sysfs_connector_hotplug_event:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sysfs_connector_hotplug_event\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sysfs_connector_hotplug_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_sysfs_connector_status_event\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_sysfs_connector_status_event\09\09\09\09"
module asm "\09.long\09__crc_drm_sysfs_connector_status_event\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sysfs_connector_status_event:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sysfs_connector_status_event\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sysfs_connector_status_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+drm_class_device_register\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_class_device_register\09\09\09\09"
module asm "\09.long\09__crc_drm_class_device_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_class_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_class_device_register\22\09\09\09\09\09"
module asm "__kstrtabns_drm_class_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+drm_class_device_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_class_device_unregister\09\09\09\09"
module asm "\09.long\09__crc_drm_class_device_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_class_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_class_device_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_drm_class_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.class_attribute_string = type { %struct.class_attribute, ptr }
%struct.class_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.86 }
%union.anon.86 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.84, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.85, ptr, i32, ptr, i8, i32 }
%struct.anon.84 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.85 = type { i32, ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.drm_property = type { %struct.list_head, %struct.drm_mode_object, i32, [32 x i8], i32, ptr, ptr, %struct.list_head }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_property_blob = type { %struct.drm_mode_object, ptr, %struct.list_head, %struct.list_head, i32, ptr }

@drm_sysfs_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"drm\00", [28 x i8] zeroinitializer }, align 32
@drm_class = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@class_attr_version = internal global { %struct.class_attribute_string, [32 x i8] } { %struct.class_attribute_string { %struct.class_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_class_attr_string, ptr null }, ptr @.str.21 }, [32 x i8] zeroinitializer }, align 32
@drm_sysfs_device_connector = internal global { %struct.device_type, [40 x i8] } { %struct.device_type { ptr @.str.23, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@connector_dev_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @connector_dev_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"card%d-%s\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"adding \22%s\22 to sysfs\0A\00", [42 x i8] zeroinitializer }, align 32
@drm_sysfs_connector_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 349, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"[drm] *ERROR* failed to register connector device: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drm_sysfs_connector_add\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/gpu/drm/drm_sysfs.c\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@drm_sysfs_connector_add._entry_ptr = internal global ptr @drm_sysfs_connector_add._entry, section ".printk_index", align 4
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ddc\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"removing \22%s\22 from sysfs\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEASE=1\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"generating lease event\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HOTPLUG=1\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"generating hotplug event\0A\00", [38 x i8] zeroinitializer }, align 32
@__kstrtab_drm_sysfs_hotplug_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sysfs_hotplug_event = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sysfs_hotplug_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sysfs_hotplug_event to i32), ptr @__kstrtab_drm_sysfs_hotplug_event, ptr @__kstrtabns_drm_sysfs_hotplug_event }, section "___ksymtab+drm_sysfs_hotplug_event", align 4
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CONNECTOR=%u\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[CONNECTOR:%d:%s] generating connector hotplug event\0A\00", [42 x i8] zeroinitializer }, align 32
@__kstrtab_drm_sysfs_connector_hotplug_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sysfs_connector_hotplug_event = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sysfs_connector_hotplug_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sysfs_connector_hotplug_event to i32), ptr @__kstrtab_drm_sysfs_connector_hotplug_event, ptr @__kstrtabns_drm_sysfs_connector_hotplug_event }, section "___ksymtab+drm_sysfs_connector_hotplug_event", align 4
@__const.drm_sysfs_connector_status_event.hotplug_str = private unnamed_addr constant [10 x i8] c"HOTPLUG=1\00", align 1
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PROPERTY=%u\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"generating connector status event\0A\00", [61 x i8] zeroinitializer }, align 32
@__kstrtab_drm_sysfs_connector_status_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sysfs_connector_status_event = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sysfs_connector_status_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sysfs_connector_status_event to i32), ptr @__kstrtab_drm_sysfs_connector_status_event, ptr @__kstrtabns_drm_sysfs_connector_status_event }, section "___ksymtab+drm_sysfs_connector_status_event", align 4
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"renderD%d\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"card%d\00", [25 x i8] zeroinitializer }, align 32
@drm_sysfs_device_minor = internal global { %struct.device_type, [40 x i8] } { %struct.device_type { ptr @.str.37, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@__kstrtab_drm_class_device_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_class_device_register = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_class_device_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_class_device_register to i32), ptr @__kstrtab_drm_class_device_register, ptr @__kstrtabns_drm_class_device_register }, section "___ksymtab_gpl+drm_class_device_register", align 4
@__kstrtab_drm_class_device_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_class_device_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_class_device_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_class_device_unregister to i32), ptr @__kstrtab_drm_class_device_unregister, ptr @__kstrtabns_drm_class_device_unregister }, section "___ksymtab_gpl+drm_class_device_unregister", align 4
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"drm 1.1.0 20060810\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dri/%s\00", [25 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"drm_connector\00", [18 x i8] zeroinitializer }, align 32
@connector_dev_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @connector_dev_attrs, ptr @connector_bin_attrs }, [44 x i8] zeroinitializer }, align 32
@connector_dev_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @dev_attr_status, ptr @dev_attr_enabled, ptr @dev_attr_dpms, ptr @dev_attr_modes, ptr null], [44 x i8] zeroinitializer }, align 32
@connector_bin_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @edid_attr, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_status = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @status_show, ptr @status_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_enabled = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @enabled_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_dpms = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dpms_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_modes = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @modes_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"detect\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"on-digital\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"[CONNECTOR:%d:%s] force updated from %d to %d or reprobing\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"enabled\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"disabled\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dpms\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"modes\00", [26 x i8] zeroinitializer }, align 32
@edid_attr = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @edid_show, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"edid\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"drm_minor\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.38 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 114, i32 14 }
@___asan_gen_.44 = private unnamed_addr constant [10 x i8] c"drm_class\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 58, i32 15 }
@___asan_gen_.47 = private unnamed_addr constant [19 x i8] c"class_attr_version\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [27 x i8] c"drm_sysfs_device_connector\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 54, i32 27 }
@___asan_gen_.53 = private unnamed_addr constant [21 x i8] c"connector_dev_groups\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 314, i32 38 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 340, i32 25 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 344, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 349, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 357, i32 33 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 373, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 382, i32 23 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 385, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 403, i32 23 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 406, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 427, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 429, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 460, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 462, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 475, i32 15 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 477, i32 15 }
@___asan_gen_.116 = private unnamed_addr constant [23 x i8] c"drm_sysfs_device_minor\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 50, i32 27 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 98, i32 8 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 95, i32 31 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 55, i32 10 }
@___asan_gen_.131 = private unnamed_addr constant [20 x i8] c"connector_dev_group\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 309, i32 37 }
@___asan_gen_.134 = private unnamed_addr constant [20 x i8] c"connector_dev_attrs\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 289, i32 26 }
@___asan_gen_.137 = private unnamed_addr constant [20 x i8] c"connector_bin_attrs\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 304, i32 30 }
@___asan_gen_.140 = private unnamed_addr constant [16 x i8] c"dev_attr_status\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"dev_attr_enabled\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [14 x i8] c"dev_attr_dpms\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [15 x i8] c"dev_attr_modes\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 284, i32 8 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 205, i32 25 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 169, i32 23 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 171, i32 28 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 173, i32 28 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 175, i32 28 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 181, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 285, i32 8 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 230, i32 35 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 230, i32 49 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 286, i32 8 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 287, i32 8 }
@___asan_gen_.188 = private unnamed_addr constant [10 x i8] c"edid_attr\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 297, i32 29 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 298, i32 15 }
@___asan_gen_.194 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.195 = private constant [31 x i8] c"../drivers/gpu/drm/drm_sysfs.c\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 51, i32 10 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__ksymtab_drm_class_device_register, ptr @__ksymtab_drm_class_device_unregister, ptr @__ksymtab_drm_sysfs_connector_hotplug_event, ptr @__ksymtab_drm_sysfs_connector_status_event, ptr @__ksymtab_drm_sysfs_hotplug_event, ptr @drm_sysfs_connector_add._entry, ptr @drm_sysfs_connector_add._entry_ptr, ptr @drm_sysfs_init.__key, ptr @.str, ptr @drm_class, ptr @class_attr_version, ptr @drm_sysfs_device_connector, ptr @connector_dev_groups, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @drm_sysfs_device_minor, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @connector_dev_group, ptr @connector_dev_attrs, ptr @connector_bin_attrs, ptr @dev_attr_status, ptr @dev_attr_enabled, ptr @dev_attr_dpms, ptr @dev_attr_modes, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @edid_attr, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_sysfs_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @class_attr_version to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_sysfs_device_connector to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @connector_dev_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_sysfs_connector_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_sysfs_device_minor to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @connector_dev_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @connector_dev_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @connector_bin_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_status to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_enabled to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dpms to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_modes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edid_attr to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_sysfs_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @drm_sysfs_init.__key) #6
  store ptr %call, ptr @drm_class, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @class_create_file_ns(ptr noundef %call, ptr noundef nonnull @class_attr_version, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  %1 = load ptr, ptr @drm_class, align 4
  br i1 %tobool.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @class_destroy(ptr noundef %1) #6
  store ptr null, ptr @drm_class, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %devnode = getelementptr inbounds %struct.class, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %devnode to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @drm_devnode, ptr %devnode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call.i, %if.then4 ], [ 0, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @drm_devnode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %entry.dev_name.exit_crit_edge ]
  %call1 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.22, ptr noundef %retval.0.i) #6
  ret ptr %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_sysfs_destroy() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @drm_class, align 4
  %tobool.not.i = icmp eq ptr %0, null
  %cmp.i = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @class_remove_file_ns(ptr noundef nonnull %0, ptr noundef nonnull @class_attr_version, ptr noundef null) #6
  %1 = load ptr, ptr @drm_class, align 4
  tail call void @class_destroy(ptr noundef %1) #6
  store ptr null, ptr @drm_class, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_sysfs_connector_add(ptr noundef %connector) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %kdev2 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 1
  %2 = ptrtoint ptr %kdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kdev2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 928) #9
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  tail call void @device_initialize(ptr noundef nonnull %call7.i.i) #6
  %5 = load ptr, ptr @drm_class, align 4
  %class = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 33
  %6 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %class, align 4
  %type = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @drm_sysfs_device_connector, ptr %type, align 4
  %primary = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %primary, align 4
  %kdev6 = getelementptr inbounds %struct.drm_minor, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %kdev6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %kdev6, align 4
  %parent = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %parent, align 8
  %groups = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 34
  %13 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @connector_dev_groups, ptr %groups, align 8
  %release = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 35
  %14 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @drm_sysfs_release, ptr %release, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 8
  %15 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %connector, ptr %driver_data.i, align 4
  %16 = load ptr, ptr %primary, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %name = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 7
  %19 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name, align 4
  %call8 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.1, i32 noundef %18, ptr noundef %20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end5.err_free_crit_edge

if.end5.err_free_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free

if.end11:                                         ; preds = %if.end5
  %21 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2, ptr noundef %22) #6
  %call13 = tail call i32 @device_add(ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end17, label %do.end

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %dev16 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.3, i32 noundef %call13) #10
  br label %err_free

if.end17:                                         ; preds = %if.end11
  %25 = ptrtoint ptr %kdev2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i, ptr %kdev2, align 4
  %ddc = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 46
  %26 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ddc, align 4
  %tobool19.not = icmp eq ptr %27, null
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %if.then20

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %dev23 = getelementptr inbounds %struct.i2c_adapter, ptr %27, i32 0, i32 9
  %call25 = tail call i32 @sysfs_create_link(ptr noundef nonnull %call7.i.i, ptr noundef %dev23, ptr noundef nonnull @.str.8) #6
  br label %cleanup

err_free:                                         ; preds = %do.end, %if.end5.err_free_crit_edge
  %r.0 = phi i32 [ %call8, %if.end5.err_free_crit_edge ], [ %call13, %do.end ]
  tail call void @put_device(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.then20, %if.end17.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %err_free ], [ %call25, %if.then20 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drm_sysfs_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %dev) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_sysfs_connector_remove(ptr nocapture noundef %connector) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %kdev = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 1
  %0 = ptrtoint ptr %kdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kdev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %ddc = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 46
  %2 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddc, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @sysfs_remove_link(ptr noundef nonnull %1, ptr noundef nonnull @.str.8) #6
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %name = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 7
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.9, ptr noundef %5) #6
  %6 = ptrtoint ptr %kdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kdev, align 4
  tail call void @device_unregister(ptr noundef %7) #6
  %8 = ptrtoint ptr %kdev to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %kdev, align 4
  br label %return

return:                                           ; preds = %if.end4, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_sysfs_lease_event(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  %envp = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %envp) #6
  %0 = getelementptr inbounds [2 x ptr], ptr %envp, i32 0, i32 1
  %1 = ptrtoint ptr %envp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.10, ptr %envp, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %0, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.11) #6
  %primary = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 6
  %3 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %primary, align 4
  %kdev = getelementptr inbounds %struct.drm_minor, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %kdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %kdev, align 4
  %call = call i32 @kobject_uevent_env(ptr noundef %6, i32 noundef 2, ptr noundef nonnull %envp) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %envp) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent_env(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_sysfs_hotplug_event(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  %envp = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %envp) #6
  %0 = getelementptr inbounds [2 x ptr], ptr %envp, i32 0, i32 1
  %1 = ptrtoint ptr %envp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.12, ptr %envp, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %0, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.13) #6
  %primary = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 6
  %3 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %primary, align 4
  %kdev = getelementptr inbounds %struct.drm_minor, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %kdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %kdev, align 4
  %call = call i32 @kobject_uevent_env(ptr noundef %6, i32 noundef 2, ptr noundef nonnull %envp) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %envp) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_sysfs_connector_hotplug_event(ptr nocapture noundef readonly %connector) #0 align 64 {
entry:
  %hotplug_str = alloca [10 x i8], align 1
  %conn_id = alloca [21 x i8], align 1
  %envp = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %hotplug_str) #6
  %2 = call ptr @memcpy(ptr %hotplug_str, ptr @__const.drm_sysfs_connector_status_event.hotplug_str, i32 10)
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %conn_id) #6
  %3 = call ptr @memset(ptr %conn_id, i32 255, i32 21)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %envp) #6
  %4 = getelementptr inbounds [3 x ptr], ptr %envp, i32 0, i32 1
  %5 = getelementptr inbounds [3 x ptr], ptr %envp, i32 0, i32 2
  %6 = ptrtoint ptr %envp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %hotplug_str, ptr %envp, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %conn_id, ptr %4, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %5, align 4
  %base = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 6
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base, align 8
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %conn_id, i32 noundef 21, ptr noundef nonnull @.str.14, i32 noundef %10)
  %11 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %connector, align 8
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev7 = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev7, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %14, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %base, align 8
  %name = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 7
  %17 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name, align 4
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond, i32 noundef 4, ptr noundef nonnull @.str.15, i32 noundef %16, ptr noundef %18) #6
  %primary = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %primary, align 4
  %kdev = getelementptr inbounds %struct.drm_minor, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %kdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %kdev, align 4
  %call11 = call i32 @kobject_uevent_env(ptr noundef %22, i32 noundef 2, ptr noundef nonnull %envp) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %envp) #6
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %conn_id) #6
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %hotplug_str) #6
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_sysfs_connector_status_event(ptr noundef %connector, ptr nocapture noundef readonly %property) #0 align 64 {
entry:
  %hotplug_str = alloca [10 x i8], align 1
  %conn_id = alloca [21 x i8], align 1
  %prop_id = alloca [21 x i8], align 1
  %envp = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %hotplug_str) #6
  %2 = call ptr @memcpy(ptr %hotplug_str, ptr @__const.drm_sysfs_connector_status_event.hotplug_str, i32 10)
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %conn_id) #6
  %3 = call ptr @memset(ptr %conn_id, i32 255, i32 21)
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %prop_id) #6
  %4 = call ptr @memset(ptr %prop_id, i32 255, i32 21)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %envp) #6
  %5 = getelementptr inbounds [4 x ptr], ptr %envp, i32 0, i32 1
  %6 = getelementptr inbounds [4 x ptr], ptr %envp, i32 0, i32 2
  %7 = getelementptr inbounds [4 x ptr], ptr %envp, i32 0, i32 3
  %8 = ptrtoint ptr %envp to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %hotplug_str, ptr %envp, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %conn_id, ptr %5, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %prop_id, ptr %6, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %7, align 4
  %base = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 6
  %base6 = getelementptr inbounds %struct.drm_property, ptr %property, i32 0, i32 1
  %12 = ptrtoint ptr %base6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base6, align 4
  %call = call ptr @drm_mode_obj_find_prop_id(ptr noundef %base, i32 noundef %13) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !114

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 455, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %base, align 8
  %call30 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %conn_id, i32 noundef 21, ptr noundef nonnull @.str.14, i32 noundef %15)
  %16 = ptrtoint ptr %base6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base6, align 4
  %call34 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %prop_id, i32 noundef 21, ptr noundef nonnull @.str.16, i32 noundef %17)
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.17) #6
  %primary = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %primary, align 4
  %kdev = getelementptr inbounds %struct.drm_minor, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %kdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %kdev, align 4
  %call36 = call i32 @kobject_uevent_env(ptr noundef %21, i32 noundef 2, ptr noundef nonnull %envp) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %envp) #6
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %prop_id) #6
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %conn_id) #6
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %hotplug_str) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_obj_find_prop_id(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @drm_sysfs_minor_alloc(ptr noundef %minor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.drm_minor, ptr %minor, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 928) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  %.str.18..str.19 = select i1 %cmp, ptr @.str.18, ptr @.str.19
  tail call void @device_initialize(ptr noundef nonnull %call7.i.i) #6
  %3 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %minor, align 4
  %or = or i32 %4, 236978176
  %devt = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 29
  %5 = ptrtoint ptr %devt to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or, ptr %devt, align 8
  %6 = load ptr, ptr @drm_class, align 4
  %class = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 33
  %7 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %class, align 4
  %type4 = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %type4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @drm_sysfs_device_minor, ptr %type4, align 4
  %dev = getelementptr inbounds %struct.drm_minor, ptr %minor, i32 0, i32 3
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %dev5 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev5, align 4
  %parent = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %parent, align 8
  %release = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 35
  %14 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @drm_sysfs_release, ptr %release, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 8
  %15 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %minor, ptr %driver_data.i, align 4
  %call7 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %.str.18..str.19, i32 noundef %4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %err_free, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_free:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @put_device(ptr noundef nonnull %call7.i.i) #6
  %16 = inttoptr i32 %call7 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %16, %err_free ], [ %call7.i.i, %if.end3.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_class_device_register(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @drm_class, align 4
  %tobool.not = icmp eq ptr %0, null
  %cmp.i = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool.not, %cmp.i
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %class = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 33
  %1 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %0, ptr %class, align 4
  %call1 = tail call i32 @device_register(ptr noundef %dev) #6
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -2, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_class_device_unregister(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @device_unregister(ptr noundef %dev) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @class_create_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @show_class_attr_string(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_remove_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @status_show(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %status1 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status1, align 8
  %call2 = tail call ptr @drm_get_connector_status_name(i32 noundef %3) #6
  %call3 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.25, ptr noundef %call2) #6
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @status_store(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %mode_config = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30
  %call2 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mode_config, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %force = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 37
  %4 = ptrtoint ptr %force to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %force, align 4
  %call3 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.26) #6
  br i1 %call3, label %if.end.if.end21.sink.split_crit_edge, label %if.else

if.end.if.end21.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.sink.split

if.else:                                          ; preds = %if.end
  %call6 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.27) #6
  br i1 %call6, label %if.else.if.end21.sink.split_crit_edge, label %if.else9

if.else.if.end21.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.sink.split

if.else9:                                         ; preds = %if.else
  %call10 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.28) #6
  br i1 %call10, label %if.else9.if.end21.sink.split_crit_edge, label %if.else13

if.else9.if.end21.sink.split_crit_edge:           ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.sink.split

if.else13:                                        ; preds = %if.else9
  %call14 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.29) #6
  br i1 %call14, label %if.else13.if.end21.sink.split_crit_edge, label %if.else13.if.end21_crit_edge

if.else13.if.end21_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.else13.if.end21.sink.split_crit_edge:          ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.sink.split

if.end21.sink.split:                              ; preds = %if.else13.if.end21.sink.split_crit_edge, %if.else9.if.end21.sink.split_crit_edge, %if.else.if.end21.sink.split_crit_edge, %if.end.if.end21.sink.split_crit_edge
  %.sink = phi i32 [ 0, %if.end.if.end21.sink.split_crit_edge ], [ 2, %if.else.if.end21.sink.split_crit_edge ], [ 3, %if.else9.if.end21.sink.split_crit_edge ], [ 1, %if.else13.if.end21.sink.split_crit_edge ]
  %6 = ptrtoint ptr %force to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink, ptr %force, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end21.sink.split, %if.else13.if.end21_crit_edge
  %tobool33.not = phi i32 [ -22, %if.else13.if.end21_crit_edge ], [ %count, %if.end21.sink.split ]
  %7 = ptrtoint ptr %force to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %force, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %8)
  %cmp.not = icmp ne i32 %5, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool24.not = icmp eq i32 %8, 0
  %or.cond = or i1 %cmp.not, %tobool24.not
  br i1 %or.cond, label %if.then25, label %if.end21.if.end30_crit_edge

if.end21.if.end30_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %base = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base, align 8
  %name = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.30, i32 noundef %10, ptr noundef %12, i32 noundef %5, i32 noundef %8) #6
  %funcs = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 21
  %13 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %funcs, align 8
  %fill_modes = getelementptr inbounds %struct.drm_connector_funcs, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %fill_modes to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fill_modes, align 4
  %max_width = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 25
  %17 = ptrtoint ptr %max_width to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_width, align 4
  %max_height = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 26
  %19 = ptrtoint ptr %max_height to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_height, align 4
  %call29 = tail call i32 %16(ptr noundef %1, i32 noundef %18, i32 noundef %20) #6
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %if.end21.if.end30_crit_edge
  tail call void @mutex_unlock(ptr noundef %mode_config) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %tobool33.not, %if.end30 ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_connector_status_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enabled_show(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %encoder = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 41
  %2 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %encoder, align 4
  %tobool.not = icmp eq ptr %3, null
  %cond = select i1 %tobool.not, ptr @.str.33, ptr @.str.32
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull %cond) #6
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpms_show(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dpms1 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %dpms1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %dpms1, align 8
  %call2 = tail call ptr @drm_get_dpms_name(i32 noundef %3) #6
  %call3 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.25, ptr noundef %call2) #6
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_dpms_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @modes_show(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %mode_config = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30
  tail call void @mutex_lock_nested(ptr noundef %mode_config, i32 noundef 0) #6
  %modes = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %modes to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn20 = load ptr, ptr %modes, align 4
  %cmp.not21 = icmp eq ptr %.pn20, %modes
  br i1 %cmp.not21, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn23 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn20, %entry.for.body_crit_edge ]
  %written.022 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %add.ptr2 = getelementptr i8, ptr %buf, i32 %written.022
  %sub = sub i32 4096, %written.022
  %name = getelementptr i8, ptr %.pn23, i32 8
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2, i32 noundef %sub, ptr noundef nonnull @.str.25, ptr noundef %name) #6
  %add = add i32 %call3, %written.022
  %5 = ptrtoint ptr %.pn23 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn23, align 4
  %cmp.not = icmp eq ptr %.pn, %modes
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %written.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %mode_config10 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 30
  tail call void @mutex_unlock(ptr noundef %mode_config10) #6
  ret i32 %written.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edid_show(ptr nocapture noundef readnone %filp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf, i64 noundef %off, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %mode_config = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30
  tail call void @mutex_lock_nested(ptr noundef %mode_config, i32 noundef 0) #6
  %edid_blob_ptr = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %edid_blob_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %edid_blob_ptr, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.drm_property_blob, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %if.end.unlock_crit_edge, label %if.end6

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end6:                                          ; preds = %if.end
  %length = getelementptr inbounds %struct.drm_property_blob, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length, align 4
  %conv = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %off)
  %cmp.not = icmp sgt i64 %conv, %off
  br i1 %cmp.not, label %if.end9, label %if.end6.unlock_crit_edge

if.end6.unlock_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end9:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %conv10 = zext i32 %count to i64
  %add = add i64 %conv10, %off
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv)
  %cmp12 = icmp sgt i64 %add, %conv
  %10 = trunc i64 %off to i32
  %conv16 = sub i32 %9, %10
  %count.addr.0 = select i1 %cmp12, i32 %conv16, i32 %count
  %add.ptr = getelementptr i8, ptr %7, i32 %10
  %11 = call ptr @memcpy(ptr %buf, ptr %add.ptr, i32 %count.addr.0)
  br label %unlock

unlock:                                           ; preds = %if.end9, %if.end6.unlock_crit_edge, %if.end.unlock_crit_edge, %entry.unlock_crit_edge
  %ret.0 = phi i32 [ 0, %if.end6.unlock_crit_edge ], [ %count.addr.0, %if.end9 ], [ 0, %if.end.unlock_crit_edge ], [ 0, %entry.unlock_crit_edge ]
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %mode_config19 = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 30
  tail call void @mutex_unlock(ptr noundef %mode_config19) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !54, !55, !57, !59, !61, !63, !65, !67, !69, !70, !72, !74, !76, !78, !80, !82, !84, !85, !87, !89, !91, !92, !94, !95, !97, !99, !101, !103}
!llvm.module.flags = !{!105, !106, !107, !108, !109, !110, !111, !112}
!llvm.ident = !{!113}

!0 = !{ptr @drm_sysfs_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/drm_sysfs.c", i32 114, i32 14}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/drm_sysfs.c", i32 340, i32 25}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/drm_sysfs.c", i32 344, i32 2}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/drm_sysfs.c", i32 349, i32 3}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !8, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @drm_sysfs_connector_add._entry, !8, !"_entry", i1 false, i1 false}
!14 = !{ptr @drm_sysfs_connector_add._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/drm_sysfs.c", i32 357, i32 33}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/drm_sysfs.c", i32 373, i32 2}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/drm_sysfs.c", i32 382, i32 23}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/drm_sysfs.c", i32 385, i32 2}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/drm_sysfs.c", i32 403, i32 23}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/drm_sysfs.c", i32 406, i32 2}
!27 = !{ptr @__ksymtab_drm_sysfs_hotplug_event, !28, !"__ksymtab_drm_sysfs_hotplug_event", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/drm_sysfs.c", i32 410, i32 1}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/drm_sysfs.c", i32 427, i32 4}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/drm_sysfs.c", i32 429, i32 2}
!33 = !{ptr @__ksymtab_drm_sysfs_connector_hotplug_event, !34, !"__ksymtab_drm_sysfs_connector_hotplug_event", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/drm_sysfs.c", i32 435, i32 1}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/drm_sysfs.c", i32 460, i32 4}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/drm_sysfs.c", i32 462, i32 2}
!39 = !{ptr @__ksymtab_drm_sysfs_connector_status_event, !40, !"__ksymtab_drm_sysfs_connector_status_event", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/drm_sysfs.c", i32 466, i32 1}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/drm_sysfs.c", i32 475, i32 15}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/drm_sysfs.c", i32 477, i32 15}
!45 = !{ptr @__ksymtab_drm_class_device_register, !46, !"__ksymtab_drm_class_device_register", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/drm_sysfs.c", i32 518, i32 1}
!47 = !{ptr @__ksymtab_drm_class_device_unregister, !48, !"__ksymtab_drm_class_device_unregister", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/drm_sysfs.c", i32 532, i32 1}
!49 = !{ptr @drm_class, !50, !"drm_class", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/drm_sysfs.c", i32 58, i32 15}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/drm_sysfs.c", i32 98, i32 8}
!53 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @class_attr_version, !52, !"class_attr_version", i1 false, i1 false}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/drm_sysfs.c", i32 95, i32 31}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/drm_sysfs.c", i32 55, i32 10}
!59 = !{ptr @drm_sysfs_device_connector, !60, !"drm_sysfs_device_connector", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/drm_sysfs.c", i32 54, i32 27}
!61 = !{ptr @connector_dev_groups, !62, !"connector_dev_groups", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/drm_sysfs.c", i32 314, i32 38}
!63 = !{ptr @connector_dev_group, !64, !"connector_dev_group", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/drm_sysfs.c", i32 309, i32 37}
!65 = !{ptr @connector_dev_attrs, !66, !"connector_dev_attrs", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/drm_sysfs.c", i32 289, i32 26}
!67 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/drm_sysfs.c", i32 284, i32 8}
!69 = !{ptr @dev_attr_status, !68, !"dev_attr_status", i1 false, i1 false}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/drm_sysfs.c", i32 205, i32 25}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/drm_sysfs.c", i32 169, i32 23}
!74 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/drm_sysfs.c", i32 171, i32 28}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/drm_sysfs.c", i32 173, i32 28}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/drm_sysfs.c", i32 175, i32 28}
!80 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/drm_sysfs.c", i32 181, i32 3}
!82 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/drm_sysfs.c", i32 285, i32 8}
!84 = !{ptr @dev_attr_enabled, !83, !"dev_attr_enabled", i1 false, i1 false}
!85 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/drm_sysfs.c", i32 230, i32 35}
!87 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/drm_sysfs.c", i32 230, i32 49}
!89 = !{ptr @.str.34, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/drm_sysfs.c", i32 286, i32 8}
!91 = !{ptr @dev_attr_dpms, !90, !"dev_attr_dpms", i1 false, i1 false}
!92 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/drm_sysfs.c", i32 287, i32 8}
!94 = !{ptr @dev_attr_modes, !93, !"dev_attr_modes", i1 false, i1 false}
!95 = !{ptr @connector_bin_attrs, !96, !"connector_bin_attrs", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/drm_sysfs.c", i32 304, i32 30}
!97 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/drm_sysfs.c", i32 298, i32 15}
!99 = !{ptr @edid_attr, !100, !"edid_attr", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/drm_sysfs.c", i32 297, i32 29}
!101 = !{ptr @.str.37, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/drm_sysfs.c", i32 51, i32 10}
!103 = !{ptr @drm_sysfs_device_minor, !104, !"drm_sysfs_device_minor", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/drm_sysfs.c", i32 50, i32 27}
!105 = !{i32 1, !"wchar_size", i32 2}
!106 = !{i32 1, !"min_enum_size", i32 4}
!107 = !{i32 8, !"branch-target-enforcement", i32 0}
!108 = !{i32 8, !"sign-return-address", i32 0}
!109 = !{i32 8, !"sign-return-address-all", i32 0}
!110 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!111 = !{i32 7, !"uwtable", i32 1}
!112 = !{i32 7, !"frame-pointer", i32 2}
!113 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!114 = !{!"branch_weights", i32 1, i32 2000}
