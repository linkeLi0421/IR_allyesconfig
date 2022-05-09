; ModuleID = '/llk/IR_all_yes/drivers/usb/core/port.c_pt.bc'
source_filename = "../drivers/usb/core/port.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.usb_hub = type { ptr, ptr, %struct.kref, ptr, ptr, ptr, %struct.mutex, i32, i32, [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, %struct.usb_tt, i32, i32, i8, [31 x i8], %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.spinlock, %struct.timer_list, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.usb_tt = type { ptr, i32, i32, ptr, %struct.spinlock, %struct.list_head, %struct.work_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.usb_port = type { ptr, %struct.device, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, i8, i32, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.usb_hub_descriptor = type <{ i8, i8, i8, i16, i8, i8, %union.anon.70 }>
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { [4 x i8], [4 x i8] }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usb_port\00", [23 x i8] zeroinitializer }, align 32
@usb_port_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usb_port_runtime_suspend, ptr @usb_port_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@usb_port_device_type = dso_local global { %struct.device_type, [40 x i8] } { %struct.device_type { ptr @.str, ptr null, ptr null, ptr null, ptr @usb_port_device_release, ptr @usb_port_pm_ops }, [40 x i8] zeroinitializer }, align 32
@port_dev_usb3_group = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @port_dev_attr_grp, ptr @port_dev_usb3_attr_grp, ptr null], [20 x i8] zeroinitializer }, align 32
@port_dev_group = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @port_dev_attr_grp, ptr null], [24 x i8] zeroinitializer }, align 32
@usb_port_driver = internal global { %struct.device_driver, [52 x i8] } { %struct.device_driver { ptr @.str.31, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usb_port_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s-port%d\00", [22 x i8] zeroinitializer }, align 32
@usb_hub_create_port_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&port_dev->status_lock\00", [41 x i8] zeroinitializer }, align 32
@connector_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @connector_bind, ptr @connector_unbind }, [24 x i8] zeroinitializer }, align 32
@usb_hub_create_port_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 607, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to add component\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"usb_hub_create_port_device\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/usb/core/port.c\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usb_hub_create_port_device._entry_ptr = internal global ptr @usb_hub_create_port_device._entry, section ".printk_index", align 4
@usb_hub_create_port_device._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 635, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to expose pm_qos_no_poweroff\0A\00", [59 x i8] zeroinitializer }, align 32
@usb_hub_create_port_device._entry_ptr.10 = internal global ptr @usb_hub_create_port_device._entry.8, section ".printk_index", align 4
@usb_port_block_power_off = internal global { i1, [31 x i8] } zeroinitializer, align 32
@usb_port_runtime_resume.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.5, ptr @.str.13, i8 0, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usbcore\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"usb_port_runtime_resume\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reconnect timeout\0A\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@port_dev_attr_grp = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @port_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@port_dev_usb3_attr_grp = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @port_dev_usb3_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@port_dev_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @dev_attr_connect_type, ptr @dev_attr_location, ptr @dev_attr_quirks, ptr @dev_attr_over_current_count, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_connect_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @connect_type_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_location = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @location_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_quirks = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @quirks_show, ptr @quirks_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_over_current_count = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @over_current_count_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"connect_type\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hotplug\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hardwired\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"not used\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"location\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%08x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"quirks\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%08x\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"over_current_count\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@port_dev_usb3_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_usb3_lpm_permit, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_usb3_lpm_permit = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @usb3_lpm_permit_show, ptr @usb3_lpm_permit_store }, [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usb3_lpm_permit\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"u1_u2\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"u1\00", [29 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"u2\00", [29 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"usb\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"connector\00", [22 x i8] zeroinitializer }, align 32
@link_peers_report.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.33, ptr @.str.5, ptr @.str.34, i8 0, i8 99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"link_peers_report\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"peered to %s\0A\00", [18 x i8] zeroinitializer }, align 32
@link_peers_report.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.33, ptr @.str.5, ptr @.str.35, i8 0, i8 100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to peer to %s (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@link_peers_report.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@link_peers_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.33, ptr @.str.5, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014usb: port power management may be unreliable\0A\00", [48 x i8] zeroinitializer }, align 32
@link_peers_report._entry_ptr = internal global ptr @link_peers_report._entry, section ".printk_index", align 4
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@link_peers.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.38, ptr @.str.5, ptr @.str.39, i8 0, i8 86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"link_peers\00", [21 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"usb: failed to peer %s and %s by %s (%s:%s) (%s:%s)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"peer\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s and %s are not peers?\0A\00", [38 x i8] zeroinitializer }, align 32
@switch.table.connect_type_show = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 311, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant [16 x i8] c"usb_port_pm_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 303, i32 32 }
@___asan_gen_.49 = private unnamed_addr constant [21 x i8] c"usb_port_device_type\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 310, i32 20 }
@___asan_gen_.52 = private unnamed_addr constant [20 x i8] c"port_dev_usb3_group\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 177, i32 38 }
@___asan_gen_.55 = private unnamed_addr constant [15 x i8] c"port_dev_group\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 163, i32 38 }
@___asan_gen_.58 = private unnamed_addr constant [16 x i8] c"usb_port_driver\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 316, i32 29 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 588, i32 31 }
@___asan_gen_.64 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 590, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [14 x i8] c"connector_ops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 553, i32 35 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 607, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 635, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [25 x i8] c"usb_port_block_power_off\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 234, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant [18 x i8] c"port_dev_attr_grp\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 159, i32 37 }
@___asan_gen_.110 = private unnamed_addr constant [23 x i8] c"port_dev_usb3_attr_grp\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 173, i32 37 }
@___asan_gen_.113 = private unnamed_addr constant [15 x i8] c"port_dev_attrs\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 151, i32 26 }
@___asan_gen_.116 = private unnamed_addr constant [22 x i8] c"dev_attr_connect_type\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [18 x i8] c"dev_attr_location\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [16 x i8] c"dev_attr_quirks\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [28 x i8] c"dev_attr_over_current_count\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 52, i32 8 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 37, i32 12 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 40, i32 12 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 43, i32 12 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 46, i32 12 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 50, i32 22 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 27, i32 8 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 25, i32 22 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 83, i32 8 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 68, i32 22 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 61, i32 8 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 59, i32 22 }
@___asan_gen_.164 = private unnamed_addr constant [20 x i8] c"port_dev_usb3_attrs\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 168, i32 26 }
@___asan_gen_.167 = private unnamed_addr constant [25 x i8] c"dev_attr_usb3_lpm_permit\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 149, i32 8 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 93, i32 8 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 95, i32 8 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 98, i32 8 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 100, i32 8 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 317, i32 10 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 536, i32 56 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 397, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 399, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 401, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 338, i32 13 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 340, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 349, i32 60 }
@___asan_gen_.221 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.222 = private constant [27 x i8] c"../drivers/usb/core/port.c\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 410, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant [31 x i8] c"switch.table.connect_type_show\00", align 1
@llvm.compiler.used = appending global [65 x ptr] [ptr @link_peers_report._entry, ptr @link_peers_report._entry_ptr, ptr @usb_hub_create_port_device._entry, ptr @usb_hub_create_port_device._entry.8, ptr @usb_hub_create_port_device._entry_ptr, ptr @usb_hub_create_port_device._entry_ptr.10, ptr @.str, ptr @usb_port_pm_ops, ptr @usb_port_device_type, ptr @port_dev_usb3_group, ptr @port_dev_group, ptr @usb_port_driver, ptr @.str.1, ptr @usb_hub_create_port_device.__key, ptr @.str.2, ptr @connector_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @usb_port_block_power_off, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @port_dev_attr_grp, ptr @port_dev_usb3_attr_grp, ptr @port_dev_attrs, ptr @dev_attr_connect_type, ptr @dev_attr_location, ptr @dev_attr_quirks, ptr @dev_attr_over_current_count, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @port_dev_usb3_attrs, ptr @dev_attr_usb3_lpm_permit, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @switch.table.connect_type_show], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_port_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_port_device_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_dev_usb3_group to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_dev_group to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_port_driver to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_hub_create_port_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @connector_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_hub_create_port_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_hub_create_port_device._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_port_block_power_off to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_dev_attr_grp to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_dev_usb3_attr_grp to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_dev_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_connect_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_location to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_quirks to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_over_current_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_dev_usb3_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_usb3_lpm_permit to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_peers_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.connect_type_show to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_port_device_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  %req = getelementptr i8, ptr %dev, i32 936
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 8
  tail call void @kfree(ptr noundef %1) #9
  tail call void @kfree(ptr noundef %add.ptr) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb_hub_create_port_device(ptr noundef %hub, i32 noundef %port1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.usb_hub, ptr %hub, i32 0, i32 1
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1064) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i134 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 36) #12
  %req = getelementptr inbounds %struct.usb_port, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i134, ptr %req, align 8
  %tobool5.not = icmp eq ptr %call7.i.i134, null
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %ports = getelementptr inbounds %struct.usb_hub, ptr %hub, i32 0, i32 27
  %5 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ports, align 4
  %sub = add i32 %port1, -1
  %arrayidx = getelementptr ptr, ptr %6, i32 %sub
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %arrayidx, align 4
  %conv = trunc i32 %port1 to i8
  %portnum = getelementptr inbounds %struct.usb_port, ptr %call7.i.i, i32 0, i32 9
  %8 = ptrtoint ptr %portnum to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %portnum, align 4
  %power_bits = getelementptr inbounds %struct.usb_hub, ptr %hub, i32 0, i32 13
  tail call void @_set_bit(i32 noundef %port1, ptr noundef %power_bits) #9
  %9 = ptrtoint ptr %hub to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hub, align 4
  %dev = getelementptr inbounds %struct.usb_port, ptr %call7.i.i, i32 0, i32 1
  %parent = getelementptr inbounds %struct.usb_port, ptr %call7.i.i, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %parent, align 8
  %bDeviceProtocol.i = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 16, i32 5
  %12 = ptrtoint ptr %bDeviceProtocol.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bDeviceProtocol.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cmp.i.not = icmp eq i8 %13, 3
  br i1 %cmp.i.not, label %if.then10, label %if.end7.if.end17_crit_edge

