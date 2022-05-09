; ModuleID = '/llk/IR_all_yes/drivers/usb/misc/lvstest.c_pt.bc'
source_filename = "../drivers/usb/misc/lvstest.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.lvs_rh = type { ptr, i8, i32, [8 x i8], %struct.usb_hub_descriptor, ptr, %struct.work_struct, %struct.usb_port_status }
%struct.usb_hub_descriptor = type <{ i8, i8, i8, i16, i8, i8, %union.anon.68 }>
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { [4 x i8], [4 x i8] }
%struct.usb_port_status = type { i16, i16, i32 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.71, i32 }
%union.anon.71 = type { ptr }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_lvstest__232_473_lvs_driver_init6 = internal global ptr @lvs_driver_init, section ".initcall6.init", align 4
@lvs_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @lvs_rh_probe, ptr @lvs_rh_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lvs_groups, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_lvs_driver_exit = internal global ptr @lvs_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description233 = internal constant [56 x i8] c"lvstest.description=Link Layer Validation System Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [38 x i8] c"lvstest.file=drivers/usb/misc/lvstest\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [20 x i8] c"lvstest.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lvstest\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lvs\00", [28 x i8] zeroinitializer }, align 32
@lvs_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @lvs_group, ptr null], [24 x i8] zeroinitializer }, align 32
@lvs_rh_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 411, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Bind LVS driver with SS root Hub only\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lvs_rh_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/usb/misc/lvstest.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lvs_rh_probe._entry_ptr = internal global ptr @lvs_rh_probe._entry, section ".printk_index", align 4
@lvs_rh_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 428, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"wrong root hub descriptor read %d\0A\00", [61 x i8] zeroinitializer }, align 32
@lvs_rh_probe._entry_ptr.9 = internal global ptr @lvs_rh_probe._entry.7, section ".printk_index", align 4
@lvs_rh_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&lvs->rh_work)\00", [63 x i8] zeroinitializer }, align 32
@lvs_rh_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 446, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"couldn't submit lvs urb %d\0A\00", [36 x i8] zeroinitializer }, align 32
@lvs_rh_probe._entry_ptr.13 = internal global ptr @lvs_rh_probe._entry.11, section ".printk_index", align 4
@lvs_rh_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 382, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"urb resubmit error %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lvs_rh_work\00", [20 x i8] zeroinitializer }, align 32
@lvs_rh_work._entry_ptr = internal global ptr @lvs_rh_work._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@lvs_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @lvs_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@lvs_attrs = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @dev_attr_get_dev_desc, ptr @dev_attr_u1_timeout, ptr @dev_attr_u2_timeout, ptr @dev_attr_hot_reset, ptr @dev_attr_warm_reset, ptr @dev_attr_u3_entry, ptr @dev_attr_u3_exit, ptr @dev_attr_enable_compliance, ptr null], [60 x i8] zeroinitializer }, align 32
@dev_attr_get_dev_desc = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @get_dev_desc_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_u1_timeout = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @u1_timeout_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_u2_timeout = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @u2_timeout_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hot_reset = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @hot_reset_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_warm_reset = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @warm_reset_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_u3_entry = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @u3_entry_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_u3_exit = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @u3_exit_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_enable_compliance = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @enable_compliance_store }, [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"get_dev_desc\00", [19 x i8] zeroinitializer }, align 32
@get_dev_desc_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 269, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create lvs device\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"get_dev_desc_store\00", [45 x i8] zeroinitializer }, align 32
@get_dev_desc_store._entry_ptr = internal global ptr @get_dev_desc_store._entry, section ".printk_index", align 4
@get_dev_desc_store._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.4, i32 279, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"can't read device descriptor %d\0A\00", [63 x i8] zeroinitializer }, align 32
@get_dev_desc_store._entry_ptr.22 = internal global ptr @get_dev_desc_store._entry.20, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@create_lvs_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 47, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"No LVS device is present\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"create_lvs_device\00", [46 x i8] zeroinitializer }, align 32
@create_lvs_device._entry_ptr = internal global ptr @create_lvs_device._entry, section ".printk_index", align 4
@create_lvs_device._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.4, i32 56, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Could not allocate lvs udev\0A\00", [35 x i8] zeroinitializer }, align 32
@create_lvs_device._entry_ptr.27 = internal global ptr @create_lvs_device._entry.25, section ".printk_index", align 4
@create_lvs_device._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.4, i32 65, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Failed to enable\0A\00", [46 x i8] zeroinitializer }, align 32
@create_lvs_device._entry_ptr.30 = internal global ptr @create_lvs_device._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"u1_timeout\00", [21 x i8] zeroinitializer }, align 32
@u1_timeout_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 237, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"couldn't parse string %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"u1_timeout_store\00", [47 x i8] zeroinitializer }, align 32
@u1_timeout_store._entry_ptr = internal global ptr @u1_timeout_store._entry, section ".printk_index", align 4
@u1_timeout_store._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.4, i32 247, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error %d while setting U1 timeout %ld\0A\00", [57 x i8] zeroinitializer }, align 32
@u1_timeout_store._entry_ptr.36 = internal global ptr @u1_timeout_store._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"u2_timeout\00", [21 x i8] zeroinitializer }, align 32
@u2_timeout_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.38, ptr @.str.4, i32 208, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"u2_timeout_store\00", [47 x i8] zeroinitializer }, align 32
@u2_timeout_store._entry_ptr = internal global ptr @u2_timeout_store._entry, section ".printk_index", align 4
@u2_timeout_store._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.4, i32 218, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error %d while setting U2 timeout %ld\0A\00", [57 x i8] zeroinitializer }, align 32
@u2_timeout_store._entry_ptr.41 = internal global ptr @u2_timeout_store._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hot_reset\00", [22 x i8] zeroinitializer }, align 32
@hot_reset_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 170, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"can't issue hot reset %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hot_reset_store\00", [16 x i8] zeroinitializer }, align 32
@hot_reset_store._entry_ptr = internal global ptr @hot_reset_store._entry, section ".printk_index", align 4
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"warm_reset\00", [21 x i8] zeroinitializer }, align 32
@warm_reset_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.4, i32 189, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"can't issue warm reset %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"warm_reset_store\00", [47 x i8] zeroinitializer }, align 32
@warm_reset_store._entry_ptr = internal global ptr @warm_reset_store._entry, section ".printk_index", align 4
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"u3_entry\00", [23 x i8] zeroinitializer }, align 32
@u3_entry_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.49, ptr @.str.4, i32 112, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"u3_entry_store\00", [17 x i8] zeroinitializer }, align 32
@u3_entry_store._entry_ptr = internal global ptr @u3_entry_store._entry, section ".printk_index", align 4
@u3_entry_store._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.4, i32 119, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"can't issue U3 entry %d\0A\00", [39 x i8] zeroinitializer }, align 32
@u3_entry_store._entry_ptr.52 = internal global ptr @u3_entry_store._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"u3_exit\00", [24 x i8] zeroinitializer }, align 32
@u3_exit_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.54, ptr @.str.4, i32 141, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"u3_exit_store\00", [18 x i8] zeroinitializer }, align 32
@u3_exit_store._entry_ptr = internal global ptr @u3_exit_store._entry, section ".printk_index", align 4
@u3_exit_store._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.4, i32 148, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"can't issue U3 exit %d\0A\00", [40 x i8] zeroinitializer }, align 32
@u3_exit_store._entry_ptr.57 = internal global ptr @u3_exit_store._entry.55, section ".printk_index", align 4
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"enable_compliance\00", [46 x i8] zeroinitializer }, align 32
@enable_compliance_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.4, i32 305, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"can't enable compliance mode %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"enable_compliance_store\00", [40 x i8] zeroinitializer }, align 32
@enable_compliance_store._entry_ptr = internal global ptr @enable_compliance_store._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967277, i64 4294967295]
@___asan_gen_.61 = private unnamed_addr constant [11 x i8] c"lvs_driver\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 466, i32 26 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 473, i32 1 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 467, i32 11 }
@___asan_gen_.70 = private unnamed_addr constant [11 x i8] c"lvs_groups\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 411, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 428, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 437, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 446, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 382, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [10 x i8] c"lvs_group\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 324, i32 1 }
@___asan_gen_.121 = private unnamed_addr constant [10 x i8] c"lvs_attrs\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 313, i32 26 }
@___asan_gen_.124 = private unnamed_addr constant [22 x i8] c"dev_attr_get_dev_desc\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [20 x i8] c"dev_attr_u1_timeout\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [20 x i8] c"dev_attr_u2_timeout\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [19 x i8] c"dev_attr_hot_reset\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [20 x i8] c"dev_attr_warm_reset\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [18 x i8] c"dev_attr_u3_entry\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"dev_attr_u3_exit\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [27 x i8] c"dev_attr_enable_compliance\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 291, i32 8 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 269, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 279, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 47, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 56, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 65, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 253, i32 8 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 237, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 247, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 224, i32 8 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 208, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 218, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 176, i32 8 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 170, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 195, i32 8 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 189, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 128, i32 8 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 112, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 119, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 157, i32 8 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 141, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 148, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 311, i32 8 }
@___asan_gen_.277 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.283 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.284 = private constant [30 x i8] c"../drivers/usb/misc/lvstest.c\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 305, i32 3 }
@llvm.compiler.used = appending global [101 x ptr] [ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__exitcall_lvs_driver_exit, ptr @__initcall__kmod_lvstest__232_473_lvs_driver_init6, ptr @create_lvs_device._entry, ptr @create_lvs_device._entry.25, ptr @create_lvs_device._entry.28, ptr @create_lvs_device._entry_ptr, ptr @create_lvs_device._entry_ptr.27, ptr @create_lvs_device._entry_ptr.30, ptr @enable_compliance_store._entry, ptr @enable_compliance_store._entry_ptr, ptr @get_dev_desc_store._entry, ptr @get_dev_desc_store._entry.20, ptr @get_dev_desc_store._entry_ptr, ptr @get_dev_desc_store._entry_ptr.22, ptr @hot_reset_store._entry, ptr @hot_reset_store._entry_ptr, ptr @lvs_driver_exit, ptr @lvs_rh_probe._entry, ptr @lvs_rh_probe._entry.11, ptr @lvs_rh_probe._entry.7, ptr @lvs_rh_probe._entry_ptr, ptr @lvs_rh_probe._entry_ptr.13, ptr @lvs_rh_probe._entry_ptr.9, ptr @lvs_rh_work._entry, ptr @lvs_rh_work._entry_ptr, ptr @u1_timeout_store._entry, ptr @u1_timeout_store._entry.34, ptr @u1_timeout_store._entry_ptr, ptr @u1_timeout_store._entry_ptr.36, ptr @u2_timeout_store._entry, ptr @u2_timeout_store._entry.39, ptr @u2_timeout_store._entry_ptr, ptr @u2_timeout_store._entry_ptr.41, ptr @u3_entry_store._entry, ptr @u3_entry_store._entry.50, ptr @u3_entry_store._entry_ptr, ptr @u3_entry_store._entry_ptr.52, ptr @u3_exit_store._entry, ptr @u3_exit_store._entry.55, ptr @u3_exit_store._entry_ptr, ptr @u3_exit_store._entry_ptr.57, ptr @warm_reset_store._entry, ptr @warm_reset_store._entry_ptr, ptr @lvs_driver, ptr @.str, ptr @.str.1, ptr @lvs_groups, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @lvs_rh_probe.__key, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @lvs_group, ptr @lvs_attrs, ptr @dev_attr_get_dev_desc, ptr @dev_attr_u1_timeout, ptr @dev_attr_u2_timeout, ptr @dev_attr_hot_reset, ptr @dev_attr_warm_reset, ptr @dev_attr_u3_entry, ptr @dev_attr_u3_exit, ptr @dev_attr_enable_compliance, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60], section "llvm.metadata"
@0 = internal global [75 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lvs_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lvs_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lvs_rh_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lvs_rh_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lvs_rh_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lvs_rh_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lvs_rh_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lvs_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lvs_attrs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_get_dev_desc to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_u1_timeout to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_u2_timeout to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hot_reset to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_warm_reset to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_u3_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_u3_exit to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_enable_compliance to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_dev_desc_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_dev_desc_store._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_lvs_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_lvs_device._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_lvs_device._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u1_timeout_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u1_timeout_store._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u2_timeout_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u2_timeout_store._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hot_reset_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @warm_reset_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u3_entry_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u3_entry_store._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u3_exit_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u3_exit_store._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_compliance_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lvs_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @lvs_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lvs_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_deregister(ptr noundef nonnull @lvs_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lvs_rh_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %endpoint = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %endpoint) #7
  %0 = ptrtoint ptr %endpoint to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %endpoint, align 4, !annotation !147
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %1 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %2, i32 -128
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %3 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cur_altsetting, align 4
  %call.i = call i32 @usb_find_common_endpoints(ptr noundef %4, ptr noundef null, ptr noundef null, ptr noundef nonnull %endpoint, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %bDeviceProtocol = getelementptr i8, ptr %2, i32 934
  %5 = ptrtoint ptr %bDeviceProtocol to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bDeviceProtocol, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %6)
  %cmp.not = icmp eq i8 %6, 3
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %parent = getelementptr i8, ptr %2, i32 -68
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 4
  %tobool3.not = icmp eq ptr %8, null
  br i1 %tobool3.not, label %if.end5, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %dev6 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %call.i104 = call noalias ptr @devm_kmalloc(ptr noundef %dev6, i32 noundef 92, i32 noundef 3520) #7
  %tobool8.not = icmp eq ptr %call.i104, null
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %9 = ptrtoint ptr %call.i104 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %intf, ptr %call.i104, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i104, ptr %driver_data.i.i, align 4
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %12, 8
  %or13 = or i32 %shl.i, -2147483520
  %descriptor14 = getelementptr inbounds %struct.lvs_rh, ptr %call.i104, i32 0, i32 4
  %call15 = call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or13, i8 noundef zeroext 6, i8 noundef zeroext -96, i16 noundef zeroext 10752, i16 noundef zeroext 0, ptr noundef %descriptor14, i16 noundef zeroext 12, i32 noundef 5000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 9
  br i1 %cmp16, label %do.end21, label %if.end25

do.end21:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %call15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp23 = icmp slt i32 %call15, 0
  %spec.select = select i1 %cmp23, i32 %call15, i32 -22
  br label %cleanup

if.end25:                                         ; preds = %if.end10
  %call26 = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #7
  %urb = getelementptr inbounds %struct.lvs_rh, ptr %call.i104, i32 0, i32 5
  %13 = ptrtoint ptr %urb to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call26, ptr %urb, align 4
  %tobool28.not = icmp eq ptr %call26, null
  br i1 %tobool28.not, label %if.end25.cleanup_crit_edge, label %do.body31

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body31:                                        ; preds = %if.end25
  %rh_work = getelementptr inbounds %struct.lvs_rh, ptr %call.i104, i32 0, i32 6
  call void @__init_work(ptr noundef %rh_work, i32 noundef 0) #7
  %14 = ptrtoint ptr %rh_work to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -64, ptr %rh_work, align 4
  %lockdep_map = getelementptr inbounds %struct.lvs_rh, ptr %call.i104, i32 0, i32 6, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.10, ptr noundef nonnull @lvs_rh_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry35 = getelementptr inbounds %struct.lvs_rh, ptr %call.i104, i32 0, i32 6, i32 1
  %15 = ptrtoint ptr %entry35 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %entry35, ptr %entry35, align 4
  %prev.i = getelementptr inbounds %struct.lvs_rh, ptr %call.i104, i32 0, i32 6, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %entry35, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.lvs_rh, ptr %call.i104, i32 0, i32 6, i32 2
  %17 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @lvs_rh_work, ptr %func, align 4
  %18 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %endpoint, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bEndpointAddress, align 1
  %conv39 = zext i8 %21 to i32
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i, align 8
  %shl.i105 = shl i32 %23, 8
  %shl1.i = shl nuw nsw i32 %conv39, 15
  %or.i = or i32 %shl.i105, %shl1.i
  %or42 = or i32 %or.i, 1073741952
  %24 = lshr i32 %or.i, 15
  %and.i = and i32 %24, 15
  %arrayidx57.i = getelementptr %struct.usb_device, ptr %add.ptr.i, i32 0, i32 21, i32 %and.i
  %25 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx57.i, align 4
  %tobool59.not.i = icmp eq ptr %26, null
  br i1 %tobool59.not.i, label %do.body31.usb_maxpacket.exit_crit_edge, label %if.end61.i

do.body31.usb_maxpacket.exit_crit_edge:           ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #9
  br label %usb_maxpacket.exit

if.end61.i:                                       ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #9
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %29 = and i16 %28, -249
  %30 = call i16 @llvm.bswap.i16(i16 %29) #7
  %phi.cast = zext i16 %30 to i32
  br label %usb_maxpacket.exit

usb_maxpacket.exit:                               ; preds = %if.end61.i, %do.body31.usb_maxpacket.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.cast, %if.end61.i ], [ 0, %do.body31.usb_maxpacket.exit_crit_edge ]
  %31 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %urb, align 4
  %buffer = getelementptr inbounds %struct.lvs_rh, ptr %call.i104, i32 0, i32 3
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %19, i32 0, i32 5
  %33 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bInterval, align 1
  %conv47 = zext i8 %34 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %32, i32 0, i32 8
  %35 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr.i, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %32, i32 0, i32 10
  %36 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or42, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %32, i32 0, i32 14
  %37 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %buffer, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %32, i32 0, i32 19
  %38 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %retval.0.i, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %32, i32 0, i32 28
  %39 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @lvs_rh_irq, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %32, i32 0, i32 27
  %40 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i104, ptr %context4.i, align 4
  %speed.i = getelementptr i8, ptr %2, i32 -100
  %41 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %42)
  %cmp.i = icmp eq i32 %42, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %42)
  %cmp6.i = icmp ugt i32 %42, 4
  %or.cond.i = or i1 %cmp.i, %cmp6.i
  br i1 %or.cond.i, label %if.then.i, label %usb_maxpacket.exit.usb_fill_int_urb.exit_crit_edge