if.end7.if.end17_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %usb3_lpm_u1_permit = getelementptr inbounds %struct.usb_port, ptr %call7.i.i, i32 0, i32 11
  %14 = ptrtoint ptr %usb3_lpm_u1_permit to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %usb3_lpm_u1_permit, align 4
  %bf.set13 = or i8 %bf.load, 96
  store i8 %bf.set13, ptr %usb3_lpm_u1_permit, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then10, %if.end7.if.end17_crit_edge
  %port_dev_group.sink = phi ptr [ @port_dev_usb3_group, %if.then10 ], [ @port_dev_group, %if.end7.if.end17_crit_edge ]
  %15 = getelementptr inbounds %struct.usb_port, ptr %call7.i.i, i32 0, i32 1, i32 34
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %port_dev_group.sink, ptr %15, align 8
  %type = getelementptr inbounds %struct.usb_port, ptr %call7.i.i, i32 0, i32 1, i32 4
  %17 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @usb_port_device_type, ptr %type, align 4
  %driver = getelementptr inbounds %struct.usb_port, ptr %call7.i.i, i32 0, i32 1, i32 6
  %18 = ptrtoint ptr %driver to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @usb_port_driver, ptr %driver, align 4
  %19 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hdev1, align 4
  %bDeviceProtocol.i135 = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 16, i32 5
  %21 = ptrtoint ptr %bDeviceProtocol.i135 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bDeviceProtocol.i135, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %22)
  %cmp.i136.not = icmp eq i8 %22, 3
  br i1 %cmp.i136.not, label %if.then23, label %if.end17.if.end27_crit_edge

if.end17.if.end27_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %is_superspeed = getelementptr inbounds %struct.usb_port, ptr %call7.i.i, i32 0, i32 11
  %23 = ptrtoint ptr %is_superspeed to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load24 = load i8, ptr %is_superspeed, align 4
  %bf.set26 = or i8 %bf.load24, -128
  store i8 %bf.set26, ptr %is_superspeed, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.end17.if.end27_crit_edge
  %init_name.i = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 15, i32 3
  %24 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end27.dev_name.exit_crit_edge

if.end27.dev_name.exit_crit_edge:                 ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %dev30 = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 15
  %26 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev30, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end27.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %27, %if.end.i ], [ %25, %if.end27.dev_name.exit_crit_edge ]
  %call32 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef %retval.0.i, i32 noundef %port1) #9
  %status_lock = getelementptr inbounds %struct.usb_port, ptr %call7.i.i, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %status_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @usb_hub_create_port_device.__key) #9
  %call34 = tail call i32 @device_register(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end38, label %if.then36

if.then36:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @put_device(ptr noundef %dev) #9
  br label %cleanup

if.end38:                                         ; preds = %dev_name.exit
  %28 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %req, align 8
  %call41 = tail call i32 @dev_pm_qos_add_request(ptr noundef %dev, ptr noundef %29, i32 noundef 5, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp = icmp slt i32 %call41, 0
  br i1 %cmp, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @device_unregister(ptr noundef %dev) #9
  br label %cleanup

if.end45:                                         ; preds = %if.end38
  %call47 = tail call i32 @component_add(ptr noundef %dev, ptr noundef nonnull @connector_ops) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end55, label %do.end52

do.end52:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.3) #13
  tail call void @device_unregister(ptr noundef %dev) #9
  br label %cleanup

if.end55:                                         ; preds = %if.end45
  %30 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ports, align 4
  %arrayidx.i = getelementptr ptr, ptr %31, i32 %sub
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i, align 4
  %34 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hdev1, align 4
  %location.i = getelementptr inbounds %struct.usb_port, ptr %33, i32 0, i32 6
  %36 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %location.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i138 = icmp eq i32 %37, 0
  br i1 %tobool.not.i138, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @usb_for_each_dev(ptr noundef %33, ptr noundef nonnull @match_location) #9
  br label %find_and_link_peer.exit

if.else.i:                                        ; preds = %if.end55
  %parent.i = getelementptr inbounds %struct.usb_device, ptr %35, i32 0, i32 11
  %38 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %parent.i, align 4
  %tobool2.not.i = icmp eq ptr %39, null
  br i1 %tobool2.not.i, label %if.then3.i, label %if.else8.i

if.then3.i:                                       ; preds = %if.else.i
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %35, i32 0, i32 12
  %40 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bus.i, align 8
  %shared_hcd.i = getelementptr inbounds %struct.usb_hcd, ptr %41, i32 0, i32 24
  %42 = ptrtoint ptr %shared_hcd.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %shared_hcd.i, align 4
  %tobool5.not.i = icmp eq ptr %43, null
  br i1 %tobool5.not.i, label %if.then3.i.find_and_link_peer.exit_crit_edge, label %cleanup.i

if.then3.i.find_and_link_peer.exit_crit_edge:     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %find_and_link_peer.exit

cleanup.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  %root_hub.i = getelementptr inbounds %struct.usb_bus, ptr %43, i32 0, i32 11
  br label %if.end30.i

if.else8.i:                                       ; preds = %if.else.i
  %call11.i = tail call ptr @usb_hub_to_struct_hub(ptr noundef nonnull %39) #9
  %tobool12.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool12.not.i, label %if.else8.i.find_and_link_peer.exit_crit_edge, label %if.end14.i

if.else8.i.find_and_link_peer.exit_crit_edge:     ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %find_and_link_peer.exit

if.end14.i:                                       ; preds = %if.else8.i
  %ports15.i = getelementptr inbounds %struct.usb_hub, ptr %call11.i, i32 0, i32 27
  %44 = ptrtoint ptr %ports15.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ports15.i, align 4
  %portnum.i = getelementptr inbounds %struct.usb_device, ptr %35, i32 0, i32 25
  %46 = ptrtoint ptr %portnum.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %portnum.i, align 2
  %conv.i = zext i8 %47 to i32
  %sub16.i = add nsw i32 %conv.i, -1
  %arrayidx17.i = getelementptr ptr, ptr %45, i32 %sub16.i
  %48 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx17.i, align 4
  %tobool18.not.i = icmp eq ptr %49, null
  br i1 %tobool18.not.i, label %if.end14.i.find_and_link_peer.exit_crit_edge, label %lor.lhs.false.i

if.end14.i.find_and_link_peer.exit_crit_edge:     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %find_and_link_peer.exit

lor.lhs.false.i:                                  ; preds = %if.end14.i
  %peer19.i = getelementptr inbounds %struct.usb_port, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %peer19.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %peer19.i, align 4
  %tobool20.not.i = icmp eq ptr %51, null
  br i1 %tobool20.not.i, label %lor.lhs.false.i.find_and_link_peer.exit_crit_edge, label %lor.lhs.false.i.if.end30.i_crit_edge

lor.lhs.false.i.if.end30.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.i

lor.lhs.false.i.find_and_link_peer.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %find_and_link_peer.exit

if.end30.i:                                       ; preds = %lor.lhs.false.i.if.end30.i_crit_edge, %cleanup.i
  %peer_hdev.2.in.i = phi ptr [ %root_hub.i, %cleanup.i ], [ %51, %lor.lhs.false.i.if.end30.i_crit_edge ]
  %52 = ptrtoint ptr %peer_hdev.2.in.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %peer_hdev.2.i = load ptr, ptr %peer_hdev.2.in.i, align 8
  %call31.i = tail call ptr @usb_hub_to_struct_hub(ptr noundef %peer_hdev.2.i) #9
  %tobool32.not.i = icmp eq ptr %call31.i, null
  br i1 %tobool32.not.i, label %if.end30.i.find_and_link_peer.exit_crit_edge, label %lor.lhs.false33.i

if.end30.i.find_and_link_peer.exit_crit_edge:     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %find_and_link_peer.exit

lor.lhs.false33.i:                                ; preds = %if.end30.i
  %maxchild.i = getelementptr inbounds %struct.usb_device, ptr %peer_hdev.2.i, i32 0, i32 35
  %53 = ptrtoint ptr %maxchild.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %maxchild.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %port1)
  %cmp.i139 = icmp slt i32 %54, %port1
  br i1 %cmp.i139, label %lor.lhs.false33.i.find_and_link_peer.exit_crit_edge, label %if.end36.i