usb_maxpacket.exit.usb_fill_int_urb.exit_crit_edge: ; preds = %usb_maxpacket.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %usb_fill_int_urb.exit

if.then.i:                                        ; preds = %usb_maxpacket.exit
  call void @__sanitizer_cov_trace_pc() #9
  %43 = call i32 @llvm.smax.i32(i32 %conv47, i32 1) #7
  %44 = call i32 @llvm.umin.i32(i32 %43, i32 16) #7
  %sub.i = add nsw i32 %44, -1
  %shl.i106 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i, %usb_maxpacket.exit.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i106, %if.then.i ], [ %conv47, %usb_maxpacket.exit.usb_fill_int_urb.exit_crit_edge ]
  %45 = getelementptr inbounds %struct.urb, ptr %32, i32 0, i32 25
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %interval.sink.i, ptr %45, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %32, i32 0, i32 23
  %47 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %start_frame.i, align 4
  %48 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %urb, align 4
  %call49 = call i32 @usb_submit_urb(ptr noundef %49, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %do.end55, label %usb_fill_int_urb.exit.cleanup_crit_edge

usb_fill_int_urb.exit.cleanup_crit_edge:          ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end55:                                         ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str.12, i32 noundef %call49) #10
  %50 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %urb, align 4
  call void @usb_free_urb(ptr noundef %51) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end55, %usb_fill_int_urb.exit.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %do.end21, %if.end5.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %spec.select, %do.end21 ], [ %call49, %do.end55 ], [ %call.i, %entry.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ -12, %if.end25.cleanup_crit_edge ], [ %call49, %usb_fill_int_urb.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endpoint) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lvs_rh_disconnect(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %urb = getelementptr inbounds %struct.lvs_rh, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %urb, align 4
  tail call void @usb_poison_urb(ptr noundef %3) #7
  %rh_work = getelementptr inbounds %struct.lvs_rh, ptr %1, i32 0, i32 6
  %call1 = tail call zeroext i1 @flush_work(ptr noundef %rh_work) #7
  %4 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %urb, align 4
  tail call void @usb_free_urb(ptr noundef %5) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lvs_rh_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -40
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -128
  %bus = getelementptr i8, ptr %3, i32 -64
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 8
  %port_status4 = getelementptr i8, ptr %work, i32 44
  %bNbrPorts = getelementptr i8, ptr %work, i32 -18
  %6 = ptrtoint ptr %bNbrPorts to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bNbrPorts, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.not126 = icmp eq i8 %7, 0
  br i1 %cmp.not126, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %wPortChange = getelementptr i8, ptr %work, i32 46
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0127 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %9, 8
  %or7 = or i32 %shl.i, -2147483520
  %conv8 = trunc i32 %i.0127 to i16
  %call9 = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or7, i8 noundef zeroext 0, i8 noundef zeroext -93, i16 noundef zeroext 0, i16 noundef zeroext %conv8, ptr noundef %port_status4, i16 noundef zeroext 8, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 4
  br i1 %cmp10, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %10 = ptrtoint ptr %wPortChange to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %wPortChange, align 1
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %conv12 = zext i16 %12 to i32
  %and = and i32 %conv12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end15_crit_edge, label %if.then13

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i, align 8
  %shl.i.i = shl i32 %14, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 35, i16 noundef zeroext 25, i16 noundef zeroext %conv8, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end.if.end15_crit_edge
  %and17 = and i32 %conv12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end15.if.end21_crit_edge, label %if.then19

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i, align 8
  %shl.i.i103 = shl i32 %16, 8
  %or.i104 = or i32 %shl.i.i103, -2147483648
  %call2.i106 = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or.i104, i8 noundef zeroext 1, i8 noundef zeroext 35, i16 noundef zeroext 17, i16 noundef zeroext %conv8, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #7
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end15.if.end21_crit_edge
  %and23 = and i32 %conv12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end21.if.end27_crit_edge, label %if.then25

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i, align 8
  %shl.i.i107 = shl i32 %18, 8
  %or.i108 = or i32 %shl.i.i107, -2147483648
  %call2.i110 = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or.i108, i8 noundef zeroext 1, i8 noundef zeroext 35, i16 noundef zeroext 20, i16 noundef zeroext %conv8, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #7
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end21.if.end27_crit_edge
  %and29 = and i32 %conv12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end27.if.end33_crit_edge, label %if.then31

if.end27.if.end33_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i, align 8
  %shl.i.i111 = shl i32 %20, 8
  %or.i112 = or i32 %shl.i.i111, -2147483648
  %call2.i114 = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or.i112, i8 noundef zeroext 1, i8 noundef zeroext 35, i16 noundef zeroext 29, i16 noundef zeroext %conv8, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #7
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end27.if.end33_crit_edge
  %and35 = and i32 %conv12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end33.for.inc_crit_edge, label %if.then37

if.end33.for.inc_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then37:                                        ; preds = %if.end33
  %conv8.le = trunc i32 %i.0127 to i16
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i, align 8
  %shl.i.i115 = shl i32 %22, 8
  %or.i116 = or i32 %shl.i.i115, -2147483648
  %call2.i118 = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or.i116, i8 noundef zeroext 1, i8 noundef zeroext 35, i16 noundef zeroext 16, i16 noundef zeroext %conv8.le, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #7
  %23 = ptrtoint ptr %port_status4 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %port_status4, align 1
  %25 = and i16 %24, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool41.not = icmp eq i16 %25, 0
  %present48 = getelementptr i8, ptr %work, i32 -36
  br i1 %tobool41.not, label %if.else, label %if.then42

if.then42:                                        ; preds = %if.then37
  %26 = ptrtoint ptr %present48 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %present48, align 4
  %portnum = getelementptr i8, ptr %work, i32 -32
  %27 = ptrtoint ptr %portnum to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %i.0127, ptr %portnum, align 4
  %usb_phy = getelementptr inbounds %struct.usb_hcd, ptr %5, i32 0, i32 10
  %28 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %usb_phy, align 4
  %tobool43.not = icmp eq ptr %29, null
  br i1 %tobool43.not, label %if.then42.for.end_crit_edge, label %land.lhs.true.i

if.then42.for.end_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true.i:                                  ; preds = %if.then42
  %notify_connect.i = getelementptr inbounds %struct.usb_phy, ptr %29, i32 0, i32 28
  %30 = ptrtoint ptr %notify_connect.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %notify_connect.i, align 4
  %tobool1.not.i = icmp eq ptr %31, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.for.end_crit_edge, label %if.then.i

land.lhs.true.i.for.end_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %31(ptr noundef nonnull %29, i32 noundef 5) #7
  br label %for.end

if.else:                                          ; preds = %if.then37
  %32 = ptrtoint ptr %present48 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %present48, align 4
  %usb_phy49 = getelementptr inbounds %struct.usb_hcd, ptr %5, i32 0, i32 10
  %33 = ptrtoint ptr %usb_phy49 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %usb_phy49, align 4
  %tobool50.not = icmp eq ptr %34, null
  br i1 %tobool50.not, label %if.else.for.end_crit_edge, label %land.lhs.true.i121

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true.i121:                               ; preds = %if.else
  %notify_disconnect.i = getelementptr inbounds %struct.usb_phy, ptr %34, i32 0, i32 29
  %35 = ptrtoint ptr %notify_disconnect.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %notify_disconnect.i, align 4
  %tobool1.not.i120 = icmp eq ptr %36, null
  br i1 %tobool1.not.i120, label %land.lhs.true.i121.for.end_crit_edge, label %if.then.i123

land.lhs.true.i121.for.end_crit_edge:             ; preds = %land.lhs.true.i121
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then.i123:                                     ; preds = %land.lhs.true.i121
  call void @__sanitizer_cov_trace_pc() #9
  %call.i122 = tail call i32 %36(ptr noundef nonnull %34, i32 noundef 5) #7
  br label %for.end

for.inc:                                          ; preds = %if.end33.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0127, 1
  %37 = ptrtoint ptr %bNbrPorts to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bNbrPorts, align 1
  %conv = zext i8 %38 to i32
  %cmp.not.not = icmp ult i32 %i.0127, %conv
  br i1 %cmp.not.not, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then.i123, %land.lhs.true.i121.for.end_crit_edge, %if.else.for.end_crit_edge, %if.then.i, %land.lhs.true.i.for.end_crit_edge, %if.then42.for.end_crit_edge, %entry.for.end_crit_edge
  %urb = getelementptr i8, ptr %work, i32 -4
  %39 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %urb, align 4
  %call57 = tail call i32 @usb_submit_urb(ptr noundef %40, i32 noundef 3264) #7
  %41 = zext i32 %call57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call57, label %do.end [
    i32 0, label %for.end.if.end66_crit_edge
    i32 -19, label %for.end.if.end66_crit_edge136
    i32 -1, label %for.end.if.end66_crit_edge137
  ]

for.end.if.end66_crit_edge137:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

for.end.if.end66_crit_edge136:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

for.end.if.end66_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call57) #10
  br label %if.end66