lor.lhs.false33.i.find_and_link_peer.exit_crit_edge: ; preds = %lor.lhs.false33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %find_and_link_peer.exit

if.end36.i:                                       ; preds = %lor.lhs.false33.i
  %ports37.i = getelementptr inbounds %struct.usb_hub, ptr %call31.i, i32 0, i32 27
  %55 = ptrtoint ptr %ports37.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ports37.i, align 4
  %arrayidx39.i = getelementptr ptr, ptr %56, i32 %sub
  %57 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx39.i, align 4
  %tobool40.not.i = icmp eq ptr %58, null
  br i1 %tobool40.not.i, label %if.end36.i.find_and_link_peer.exit_crit_edge, label %land.lhs.true.i

if.end36.i.find_and_link_peer.exit_crit_edge:     ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %find_and_link_peer.exit

land.lhs.true.i:                                  ; preds = %if.end36.i
  %location41.i = getelementptr inbounds %struct.usb_port, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %location41.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %location41.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp42.i = icmp eq i32 %60, 0
  br i1 %cmp42.i, label %if.then44.i, label %land.lhs.true.i.find_and_link_peer.exit_crit_edge

land.lhs.true.i.find_and_link_peer.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %find_and_link_peer.exit

if.then44.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @link_peers_report(ptr noundef %33, ptr noundef nonnull %58) #9
  br label %find_and_link_peer.exit

find_and_link_peer.exit:                          ; preds = %if.then44.i, %land.lhs.true.i.find_and_link_peer.exit_crit_edge, %if.end36.i.find_and_link_peer.exit_crit_edge, %lor.lhs.false33.i.find_and_link_peer.exit_crit_edge, %if.end30.i.find_and_link_peer.exit_crit_edge, %lor.lhs.false.i.find_and_link_peer.exit_crit_edge, %if.end14.i.find_and_link_peer.exit_crit_edge, %if.else8.i.find_and_link_peer.exit_crit_edge, %if.then3.i.find_and_link_peer.exit_crit_edge, %if.then.i
  %call.i140 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #9
  %usage_count.i = getelementptr inbounds %struct.usb_port, ptr %call7.i.i, i32 0, i32 1, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %61 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !121
  tail call void @pm_runtime_enable(ptr noundef %dev) #9
  %is_prepared.i = getelementptr inbounds %struct.usb_port, ptr %call7.i.i, i32 0, i32 1, i32 12, i32 1
  %62 = ptrtoint ptr %is_prepared.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %bf.load.i = load i16, ptr %is_prepared.i, align 4
  %63 = and i16 %bf.load.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %bf.cast.not.i = icmp eq i16 %63, 0
  br i1 %bf.cast.not.i, label %if.then.i141, label %find_and_link_peer.exit.device_enable_async_suspend.exit_crit_edge

find_and_link_peer.exit.device_enable_async_suspend.exit_crit_edge: ; preds = %find_and_link_peer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %device_enable_async_suspend.exit

if.then.i141:                                     ; preds = %find_and_link_peer.exit
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set.i = or i16 %bf.load.i, 16384
  %64 = ptrtoint ptr %is_prepared.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %bf.set.i, ptr %is_prepared.i, align 4
  br label %device_enable_async_suspend.exit

device_enable_async_suspend.exit:                 ; preds = %if.then.i141, %find_and_link_peer.exit.device_enable_async_suspend.exit_crit_edge
  %tobool.not.i143 = icmp eq ptr %hub, null
  br i1 %tobool.not.i143, label %device_enable_async_suspend.exit.cleanup_crit_edge, label %hub_is_port_power_switchable.exit

device_enable_async_suspend.exit.cleanup_crit_edge: ; preds = %device_enable_async_suspend.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

hub_is_port_power_switchable.exit:                ; preds = %device_enable_async_suspend.exit
  %descriptor.i = getelementptr inbounds %struct.usb_hub, ptr %hub, i32 0, i32 16
  %65 = ptrtoint ptr %descriptor.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %descriptor.i, align 4
  %wHubCharacteristics.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %wHubCharacteristics.i to i32
  call void @__asan_loadN_noabort(i32 %67, i32 2)
  %68 = load i16, ptr %wHubCharacteristics.i, align 1
  %69 = and i16 %68, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %cmp.i144 = icmp eq i16 %69, 0
  br i1 %cmp.i144, label %if.end63, label %hub_is_port_power_switchable.exit.cleanup_crit_edge

hub_is_port_power_switchable.exit.cleanup_crit_edge: ; preds = %hub_is_port_power_switchable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end63:                                         ; preds = %hub_is_port_power_switchable.exit
  %call65 = tail call i32 @dev_pm_qos_expose_flags(ptr noundef %dev, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp66 = icmp slt i32 %call65, 0
  br i1 %cmp66, label %do.end71, label %if.end73

do.end71:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.9) #13
  br label %cleanup