if.end66:                                         ; preds = %do.end, %for.end.if.end66_crit_edge, %for.end.if.end66_crit_edge136, %for.end.if.end66_crit_edge137
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lvs_rh_irq(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %rh_work = getelementptr inbounds %struct.lvs_rh, ptr %1, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %rh_work) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_find_common_endpoints(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_poison_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_dev_desc_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 18) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call1 = tail call fastcc ptr @create_lvs_device(ptr noundef %add.ptr)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %free_desc.thread, label %if.end4

free_desc.thread:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #10
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %9

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @usb_control_msg(ptr noundef nonnull %call1, i32 noundef -2147483520, i8 noundef zeroext 6, i8 noundef zeroext -128, i16 noundef zeroext 256, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 18, i32 noundef 5000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end9, label %if.end4.if.end10_crit_edge

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

do.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %call5) #10
  br label %if.end10

if.end10:                                         ; preds = %do.end9, %if.end4.if.end10_crit_edge
  %parent.i = getelementptr inbounds %struct.usb_device, ptr %call1, i32 0, i32 11
  %1 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent.i, align 4
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 12
  %3 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus.i, align 8
  %driver.i = getelementptr inbounds %struct.usb_hcd, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver.i, align 8
  %free_dev.i = getelementptr inbounds %struct.hc_driver, ptr %6, i32 0, i32 28
  %7 = ptrtoint ptr %free_dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %free_dev.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end10.free_desc_crit_edge, label %if.then.i