if.end73:                                         ; preds = %if.end63
  %70 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %req, align 8
  %call75 = tail call i32 @dev_pm_qos_remove_request(ptr noundef %71) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call75)
  %cmp76 = icmp sgt i32 %call75, -1
  br i1 %cmp76, label %if.then78, label %if.end73.cleanup_crit_edge

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then78:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %req, align 8
  tail call void @kfree(ptr noundef %73) #9
  %74 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %req, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then78, %if.end73.cleanup_crit_edge, %do.end71, %hub_is_port_power_switchable.exit.cleanup_crit_edge, %device_enable_async_suspend.exit.cleanup_crit_edge, %do.end52, %if.then43, %if.then36, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call34, %if.then36 ], [ %call41, %if.then43 ], [ %call47, %do.end52 ], [ 0, %do.end71 ], [ -12, %if.then6 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %hub_is_port_power_switchable.exit.cleanup_crit_edge ], [ 0, %if.then78 ], [ 0, %if.end73.cleanup_crit_edge ], [ 0, %device_enable_async_suspend.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_add_request(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_expose_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_remove_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usb_hub_remove_port_device(ptr nocapture noundef readonly %hub, i32 noundef %port1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ports = getelementptr inbounds %struct.usb_hub, ptr %hub, i32 0, i32 27
  %0 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ports, align 4
  %sub = add i32 %port1, -1
  %arrayidx = getelementptr ptr, ptr %1, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %peer1 = getelementptr inbounds %struct.usb_port, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %peer1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %peer1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %peer.i = getelementptr inbounds %struct.usb_port, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %peer.i, align 4
  %cmp.not.i = icmp eq ptr %7, %3
  br i1 %cmp.not.i, label %if.then.unlink_peers.exit_crit_edge, label %do.end.i

if.then.unlink_peers.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlink_peers.exit

do.end.i:                                         ; preds = %if.then
  %init_name.i.i = getelementptr inbounds %struct.usb_port, ptr %3, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.dev_name.exit.i_crit_edge

do.end.i.dev_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.usb_port, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %11, %if.end.i.i ], [ %9, %do.end.i.dev_name.exit.i_crit_edge ]
  %init_name.i52.i = getelementptr inbounds %struct.usb_port, ptr %5, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %init_name.i52.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i52.i, align 8
  %tobool.not.i53.i = icmp eq ptr %13, null
  br i1 %tobool.not.i53.i, label %if.end.i54.i, label %dev_name.exit.i.dev_name.exit56.i_crit_edge

dev_name.exit.i.dev_name.exit56.i_crit_edge:      ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit56.i

if.end.i54.i:                                     ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev10.i = getelementptr inbounds %struct.usb_port, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %dev10.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev10.i, align 4
  br label %dev_name.exit56.i

dev_name.exit56.i:                                ; preds = %if.end.i54.i, %dev_name.exit.i.dev_name.exit56.i_crit_edge
  %retval.0.i55.i = phi ptr [ %15, %if.end.i54.i ], [ %13, %dev_name.exit.i.dev_name.exit56.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 412, i32 noundef 9, ptr noundef nonnull @.str.42, ptr noundef %retval.0.i.i, ptr noundef %retval.0.i55.i) #9
  br label %unlink_peers.exit

unlink_peers.exit:                                ; preds = %dev_name.exit56.i, %if.then.unlink_peers.exit_crit_edge
  %is_superspeed.i = getelementptr inbounds %struct.usb_port, ptr %3, i32 0, i32 11
  %16 = ptrtoint ptr %is_superspeed.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i = load i8, ptr %is_superspeed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool23.not.i = icmp sgt i8 %bf.load.i, -1
  %left.right.i = select i1 %tobool23.not.i, ptr %3, ptr %5
  %right.left.i = select i1 %tobool23.not.i, ptr %5, ptr %3
  %dev26.i = getelementptr inbounds %struct.usb_port, ptr %left.right.i, i32 0, i32 1
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev26.i, i32 noundef 4) #9
  %dev28.i = getelementptr inbounds %struct.usb_port, ptr %3, i32 0, i32 1
  tail call void @sysfs_remove_link(ptr noundef %dev28.i, ptr noundef nonnull @.str.41) #9
  %17 = ptrtoint ptr %peer.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %peer.i, align 4
  %dev30.i = getelementptr inbounds %struct.usb_port, ptr %5, i32 0, i32 1
  tail call void @sysfs_remove_link(ptr noundef %dev30.i, ptr noundef nonnull @.str.41) #9
  %18 = ptrtoint ptr %peer1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %peer1, align 4
  %dev33.i = getelementptr inbounds %struct.usb_port, ptr %right.left.i, i32 0, i32 1
  %call.i57.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev33.i, i32 noundef 5) #9
  %call.i58.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev26.i, i32 noundef 5) #9
  br label %if.end

if.end:                                           ; preds = %unlink_peers.exit, %entry.if.end_crit_edge
  %dev = getelementptr inbounds %struct.usb_port, ptr %3, i32 0, i32 1
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @connector_ops) #9
  tail call void @device_unregister(ptr noundef %dev) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_port_runtime_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %parent2 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent2, align 8
  %add.ptr4 = getelementptr i8, ptr %3, i32 -128
  %add.ptr8 = getelementptr i8, ptr %1, i32 -32
  %call = tail call ptr @usb_hub_to_struct_hub(ptr noundef %add.ptr4) #9
  %peer9 = getelementptr i8, ptr %dev, i32 932
  %4 = ptrtoint ptr %peer9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %peer9, align 4
  %portnum = getelementptr i8, ptr %dev, i32 1044
  %6 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %portnum, align 4
  %conv = zext i8 %7 to i32
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_reset = getelementptr inbounds %struct.usb_hub, ptr %call, i32 0, i32 20
  %8 = ptrtoint ptr %in_reset to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %in_reset, align 4
  %9 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool11.not = icmp eq i8 %9, 0
  br i1 %tobool11.not, label %if.end13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %call15 = tail call i32 @dev_pm_qos_flags(ptr noundef %dev, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call15)
  %cmp = icmp eq i32 %call15, 2
  br i1 %cmp, label %if.end13.cleanup_crit_edge, label %if.end18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %.b = load i1, ptr @usb_port_block_power_off, align 4
  br i1 %.b, label %if.end18.cleanup_crit_edge, label %if.end21

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %if.end18
  %call22 = tail call i32 @usb_autopm_get_interface(ptr noundef %add.ptr8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end21.cleanup_crit_edge, label %if.end26

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  %call27 = tail call i32 @usb_hub_set_port_power(ptr noundef %add.ptr4, ptr noundef nonnull %call, i32 noundef %conv, i1 noundef zeroext false) #9
  %call28 = tail call i32 @usb_clear_port_feature(ptr noundef %add.ptr4, i32 noundef %conv, i32 noundef 16) #9
  %is_superspeed = getelementptr i8, ptr %dev, i32 1052
  %10 = ptrtoint ptr %is_superspeed to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load29 = load i8, ptr %is_superspeed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load29)
  %tobool32.not = icmp sgt i8 %bf.load29, -1
  br i1 %tobool32.not, label %if.then33, label %if.end26.if.end35_crit_edge

if.end26.if.end35_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then33:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %call34 = tail call i32 @usb_clear_port_feature(ptr noundef %add.ptr4, i32 noundef %conv, i32 noundef 17) #9
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end26.if.end35_crit_edge
  tail call void @usb_autopm_put_interface(ptr noundef %add.ptr8) #9
  %11 = ptrtoint ptr %is_superspeed to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load37 = load i8, ptr %is_superspeed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load37)
  %tobool40.not = icmp slt i8 %bf.load37, 0
  %tobool41.not = icmp eq ptr %5, null
  %or.cond = select i1 %tobool40.not, i1 true, i1 %tobool41.not
  br i1 %or.cond, label %if.end35.cleanup_crit_edge, label %if.then42

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then42:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %dev43 = getelementptr inbounds %struct.usb_port, ptr %5, i32 0, i32 1
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev43, i32 noundef 5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %if.end35.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ -11, %if.end13.cleanup_crit_edge ], [ -16, %if.end18.cleanup_crit_edge ], [ %call22, %if.end21.cleanup_crit_edge ], [ %call27, %if.then42 ], [ %call27, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_port_runtime_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %parent2 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent2, align 8
  %add.ptr4 = getelementptr i8, ptr %3, i32 -128
  %add.ptr8 = getelementptr i8, ptr %1, i32 -32
  %call = tail call ptr @usb_hub_to_struct_hub(ptr noundef %add.ptr4) #9
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %peer9 = getelementptr i8, ptr %dev, i32 932
  %6 = ptrtoint ptr %peer9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %peer9, align 4
  %portnum = getelementptr i8, ptr %dev, i32 1044
  %8 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %portnum, align 4
  %conv = zext i8 %9 to i32
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_reset = getelementptr inbounds %struct.usb_hub, ptr %call, i32 0, i32 20
  %10 = ptrtoint ptr %in_reset to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %in_reset, align 4
  %11 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool11.not = icmp eq i8 %11, 0
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %power_bits = getelementptr inbounds %struct.usb_hub, ptr %call, i32 0, i32 13
  tail call void @_set_bit(i32 noundef %conv, ptr noundef %power_bits) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %is_superspeed = getelementptr i8, ptr %dev, i32 1052
  %12 = ptrtoint ptr %is_superspeed to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load14 = load i8, ptr %is_superspeed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load14)
  %tobool17.not = icmp slt i8 %bf.load14, 0
  %tobool18.not = icmp eq ptr %7, null
  %or.cond = select i1 %tobool17.not, i1 true, i1 %tobool18.not
  br i1 %or.cond, label %if.end13.if.end22_crit_edge, label %if.then19

if.end13.if.end22_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then19:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %dev20 = getelementptr inbounds %struct.usb_port, ptr %7, i32 0, i32 1
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev20, i32 noundef 4) #9
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end13.if.end22_crit_edge
  %call23 = tail call i32 @usb_autopm_get_interface(ptr noundef %add.ptr8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp = icmp slt i32 %call23, 0
  br i1 %cmp, label %if.end22.cleanup_crit_edge, label %if.end26

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %call27 = tail call i32 @usb_hub_set_port_power(ptr noundef %add.ptr4, ptr noundef nonnull %call, i32 noundef %conv, i1 noundef zeroext true) #9
  %descriptor.i = getelementptr inbounds %struct.usb_hub, ptr %call, i32 0, i32 16
  %13 = ptrtoint ptr %descriptor.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %descriptor.i, align 4
  %bPwrOn2PwrGood.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %bPwrOn2PwrGood.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bPwrOn2PwrGood.i, align 1
  %conv.i = zext i8 %16 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 1
  %hdev.i = getelementptr inbounds %struct.usb_hub, ptr %call, i32 0, i32 1
  %17 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hdev.i, align 4
  %parent.i = getelementptr inbounds %struct.usb_device, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %16)
  %cmp.i = icmp ugt i8 %16, 50
  %21 = select i1 %tobool.not.i, i1 true, i1 %cmp.i
  %retval.0.i95 = select i1 %21, i32 %mul.i, i32 100
  tail call void @msleep(i32 noundef %retval.0.i95) #9
  %tobool29.not = icmp ne ptr %5, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool31.not = icmp eq i32 %call27, 0
  %or.cond94 = select i1 %tobool29.not, i1 %tobool31.not, i1 false
  br i1 %or.cond94, label %if.then32, label %if.end26.if.end59_crit_edge

if.end26.if.end59_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then32:                                        ; preds = %if.end26
  %call.i96 = tail call i32 @hub_port_debounce(ptr noundef nonnull %call, i32 noundef %conv, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %cmp34 = icmp slt i32 %call.i96, 0
  br i1 %cmp34, label %do.body, label %if.then32.if.end50_crit_edge

if.then32.if.end50_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

do.body:                                          ; preds = %if.then32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_port_runtime_resume.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_port_runtime_resume, %if.then42)) #9
          to label %do.end [label %if.then42], !srcloc !122

if.then42:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_port_runtime_resume.__UNIQUE_ID_ddebug234, ptr noundef %dev, ptr noundef nonnull @.str.13) #9
  br label %do.end

do.end:                                           ; preds = %if.then42, %do.body
  %bDeviceProtocol.i = getelementptr i8, ptr %3, i32 934
  %22 = ptrtoint ptr %bDeviceProtocol.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bDeviceProtocol.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %23)
  %cmp.i97.not = icmp eq i8 %23, 3
  br i1 %cmp.i97.not, label %if.then47, label %do.end.if.end50_crit_edge

do.end.if.end50_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then47:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %warm_reset_bits = getelementptr inbounds %struct.usb_hub, ptr %call, i32 0, i32 15
  tail call void @_set_bit(i32 noundef %conv, ptr noundef %warm_reset_bits) #9
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %do.end.if.end50_crit_edge, %if.then32.if.end50_crit_edge
  %child_usage_bits = getelementptr inbounds %struct.usb_hub, ptr %call, i32 0, i32 14
  %call52 = tail call i32 @_test_and_set_bit(i32 noundef %conv, ptr noundef %child_usage_bits) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then54, label %if.end50.if.end59_crit_edge

if.end50.if.end59_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  %usage_count.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !121
  %dev56 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  %call.i98 = tail call i32 @__pm_runtime_resume(ptr noundef %dev56, i32 noundef 1) #9
  br label %if.end59