if.end10.free_desc_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_desc

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %8(ptr noundef %4, ptr noundef nonnull %call1) #7
  br label %free_desc

free_desc:                                        ; preds = %if.then.i, %if.end10.free_desc_crit_edge
  tail call void @usb_put_dev(ptr noundef nonnull %call1) #7
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br i1 %cmp, label %free_desc._crit_edge, label %free_desc.cleanup_crit_edge

free_desc.cleanup_crit_edge:                      ; preds = %free_desc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

free_desc._crit_edge:                             ; preds = %free_desc
  call void @__sanitizer_cov_trace_pc() #9
  br label %9

9:                                                ; preds = %free_desc._crit_edge, %free_desc.thread
  %ret.028 = phi i32 [ -12, %free_desc.thread ], [ %call5, %free_desc._crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %9, %free_desc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %ret.028, %9 ], [ %count, %free_desc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @create_lvs_device(ptr noundef %intf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %present = getelementptr inbounds %struct.lvs_rh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %present, align 4, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 -128
  %bus = getelementptr i8, ptr %5, i32 -64
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus, align 8
  %portnum = getelementptr inbounds %struct.lvs_rh, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %portnum to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %portnum, align 4
  %call4 = tail call ptr @usb_alloc_dev(ptr noundef %add.ptr.i, ptr noundef %7, i32 noundef %9) #7
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end9, label %if.end11

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev10 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.26) #10
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %speed = getelementptr inbounds %struct.usb_device, ptr %call4, i32 0, i32 4
  %10 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 5, ptr %speed, align 4
  %wMaxPacketSize = getelementptr inbounds %struct.usb_device, ptr %call4, i32 0, i32 13, i32 0, i32 4
  %11 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 2, ptr %wMaxPacketSize, align 4
  tail call void @usb_set_device_state(ptr noundef nonnull %call4, i32 noundef 5) #7
  %driver = getelementptr inbounds %struct.usb_hcd, ptr %7, i32 0, i32 9
  %12 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver, align 8
  %enable_device = getelementptr inbounds %struct.hc_driver, ptr %13, i32 0, i32 36
  %14 = ptrtoint ptr %enable_device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %enable_device, align 4
  %tobool12.not = icmp eq ptr %15, null
  br i1 %tobool12.not, label %if.end11.cleanup_crit_edge, label %if.then13

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then13:                                        ; preds = %if.end11
  %call16 = tail call i32 %15(ptr noundef %7, ptr noundef nonnull %call4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp slt i32 %call16, 0
  br i1 %cmp, label %do.end20, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end20:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %dev21 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.29) #10
  tail call void @usb_put_dev(ptr noundef nonnull %call4) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %if.then13.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %do.end9, %do.end
  %retval.0 = phi ptr [ null, %do.end20 ], [ null, %do.end9 ], [ null, %do.end ], [ %call4, %if.then13.cleanup_crit_edge ], [ %call4, %if.end11.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_dev(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_set_device_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @u1_timeout_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr i8, ptr %dev, i32 136
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !147
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %call.i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %6)
  %cmp3 = icmp ugt i32 %6, 127
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %portnum = getelementptr inbounds %struct.lvs_rh, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %portnum to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %portnum, align 4
  %shl = shl nuw nsw i32 %6, 8
  %or = or i32 %8, %shl
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i, align 8
  %shl.i.i = shl i32 %10, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %conv1.i = trunc i32 %or to i16
  %call2.i = call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or.i, i8 noundef zeroext 3, i8 noundef zeroext 35, i16 noundef zeroext 23, i16 noundef zeroext %conv1.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp7 = icmp slt i32 %call2.i, 0
  br i1 %cmp7, label %do.end11, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %call2.i, i32 noundef %12) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call2.i, %do.end11 ], [ -22, %if.end.cleanup_crit_edge ], [ %count, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @u2_timeout_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr i8, ptr %dev, i32 136
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !147
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %call.i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %6)
  %cmp3 = icmp ugt i32 %6, 127
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %portnum = getelementptr inbounds %struct.lvs_rh, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %portnum to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %portnum, align 4
  %shl = shl nuw nsw i32 %6, 8
  %or = or i32 %8, %shl
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i, align 8
  %shl.i.i = shl i32 %10, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %conv1.i = trunc i32 %or to i16
  %call2.i = call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or.i, i8 noundef zeroext 3, i8 noundef zeroext 35, i16 noundef zeroext 24, i16 noundef zeroext %conv1.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp7 = icmp slt i32 %call2.i, 0
  br i1 %cmp7, label %do.end11, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.40, i32 noundef %call2.i, i32 noundef %12) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call2.i, %do.end11 ], [ -22, %if.end.cleanup_crit_edge ], [ %count, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hot_reset_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr i8, ptr %dev, i32 136
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %portnum = getelementptr inbounds %struct.lvs_rh, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %portnum to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %portnum, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 8
  %shl.i.i = shl i32 %7, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %conv1.i = trunc i32 %5 to i16
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or.i, i8 noundef zeroext 3, i8 noundef zeroext 35, i16 noundef zeroext 4, i16 noundef zeroext %conv1.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43, i32 noundef %call2.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2.i, %do.end ], [ %count, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @warm_reset_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr i8, ptr %dev, i32 136
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %portnum = getelementptr inbounds %struct.lvs_rh, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %portnum to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %portnum, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 8
  %shl.i.i = shl i32 %7, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %conv1.i = trunc i32 %5 to i16
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or.i, i8 noundef zeroext 3, i8 noundef zeroext 35, i16 noundef zeroext 28, i16 noundef zeroext %conv1.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46, i32 noundef %call2.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2.i, %do.end ], [ %count, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @u3_entry_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %parent.i = getelementptr i8, ptr %dev, i32 136
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call fastcc ptr @create_lvs_device(ptr noundef %add.ptr)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %portnum = getelementptr inbounds %struct.lvs_rh, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %portnum to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %portnum, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 8
  %shl.i.i = shl i32 %7, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %conv1.i = trunc i32 %5 to i16
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or.i, i8 noundef zeroext 3, i8 noundef zeroext 35, i16 noundef zeroext 2, i16 noundef zeroext %conv1.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %do.end7, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.51, i32 noundef %call2.i) #10
  br label %if.end8

if.end8:                                          ; preds = %do.end7, %if.end.if.end8_crit_edge
  %parent.i24 = getelementptr inbounds %struct.usb_device, ptr %call2, i32 0, i32 11
  %8 = ptrtoint ptr %parent.i24 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i24, align 4
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i, align 8
  %driver.i = getelementptr inbounds %struct.usb_hcd, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver.i, align 8
  %free_dev.i = getelementptr inbounds %struct.hc_driver, ptr %13, i32 0, i32 28
  %14 = ptrtoint ptr %free_dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %free_dev.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end8.destroy_lvs_device.exit_crit_edge, label %if.then.i

if.end8.destroy_lvs_device.exit_crit_edge:        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %destroy_lvs_device.exit

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %15(ptr noundef %11, ptr noundef nonnull %call2) #7
  br label %destroy_lvs_device.exit

destroy_lvs_device.exit:                          ; preds = %if.then.i, %if.end8.destroy_lvs_device.exit_crit_edge
  tail call void @usb_put_dev(ptr noundef nonnull %call2) #7
  %call3.count = select i1 %cmp, i32 %call2.i, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %destroy_lvs_device.exit, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %call3.count, %destroy_lvs_device.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @u3_exit_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %parent.i = getelementptr i8, ptr %dev, i32 136
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call fastcc ptr @create_lvs_device(ptr noundef %add.ptr)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %portnum = getelementptr inbounds %struct.lvs_rh, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %portnum to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %portnum, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 8
  %shl.i.i = shl i32 %7, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %conv1.i = trunc i32 %5 to i16
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 35, i16 noundef zeroext 2, i16 noundef zeroext %conv1.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %do.end7, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.56, i32 noundef %call2.i) #10
  br label %if.end8