if.end59:                                         ; preds = %if.then54, %if.end50.if.end59_crit_edge, %if.end26.if.end59_crit_edge
  tail call void @usb_autopm_put_interface(ptr noundef %add.ptr8) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.end22.cleanup_crit_edge, %if.then12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then12 ], [ %call27, %if.end59 ], [ -22, %entry.cleanup_crit_edge ], [ %call23, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_hub_to_struct_hub(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hub_set_port_power(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_clear_port_feature(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hub_port_debounce(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @connect_type_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %connect_type = getelementptr i8, ptr %dev, i32 940
  %0 = ptrtoint ptr %connect_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connect_type, align 4
  %switch.tableidx = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 3
  br i1 %2, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.connect_type_show, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %result.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.18, %entry.sw.epilog_crit_edge ]
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.19, ptr noundef nonnull %result.0)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @location_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %location = getelementptr i8, ptr %dev, i32 944
  %0 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %location, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.21, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @quirks_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %quirks = getelementptr i8, ptr %dev, i32 1048
  %0 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.23, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @quirks_store(ptr nocapture noundef writeonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #9
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !123
  %call.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull %value) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %value, align 4
  %quirks = getelementptr i8, ptr %dev, i32 1048
  %3 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %quirks, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @over_current_count_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %over_current_count = getelementptr i8, ptr %dev, i32 1040
  %0 = ptrtoint ptr %over_current_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %over_current_count, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb3_lpm_permit_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %usb3_lpm_u1_permit = getelementptr i8, ptr %dev, i32 1052
  %0 = ptrtoint ptr %usb3_lpm_u1_permit to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %usb3_lpm_u1_permit, align 4
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %2 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool13.not = icmp eq i8 %2, 0
  %.str.28..str.27 = select i1 %tobool13.not, ptr @.str.28, ptr @.str.27
  %.str.30..str.29 = select i1 %tobool13.not, ptr @.str.30, ptr @.str.29
  %p.0 = select i1 %tobool.not, ptr %.str.30..str.29, ptr %.str.28..str.27
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.19, ptr noundef nonnull %p.0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb3_lpm_permit_store(ptr nocapture noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %call = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(6) @.str.27, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %usb3_lpm_u1_permit = getelementptr i8, ptr %dev, i32 1052
  %2 = ptrtoint ptr %usb3_lpm_u1_permit to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %usb3_lpm_u1_permit, align 4
  %bf.set3 = or i8 %bf.load, 96
  store i8 %bf.set3, ptr %usb3_lpm_u1_permit, align 4
  br label %if.end42

if.else:                                          ; preds = %entry
  %call4 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(3) @.str.28, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.else15

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %usb3_lpm_u1_permit7 = getelementptr i8, ptr %dev, i32 1052
  %3 = ptrtoint ptr %usb3_lpm_u1_permit7 to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load8 = load i8, ptr %usb3_lpm_u1_permit7, align 4
  %bf.set10 = and i8 %bf.load8, -97
  %bf.clear13 = or i8 %bf.set10, 64
  store i8 %bf.clear13, ptr %usb3_lpm_u1_permit7, align 4
  br label %if.end42

if.else15:                                        ; preds = %if.else
  %call16 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(3) @.str.29, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then18, label %if.else27

if.then18:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #11
  %usb3_lpm_u1_permit19 = getelementptr i8, ptr %dev, i32 1052
  %4 = ptrtoint ptr %usb3_lpm_u1_permit19 to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load20 = load i8, ptr %usb3_lpm_u1_permit19, align 4
  %bf.clear25 = and i8 %bf.load20, -97
  %bf.set26 = or i8 %bf.clear25, 32
  store i8 %bf.set26, ptr %usb3_lpm_u1_permit19, align 4
  br label %if.end42

if.else27:                                        ; preds = %if.else15
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %5)
  %lhsc = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %lhsc)
  %tobool29.not = icmp eq i8 %lhsc, 48
  br i1 %tobool29.not, label %if.then30, label %if.else27.cleanup_crit_edge

if.else27.cleanup_crit_edge:                      ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then30:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #11
  %usb3_lpm_u1_permit31 = getelementptr i8, ptr %dev, i32 1052
  %6 = ptrtoint ptr %usb3_lpm_u1_permit31 to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load32 = load i8, ptr %usb3_lpm_u1_permit31, align 4
  %bf.clear37 = and i8 %bf.load32, -97
  store i8 %bf.clear37, ptr %usb3_lpm_u1_permit31, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then30, %if.then18, %if.then6, %if.then
  %tobool43.not = icmp eq ptr %1, null
  br i1 %tobool43.not, label %if.end42.cleanup_crit_edge, label %if.then44

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then44:                                        ; preds = %if.end42
  %bus = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 12
  %7 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus, align 8
  %tobool46.not = icmp eq ptr %8, null
  br i1 %tobool46.not, label %if.then44.cleanup_crit_edge, label %if.end48

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end48:                                         ; preds = %if.then44
  %mutex.i = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %bandwidth_mutex = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 0, i32 23
  %9 = ptrtoint ptr %bandwidth_mutex to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bandwidth_mutex, align 8
  tail call void @mutex_lock_nested(ptr noundef %10, i32 noundef 0) #9
  %call50 = tail call i32 @usb_disable_lpm(ptr noundef nonnull %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then52, label %if.end48.if.end53_crit_edge

if.end48.if.end53_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_enable_lpm(ptr noundef nonnull %1) #9
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.end48.if.end53_crit_edge
  %11 = ptrtoint ptr %bandwidth_mutex to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bandwidth_mutex, align 8
  tail call void @mutex_unlock(ptr noundef %12) #9
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.then44.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.else27.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.else27.cleanup_crit_edge ], [ -22, %if.then44.cleanup_crit_edge ], [ %count, %if.end53 ], [ %count, %if.end42.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disable_lpm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_enable_lpm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_port_shutdown(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @usb_disable_usb2_hardware_lpm(ptr noundef nonnull %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disable_usb2_hardware_lpm(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @connector_bind(ptr noundef %dev, ptr noundef %connector, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sysfs_create_link(ptr noundef %dev, ptr noundef %connector, ptr noundef nonnull @.str.32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %if.end.dev_name.exit_crit_edge ]
  %call5 = tail call i32 @sysfs_create_link(ptr noundef %connector, ptr noundef %dev, ptr noundef %retval.0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %dev_name.exit.cleanup_crit_edge, label %if.then7

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sysfs_remove_link(ptr noundef %dev, ptr noundef nonnull @.str.32) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %dev_name.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call5, %if.then7 ], [ 0, %dev_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @connector_unbind(ptr noundef %dev, ptr noundef %connector, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %entry.dev_name.exit_crit_edge ]
  tail call void @sysfs_remove_link(ptr noundef %connector, ptr noundef %retval.0.i) #9
  tail call void @sysfs_remove_link(ptr noundef %dev, ptr noundef nonnull @.str.32) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_for_each_dev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @match_location(ptr noundef %peer_hdev, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usb_hub_to_struct_hub(ptr noundef %peer_hdev) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.usb_port, ptr %p, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %parent1 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1, align 8
  %bus = getelementptr i8, ptr %3, i32 -64
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 8
  %bus3 = getelementptr inbounds %struct.usb_device, ptr %peer_hdev, i32 0, i32 12
  %6 = ptrtoint ptr %bus3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus3, align 8
  %shared_hcd = getelementptr inbounds %struct.usb_hcd, ptr %5, i32 0, i32 24
  %8 = ptrtoint ptr %shared_hcd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %shared_hcd, align 4
  %cmp.not = icmp eq ptr %7, %9
  br i1 %cmp.not, label %for.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %maxchild = getelementptr inbounds %struct.usb_device, ptr %peer_hdev, i32 0, i32 35
  %10 = ptrtoint ptr %maxchild to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %maxchild, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp7.not28 = icmp slt i32 %11, 1
  br i1 %cmp7.not28, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ports = getelementptr inbounds %struct.usb_hub, ptr %call, i32 0, i32 27
  %12 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ports, align 4
  %location9 = getelementptr inbounds %struct.usb_port, ptr %p, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %port1.029 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %sub = add i32 %port1.029, -1
  %arrayidx = getelementptr ptr, ptr %13, i32 %sub
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %tobool8.not = icmp eq ptr %15, null
  br i1 %tobool8.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %location = getelementptr inbounds %struct.usb_port, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %location, align 8
  %18 = ptrtoint ptr %location9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %location9, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp10 = icmp eq i32 %17, %19
  br i1 %cmp10, label %if.then11, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @link_peers_report(ptr noundef %p, ptr noundef nonnull %15)
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add i32 %port1.029, 1
  %cmp7.not = icmp sgt i32 %inc, %11
  br i1 %cmp7.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then11, %for.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then11 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @link_peers_report(ptr noundef %left, ptr noundef %right) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @link_peers(ptr noundef %left, ptr noundef %right)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %do.body, label %do.body7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @link_peers_report.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@link_peers_report, %if.then4)) #9
          to label %if.end50 [label %if.then4], !srcloc !122

if.then4:                                         ; preds = %do.body
  %dev = getelementptr inbounds %struct.usb_port, ptr %left, i32 0, i32 1
  %init_name.i = getelementptr inbounds %struct.usb_port, ptr %right, i32 0, i32 1, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then4.dev_name.exit_crit_edge

if.then4.dev_name.exit_crit_edge:                 ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %dev5 = getelementptr inbounds %struct.usb_port, ptr %right, i32 0, i32 1
  %2 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev5, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then4.dev_name.exit_crit_edge
  %retval.0.i61 = phi ptr [ %3, %if.end.i ], [ %1, %if.then4.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @link_peers_report.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.34, ptr noundef %retval.0.i61) #9
  br label %if.end50

do.body7:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @link_peers_report.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@link_peers_report, %if.then19)) #9
          to label %land.end [label %if.then19], !srcloc !122

if.then19:                                        ; preds = %do.body7
  %dev20 = getelementptr inbounds %struct.usb_port, ptr %left, i32 0, i32 1
  %init_name.i62 = getelementptr inbounds %struct.usb_port, ptr %right, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %init_name.i62 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i62, align 8
  %tobool.not.i63 = icmp eq ptr %5, null
  br i1 %tobool.not.i63, label %if.end.i64, label %if.then19.dev_name.exit66_crit_edge

if.then19.dev_name.exit66_crit_edge:              ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit66

if.end.i64:                                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  %dev21 = getelementptr inbounds %struct.usb_port, ptr %right, i32 0, i32 1
  %6 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev21, align 4
  br label %dev_name.exit66

dev_name.exit66:                                  ; preds = %if.end.i64, %if.then19.dev_name.exit66_crit_edge
  %retval.0.i65 = phi ptr [ %7, %if.end.i64 ], [ %5, %if.then19.dev_name.exit66_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @link_peers_report.__UNIQUE_ID_ddebug237, ptr noundef %dev20, ptr noundef nonnull @.str.35, ptr noundef %retval.0.i65, i32 noundef %call) #9
  br label %land.end

land.end:                                         ; preds = %dev_name.exit66, %do.body7
  %.b57 = load i1, ptr @link_peers_report.__already_done, align 1
  br i1 %.b57, label %land.end.if.end42_crit_edge, label %if.then36, !prof !124

land.end.if.end42_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then36:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @link_peers_report.__already_done, align 1
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #13
  br label %if.end42

if.end42:                                         ; preds = %if.then36, %land.end.if.end42_crit_edge
  store i1 true, ptr @usb_port_block_power_off, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.end42, %dev_name.exit, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @link_peers(ptr noundef %left, ptr noundef %right) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %peer = getelementptr inbounds %struct.usb_port, ptr %left, i32 0, i32 3
  %0 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peer, align 4
  %cmp = icmp eq ptr %1, %right
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %peer1 = getelementptr inbounds %struct.usb_port, ptr %right, i32 0, i32 3
  %2 = ptrtoint ptr %peer1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %peer1, align 4
  %cmp2 = icmp eq ptr %3, %left
  br i1 %cmp2, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.if.then6_crit_edge

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

lor.lhs.false:                                    ; preds = %if.end
  %peer4 = getelementptr inbounds %struct.usb_port, ptr %right, i32 0, i32 3
  %4 = ptrtoint ptr %peer4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %peer4, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.end38, label %lor.lhs.false.if.then6_crit_edge

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %if.end.if.then6_crit_edge
  %peer8 = getelementptr inbounds %struct.usb_port, ptr %right, i32 0, i32 3
  %6 = ptrtoint ptr %peer8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %peer8, align 4
  %location = getelementptr inbounds %struct.usb_port, ptr %left, i32 0, i32 6
  %8 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %location, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool9.not = icmp eq i32 %9, 0
  br i1 %tobool9.not, label %if.then6.if.else_crit_edge, label %land.lhs.true10

if.then6.if.else_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true10:                                  ; preds = %if.then6
  %location12 = getelementptr inbounds %struct.usb_port, ptr %right, i32 0, i32 6
  %10 = ptrtoint ptr %location12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %location12, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp13 = icmp eq i32 %9, %11
  br i1 %cmp13, label %land.lhs.true10.do.body_crit_edge, label %land.lhs.true10.if.else_crit_edge

land.lhs.true10.if.else_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true10.do.body_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.else:                                          ; preds = %land.lhs.true10.if.else_crit_edge, %if.then6.if.else_crit_edge
  br label %do.body

do.body:                                          ; preds = %if.else, %land.lhs.true10.do.body_crit_edge
  %method.0 = phi ptr [ @.str.37, %if.else ], [ @.str.20, %land.lhs.true10.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @link_peers.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@link_peers, %if.then19)) #9
          to label %cleanup [label %if.then19], !srcloc !122

if.then19:                                        ; preds = %do.body
  %dev = getelementptr inbounds %struct.usb_port, ptr %left, i32 0, i32 1
  %init_name.i = getelementptr inbounds %struct.usb_port, ptr %left, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then19.dev_name.exit_crit_edge

if.then19.dev_name.exit_crit_edge:                ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then19.dev_name.exit_crit_edge
  %retval.0.i180 = phi ptr [ %15, %if.end.i ], [ %13, %if.then19.dev_name.exit_crit_edge ]
  %dev21 = getelementptr inbounds %struct.usb_port, ptr %right, i32 0, i32 1
  %init_name.i181 = getelementptr inbounds %struct.usb_port, ptr %right, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %init_name.i181 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i181, align 8
  %tobool.not.i182 = icmp eq ptr %17, null
  br i1 %tobool.not.i182, label %if.end.i183, label %dev_name.exit.dev_name.exit185_crit_edge

dev_name.exit.dev_name.exit185_crit_edge:         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit185

if.end.i183:                                      ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev21, align 4
  br label %dev_name.exit185

dev_name.exit185:                                 ; preds = %if.end.i183, %dev_name.exit.dev_name.exit185_crit_edge
  %retval.0.i184 = phi ptr [ %19, %if.end.i183 ], [ %17, %dev_name.exit.dev_name.exit185_crit_edge ]
  br i1 %tobool.not.i, label %if.end.i188, label %dev_name.exit185.dev_name.exit190_crit_edge

dev_name.exit185.dev_name.exit190_crit_edge:      ; preds = %dev_name.exit185
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit190

if.end.i188:                                      ; preds = %dev_name.exit185
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  br label %dev_name.exit190

dev_name.exit190:                                 ; preds = %if.end.i188, %dev_name.exit185.dev_name.exit190_crit_edge
  %retval.0.i189 = phi ptr [ %21, %if.end.i188 ], [ %13, %dev_name.exit185.dev_name.exit190_crit_edge ]
  br i1 %tobool.not, label %dev_name.exit190.cond.end_crit_edge, label %cond.true

dev_name.exit190.cond.end_crit_edge:              ; preds = %dev_name.exit190
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %dev_name.exit190
  %init_name.i191 = getelementptr inbounds %struct.usb_port, ptr %1, i32 0, i32 1, i32 3
  %22 = ptrtoint ptr %init_name.i191 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i191, align 8
  %tobool.not.i192 = icmp eq ptr %23, null
  br i1 %tobool.not.i192, label %if.end.i193, label %cond.true.cond.end_crit_edge

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

if.end.i193:                                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #11
  %dev26 = getelementptr inbounds %struct.usb_port, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev26, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i193, %cond.true.cond.end_crit_edge, %dev_name.exit190.cond.end_crit_edge
  %cond = phi ptr [ @.str.40, %dev_name.exit190.cond.end_crit_edge ], [ %25, %if.end.i193 ], [ %23, %cond.true.cond.end_crit_edge ]
  br i1 %tobool.not.i182, label %if.end.i198, label %cond.end.dev_name.exit200_crit_edge

cond.end.dev_name.exit200_crit_edge:              ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit200

if.end.i198:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev21, align 4
  br label %dev_name.exit200

dev_name.exit200:                                 ; preds = %if.end.i198, %cond.end.dev_name.exit200_crit_edge
  %retval.0.i199 = phi ptr [ %27, %if.end.i198 ], [ %17, %cond.end.dev_name.exit200_crit_edge ]
  %tobool30.not = icmp eq ptr %7, null
  br i1 %tobool30.not, label %dev_name.exit200.cond.end35_crit_edge, label %cond.true31

dev_name.exit200.cond.end35_crit_edge:            ; preds = %dev_name.exit200
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end35

cond.true31:                                      ; preds = %dev_name.exit200
  %init_name.i201 = getelementptr inbounds %struct.usb_port, ptr %7, i32 0, i32 1, i32 3
  %28 = ptrtoint ptr %init_name.i201 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %init_name.i201, align 8
  %tobool.not.i202 = icmp eq ptr %29, null
  br i1 %tobool.not.i202, label %if.end.i203, label %cond.true31.cond.end35_crit_edge

cond.true31.cond.end35_crit_edge:                 ; preds = %cond.true31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end35

if.end.i203:                                      ; preds = %cond.true31
  call void @__sanitizer_cov_trace_pc() #11
  %dev32 = getelementptr inbounds %struct.usb_port, ptr %7, i32 0, i32 1
  %30 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev32, align 4
  br label %cond.end35

cond.end35:                                       ; preds = %if.end.i203, %cond.true31.cond.end35_crit_edge, %dev_name.exit200.cond.end35_crit_edge
  %cond36 = phi ptr [ @.str.40, %dev_name.exit200.cond.end35_crit_edge ], [ %31, %if.end.i203 ], [ %29, %cond.true31.cond.end35_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @link_peers.__UNIQUE_ID_ddebug235, ptr noundef nonnull @.str.39, ptr noundef %retval.0.i180, ptr noundef %retval.0.i184, ptr noundef nonnull %method.0, ptr noundef %retval.0.i189, ptr noundef %cond, ptr noundef %retval.0.i199, ptr noundef %cond36) #9
  br label %cleanup

if.end38:                                         ; preds = %lor.lhs.false
  %dev39 = getelementptr inbounds %struct.usb_port, ptr %left, i32 0, i32 1
  %dev40 = getelementptr inbounds %struct.usb_port, ptr %right, i32 0, i32 1
  %call42 = tail call i32 @sysfs_create_link(ptr noundef %dev39, ptr noundef %dev40, ptr noundef nonnull @.str.41) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end45:                                         ; preds = %if.end38
  %call50 = tail call i32 @sysfs_create_link(ptr noundef %dev40, ptr noundef %dev39, ptr noundef nonnull @.str.41) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end55, label %if.then52

if.then52:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sysfs_remove_link(ptr noundef %dev39, ptr noundef nonnull @.str.41) #9
  br label %cleanup

if.end55:                                         ; preds = %if.end45
  %is_superspeed = getelementptr inbounds %struct.usb_port, ptr %left, i32 0, i32 11
  %32 = ptrtoint ptr %is_superspeed to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load = load i8, ptr %is_superspeed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool56.not = icmp sgt i8 %bf.load, -1
  %is_superspeed94 = getelementptr inbounds %struct.usb_port, ptr %right, i32 0, i32 11
  %33 = ptrtoint ptr %is_superspeed94 to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load95 = load i8, ptr %is_superspeed94, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load95)
  %tobool98.not = icmp sgt i8 %bf.load95, -1
  br i1 %tobool56.not, label %if.else92, label %if.then57

if.then57:                                        ; preds = %if.end55
  br i1 %tobool98.not, label %if.then57.if.end130_crit_edge, label %if.then57.if.end130.sink.split_crit_edge, !prof !124

if.then57.if.end130.sink.split_crit_edge:         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end130.sink.split

if.then57.if.end130_crit_edge:                    ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end130

if.else92:                                        ; preds = %if.end55
  br i1 %tobool98.not, label %if.else92.if.end130.sink.split_crit_edge, label %if.else92.if.end130_crit_edge, !prof !125

if.else92.if.end130_crit_edge:                    ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end130

if.else92.if.end130.sink.split_crit_edge:         ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end130.sink.split

if.end130.sink.split:                             ; preds = %if.else92.if.end130.sink.split_crit_edge, %if.then57.if.end130.sink.split_crit_edge
  %.sink = phi i32 [ 365, %if.then57.if.end130.sink.split_crit_edge ], [ 369, %if.else92.if.end130.sink.split_crit_edge ]
  %hs_port.0.ph = phi ptr [ %right, %if.then57.if.end130.sink.split_crit_edge ], [ %left, %if.else92.if.end130.sink.split_crit_edge ]
  %ss_port.0.ph = phi ptr [ %left, %if.then57.if.end130.sink.split_crit_edge ], [ %right, %if.else92.if.end130.sink.split_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #9
  br label %if.end130

if.end130:                                        ; preds = %if.end130.sink.split, %if.else92.if.end130_crit_edge, %if.then57.if.end130_crit_edge
  %hs_port.0 = phi ptr [ %right, %if.then57.if.end130_crit_edge ], [ %left, %if.else92.if.end130_crit_edge ], [ %hs_port.0.ph, %if.end130.sink.split ]
  %ss_port.0 = phi ptr [ %left, %if.then57.if.end130_crit_edge ], [ %right, %if.else92.if.end130_crit_edge ], [ %ss_port.0.ph, %if.end130.sink.split ]
  %dev131 = getelementptr inbounds %struct.usb_port, ptr %hs_port.0, i32 0, i32 1
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev131, i32 noundef 4) #9
  %34 = ptrtoint ptr %peer to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %right, ptr %peer, align 4
  %35 = ptrtoint ptr %peer4 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %left, ptr %peer4, align 4
  %dev135 = getelementptr inbounds %struct.usb_port, ptr %ss_port.0, i32 0, i32 1
  %call.i206 = tail call i32 @__pm_runtime_resume(ptr noundef %dev135, i32 noundef 4) #9
  %call.i207 = tail call i32 @__pm_runtime_idle(ptr noundef %dev131, i32 noundef 5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end130, %if.then52, %if.end38.cleanup_crit_edge, %cond.end35, %do.body, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call50, %if.then52 ], [ 0, %if.end130 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ -16, %cond.end35 ], [ %call42, %if.end38.cleanup_crit_edge ], [ -16, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !14, !15, !16, !17, !19, !20, !21, !23, !25, !27, !28, !29, !30, !32, !34, !36, !38, !39, !41, !43, !45, !47, !49, !51, !52, !54, !56, !57, !59, !61, !62, !64, !66, !68, !70, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !92, !93, !95, !96, !98, !99, !100, !101, !103, !105, !106, !107, !108, !110}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/core/port.c", i32 311, i32 11}
!2 = !{ptr @usb_port_device_type, !3, !"usb_port_device_type", i1 false, i1 false}
!3 = !{!"../drivers/usb/core/port.c", i32 310, i32 20}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/usb/core/port.c", i32 588, i32 31}
!6 = !{ptr @usb_hub_create_port_device.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/usb/core/port.c", i32 590, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/usb/core/port.c", i32 607, i32 3}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @usb_hub_create_port_device._entry, !10, !"_entry", i1 false, i1 false}
!16 = !{ptr @usb_hub_create_port_device._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/core/port.c", i32 635, i32 3}
!19 = !{ptr @usb_hub_create_port_device._entry.8, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @usb_hub_create_port_device._entry_ptr.10, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @usb_port_pm_ops, !22, !"usb_port_pm_ops", i1 false, i1 false}
!22 = !{!"../drivers/usb/core/port.c", i32 303, i32 32}
!23 = distinct !{null, !24, !"usb_port_block_power_off", i1 false, i1 false}
!24 = !{!"../drivers/usb/core/port.c", i32 16, i32 12}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/core/port.c", i32 234, i32 4}
!27 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @usb_port_runtime_resume.__UNIQUE_ID_ddebug234, !26, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!30 = !{ptr @port_dev_usb3_group, !31, !"port_dev_usb3_group", i1 false, i1 false}
!31 = !{!"../drivers/usb/core/port.c", i32 177, i32 38}
!32 = !{ptr @port_dev_attr_grp, !33, !"port_dev_attr_grp", i1 false, i1 false}
!33 = !{!"../drivers/usb/core/port.c", i32 159, i32 37}
!34 = !{ptr @port_dev_attrs, !35, !"port_dev_attrs", i1 false, i1 false}
!35 = !{!"../drivers/usb/core/port.c", i32 151, i32 26}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/core/port.c", i32 52, i32 8}
!38 = !{ptr @dev_attr_connect_type, !37, !"dev_attr_connect_type", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/core/port.c", i32 37, i32 12}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/usb/core/port.c", i32 40, i32 12}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/core/port.c", i32 43, i32 12}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/core/port.c", i32 46, i32 12}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/core/port.c", i32 50, i32 22}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/core/port.c", i32 27, i32 8}
!51 = !{ptr @dev_attr_location, !50, !"dev_attr_location", i1 false, i1 false}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/core/port.c", i32 25, i32 22}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/core/port.c", i32 83, i32 8}
!56 = !{ptr @dev_attr_quirks, !55, !"dev_attr_quirks", i1 false, i1 false}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/core/port.c", i32 68, i32 22}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/core/port.c", i32 61, i32 8}
!61 = !{ptr @dev_attr_over_current_count, !60, !"dev_attr_over_current_count", i1 false, i1 false}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/core/port.c", i32 59, i32 22}
!64 = !{ptr @port_dev_usb3_attr_grp, !65, !"port_dev_usb3_attr_grp", i1 false, i1 false}
!65 = !{!"../drivers/usb/core/port.c", i32 173, i32 37}
!66 = !{ptr @port_dev_usb3_attrs, !67, !"port_dev_usb3_attrs", i1 false, i1 false}
!67 = !{!"../drivers/usb/core/port.c", i32 168, i32 26}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/core/port.c", i32 149, i32 8}
!70 = !{ptr @dev_attr_usb3_lpm_permit, !69, !"dev_attr_usb3_lpm_permit", i1 false, i1 false}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/usb/core/port.c", i32 93, i32 8}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/core/port.c", i32 95, i32 8}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/usb/core/port.c", i32 98, i32 8}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/usb/core/port.c", i32 100, i32 8}
!79 = !{ptr @port_dev_group, !80, !"port_dev_group", i1 false, i1 false}
!80 = !{!"../drivers/usb/core/port.c", i32 163, i32 38}
!81 = !{ptr @.str.31, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/usb/core/port.c", i32 317, i32 10}
!83 = !{ptr @usb_port_driver, !84, !"usb_port_driver", i1 false, i1 false}
!84 = !{!"../drivers/usb/core/port.c", i32 316, i32 29}
!85 = !{ptr @connector_ops, !86, !"connector_ops", i1 false, i1 false}
!86 = !{!"../drivers/usb/core/port.c", i32 553, i32 35}
!87 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/core/port.c", i32 536, i32 56}
!89 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/usb/core/port.c", i32 397, i32 3}
!91 = !{ptr @.str.34, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @link_peers_report.__UNIQUE_ID_ddebug236, !90, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!93 = !{ptr @.str.35, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/usb/core/port.c", i32 399, i32 3}
!95 = !{ptr @link_peers_report.__UNIQUE_ID_ddebug237, !94, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!96 = distinct !{null, !97, !"__already_done", i1 false, i1 false}
!97 = !{!"../drivers/usb/core/port.c", i32 401, i32 3}
!98 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @link_peers_report._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @link_peers_report._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.37, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/usb/core/port.c", i32 338, i32 13}
!103 = !{ptr @.str.38, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/usb/core/port.c", i32 340, i32 3}
!105 = !{ptr @.str.39, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @link_peers.__UNIQUE_ID_ddebug235, !104, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!107 = !{ptr @.str.40, !104, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.41, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/usb/core/port.c", i32 349, i32 60}
!110 = !{ptr @.str.42, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/usb/core/port.c", i32 410, i32 2}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{i64 2148595478, i64 2148595504, i64 2148595533, i64 2148595567, i64 2148595598, i64 2148595621}
!122 = !{i64 2148216204, i64 2148216209, i64 2148216222, i64 2148216266, i64 2148216300, i64 2148216321}
!123 = !{!"auto-init"}
!124 = !{!"branch_weights", i32 2000, i32 1}
!125 = !{!"branch_weights", i32 1, i32 2000}