if.end8:                                          ; preds = %do.end7, %if.end.if.end8_crit_edge
  %parent.i24 = getelementptr inbounds %struct.usb_device, ptr %call2, i32 0, i32 11
  %8 = ptrtoint ptr %parent.i24 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i24, align 4
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i, align 8
  %driver.i = getelementptr inbounds %struct.usb_hcd, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver.i, align 8
  %free_dev.i = getelementptr inbounds %struct.hc_driver, ptr %13, i32 0, i32 28
  %14 = ptrtoint ptr %free_dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %free_dev.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end8.destroy_lvs_device.exit_crit_edge, label %if.then.i

if.end8.destroy_lvs_device.exit_crit_edge:        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %destroy_lvs_device.exit

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %15(ptr noundef %11, ptr noundef nonnull %call2) #7
  br label %destroy_lvs_device.exit

destroy_lvs_device.exit:                          ; preds = %if.then.i, %if.end8.destroy_lvs_device.exit_crit_edge
  tail call void @usb_put_dev(ptr noundef nonnull %call2) #7
  %call3.count = select i1 %cmp, i32 %call2.i, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %destroy_lvs_device.exit, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %call3.count, %destroy_lvs_device.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enable_compliance_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr i8, ptr %dev, i32 136
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %portnum = getelementptr inbounds %struct.lvs_rh, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %portnum to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %portnum, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 8
  %shl.i.i = shl i32 %7, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %8 = trunc i32 %5 to i16
  %conv1.i = or i16 %8, 2560
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or.i, i8 noundef zeroext 3, i8 noundef zeroext 35, i16 noundef zeroext 5, i16 noundef zeroext %conv1.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.59, i32 noundef %call2.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2.i, %do.end ], [ %count, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !41, !42, !44, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !97, !98, !99, !100, !102, !103, !105, !106, !107, !108, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !135, !136, !137}
!llvm.module.flags = !{!138, !139, !140, !141, !142, !143, !144, !145}
!llvm.ident = !{!146}

!0 = !{ptr @__initcall__kmod_lvstest__232_473_lvs_driver_init6, !1, !"__initcall__kmod_lvstest__232_473_lvs_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/misc/lvstest.c", i32 473, i32 1}
!2 = !{ptr @__exitcall_lvs_driver_exit, !1, !"__exitcall_lvs_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description233, !4, !"__UNIQUE_ID_description233", i1 false, i1 false}
!4 = !{!"../drivers/usb/misc/lvstest.c", i32 475, i32 1}
!5 = !{ptr @__UNIQUE_ID_file234, !6, !"__UNIQUE_ID_file234", i1 false, i1 false}
!6 = !{!"../drivers/usb/misc/lvstest.c", i32 476, i32 1}
!7 = !{ptr @__UNIQUE_ID_license235, !6, !"__UNIQUE_ID_license235", i1 false, i1 false}
!8 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/usb/misc/lvstest.c", i32 467, i32 11}
!11 = !{ptr @lvs_driver, !12, !"lvs_driver", i1 false, i1 false}
!12 = !{!"../drivers/usb/misc/lvstest.c", i32 466, i32 26}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/usb/misc/lvstest.c", i32 411, i32 3}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @lvs_rh_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @lvs_rh_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/usb/misc/lvstest.c", i32 428, i32 3}
!23 = !{ptr @lvs_rh_probe._entry.7, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @lvs_rh_probe._entry_ptr.9, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @lvs_rh_probe.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/usb/misc/lvstest.c", i32 437, i32 2}
!27 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/misc/lvstest.c", i32 446, i32 3}
!30 = !{ptr @lvs_rh_probe._entry.11, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @lvs_rh_probe._entry_ptr.13, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/misc/lvstest.c", i32 382, i32 3}
!34 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @lvs_rh_work._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @lvs_rh_work._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = distinct !{null, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../include/linux/usb.h", i32 1981, i32 3}
!39 = !{ptr @lvs_groups, !40, !"lvs_groups", i1 false, i1 false}
!40 = !{!"../drivers/usb/misc/lvstest.c", i32 324, i32 1}
!41 = !{ptr @lvs_group, !40, !"lvs_group", i1 false, i1 false}
!42 = !{ptr @lvs_attrs, !43, !"lvs_attrs", i1 false, i1 false}
!43 = !{!"../drivers/usb/misc/lvstest.c", i32 313, i32 26}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/misc/lvstest.c", i32 291, i32 8}
!46 = !{ptr @dev_attr_get_dev_desc, !45, !"dev_attr_get_dev_desc", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/misc/lvstest.c", i32 269, i32 3}
!49 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @get_dev_desc_store._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @get_dev_desc_store._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/misc/lvstest.c", i32 279, i32 3}
!54 = !{ptr @get_dev_desc_store._entry.20, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @get_dev_desc_store._entry_ptr.22, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/misc/lvstest.c", i32 47, i32 3}
!58 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @create_lvs_device._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @create_lvs_device._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/misc/lvstest.c", i32 56, i32 3}
!63 = !{ptr @create_lvs_device._entry.25, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @create_lvs_device._entry_ptr.27, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/misc/lvstest.c", i32 65, i32 4}
!67 = !{ptr @create_lvs_device._entry.28, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @create_lvs_device._entry_ptr.30, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/usb/misc/lvstest.c", i32 253, i32 8}
!71 = !{ptr @dev_attr_u1_timeout, !70, !"dev_attr_u1_timeout", i1 false, i1 false}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/misc/lvstest.c", i32 237, i32 3}
!74 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @u1_timeout_store._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @u1_timeout_store._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/usb/misc/lvstest.c", i32 247, i32 3}
!79 = !{ptr @u1_timeout_store._entry.34, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @u1_timeout_store._entry_ptr.36, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/usb/misc/lvstest.c", i32 224, i32 8}
!83 = !{ptr @dev_attr_u2_timeout, !82, !"dev_attr_u2_timeout", i1 false, i1 false}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/misc/lvstest.c", i32 208, i32 3}
!86 = !{ptr @u2_timeout_store._entry, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @u2_timeout_store._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/misc/lvstest.c", i32 218, i32 3}
!90 = !{ptr @u2_timeout_store._entry.39, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @u2_timeout_store._entry_ptr.41, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/misc/lvstest.c", i32 176, i32 8}
!94 = !{ptr @dev_attr_hot_reset, !93, !"dev_attr_hot_reset", i1 false, i1 false}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/usb/misc/lvstest.c", i32 170, i32 3}
!97 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @hot_reset_store._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @hot_reset_store._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/usb/misc/lvstest.c", i32 195, i32 8}
!102 = !{ptr @dev_attr_warm_reset, !101, !"dev_attr_warm_reset", i1 false, i1 false}
!103 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/usb/misc/lvstest.c", i32 189, i32 3}
!105 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @warm_reset_store._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @warm_reset_store._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/usb/misc/lvstest.c", i32 128, i32 8}
!110 = !{ptr @dev_attr_u3_entry, !109, !"dev_attr_u3_entry", i1 false, i1 false}
!111 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/usb/misc/lvstest.c", i32 112, i32 3}
!113 = !{ptr @u3_entry_store._entry, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @u3_entry_store._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.51, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/usb/misc/lvstest.c", i32 119, i32 3}
!117 = !{ptr @u3_entry_store._entry.50, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @u3_entry_store._entry_ptr.52, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/usb/misc/lvstest.c", i32 157, i32 8}
!121 = !{ptr @dev_attr_u3_exit, !120, !"dev_attr_u3_exit", i1 false, i1 false}
!122 = !{ptr @.str.54, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/usb/misc/lvstest.c", i32 141, i32 3}
!124 = !{ptr @u3_exit_store._entry, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @u3_exit_store._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.56, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/usb/misc/lvstest.c", i32 148, i32 3}
!128 = !{ptr @u3_exit_store._entry.55, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @u3_exit_store._entry_ptr.57, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.58, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/usb/misc/lvstest.c", i32 311, i32 8}
!132 = !{ptr @dev_attr_enable_compliance, !131, !"dev_attr_enable_compliance", i1 false, i1 false}
!133 = !{ptr @.str.59, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/usb/misc/lvstest.c", i32 305, i32 3}
!135 = !{ptr @.str.60, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @enable_compliance_store._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @enable_compliance_store._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{i32 1, !"wchar_size", i32 2}
!139 = !{i32 1, !"min_enum_size", i32 4}
!140 = !{i32 8, !"branch-target-enforcement", i32 0}
!141 = !{i32 8, !"sign-return-address", i32 0}
!142 = !{i32 8, !"sign-return-address-all", i32 0}
!143 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!144 = !{i32 7, !"uwtable", i32 1}
!145 = !{i32 7, !"frame-pointer", i32 2}
!146 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!147 = !{!"auto-init"}
!148 = !{i8 0, i8 2}
