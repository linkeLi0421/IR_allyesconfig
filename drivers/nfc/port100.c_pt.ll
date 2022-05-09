; ModuleID = '/llk/IR_all_yes/drivers/nfc/port100.c_pt.bc'
source_filename = "../drivers/nfc/port100.c"
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
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nfc_digital_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.port100_in_rf_setting = type { i8, i8, i8, i8 }
%struct.port100_protocol = type { i8, i8 }
%struct.port100_tg_rf_setting = type { i8, i8 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.port100 = type { ptr, i32, i32, ptr, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, ptr, i8, %struct.completion }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.nfc_dev = type { i32, i32, ptr, i32, i32, %struct.device, i8, i8, i8, i8, ptr, i8, %struct.nfc_genl_data, i32, %struct.list_head, i32, i32, %struct.timer_list, %struct.work_struct, i8, ptr, ptr, i32, ptr, ptr }
%struct.nfc_genl_data = type { i32, %struct.mutex }
%struct.nfc_digital_dev = type { ptr, ptr, i32, i32, i32, i32, ptr, [6 x %struct.digital_poll_tech], i8, i8, %struct.mutex, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.delayed_work, i8, i8, i8, i8, i16, i8, i8, ptr, ptr, i32, i32, ptr, i16, ptr, ptr }
%struct.digital_poll_tech = type { i8, ptr }
%struct.port100_cmd = type { i8, i32, ptr, ptr, i32, ptr, ptr }
%struct.sk_buff = type { %union.anon.74, %union.anon.77, %union.anon.78, [48 x i8], %union.anon.79, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.81, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.74 = type { %struct.anon.75 }
%struct.anon.75 = type { ptr, ptr, %union.anon.76 }
%union.anon.76 = type { ptr }
%union.anon.77 = type { ptr }
%union.anon.78 = type { i64 }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, ptr }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.83, i32, i32, i32, i16, i16, %union.anon.85, i32, %union.anon.86, %union.anon.87, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.83 = type { i32 }
%union.anon.85 = type { i32 }
%union.anon.86 = type { i32 }
%union.anon.87 = type { i16 }
%struct.port100_frame = type <{ i8, i16, i16, i16, i8, [0 x i8] }>
%struct.port100_sync_cmd_response = type { ptr, %struct.completion }
%struct.port100_ack_frame = type <{ i8, i16, i16, i8 }>
%struct.port100_cb_arg = type { ptr, ptr, i8 }
%struct.port100_tg_comm_rf_cmd = type <{ i16, i16, i8, [6 x i8], [18 x i8], i8, i8, i16, [0 x i8] }>
%struct.digital_tg_mdaa_params = type { i16, [3 x i8], i8, [8 x i8], i16 }
%struct.port100_tg_comm_rf_res = type <{ i8, i8, i8, i32, [0 x i8] }>

@__initcall__kmod_port100__285_1653_port100_driver_init6 = internal global ptr @port100_driver_init, section ".initcall6.init", align 4
@port100_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @port100_probe, ptr @port100_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @port100_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_port100_driver_exit = internal global ptr @port100_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description286 = internal constant [59 x i8] c"port100.description=NFC Port-100 series usb driver ver 0.1\00", section ".modinfo", align 1
@__UNIQUE_ID_version287 = internal constant [20 x i8] c"port100.version=0.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"port100\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.1\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file288 = internal constant [33 x i8] c"port100.file=drivers/nfc/port100\00", section ".modinfo", align 1
@__UNIQUE_ID_license289 = internal constant [20 x i8] c"port100.license=GPL\00", section ".modinfo", align 1
@port100_table = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1356, i16 1729, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1356, i16 1731, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@port100_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&dev->out_urb_lock\00", [45 x i8] zeroinitializer }, align 32
@port100_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1525, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"NFC: Could not find bulk-in or bulk-out endpoint\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"port100_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/nfc/port100.c\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@port100_probe._entry_ptr = internal global ptr @port100_probe._entry, section ".printk_index", align 4
@port100_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 1534, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"NFC: Could not allocate USB URBs\0A\00", [62 x i8] zeroinitializer }, align 32
@port100_probe._entry_ptr.11 = internal global ptr @port100_probe._entry.9, section ".printk_index", align 4
@port100_probe.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&dev->cmd_complete_work)\00", [53 x i8] zeroinitializer }, align 32
@port100_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.5, ptr @.str.6, i32 1560, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"NFC: Could not get supported command types\0A\00", [52 x i8] zeroinitializer }, align 32
@port100_probe._entry_ptr.16 = internal global ptr @port100_probe._entry.14, section ".printk_index", align 4
@port100_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.5, ptr @.str.6, i32 1574, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"NFC: The device does not support command type %u\0A\00", [46 x i8] zeroinitializer }, align 32
@port100_probe._entry_ptr.19 = internal global ptr @port100_probe._entry.17, section ".printk_index", align 4
@port100_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.5, ptr @.str.6, i32 1581, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"NFC: Could not get device firmware version\0A\00", [52 x i8] zeroinitializer }, align 32
@port100_probe._entry_ptr.22 = internal global ptr @port100_probe._entry.20, section ".printk_index", align 4
@port100_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.5, ptr @.str.6, i32 1585, ptr @.str.25, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"NFC: Sony NFC Port-100 Series attached (firmware v%x.%02x)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@port100_probe._entry_ptr.26 = internal global ptr @port100_probe._entry.23, section ".printk_index", align 4
@port100_digital_ops = internal constant { %struct.nfc_digital_ops, [56 x i8] } { %struct.nfc_digital_ops { ptr @port100_in_configure_hw, ptr @port100_in_send_cmd, ptr @port100_tg_configure_hw, ptr @port100_tg_send_cmd, ptr @port100_listen, ptr @port100_listen_mdaa, ptr null, ptr null, ptr @port100_switch_rf, ptr @port100_abort_cmd }, [56 x i8] zeroinitializer }, align 32
@port100_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.5, ptr @.str.6, i32 1594, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"NFC: Could not allocate nfc_digital_dev\0A\00", [55 x i8] zeroinitializer }, align 32
@port100_probe._entry_ptr.29 = internal global ptr @port100_probe._entry.27, section ".printk_index", align 4
@port100_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.5, ptr @.str.6, i32 1605, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"NFC: Could not register digital device\0A\00", [56 x i8] zeroinitializer }, align 32
@port100_probe._entry_ptr.32 = internal global ptr @port100_probe._entry.30, section ".printk_index", align 4
@port100_send_complete.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.6, ptr @.str.34, i8 0, i8 -20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"port100_send_complete\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"NFC: The urb has been stopped (status %d)\0A\00", [53 x i8] zeroinitializer }, align 32
@port100_send_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.6, i32 951, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"NFC: Urb failure (status %d)\0A\00", [34 x i8] zeroinitializer }, align 32
@port100_send_complete._entry_ptr = internal global ptr @port100_send_complete._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@port100_send_cmd_async._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.6, i32 854, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"NFC: A command is still in process\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"port100_send_cmd_async\00", [41 x i8] zeroinitializer }, align 32
@port100_send_cmd_async._entry_ptr = internal global ptr @port100_send_cmd_async._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@port100_send_frame_async.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.39, ptr @.str.6, ptr @.str.40, i8 0, i8 -61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"port100_send_frame_async\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PORT100 TX: \00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@port100_recv_ack.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.42, ptr @.str.6, ptr @.str.34, i8 0, i8 -86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"port100_recv_ack\00", [47 x i8] zeroinitializer }, align 32
@port100_recv_ack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.42, ptr @.str.6, i32 687, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@port100_recv_ack._entry_ptr = internal global ptr @port100_recv_ack._entry, section ".printk_index", align 4
@port100_recv_ack._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.6, i32 694, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"NFC: Received an invalid ack\0A\00", [34 x i8] zeroinitializer }, align 32
@port100_recv_ack._entry_ptr.45 = internal global ptr @port100_recv_ack._entry.43, section ".printk_index", align 4
@port100_recv_ack._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.6, i32 702, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"NFC: usb_submit_urb failed with result %d\0A\00", [53 x i8] zeroinitializer }, align 32
@port100_recv_ack._entry_ptr.48 = internal global ptr @port100_recv_ack._entry.46, section ".printk_index", align 4
@port100_recv_response.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.49, ptr @.str.6, ptr @.str.50, i8 0, i8 -99, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"port100_recv_response\00", [42 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"NFC: The urb has been canceled (status %d)\0A\00", [52 x i8] zeroinitializer }, align 32
@port100_recv_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.49, ptr @.str.6, i32 633, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@port100_recv_response._entry_ptr = internal global ptr @port100_recv_response._entry, section ".printk_index", align 4
@port100_recv_response._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.49, ptr @.str.6, i32 640, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"NFC: Received an invalid frame\0A\00", [32 x i8] zeroinitializer }, align 32
@port100_recv_response._entry_ptr.53 = internal global ptr @port100_recv_response._entry.51, section ".printk_index", align 4
@port100_recv_response.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.49, ptr @.str.6, ptr @.str.54, i8 0, i8 -95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PORT100 RX: \00", [19 x i8] zeroinitializer }, align 32
@port100_recv_response._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.49, ptr @.str.6, i32 650, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"NFC: It's not the response to the last command\0A\00", [48 x i8] zeroinitializer }, align 32
@port100_recv_response._entry_ptr.57 = internal global ptr @port100_recv_response._entry.55, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@in_rf_settings = internal constant { [6 x %struct.port100_in_rf_setting], [40 x i8] } { [6 x %struct.port100_in_rf_setting] [%struct.port100_in_rf_setting { i8 2, i8 3, i8 15, i8 3 }, %struct.port100_in_rf_setting { i8 1, i8 1, i8 15, i8 1 }, %struct.port100_in_rf_setting { i8 1, i8 2, i8 15, i8 2 }, %struct.port100_in_rf_setting zeroinitializer, %struct.port100_in_rf_setting { i8 3, i8 7, i8 15, i8 7 }, %struct.port100_in_rf_setting zeroinitializer], [40 x i8] zeroinitializer }, align 32
@in_protocols = internal constant { <{ [20 x %struct.port100_protocol], [20 x %struct.port100_protocol], [20 x %struct.port100_protocol], [20 x %struct.port100_protocol], <{ %struct.port100_protocol, %struct.port100_protocol, %struct.port100_protocol, %struct.port100_protocol, %struct.port100_protocol, [15 x %struct.port100_protocol] }>, <{ %struct.port100_protocol, %struct.port100_protocol, %struct.port100_protocol, [17 x %struct.port100_protocol] }>, <{ %struct.port100_protocol, [19 x %struct.port100_protocol] }>, <{ %struct.port100_protocol, [19 x %struct.port100_protocol] }>, [20 x %struct.port100_protocol], <{ %struct.port100_protocol, [19 x %struct.port100_protocol] }>, [20 x %struct.port100_protocol], <{ %struct.port100_protocol, [19 x %struct.port100_protocol] }>, [20 x %struct.port100_protocol], [20 x %struct.port100_protocol], [20 x %struct.port100_protocol], <{ %struct.port100_protocol, [19 x %struct.port100_protocol] }>, <{ %struct.port100_protocol, [19 x %struct.port100_protocol] }> }>, [184 x i8] } { <{ [20 x %struct.port100_protocol], [20 x %struct.port100_protocol], [20 x %struct.port100_protocol], [20 x %struct.port100_protocol], <{ %struct.port100_protocol, %struct.port100_protocol, %struct.port100_protocol, %struct.port100_protocol, %struct.port100_protocol, [15 x %struct.port100_protocol] }>, <{ %struct.port100_protocol, %struct.port100_protocol, %struct.port100_protocol, [17 x %struct.port100_protocol] }>, <{ %struct.port100_protocol, [19 x %struct.port100_protocol] }>, <{ %struct.port100_protocol, [19 x %struct.port100_protocol] }>, [20 x %struct.port100_protocol], <{ %struct.port100_protocol, [19 x %struct.port100_protocol] }>, [20 x %struct.port100_protocol], <{ %struct.port100_protocol, [19 x %struct.port100_protocol] }>, [20 x %struct.port100_protocol], [20 x %struct.port100_protocol], [20 x %struct.port100_protocol], <{ %struct.port100_protocol, [19 x %struct.port100_protocol] }>, <{ %struct.port100_protocol, [19 x %struct.port100_protocol] }> }> <{ [20 x %struct.port100_protocol] [%struct.port100_protocol { i8 0, i8 6 }, %struct.port100_protocol { i8 1, i8 0 }, %struct.port100_protocol { i8 2, i8 0 }, %struct.port100_protocol { i8 3, i8 0 }, %struct.port100_protocol { i8 4, i8 0 }, %struct.port100_protocol { i8 5, i8 1 }, %struct.port100_protocol { i8 6, i8 0 }, %struct.port100_protocol { i8 7, i8 7 }, %struct.port100_protocol { i8 8, i8 0 }, %struct.port100_protocol { i8 9, i8 0 }, %struct.port100_protocol { i8 10, i8 0 }, %struct.port100_protocol { i8 11, i8 0 }, %struct.port100_protocol { i8 12, i8 0 }, %struct.port100_protocol { i8 14, i8 4 }, %struct.port100_protocol { i8 15, i8 0 }, %struct.port100_protocol { i8 16, i8 0 }, %struct.port100_protocol { i8 17, i8 0 }, %struct.port100_protocol { i8 18, i8 0 }, %struct.port100_protocol { i8 19, i8 6 }, %struct.port100_protocol { i8 20, i8 0 }], [20 x %struct.port100_protocol] [%struct.port100_protocol { i8 0, i8 6 }, %struct.port100_protocol { i8 1, i8 0 }, %struct.port100_protocol { i8 2, i8 0 }, %struct.port100_protocol { i8 3, i8 0 }, %struct.port100_protocol { i8 4, i8 1 }, %struct.port100_protocol { i8 5, i8 1 }, %struct.port100_protocol { i8 6, i8 0 }, %struct.port100_protocol { i8 7, i8 8 }, %struct.port100_protocol { i8 8, i8 0 }, %struct.port100_protocol { i8 9, i8 0 }, %struct.port100_protocol { i8 10, i8 0 }, %struct.port100_protocol { i8 11, i8 0 }, %struct.port100_protocol { i8 12, i8 0 }, %struct.port100_protocol { i8 14, i8 4 }, %struct.port100_protocol { i8 15, i8 0 }, %struct.port100_protocol { i8 16, i8 0 }, %struct.port100_protocol { i8 17, i8 0 }, %struct.port100_protocol { i8 18, i8 0 }, %struct.port100_protocol { i8 19, i8 6 }, %struct.port100_protocol { i8 20, i8 0 }], [20 x %struct.port100_protocol] [%struct.port100_protocol { i8 0, i8 6 }, %struct.port100_protocol { i8 1, i8 1 }, %struct.port100_protocol { i8 2, i8 1 }, %struct.port100_protocol { i8 3, i8 0 }, %struct.port100_protocol { i8 4, i8 1 }, %struct.port100_protocol { i8 5, i8 1 }, %struct.port100_protocol { i8 6, i8 0 }, %struct.port100_protocol { i8 7, i8 8 }, %struct.port100_protocol { i8 8, i8 0 }, %struct.port100_protocol { i8 9, i8 0 }, %struct.port100_protocol { i8 10, i8 0 }, %struct.port100_protocol { i8 11, i8 0 }, %struct.port100_protocol { i8 12, i8 0 }, %struct.port100_protocol { i8 14, i8 4 }, %struct.port100_protocol { i8 15, i8 0 }, %struct.port100_protocol { i8 16, i8 0 }, %struct.port100_protocol { i8 17, i8 0 }, %struct.port100_protocol { i8 18, i8 0 }, %struct.port100_protocol { i8 19, i8 6 }, %struct.port100_protocol { i8 20, i8 0 }], [20 x %struct.port100_protocol] zeroinitializer, <{ %struct.port100_protocol, %struct.port100_protocol, %struct.port100_protocol, %struct.port100_protocol, %struct.port100_protocol, [15 x %struct.port100_protocol] }> <{ %struct.port100_protocol { i8 1, i8 2 }, %struct.port100_protocol { i8 2, i8 2 }, %struct.port100_protocol { i8 7, i8 8 }, %struct.port100_protocol { i8 17, i8 2 }, %struct.port100_protocol { i8 20, i8 0 }, [15 x %struct.port100_protocol] zeroinitializer }>, <{ %struct.port100_protocol, %struct.port100_protocol, %struct.port100_protocol, [17 x %struct.port100_protocol] }> <{ %struct.port100_protocol { i8 1, i8 1 }, %struct.port100_protocol { i8 2, i8 0 }, %struct.port100_protocol { i8 20, i8 0 }, [17 x %struct.port100_protocol] zeroinitializer }>, <{ %struct.port100_protocol, [19 x %struct.port100_protocol] }> <{ %struct.port100_protocol { i8 20, i8 0 }, [19 x %struct.port100_protocol] zeroinitializer }>, <{ %struct.port100_protocol, [19 x %struct.port100_protocol] }> <{ %struct.port100_protocol { i8 20, i8 0 }, [19 x %struct.port100_protocol] zeroinitializer }>, [20 x %struct.port100_protocol] [%struct.port100_protocol { i8 0, i8 18 }, %struct.port100_protocol { i8 1, i8 1 }, %struct.port100_protocol { i8 2, i8 1 }, %struct.port100_protocol { i8 3, i8 0 }, %struct.port100_protocol { i8 4, i8 0 }, %struct.port100_protocol { i8 5, i8 0 }, %struct.port100_protocol { i8 6, i8 0 }, %struct.port100_protocol { i8 7, i8 8 }, %struct.port100_protocol { i8 8, i8 0 }, %struct.port100_protocol { i8 9, i8 0 }, %struct.port100_protocol { i8 10, i8 0 }, %struct.port100_protocol { i8 11, i8 0 }, %struct.port100_protocol { i8 12, i8 0 }, %struct.port100_protocol { i8 14, i8 4 }, %struct.port100_protocol { i8 15, i8 0 }, %struct.port100_protocol { i8 16, i8 0 }, %struct.port100_protocol { i8 17, i8 0 }, %struct.port100_protocol { i8 18, i8 0 }, %struct.port100_protocol { i8 19, i8 6 }, %struct.port100_protocol { i8 20, i8 0 }], <{ %struct.port100_protocol, [19 x %struct.port100_protocol] }> <{ %struct.port100_protocol { i8 20, i8 0 }, [19 x %struct.port100_protocol] zeroinitializer }>, [20 x %struct.port100_protocol] [%struct.port100_protocol { i8 0, i8 18 }, %struct.port100_protocol { i8 1, i8 1 }, %struct.port100_protocol { i8 2, i8 1 }, %struct.port100_protocol { i8 3, i8 0 }, %struct.port100_protocol { i8 4, i8 0 }, %struct.port100_protocol { i8 5, i8 0 }, %struct.port100_protocol { i8 6, i8 0 }, %struct.port100_protocol { i8 7, i8 8 }, %struct.port100_protocol { i8 8, i8 0 }, %struct.port100_protocol { i8 9, i8 0 }, %struct.port100_protocol { i8 10, i8 0 }, %struct.port100_protocol { i8 11, i8 0 }, %struct.port100_protocol { i8 12, i8 0 }, %struct.port100_protocol { i8 14, i8 4 }, %struct.port100_protocol { i8 15, i8 0 }, %struct.port100_protocol { i8 16, i8 0 }, %struct.port100_protocol { i8 17, i8 0 }, %struct.port100_protocol { i8 18, i8 0 }, %struct.port100_protocol { i8 19, i8 6 }, %struct.port100_protocol { i8 20, i8 0 }], <{ %struct.port100_protocol, [19 x %struct.port100_protocol] }> <{ %struct.port100_protocol { i8 20, i8 0 }, [19 x %struct.port100_protocol] zeroinitializer }>, [20 x %struct.port100_protocol] zeroinitializer, [20 x %struct.port100_protocol] zeroinitializer, [20 x %struct.port100_protocol] [%struct.port100_protocol { i8 0, i8 20 }, %struct.port100_protocol { i8 1, i8 1 }, %struct.port100_protocol { i8 2, i8 1 }, %struct.port100_protocol { i8 3, i8 0 }, %struct.port100_protocol { i8 4, i8 0 }, %struct.port100_protocol { i8 5, i8 0 }, %struct.port100_protocol { i8 6, i8 0 }, %struct.port100_protocol { i8 7, i8 8 }, %struct.port100_protocol { i8 8, i8 0 }, %struct.port100_protocol { i8 9, i8 1 }, %struct.port100_protocol { i8 10, i8 1 }, %struct.port100_protocol { i8 11, i8 1 }, %struct.port100_protocol { i8 12, i8 1 }, %struct.port100_protocol { i8 14, i8 4 }, %struct.port100_protocol { i8 15, i8 0 }, %struct.port100_protocol { i8 16, i8 0 }, %struct.port100_protocol { i8 17, i8 0 }, %struct.port100_protocol { i8 18, i8 0 }, %struct.port100_protocol { i8 19, i8 6 }, %struct.port100_protocol { i8 20, i8 0 }], <{ %struct.port100_protocol, [19 x %struct.port100_protocol] }> <{ %struct.port100_protocol { i8 20, i8 0 }, [19 x %struct.port100_protocol] zeroinitializer }>, <{ %struct.port100_protocol, [19 x %struct.port100_protocol] }> <{ %struct.port100_protocol { i8 20, i8 0 }, [19 x %struct.port100_protocol] zeroinitializer }> }>, [184 x i8] zeroinitializer }, align 32
@port100_in_comm_rf_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.6, i32 1170, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"NFC: Invalid packet length received\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"port100_in_comm_rf_complete\00", [36 x i8] zeroinitializer }, align 32
@port100_in_comm_rf_complete._entry_ptr = internal global ptr @port100_in_comm_rf_complete._entry, section ".printk_index", align 4
@port100_in_comm_rf_complete._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.6, i32 1186, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"NFC: in_comm_rf failed with status 0x%08x\0A\00", [53 x i8] zeroinitializer }, align 32
@port100_in_comm_rf_complete._entry_ptr.63 = internal global ptr @port100_in_comm_rf_complete._entry.61, section ".printk_index", align 4
@tg_rf_settings = internal constant { [6 x %struct.port100_tg_rf_setting], [20 x i8] } { [6 x %struct.port100_tg_rf_setting] [%struct.port100_tg_rf_setting { i8 8, i8 11 }, %struct.port100_tg_rf_setting { i8 8, i8 12 }, %struct.port100_tg_rf_setting { i8 8, i8 13 }, %struct.port100_tg_rf_setting zeroinitializer, %struct.port100_tg_rf_setting zeroinitializer, %struct.port100_tg_rf_setting zeroinitializer], [20 x i8] zeroinitializer }, align 32
@tg_protocols = internal constant { [17 x [4 x %struct.port100_protocol]], [56 x i8] } { [17 x [4 x %struct.port100_protocol]] [[4 x %struct.port100_protocol] [%struct.port100_protocol { i8 3, i8 0 }, %struct.port100_protocol zeroinitializer, %struct.port100_protocol zeroinitializer, %struct.port100_protocol zeroinitializer], [4 x %struct.port100_protocol] [%struct.port100_protocol { i8 3, i8 0 }, %struct.port100_protocol zeroinitializer, %struct.port100_protocol zeroinitializer, %struct.port100_protocol zeroinitializer], [4 x %struct.port100_protocol] [%struct.port100_protocol { i8 3, i8 0 }, %struct.port100_protocol zeroinitializer, %struct.port100_protocol zeroinitializer, %struct.port100_protocol zeroinitializer], [4 x %struct.port100_protocol] zeroinitializer, [4 x %struct.port100_protocol] [%struct.port100_protocol { i8 3, i8 0 }, %struct.port100_protocol zeroinitializer, %struct.port100_protocol zeroinitializer, %struct.port100_protocol zeroinitializer], [4 x %struct.port100_protocol] [%struct.port100_protocol { i8 3, i8 0 }, %struct.port100_protocol zeroinitializer, %struct.port100_protocol zeroinitializer, %struct.port100_protocol zeroinitializer], [4 x %struct.port100_protocol] zeroinitializer, [4 x %struct.port100_protocol] [%struct.port100_protocol { i8 0, i8 1 }, %struct.port100_protocol { i8 1, i8 0 }, %struct.port100_protocol { i8 2, i8 7 }, %struct.port100_protocol { i8 3, i8 0 }], [4 x %struct.port100_protocol] [%struct.port100_protocol { i8 3, i8 0 }, %struct.port100_protocol zeroinitializer, %struct.port100_protocol zeroinitializer, %struct.port100_protocol zeroinitializer], [4 x %struct.port100_protocol] [%struct.port100_protocol { i8 3, i8 0 }, %struct.port100_protocol zeroinitializer, %struct.port100_protocol zeroinitializer, %struct.port100_protocol zeroinitializer], [4 x %struct.port100_protocol] [%struct.port100_protocol { i8 0, i8 1 }, %struct.port100_protocol { i8 1, i8 0 }, %struct.port100_protocol { i8 2, i8 7 }, %struct.port100_protocol { i8 3, i8 0 }], [4 x %struct.port100_protocol] [%struct.port100_protocol { i8 1, i8 1 }, %struct.port100_protocol { i8 3, i8 0 }, %struct.port100_protocol zeroinitializer, %struct.port100_protocol zeroinitializer], [4 x %struct.port100_protocol] zeroinitializer, [4 x %struct.port100_protocol] zeroinitializer, [4 x %struct.port100_protocol] zeroinitializer, [4 x %struct.port100_protocol] zeroinitializer, [4 x %struct.port100_protocol] [%struct.port100_protocol { i8 3, i8 0 }, %struct.port100_protocol zeroinitializer, %struct.port100_protocol zeroinitializer, %struct.port100_protocol zeroinitializer]], [56 x i8] zeroinitializer }, align 32
@port100_tg_target_activated._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.6, i32 1325, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"NFC: Unknown command type\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"port100_tg_target_activated\00", [36 x i8] zeroinitializer }, align 32
@port100_tg_target_activated._entry_ptr = internal global ptr @port100_tg_target_activated._entry, section ".printk_index", align 4
@ack_frame = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\00\00\FF\00\FF\00", [26 x i8] zeroinitializer }, align 32
@port100_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.6, i32 1643, ptr @.str.25, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"NFC: Sony Port-100 NFC device disconnected\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"port100_disconnect\00", [45 x i8] zeroinitializer }, align 32
@port100_disconnect._entry_ptr = internal global ptr @port100_disconnect._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.68 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.69 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2147483648]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.74 = private unnamed_addr constant [15 x i8] c"port100_driver\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1646, i32 26 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1656, i32 1 }
@___asan_gen_.86 = private unnamed_addr constant [14 x i8] c"port100_table\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1482, i32 35 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1506, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1524, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1534, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1552, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1559, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1572, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1580, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1583, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [20 x i8] c"port100_digital_ops\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1469, i32 37 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1593, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1604, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 945, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 950, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 87, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 853, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 780, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 681, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 686, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 694, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 701, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 627, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 632, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 640, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 645, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 649, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant [15 x i8] c"in_rf_settings\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 118, i32 43 }
@___asan_gen_.248 = private unnamed_addr constant [13 x i8] c"in_protocols\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 221, i32 1 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1169, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1185, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant [15 x i8] c"tg_rf_settings\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 167, i32 43 }
@___asan_gen_.269 = private unnamed_addr constant [13 x i8] c"tg_protocols\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 395, i32 1 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1325, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant [10 x i8] c"ack_frame\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 44, i32 11 }
@___asan_gen_.284 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.290 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.291 = private constant [25 x i8] c"../drivers/nfc/port100.c\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1643, i32 2 }
@llvm.compiler.used = appending global [101 x ptr] [ptr @__UNIQUE_ID_description286, ptr @__UNIQUE_ID_file288, ptr @__UNIQUE_ID_license289, ptr @__UNIQUE_ID_version287, ptr @__exitcall_port100_driver_exit, ptr @__initcall__kmod_port100__285_1653_port100_driver_init6, ptr @__modver_attr, ptr @port100_disconnect._entry, ptr @port100_disconnect._entry_ptr, ptr @port100_driver_exit, ptr @port100_in_comm_rf_complete._entry, ptr @port100_in_comm_rf_complete._entry.61, ptr @port100_in_comm_rf_complete._entry_ptr, ptr @port100_in_comm_rf_complete._entry_ptr.63, ptr @port100_probe._entry, ptr @port100_probe._entry.14, ptr @port100_probe._entry.17, ptr @port100_probe._entry.20, ptr @port100_probe._entry.23, ptr @port100_probe._entry.27, ptr @port100_probe._entry.30, ptr @port100_probe._entry.9, ptr @port100_probe._entry_ptr, ptr @port100_probe._entry_ptr.11, ptr @port100_probe._entry_ptr.16, ptr @port100_probe._entry_ptr.19, ptr @port100_probe._entry_ptr.22, ptr @port100_probe._entry_ptr.26, ptr @port100_probe._entry_ptr.29, ptr @port100_probe._entry_ptr.32, ptr @port100_recv_ack._entry, ptr @port100_recv_ack._entry.43, ptr @port100_recv_ack._entry.46, ptr @port100_recv_ack._entry_ptr, ptr @port100_recv_ack._entry_ptr.45, ptr @port100_recv_ack._entry_ptr.48, ptr @port100_recv_response._entry, ptr @port100_recv_response._entry.51, ptr @port100_recv_response._entry.55, ptr @port100_recv_response._entry_ptr, ptr @port100_recv_response._entry_ptr.53, ptr @port100_recv_response._entry_ptr.57, ptr @port100_send_cmd_async._entry, ptr @port100_send_cmd_async._entry_ptr, ptr @port100_send_complete._entry, ptr @port100_send_complete._entry_ptr, ptr @port100_tg_target_activated._entry, ptr @port100_tg_target_activated._entry_ptr, ptr @port100_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @port100_table, ptr @port100_probe.__key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @port100_probe.__key.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.25, ptr @port100_digital_ops, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @init_completion.__key, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @in_rf_settings, ptr @in_protocols, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @tg_rf_settings, ptr @tg_protocols, ptr @.str.64, ptr @.str.65, ptr @ack_frame, ptr @.str.66, ptr @.str.67], section "llvm.metadata"
@0 = internal global [73 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port100_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port100_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port100_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port100_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port100_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port100_probe.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port100_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port100_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port100_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port100_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port100_digital_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port100_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port100_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port100_send_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port100_send_cmd_async._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port100_recv_ack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port100_recv_ack._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port100_recv_ack._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port100_recv_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port100_recv_response._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port100_recv_response._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_rf_settings to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_protocols to i32), i32 680, i32 864, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port100_in_comm_rf_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port100_in_comm_rf_complete._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tg_rf_settings to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tg_protocols to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port100_tg_target_activated._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ack_frame to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port100_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @port100_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @port100_driver, ptr noundef null, ptr noundef nonnull @.str.1) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @port100_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_deregister(ptr noundef nonnull @port100_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @port100_probe(ptr noundef %interface, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 232, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  %out_urb_lock = getelementptr inbounds %struct.port100, ptr %call.i, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %out_urb_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @port100_probe.__key) #7
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %call3 = tail call ptr @usb_get_dev(ptr noundef %add.ptr.i) #7
  %udev = getelementptr inbounds %struct.port100, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %udev, align 4
  %interface4 = getelementptr inbounds %struct.port100, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %interface4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %interface, ptr %interface4, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 1
  %5 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bNumEndpoints, align 4
  %conv = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp228.not = icmp eq i8 %8, 0
  br i1 %cmp228.not, label %do.body.do.end27_crit_edge, label %for.body.lr.ph

do.body.do.end27_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end27

for.body.lr.ph:                                   ; preds = %do.body
  %endpoint6 = getelementptr inbounds %struct.usb_host_interface, ptr %6, i32 0, i32 3
  %9 = ptrtoint ptr %endpoint6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %endpoint6, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0231 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %out_endpoint.0230 = phi i32 [ 0, %for.body.lr.ph ], [ %out_endpoint.1, %for.inc.for.body_crit_edge ]
  %in_endpoint.0229 = phi i32 [ 0, %for.body.lr.ph ], [ %in_endpoint.1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.usb_host_endpoint, ptr %10, i32 %i.0231
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in_endpoint.0229)
  %tobool8.not = icmp eq i32 %in_endpoint.0229, 0
  br i1 %tobool8.not, label %land.lhs.true, label %for.body.if.end13_crit_edge

for.body.if.end13_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

land.lhs.true:                                    ; preds = %for.body
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %11 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bmAttributes.i.i, align 1
  %13 = and i8 %12, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp.i.not.i = icmp eq i8 %13, 2
  br i1 %cmp.i.not.i, label %usb_endpoint_is_bulk_in.exit, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

usb_endpoint_is_bulk_in.exit:                     ; preds = %land.lhs.true
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %14 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %tobool10.not = icmp sgt i8 %15, -1
  br i1 %tobool10.not, label %usb_endpoint_is_bulk_in.exit.if.end13_crit_edge, label %if.then11

usb_endpoint_is_bulk_in.exit.if.end13_crit_edge:  ; preds = %usb_endpoint_is_bulk_in.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then11:                                        ; preds = %usb_endpoint_is_bulk_in.exit
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bEndpointAddress.i.i, align 1
  %conv12 = zext i8 %17 to i32
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %usb_endpoint_is_bulk_in.exit.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge, %for.body.if.end13_crit_edge
  %in_endpoint.1 = phi i32 [ %in_endpoint.0229, %for.body.if.end13_crit_edge ], [ %conv12, %if.then11 ], [ 0, %usb_endpoint_is_bulk_in.exit.if.end13_crit_edge ], [ 0, %land.lhs.true.if.end13_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %out_endpoint.0230)
  %tobool14.not = icmp eq i32 %out_endpoint.0230, 0
  br i1 %tobool14.not, label %land.lhs.true15, label %if.end13.for.inc_crit_edge

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true15:                                  ; preds = %if.end13
  %bmAttributes.i.i213 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %18 = ptrtoint ptr %bmAttributes.i.i213 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bmAttributes.i.i213, align 1
  %20 = and i8 %19, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %20)
  %cmp.i.not.i214 = icmp eq i8 %20, 2
  br i1 %cmp.i.not.i214, label %usb_endpoint_is_bulk_out.exit, label %land.lhs.true15.for.inc_crit_edge

land.lhs.true15.for.inc_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

usb_endpoint_is_bulk_out.exit:                    ; preds = %land.lhs.true15
  %bEndpointAddress.i.i215 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %21 = ptrtoint ptr %bEndpointAddress.i.i215 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bEndpointAddress.i.i215, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool17.not = icmp slt i8 %22, 0
  br i1 %tobool17.not, label %usb_endpoint_is_bulk_out.exit.for.inc_crit_edge, label %if.then18

usb_endpoint_is_bulk_out.exit.for.inc_crit_edge:  ; preds = %usb_endpoint_is_bulk_out.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then18:                                        ; preds = %usb_endpoint_is_bulk_out.exit
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %bEndpointAddress.i.i215 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bEndpointAddress.i.i215, align 1
  %conv20 = zext i8 %24 to i32
  br label %for.inc

for.inc:                                          ; preds = %if.then18, %usb_endpoint_is_bulk_out.exit.for.inc_crit_edge, %land.lhs.true15.for.inc_crit_edge, %if.end13.for.inc_crit_edge
  %out_endpoint.1 = phi i32 [ %out_endpoint.0230, %if.end13.for.inc_crit_edge ], [ %conv20, %if.then18 ], [ 0, %usb_endpoint_is_bulk_out.exit.for.inc_crit_edge ], [ 0, %land.lhs.true15.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0231, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in_endpoint.1)
  %tobool22.not = icmp eq i32 %in_endpoint.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %out_endpoint.1)
  %tobool23.not = icmp eq i32 %out_endpoint.1, 0
  %or.cond = select i1 %tobool22.not, i1 true, i1 %tobool23.not
  br i1 %or.cond, label %for.end.do.end27_crit_edge, label %if.end29

for.end.do.end27_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end27

do.end27:                                         ; preds = %for.end.do.end27_crit_edge, %do.body.do.end27_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4) #10
  br label %error

if.end29:                                         ; preds = %for.end
  %call30 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #7
  %in_urb = getelementptr inbounds %struct.port100, ptr %call.i, i32 0, i32 6
  %25 = ptrtoint ptr %in_urb to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call30, ptr %in_urb, align 4
  %call31 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #7
  %out_urb = getelementptr inbounds %struct.port100, ptr %call.i, i32 0, i32 5
  %26 = ptrtoint ptr %out_urb to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call31, ptr %out_urb, align 4
  %27 = ptrtoint ptr %in_urb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %in_urb, align 4
  %tobool33.not = icmp eq ptr %28, null
  %tobool36.not = icmp eq ptr %call31, null
  %or.cond212 = select i1 %tobool33.not, i1 true, i1 %tobool36.not
  br i1 %or.cond212, label %do.end40, label %if.end42

do.end40:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #10
  br label %error

if.end42:                                         ; preds = %if.end29
  %29 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %udev, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 8
  %shl.i = shl i32 %32, 8
  %shl1.i = shl i32 %in_endpoint.1, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or47 = or i32 %or.i, -1073741696
  %dev1.i = getelementptr inbounds %struct.urb, ptr %28, i32 0, i32 8
  %33 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %28, i32 0, i32 10
  %34 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or47, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %28, i32 0, i32 14
  %35 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %28, i32 0, i32 19
  %36 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %28, i32 0, i32 28
  %37 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %28, i32 0, i32 27
  %38 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i, ptr %context4.i, align 4
  %39 = ptrtoint ptr %out_urb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %out_urb, align 4
  %41 = load ptr, ptr %udev, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 8
  %shl.i217 = shl i32 %43, 8
  %shl1.i218 = shl i32 %out_endpoint.1, 15
  %or.i219 = or i32 %shl1.i218, %shl.i217
  %or52 = or i32 %or.i219, -1073741824
  %dev1.i220 = getelementptr inbounds %struct.urb, ptr %40, i32 0, i32 8
  %44 = ptrtoint ptr %dev1.i220 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %dev1.i220, align 4
  %pipe2.i221 = getelementptr inbounds %struct.urb, ptr %40, i32 0, i32 10
  %45 = ptrtoint ptr %pipe2.i221 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or52, ptr %pipe2.i221, align 4
  %transfer_buffer3.i222 = getelementptr inbounds %struct.urb, ptr %40, i32 0, i32 14
  %46 = ptrtoint ptr %transfer_buffer3.i222 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %transfer_buffer3.i222, align 4
  %transfer_buffer_length.i223 = getelementptr inbounds %struct.urb, ptr %40, i32 0, i32 19
  %47 = ptrtoint ptr %transfer_buffer_length.i223 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %transfer_buffer_length.i223, align 4
  %complete.i224 = getelementptr inbounds %struct.urb, ptr %40, i32 0, i32 28
  %48 = ptrtoint ptr %complete.i224 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @port100_send_complete, ptr %complete.i224, align 4
  %context4.i225 = getelementptr inbounds %struct.urb, ptr %40, i32 0, i32 27
  %49 = ptrtoint ptr %context4.i225 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i, ptr %context4.i225, align 4
  %50 = load ptr, ptr %out_urb, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %50, i32 0, i32 13
  %51 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 64, ptr %transfer_flags, align 4
  %skb_headroom = getelementptr inbounds %struct.port100, ptr %call.i, i32 0, i32 1
  %52 = ptrtoint ptr %skb_headroom to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 43, ptr %skb_headroom, align 4
  %skb_tailroom = getelementptr inbounds %struct.port100, ptr %call.i, i32 0, i32 2
  %53 = ptrtoint ptr %skb_tailroom to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 2, ptr %skb_tailroom, align 4
  %cmd_cancel_done = getelementptr inbounds %struct.port100, ptr %call.i, i32 0, i32 12
  %54 = ptrtoint ptr %cmd_cancel_done to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %cmd_cancel_done, align 4
  %wait.i = getelementptr inbounds %struct.port100, ptr %call.i, i32 0, i32 12, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @init_completion.__key) #7
  %cmd_complete_work = getelementptr inbounds %struct.port100, ptr %call.i, i32 0, i32 8
  tail call void @__init_work(ptr noundef %cmd_complete_work, i32 noundef 0) #7
  %55 = ptrtoint ptr %cmd_complete_work to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -64, ptr %cmd_complete_work, align 4
  %lockdep_map = getelementptr inbounds %struct.port100, ptr %call.i, i32 0, i32 8, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.13, ptr noundef nonnull @port100_probe.__key.12, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry58 = getelementptr inbounds %struct.port100, ptr %call.i, i32 0, i32 8, i32 1
  %56 = ptrtoint ptr %entry58 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %entry58, ptr %entry58, align 4
  %prev.i = getelementptr inbounds %struct.port100, ptr %call.i, i32 0, i32 8, i32 1, i32 1
  %57 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %entry58, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.port100, ptr %call.i, i32 0, i32 8, i32 2
  %58 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @port100_wq_cmd_complete, ptr %func, align 4
  %call62 = tail call fastcc i64 @port100_get_command_type_mask(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call62)
  %tobool63.not = icmp eq i64 %call62, 0
  br i1 %tobool63.not, label %do.end67, label %if.end69

do.end67:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #10
  br label %error

if.end69:                                         ; preds = %if.end42
  %59 = trunc i64 %call62 to i8
  %60 = lshr i8 %59, 1
  %61 = and i8 %60, 1
  %62 = getelementptr inbounds %struct.port100, ptr %call.i, i32 0, i32 9
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %61, ptr %62, align 4
  %call75 = tail call fastcc i32 @port100_set_command_type(ptr noundef nonnull %call.i, i8 noundef zeroext %61)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end84, label %do.end80

do.end80:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %62 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %62, align 4
  %conv83 = zext i8 %65 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef %conv83) #10
  br label %error

if.end84:                                         ; preds = %if.end69
  %call85 = tail call fastcc zeroext i16 @port100_get_firmware_version(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call85)
  %tobool86.not = icmp eq i16 %call85, 0
  br i1 %tobool86.not, label %do.end90, label %if.end84.do.end95_crit_edge

if.end84.do.end95_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end95

do.end90:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21) #10
  br label %do.end95

do.end95:                                         ; preds = %do.end90, %if.end84.do.end95_crit_edge
  %conv97 = zext i16 %call85 to i32
  %66 = lshr i32 %conv97, 8
  %and100 = and i32 %conv97, 255
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef %66, i32 noundef %and100) #10
  %67 = ptrtoint ptr %skb_headroom to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %skb_headroom, align 4
  %69 = ptrtoint ptr %skb_tailroom to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %skb_tailroom, align 4
  %call103 = tail call ptr @nfc_digital_allocate_device(ptr noundef nonnull @port100_digital_ops, i32 noundef 126, i32 noundef 3, i32 noundef %68, i32 noundef %70) #7
  %71 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call103, ptr %call.i, align 4
  %tobool105.not = icmp eq ptr %call103, null
  br i1 %tobool105.not, label %do.end109, label %if.end111

do.end109:                                        ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.28) #10
  br label %error

if.end111:                                        ; preds = %do.end95
  %72 = ptrtoint ptr %call103 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %call103, align 4
  %parent.i.i = getelementptr inbounds %struct.nfc_dev, ptr %73, i32 0, i32 5, i32 1
  %74 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %dev1, ptr %parent.i.i, align 8
  %75 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %call.i, align 4
  %driver_data.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %76, i32 0, i32 6
  %77 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call.i, ptr %driver_data.i, align 4
  %78 = load ptr, ptr %call.i, align 4
  %call116 = tail call i32 @nfc_digital_register_device(ptr noundef %78) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.end111.cleanup_crit_edge, label %do.end121

if.end111.cleanup_crit_edge:                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end121:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.31) #10
  %79 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %call.i, align 4
  tail call void @nfc_digital_free_device(ptr noundef %80) #7
  br label %error

error:                                            ; preds = %do.end121, %do.end109, %do.end80, %do.end67, %do.end40, %do.end27
  %rc.0 = phi i32 [ %call75, %do.end80 ], [ %call116, %do.end121 ], [ -12, %do.end109 ], [ -19, %do.end67 ], [ -12, %do.end40 ], [ -19, %do.end27 ]
  %in_urb125 = getelementptr inbounds %struct.port100, ptr %call.i, i32 0, i32 6
  %81 = ptrtoint ptr %in_urb125 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %in_urb125, align 4
  tail call void @usb_kill_urb(ptr noundef %82) #7
  %83 = ptrtoint ptr %in_urb125 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %in_urb125, align 4
  tail call void @usb_free_urb(ptr noundef %84) #7
  %out_urb127 = getelementptr inbounds %struct.port100, ptr %call.i, i32 0, i32 5
  %85 = ptrtoint ptr %out_urb127 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %out_urb127, align 4
  tail call void @usb_kill_urb(ptr noundef %86) #7
  %87 = ptrtoint ptr %out_urb127 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %out_urb127, align 4
  tail call void @usb_free_urb(ptr noundef %88) #7
  %89 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %udev, align 4
  tail call void @usb_put_dev(ptr noundef %90) #7
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end111.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %error ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end111.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @port100_disconnect(ptr noundef %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @nfc_digital_unregister_device(ptr noundef %3) #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @nfc_digital_free_device(ptr noundef %5) #7
  %in_urb = getelementptr inbounds %struct.port100, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %in_urb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %in_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %7) #7
  %out_urb = getelementptr inbounds %struct.port100, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %out_urb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %out_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %9) #7
  %10 = ptrtoint ptr %in_urb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %in_urb, align 4
  tail call void @usb_free_urb(ptr noundef %11) #7
  %12 = ptrtoint ptr %out_urb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %out_urb, align 4
  tail call void @usb_free_urb(ptr noundef %13) #7
  %udev = getelementptr inbounds %struct.port100, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %udev, align 4
  tail call void @usb_put_dev(ptr noundef %15) #7
  %cmd = getelementptr inbounds %struct.port100, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cmd, align 4
  tail call void @kfree(ptr noundef %17) #7
  %dev4 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev4, ptr noundef nonnull @.str.66) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @port100_send_complete(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %cmd_cancel = getelementptr inbounds %struct.port100, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %cmd_cancel to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cmd_cancel, align 4, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cmd_cancel_done = getelementptr inbounds %struct.port100, ptr %1, i32 0, i32 12
  tail call void @complete_all(ptr noundef %cmd_cancel_done) #7
  %4 = ptrtoint ptr %cmd_cancel to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %cmd_cancel, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %do.end12 [
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 -104, label %if.end.do.body_crit_edge
    i32 -2, label %if.end.do.body_crit_edge24
  ]

if.end.do.body_crit_edge24:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body:                                          ; preds = %if.end.do.body_crit_edge, %if.end.do.body_crit_edge24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @port100_send_complete.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@port100_send_complete, %if.then5)) #7
          to label %sw.epilog [label %if.then5], !srcloc !155

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %interface = getelementptr inbounds %struct.port100, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %interface, align 4
  %dev6 = getelementptr inbounds %struct.usb_interface, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @port100_send_complete.__UNIQUE_ID_ddebug284, ptr noundef %dev6, ptr noundef nonnull @.str.34, i32 noundef %11) #7
  br label %sw.epilog

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %interface13 = getelementptr inbounds %struct.port100, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %interface13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %interface13, align 4
  %dev14 = getelementptr inbounds %struct.usb_interface, ptr %13, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.35, i32 noundef %6) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end12, %if.then5, %do.body, %if.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @port100_wq_cmd_complete(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -120
  %cmd1.i = getelementptr i8, ptr %work, i32 48
  %0 = ptrtoint ptr %cmd1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd1.i, align 4
  %status2.i = getelementptr inbounds %struct.port100_cmd, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %status2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status2.i, align 4
  %req3.i = getelementptr inbounds %struct.port100_cmd, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %req3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req3.i, align 4
  %resp4.i = getelementptr inbounds %struct.port100_cmd, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %resp4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resp4.i, align 4
  tail call void @consume_skb(ptr noundef %5) #7
  %8 = ptrtoint ptr %cmd1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %cmd1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp slt i32 %3, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %complete_cb.i = getelementptr inbounds %struct.port100_cmd, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %complete_cb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %complete_cb.i, align 4
  %complete_cb_context.i = getelementptr inbounds %struct.port100_cmd, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %complete_cb_context.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %complete_cb_context.i, align 4
  %13 = inttoptr i32 %3 to ptr
  tail call void %10(ptr noundef %add.ptr, ptr noundef %12, ptr noundef nonnull %13) #7
  tail call void @consume_skb(ptr noundef %7) #7
  br label %port100_send_async_complete.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 19
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  %datalen.i.i = getelementptr inbounds %struct.port100_frame, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %datalen.i.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %datalen.i.i, align 1
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #7
  %conv.i.i = zext i16 %18 to i32
  %add1.i.i = add nuw nsw i32 %conv.i.i, 10
  %call7.i = tail call ptr @skb_put(ptr noundef %7, i32 noundef %add1.i.i) #7
  %call8.i = tail call ptr @skb_pull(ptr noundef %7, i32 noundef 10) #7
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 6
  %19 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len.i, align 4
  %sub.i = add i32 %20, -2
  tail call void @skb_trim(ptr noundef %7, i32 noundef %sub.i) #7
  %complete_cb9.i = getelementptr inbounds %struct.port100_cmd, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %complete_cb9.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %complete_cb9.i, align 4
  %complete_cb_context10.i = getelementptr inbounds %struct.port100_cmd, ptr %1, i32 0, i32 6
  %23 = ptrtoint ptr %complete_cb_context10.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %complete_cb_context10.i, align 4
  tail call void %22(ptr noundef %add.ptr, ptr noundef %24, ptr noundef %7) #7
  br label %port100_send_async_complete.exit

port100_send_async_complete.exit:                 ; preds = %if.end.i, %if.then.i
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @port100_get_command_type_mask(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %arg.i = alloca %struct.port100_sync_cmd_response, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %skb_headroom.i = getelementptr inbounds %struct.port100, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %skb_headroom.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %skb_headroom.i, align 4
  %skb_tailroom.i = getelementptr inbounds %struct.port100, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %skb_tailroom.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %skb_tailroom.i, align 4
  %add1.i = add i32 %3, %1
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add1.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %skb_headroom.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %skb_headroom.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %5
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %9, i32 %5
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %arg.i) #7
  %10 = call ptr @memset(ptr %arg.i, i32 255, i32 60)
  %done.i = getelementptr inbounds %struct.port100_sync_cmd_response, ptr %arg.i, i32 0, i32 1
  %11 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %done.i, align 4
  %wait.i.i = getelementptr inbounds %struct.port100_sync_cmd_response, ptr %arg.i, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @init_completion.__key) #7
  %call.i = call fastcc i32 @port100_send_cmd_async(ptr noundef %dev, i8 noundef zeroext 40, ptr noundef nonnull %call.i.i, ptr noundef nonnull @port100_send_sync_complete, ptr noundef nonnull %arg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i14 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i14, label %if.end.i, label %if.then.i15

if.then.i15:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @consume_skb(ptr noundef nonnull %call.i.i) #7
  %12 = inttoptr i32 %call.i to ptr
  br label %port100_send_cmd_sync.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @wait_for_completion(ptr noundef %done.i) #7
  %13 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arg.i, align 4
  br label %port100_send_cmd_sync.exit

port100_send_cmd_sync.exit:                       ; preds = %if.end.i, %if.then.i15
  %retval.0.i = phi ptr [ %12, %if.then.i15 ], [ %14, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %arg.i) #7
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %port100_send_cmd_sync.exit.cleanup_crit_edge, label %if.end4

port100_send_cmd_sync.exit.cleanup_crit_edge:     ; preds = %port100_send_cmd_sync.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %port100_send_cmd_sync.exit
  %len = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i, i32 0, i32 6
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %16)
  %cmp = icmp ult i32 %16, 8
  br i1 %cmp, label %if.end4.if.end6_crit_edge, label %if.else

if.end4.if.end6_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i, i32 0, i32 19
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %18, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.end4.if.end6_crit_edge
  %mask.0 = phi i64 [ %20, %if.else ], [ 0, %if.end4.if.end6_crit_edge ]
  call void @consume_skb(ptr noundef %retval.0.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %port100_send_cmd_sync.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %mask.0, %if.end6 ], [ 0, %port100_send_cmd_sync.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @port100_set_command_type(ptr noundef %dev, i8 noundef zeroext %command_type) unnamed_addr #2 align 64 {
entry:
  %arg.i = alloca %struct.port100_sync_cmd_response, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %skb_headroom.i = getelementptr inbounds %struct.port100, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %skb_headroom.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %skb_headroom.i, align 4
  %skb_tailroom.i = getelementptr inbounds %struct.port100, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %skb_tailroom.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %skb_tailroom.i, align 4
  %add.i = add i32 %1, 1
  %add1.i = add i32 %add.i, %3
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add1.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %skb_headroom.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %skb_headroom.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %5
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %9, i32 %5
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 1) #7
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %command_type, ptr %call.i, align 1
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %arg.i) #7
  %11 = call ptr @memset(ptr %arg.i, i32 255, i32 60)
  %done.i = getelementptr inbounds %struct.port100_sync_cmd_response, ptr %arg.i, i32 0, i32 1
  %12 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %done.i, align 4
  %wait.i.i = getelementptr inbounds %struct.port100_sync_cmd_response, ptr %arg.i, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @init_completion.__key) #7
  %call.i14 = call fastcc i32 @port100_send_cmd_async(ptr noundef %dev, i8 noundef zeroext 42, ptr noundef nonnull %call.i.i, ptr noundef nonnull @port100_send_sync_complete, ptr noundef nonnull %arg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %tobool.not.i15 = icmp eq i32 %call.i14, 0
  br i1 %tobool.not.i15, label %if.end.i, label %if.then.i16

if.then.i16:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @consume_skb(ptr noundef nonnull %call.i.i) #7
  %13 = inttoptr i32 %call.i14 to ptr
  br label %port100_send_cmd_sync.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @wait_for_completion(ptr noundef %done.i) #7
  %14 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arg.i, align 4
  br label %port100_send_cmd_sync.exit

port100_send_cmd_sync.exit:                       ; preds = %if.end.i, %if.then.i16
  %retval.0.i = phi ptr [ %13, %if.then.i16 ], [ %15, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %arg.i) #7
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %port100_send_cmd_sync.exit
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %retval.0.i to i32
  br label %cleanup

if.end5:                                          ; preds = %port100_send_cmd_sync.exit
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i, i32 0, i32 19
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 1
  %conv = zext i8 %20 to i32
  call void @consume_skb(ptr noundef %retval.0.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %if.then3 ], [ %conv, %if.end5 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @port100_get_firmware_version(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %arg.i = alloca %struct.port100_sync_cmd_response, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %skb_headroom.i = getelementptr inbounds %struct.port100, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %skb_headroom.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %skb_headroom.i, align 4
  %skb_tailroom.i = getelementptr inbounds %struct.port100, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %skb_tailroom.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %skb_tailroom.i, align 4
  %add1.i = add i32 %3, %1
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add1.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %skb_headroom.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %skb_headroom.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %5
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %9, i32 %5
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %arg.i) #7
  %10 = call ptr @memset(ptr %arg.i, i32 255, i32 60)
  %done.i = getelementptr inbounds %struct.port100_sync_cmd_response, ptr %arg.i, i32 0, i32 1
  %11 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %done.i, align 4
  %wait.i.i = getelementptr inbounds %struct.port100_sync_cmd_response, ptr %arg.i, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @init_completion.__key) #7
  %call.i = call fastcc i32 @port100_send_cmd_async(ptr noundef %dev, i8 noundef zeroext 32, ptr noundef nonnull %call.i.i, ptr noundef nonnull @port100_send_sync_complete, ptr noundef nonnull %arg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i11 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i11, label %if.end.i, label %if.then.i12

if.then.i12:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @consume_skb(ptr noundef nonnull %call.i.i) #7
  %12 = inttoptr i32 %call.i to ptr
  br label %port100_send_cmd_sync.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @wait_for_completion(ptr noundef %done.i) #7
  %13 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arg.i, align 4
  br label %port100_send_cmd_sync.exit

port100_send_cmd_sync.exit:                       ; preds = %if.end.i, %if.then.i12
  %retval.0.i = phi ptr [ %12, %if.then.i12 ], [ %14, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %arg.i) #7
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %port100_send_cmd_sync.exit.cleanup_crit_edge, label %if.end4

port100_send_cmd_sync.exit.cleanup_crit_edge:     ; preds = %port100_send_cmd_sync.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %port100_send_cmd_sync.exit
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i, i32 0, i32 19
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %16, align 2
  %19 = call i16 @llvm.bswap.i16(i16 %18)
  call void @consume_skb(ptr noundef %retval.0.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %port100_send_cmd_sync.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %19, %if.end4 ], [ 0, %port100_send_cmd_sync.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_digital_allocate_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_digital_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_digital_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @port100_send_cmd_async(ptr noundef %dev, i8 noundef zeroext %cmd_code, ptr noundef %req, ptr noundef %complete_cb, ptr noundef %complete_cb_context) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd1 = getelementptr inbounds %struct.port100, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %interface = getelementptr inbounds %struct.port100, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %interface, align 4
  %dev2 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.37) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @__alloc_skb(i32 noundef 1013, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #7
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 28) #11
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @consume_skb(ptr noundef nonnull %call.i) #7
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %cmd_code, ptr %call7.i.i, align 8
  %req10 = getelementptr inbounds %struct.port100_cmd, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %req10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %req, ptr %req10, align 8
  %resp11 = getelementptr inbounds %struct.port100_cmd, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %resp11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %resp11, align 4
  %resp_len12 = getelementptr inbounds %struct.port100_cmd, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %resp_len12 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1013, ptr %resp_len12, align 8
  %complete_cb13 = getelementptr inbounds %struct.port100_cmd, ptr %call7.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %complete_cb13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %complete_cb, ptr %complete_cb13, align 4
  %complete_cb_context14 = getelementptr inbounds %struct.port100_cmd, ptr %call7.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %complete_cb_context14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %complete_cb_context, ptr %complete_cb_context14, align 8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %req, i32 0, i32 6
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i, align 4
  %call.i47 = tail call ptr @skb_push(ptr noundef %req, i32 noundef 10) #7
  %call1.i = tail call ptr @skb_put(ptr noundef %req, i32 noundef 2) #7
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %req, i32 0, i32 19
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %14, align 1
  %start_frame.i.i = getelementptr inbounds %struct.port100_frame, ptr %14, i32 0, i32 1
  %16 = ptrtoint ptr %start_frame.i.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 255, ptr %start_frame.i.i, align 1
  %extended_frame.i.i = getelementptr inbounds %struct.port100_frame, ptr %14, i32 0, i32 2
  %17 = ptrtoint ptr %extended_frame.i.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 -1, ptr %extended_frame.i.i, align 1
  %data.i.i = getelementptr inbounds %struct.port100_frame, ptr %14, i32 0, i32 5
  %18 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -42, ptr %data.i.i, align 1
  %arrayidx2.i.i = getelementptr %struct.port100_frame, ptr %14, i32 1, i32 1
  %19 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %cmd_code, ptr %arrayidx2.i.i, align 1
  %datalen.i.i = getelementptr inbounds %struct.port100_frame, ptr %14, i32 0, i32 3
  %20 = ptrtoint ptr %datalen.i.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 512, ptr %datalen.i.i, align 1
  %21 = load ptr, ptr %data.i, align 4
  %datalen.i1.i = getelementptr inbounds %struct.port100_frame, ptr %21, i32 0, i32 3
  %conv.i.i = trunc i32 %12 to i16
  %22 = ptrtoint ptr %datalen.i1.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %datalen.i1.i, align 2
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #7
  %add.i.i.i = add i16 %24, %conv.i.i
  %25 = tail call i16 @llvm.bswap.i16(i16 %add.i.i.i) #7
  %26 = ptrtoint ptr %datalen.i1.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %datalen.i1.i, align 2
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i, align 4
  %datalen.i2.i = getelementptr inbounds %struct.port100_frame, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %datalen.i2.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %datalen.i2.i, align 1
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #7
  %value.addr.sroa.0.0.extract.shift.i.i.i = lshr i16 %31, 8
  %narrow.i.i.i = add i16 %value.addr.sroa.0.0.extract.shift.i.i.i, %31
  %add.i.i3.i = trunc i16 %narrow.i.i.i to i8
  %add3.i.i.i = sub i8 0, %add.i.i3.i
  %datalen_checksum.i.i = getelementptr inbounds %struct.port100_frame, ptr %28, i32 0, i32 4
  %32 = ptrtoint ptr %datalen_checksum.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %add3.i.i.i, ptr %datalen_checksum.i.i, align 1
  %data.i4.i = getelementptr inbounds %struct.port100_frame, ptr %28, i32 0, i32 5
  %conv.i5.i = zext i16 %31 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %cmp7.i.not.i.i = icmp eq i16 %30, 0
  br i1 %cmp7.i.not.i.i, label %if.end9.port100_build_cmd_frame.exit_crit_edge, label %if.end9.for.body.i.i.i_crit_edge

if.end9.for.body.i.i.i_crit_edge:                 ; preds = %if.end9
  br label %for.body.i.i.i

if.end9.port100_build_cmd_frame.exit_crit_edge:   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %port100_build_cmd_frame.exit

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.end9.for.body.i.i.i_crit_edge
  %i.09.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end9.for.body.i.i.i_crit_edge ]
  %sum.08.i.i.i = phi i8 [ %add.i16.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end9.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr i8, ptr %data.i4.i, i32 %i.09.i.i.i
  %33 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i.i.i, align 1
  %add.i16.i.i = add i8 %34, %sum.08.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.09.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %conv.i5.i
  br i1 %exitcond.not.i.i.i, label %for.body.i.i.i.port100_build_cmd_frame.exit_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.body.i.i.i.port100_build_cmd_frame.exit_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %port100_build_cmd_frame.exit

port100_build_cmd_frame.exit:                     ; preds = %for.body.i.i.i.port100_build_cmd_frame.exit_crit_edge, %if.end9.port100_build_cmd_frame.exit_crit_edge
  %sum.0.lcssa.i.i.i = phi i8 [ 0, %if.end9.port100_build_cmd_frame.exit_crit_edge ], [ %add.i16.i.i, %for.body.i.i.i.port100_build_cmd_frame.exit_crit_edge ]
  %add3.i.i.i.i = sub i8 0, %sum.0.lcssa.i.i.i
  %arrayidx.i.i = getelementptr %struct.port100_frame, ptr %28, i32 0, i32 5, i32 %conv.i5.i
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %add3.i.i.i.i, ptr %arrayidx.i.i, align 1
  %add.i.i = add nuw nsw i32 %conv.i5.i, 1
  %arrayidx8.i.i = getelementptr %struct.port100_frame, ptr %28, i32 0, i32 5, i32 %add.i.i
  %36 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %arrayidx8.i.i, align 1
  %37 = ptrtoint ptr %cmd1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call7.i.i, ptr %cmd1, align 4
  %call16 = tail call fastcc i32 @port100_send_frame_async(ptr noundef %dev, ptr noundef %req, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %port100_build_cmd_frame.exit.cleanup_crit_edge, label %if.then18

port100_build_cmd_frame.exit.cleanup_crit_edge:   ; preds = %port100_build_cmd_frame.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then18:                                        ; preds = %port100_build_cmd_frame.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  tail call void @consume_skb(ptr noundef nonnull %call.i) #7
  %38 = ptrtoint ptr %cmd1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %cmd1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %port100_build_cmd_frame.exit.cleanup_crit_edge, %if.then8, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ -12, %if.then8 ], [ -12, %if.end.cleanup_crit_edge ], [ %call16, %if.then18 ], [ 0, %port100_build_cmd_frame.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @port100_send_sync_complete(ptr nocapture noundef readnone %dev, ptr noundef %_arg, ptr noundef %resp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_arg to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %resp, ptr %_arg, align 4
  %done = getelementptr inbounds %struct.port100_sync_cmd_response, ptr %_arg, i32 0, i32 1
  tail call void @complete(ptr noundef %done) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @port100_send_frame_async(ptr noundef %dev, ptr nocapture noundef readonly %out, ptr nocapture noundef readonly %in) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %out_urb_lock = getelementptr inbounds %struct.port100, ptr %dev, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %out_urb_lock, i32 noundef 0) #7
  %cmd_cancel = getelementptr inbounds %struct.port100, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %cmd_cancel to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cmd_cancel, align 4, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.exit_crit_edge

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %out, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %out_urb = getelementptr inbounds %struct.port100, ptr %dev, i32 0, i32 5
  %4 = ptrtoint ptr %out_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %out_urb, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %transfer_buffer, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %out, i32 0, i32 6
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  %9 = load ptr, ptr %out_urb, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 19
  %10 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %8, ptr %transfer_buffer_length, align 4
  %data2 = getelementptr inbounds %struct.sk_buff, ptr %in, i32 0, i32 19
  %11 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data2, align 4
  %in_urb = getelementptr inbounds %struct.port100, ptr %dev, i32 0, i32 6
  %13 = ptrtoint ptr %in_urb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %in_urb, align 4
  %transfer_buffer3 = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 14
  %15 = ptrtoint ptr %transfer_buffer3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %transfer_buffer3, align 4
  %16 = load ptr, ptr %in_urb, align 4
  %transfer_buffer_length5 = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 19
  %17 = ptrtoint ptr %transfer_buffer_length5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1013, ptr %transfer_buffer_length5, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @port100_send_frame_async.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@port100_send_frame_async, %if.then9)) #7
          to label %do.end [label %if.then9], !srcloc !155

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %19, i32 noundef %21, i1 noundef zeroext false) #7
  br label %do.end

do.end:                                           ; preds = %if.then9, %if.end
  %22 = ptrtoint ptr %out_urb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %out_urb, align 4
  %call14 = tail call i32 @usb_submit_urb(ptr noundef %23, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %do.end.exit_crit_edge

do.end.exit_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end17:                                         ; preds = %do.end
  %24 = ptrtoint ptr %in_urb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %in_urb, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 28
  %26 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @port100_recv_ack, ptr %complete.i, align 4
  %27 = load ptr, ptr %in_urb, align 4
  %call.i = tail call i32 @usb_submit_urb(ptr noundef %27, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool19.not = icmp eq i32 %call.i, 0
  br i1 %tobool19.not, label %if.end17.exit_crit_edge, label %if.then20

if.end17.exit_crit_edge:                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %out_urb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %out_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %29) #7
  br label %exit

exit:                                             ; preds = %if.then20, %if.end17.exit_crit_edge, %do.end.exit_crit_edge, %entry.exit_crit_edge
  %rc.0 = phi i32 [ %call14, %do.end.exit_crit_edge ], [ %call.i, %if.then20 ], [ 0, %if.end17.exit_crit_edge ], [ -11, %entry.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %out_urb_lock) #7
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @port100_recv_ack(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %cmd1 = getelementptr inbounds %struct.port100, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd1, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %status2 = getelementptr inbounds %struct.port100_cmd, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %status2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %status2, align 4
  %7 = load i32, ptr %status, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %7, label %do.end11 [
    i32 0, label %sw.epilog
    i32 -104, label %entry.do.body_crit_edge
    i32 -2, label %entry.do.body_crit_edge54
  ]

entry.do.body_crit_edge54:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge54
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @port100_recv_ack.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@port100_recv_ack, %if.then)) #7
          to label %sched_wq [label %if.then], !srcloc !155

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %interface = getelementptr inbounds %struct.port100, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %interface, align 4
  %dev6 = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @port100_recv_ack.__UNIQUE_ID_ddebug282, ptr noundef %dev6, ptr noundef nonnull @.str.34, i32 noundef %12) #7
  br label %sched_wq

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %interface12 = getelementptr inbounds %struct.port100, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %interface12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %interface12, align 4
  %dev13 = getelementptr inbounds %struct.usb_interface, ptr %14, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.35, i32 noundef %7) #10
  br label %sched_wq

sw.epilog:                                        ; preds = %entry
  %in_urb = getelementptr inbounds %struct.port100, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %in_urb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %in_urb, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 14
  %17 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %transfer_buffer, align 4
  %start_frame.i = getelementptr inbounds %struct.port100_ack_frame, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %start_frame.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %20)
  %cmp.i = icmp eq i16 %20, 255
  br i1 %cmp.i, label %port100_rx_frame_is_ack.exit, label %sw.epilog.do.end19_crit_edge

sw.epilog.do.end19_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19

port100_rx_frame_is_ack.exit:                     ; preds = %sw.epilog
  %ack_frame.i = getelementptr inbounds %struct.port100_ack_frame, ptr %18, i32 0, i32 2
  %21 = ptrtoint ptr %ack_frame.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %ack_frame.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %22)
  %cmp3.i = icmp eq i16 %22, 255
  br i1 %cmp3.i, label %if.end23, label %port100_rx_frame_is_ack.exit.do.end19_crit_edge

port100_rx_frame_is_ack.exit.do.end19_crit_edge:  ; preds = %port100_rx_frame_is_ack.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19

do.end19:                                         ; preds = %port100_rx_frame_is_ack.exit.do.end19_crit_edge, %sw.epilog.do.end19_crit_edge
  %interface20 = getelementptr inbounds %struct.port100, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %interface20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %interface20, align 4
  %dev21 = getelementptr inbounds %struct.usb_interface, ptr %24, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.44) #10
  %25 = ptrtoint ptr %status2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -5, ptr %status2, align 4
  br label %sched_wq

if.end23:                                         ; preds = %port100_rx_frame_is_ack.exit
  %complete.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 28
  %26 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @port100_recv_response, ptr %complete.i, align 4
  %27 = ptrtoint ptr %in_urb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %in_urb, align 4
  %call.i = tail call i32 @usb_submit_urb(ptr noundef %28, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool25.not = icmp eq i32 %call.i, 0
  br i1 %tobool25.not, label %if.end23.cleanup_crit_edge, label %do.end29

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %interface30 = getelementptr inbounds %struct.port100, ptr %1, i32 0, i32 4
  %29 = ptrtoint ptr %interface30 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %interface30, align 4
  %dev31 = getelementptr inbounds %struct.usb_interface, ptr %30, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31, ptr noundef nonnull @.str.47, i32 noundef %call.i) #10
  %31 = ptrtoint ptr %status2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call.i, ptr %status2, align 4
  br label %sched_wq

sched_wq:                                         ; preds = %do.end29, %do.end19, %do.end11, %if.then, %do.body
  %cmd_complete_work = getelementptr inbounds %struct.port100, ptr %1, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %32 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %32, ptr noundef %cmd_complete_work) #7
  br label %cleanup

cleanup:                                          ; preds = %sched_wq, %if.end23.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @port100_recv_response(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %cmd1 = getelementptr inbounds %struct.port100, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd1, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %status2 = getelementptr inbounds %struct.port100_cmd, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %status2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %status2, align 4
  %7 = load i32, ptr %status, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %7, label %do.end11 [
    i32 0, label %sw.epilog
    i32 -104, label %entry.do.body_crit_edge
    i32 -2, label %entry.do.body_crit_edge77
  ]

entry.do.body_crit_edge77:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge77
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @port100_recv_response.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@port100_recv_response, %if.then)) #7
          to label %sched_wq [label %if.then], !srcloc !155

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %interface = getelementptr inbounds %struct.port100, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %interface, align 4
  %dev6 = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @port100_recv_response.__UNIQUE_ID_ddebug280, ptr noundef %dev6, ptr noundef nonnull @.str.50, i32 noundef %12) #7
  br label %sched_wq

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %interface12 = getelementptr inbounds %struct.port100, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %interface12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %interface12, align 4
  %dev13 = getelementptr inbounds %struct.usb_interface, ptr %14, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.35, i32 noundef %7) #10
  br label %sched_wq

sw.epilog:                                        ; preds = %entry
  %in_urb = getelementptr inbounds %struct.port100, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %in_urb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %in_urb, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 14
  %17 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %transfer_buffer, align 4
  %start_frame.i = getelementptr inbounds %struct.port100_frame, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %start_frame.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %20)
  %cmp.not.i = icmp eq i16 %20, 255
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %sw.epilog.do.end19_crit_edge

sw.epilog.do.end19_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19

lor.lhs.false.i:                                  ; preds = %sw.epilog
  %extended_frame.i = getelementptr inbounds %struct.port100_frame, ptr %18, i32 0, i32 2
  %21 = ptrtoint ptr %extended_frame.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %extended_frame.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %22)
  %cmp3.not.i = icmp eq i16 %22, -1
  br i1 %cmp3.not.i, label %if.end.i, label %lor.lhs.false.i.do.end19_crit_edge

lor.lhs.false.i.do.end19_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19

if.end.i:                                         ; preds = %lor.lhs.false.i
  %datalen.i = getelementptr inbounds %struct.port100_frame, ptr %18, i32 0, i32 3
  %23 = ptrtoint ptr %datalen.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %datalen.i, align 1
  %25 = tail call i16 @llvm.bswap.i16(i16 %24) #7
  %value.addr.sroa.0.0.extract.shift.i.i = lshr i16 %25, 8
  %narrow.i.i = add i16 %value.addr.sroa.0.0.extract.shift.i.i, %25
  %add.i.i = trunc i16 %narrow.i.i to i8
  %add3.i.i = sub i8 0, %add.i.i
  %datalen_checksum.i = getelementptr inbounds %struct.port100_frame, ptr %18, i32 0, i32 4
  %26 = ptrtoint ptr %datalen_checksum.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %datalen_checksum.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %add3.i.i)
  %cmp7.not.i = icmp eq i8 %27, %add3.i.i
  br i1 %cmp7.not.i, label %if.end10.i, label %if.end.i.do.end19_crit_edge

if.end.i.do.end19_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19

if.end10.i:                                       ; preds = %if.end.i
  %data.i = getelementptr inbounds %struct.port100_frame, ptr %18, i32 0, i32 5
  %conv12.i = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp7.i.not.i = icmp eq i16 %24, 0
  br i1 %cmp7.i.not.i, label %if.end10.i.port100_rx_frame_is_valid.exit_crit_edge, label %if.end10.i.for.body.i.i_crit_edge

if.end10.i.for.body.i.i_crit_edge:                ; preds = %if.end10.i
  br label %for.body.i.i

if.end10.i.port100_rx_frame_is_valid.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %port100_rx_frame_is_valid.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end10.i.for.body.i.i_crit_edge
  %i.09.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end10.i.for.body.i.i_crit_edge ]
  %sum.08.i.i = phi i8 [ %add.i31.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end10.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %data.i, i32 %i.09.i.i
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i.i, align 1
  %add.i31.i = add i8 %29, %sum.08.i.i
  %inc.i.i = add nuw nsw i32 %i.09.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv12.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.port100_rx_frame_is_valid.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.i.i.port100_rx_frame_is_valid.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %port100_rx_frame_is_valid.exit

port100_rx_frame_is_valid.exit:                   ; preds = %for.body.i.i.port100_rx_frame_is_valid.exit_crit_edge, %if.end10.i.port100_rx_frame_is_valid.exit_crit_edge
  %sum.0.lcssa.i.i = phi i8 [ 0, %if.end10.i.port100_rx_frame_is_valid.exit_crit_edge ], [ %add.i31.i, %for.body.i.i.port100_rx_frame_is_valid.exit_crit_edge ]
  %add3.i.i.i = sub i8 0, %sum.0.lcssa.i.i
  %arrayidx.i = getelementptr %struct.port100_frame, ptr %18, i32 0, i32 5, i32 %conv12.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %add3.i.i.i)
  %cmp18.not.i = icmp eq i8 %31, %add3.i.i.i
  br i1 %cmp18.not.i, label %do.body24, label %port100_rx_frame_is_valid.exit.do.end19_crit_edge

port100_rx_frame_is_valid.exit.do.end19_crit_edge: ; preds = %port100_rx_frame_is_valid.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19

do.end19:                                         ; preds = %port100_rx_frame_is_valid.exit.do.end19_crit_edge, %if.end.i.do.end19_crit_edge, %lor.lhs.false.i.do.end19_crit_edge, %sw.epilog.do.end19_crit_edge
  %interface20 = getelementptr inbounds %struct.port100, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %interface20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %interface20, align 4
  %dev21 = getelementptr inbounds %struct.usb_interface, ptr %33, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.52) #10
  %34 = ptrtoint ptr %status2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -5, ptr %status2, align 4
  br label %sched_wq

do.body24:                                        ; preds = %port100_rx_frame_is_valid.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @port100_recv_response.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@port100_recv_response, %if.then36)) #7
          to label %do.end40 [label %if.then36], !srcloc !155

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %datalen.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %datalen.i, align 1
  %37 = tail call i16 @llvm.bswap.i16(i16 %36) #7
  %conv.i = zext i16 %37 to i32
  %add1.i = add nuw nsw i32 %conv.i, 10
  tail call void @print_hex_dump(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.54, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %18, i32 noundef %add1.i, i1 noundef zeroext false) #7
  br label %do.end40

do.end40:                                         ; preds = %if.then36, %do.body24
  %arrayidx.i72 = getelementptr %struct.port100_frame, ptr %18, i32 1, i32 1
  %38 = ptrtoint ptr %arrayidx.i72 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i72, align 1
  %conv.i73 = zext i8 %39 to i32
  %40 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cmd1, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %41, align 4
  %conv1.i = zext i8 %43 to i32
  %add.i = add nuw nsw i32 %conv1.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i73)
  %cmp.i = icmp eq i32 %add.i, %conv.i73
  br i1 %cmp.i, label %do.end40.sched_wq_crit_edge, label %do.end45

do.end40.sched_wq_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %sched_wq

do.end45:                                         ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #9
  %interface46 = getelementptr inbounds %struct.port100, ptr %1, i32 0, i32 4
  %44 = ptrtoint ptr %interface46 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %interface46, align 4
  %dev47 = getelementptr inbounds %struct.usb_interface, ptr %45, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev47, ptr noundef nonnull @.str.56) #10
  %46 = ptrtoint ptr %status2 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -5, ptr %status2, align 4
  br label %sched_wq

sched_wq:                                         ; preds = %do.end45, %do.end40.sched_wq_crit_edge, %do.end19, %do.end11, %if.then, %do.body
  %cmd_complete_work = getelementptr inbounds %struct.port100, ptr %1, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %47 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %47, ptr noundef %cmd_complete_work) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @port100_in_configure_hw(ptr nocapture noundef readonly %ddev, i32 noundef %type, i32 noundef %param) #2 align 64 {
entry:
  %arg.i.i9 = alloca %struct.port100_sync_cmd_response, align 4
  %arg.i.i = alloca %struct.port100_sync_cmd_response, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %type, label %entry.return_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then3
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %entry
  %conv = trunc i32 %param to i8
  %driver_data.i.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 6
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %conv.i = and i32 %param, 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %conv)
  %cmp.i = icmp ugt i8 %conv, 4
  br i1 %cmp.i, label %if.then.return_crit_edge, label %if.end.i

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.i:                                         ; preds = %if.then
  %skb_headroom.i.i = getelementptr inbounds %struct.port100, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %skb_headroom.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %skb_headroom.i.i, align 4
  %skb_tailroom.i.i = getelementptr inbounds %struct.port100, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %skb_tailroom.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %skb_tailroom.i.i, align 4
  %add.i.i = add i32 %4, 4
  %add1.i.i = add i32 %add.i.i, %6
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef %add1.i.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.return_crit_edge, label %if.end4.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end4.i:                                        ; preds = %if.end.i
  %7 = ptrtoint ptr %skb_headroom.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %skb_headroom.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %9 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 %8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %11 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %12, i32 %8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %arrayidx.i = getelementptr [6 x %struct.port100_in_rf_setting], ptr @in_rf_settings, i32 0, i32 %conv.i
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 4) #7
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %arrayidx.i, align 1
  %15 = ptrtoint ptr %call.i.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %call.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %arg.i.i) #7
  %16 = call ptr @memset(ptr %arg.i.i, i32 255, i32 60)
  %done.i.i = getelementptr inbounds %struct.port100_sync_cmd_response, ptr %arg.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %done.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %done.i.i, align 4
  %wait.i.i.i = getelementptr inbounds %struct.port100_sync_cmd_response, ptr %arg.i.i, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @init_completion.__key) #7
  %call.i23.i = call fastcc i32 @port100_send_cmd_async(ptr noundef %2, i8 noundef zeroext 0, ptr noundef nonnull %call.i.i.i, ptr noundef nonnull @port100_send_sync_complete, ptr noundef nonnull %arg.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23.i)
  %tobool.not.i24.i = icmp eq i32 %call.i23.i, 0
  br i1 %tobool.not.i24.i, label %if.end.i.i, label %if.then.i25.i

if.then.i25.i:                                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @consume_skb(ptr noundef nonnull %call.i.i.i) #7
  %18 = inttoptr i32 %call.i23.i to ptr
  br label %port100_send_cmd_sync.exit.i

if.end.i.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @wait_for_completion(ptr noundef %done.i.i) #7
  %19 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arg.i.i, align 4
  br label %port100_send_cmd_sync.exit.i

port100_send_cmd_sync.exit.i:                     ; preds = %if.end.i.i, %if.then.i25.i
  %retval.0.i.i = phi ptr [ %18, %if.then.i25.i ], [ %20, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %arg.i.i) #7
  %cmp.i.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then8.i, label %if.end10.i

if.then8.i:                                       ; preds = %port100_send_cmd_sync.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %retval.0.i.i to i32
  br label %return

if.end10.i:                                       ; preds = %port100_send_cmd_sync.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i.i, i32 0, i32 19
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 1
  %conv12.i = zext i8 %25 to i32
  call void @consume_skb(ptr noundef %retval.0.i.i) #7
  br label %return

if.then3:                                         ; preds = %entry
  %driver_data.i.i10 = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 6
  %26 = ptrtoint ptr %driver_data.i.i10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver_data.i.i10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %param)
  %cmp.i11 = icmp sgt i32 %param, 15
  br i1 %cmp.i11, label %if.then3.return_crit_edge, label %if.end.i13

if.then3.return_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.i13:                                       ; preds = %if.then3
  %arrayidx.i12 = getelementptr [17 x [20 x %struct.port100_protocol]], ptr @in_protocols, i32 0, i32 %param
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end.i13
  %num_protocols.0.i = phi i32 [ 0, %if.end.i13 ], [ %inc.i, %while.cond.i.while.cond.i_crit_edge ]
  %arrayidx1.i = getelementptr %struct.port100_protocol, ptr %arrayidx.i12, i32 %num_protocols.0.i
  %28 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx1.i, align 1
  %cmp2.not.i = icmp eq i8 %29, 20
  %inc.i = add i32 %num_protocols.0.i, 1
  br i1 %cmp2.not.i, label %while.end.i, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_protocols.0.i)
  %tobool.not.i = icmp eq i32 %num_protocols.0.i, 0
  br i1 %tobool.not.i, label %while.end.i.return_crit_edge, label %if.end5.i

while.end.i.return_crit_edge:                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end5.i:                                        ; preds = %while.end.i
  %mul.i = shl i32 %num_protocols.0.i, 1
  %skb_headroom.i.i14 = getelementptr inbounds %struct.port100, ptr %27, i32 0, i32 1
  %30 = ptrtoint ptr %skb_headroom.i.i14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %skb_headroom.i.i14, align 4
  %skb_tailroom.i.i15 = getelementptr inbounds %struct.port100, ptr %27, i32 0, i32 2
  %32 = ptrtoint ptr %skb_tailroom.i.i15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %skb_tailroom.i.i15, align 4
  %add.i.i16 = add i32 %31, %mul.i
  %add1.i.i17 = add i32 %add.i.i16, %33
  %call.i.i.i18 = tail call ptr @__alloc_skb(i32 noundef %add1.i.i17, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #7
  %tobool.not.i.i19 = icmp eq ptr %call.i.i.i18, null
  br i1 %tobool.not.i.i19, label %if.end5.i.return_crit_edge, label %if.end9.i

if.end5.i.return_crit_edge:                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end9.i:                                        ; preds = %if.end5.i
  %34 = ptrtoint ptr %skb_headroom.i.i14 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %skb_headroom.i.i14, align 4
  %data.i.i.i20 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i18, i32 0, i32 19
  %36 = ptrtoint ptr %data.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i.i.i20, align 4
  %add.ptr.i.i.i21 = getelementptr i8, ptr %37, i32 %35
  store ptr %add.ptr.i.i.i21, ptr %data.i.i.i20, align 4
  %tail.i.i.i22 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i18, i32 0, i32 16
  %38 = ptrtoint ptr %tail.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tail.i.i.i22, align 8
  %add.ptr1.i.i.i23 = getelementptr i8, ptr %39, i32 %35
  store ptr %add.ptr1.i.i.i23, ptr %tail.i.i.i22, align 8
  %call.i.i24 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i18, i32 noundef %mul.i) #7
  %40 = call ptr @memcpy(ptr %call.i.i24, ptr %arrayidx.i12, i32 %mul.i)
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %arg.i.i9) #7
  %41 = call ptr @memset(ptr %arg.i.i9, i32 255, i32 60)
  %done.i.i25 = getelementptr inbounds %struct.port100_sync_cmd_response, ptr %arg.i.i9, i32 0, i32 1
  %42 = ptrtoint ptr %done.i.i25 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %done.i.i25, align 4
  %wait.i.i.i26 = getelementptr inbounds %struct.port100_sync_cmd_response, ptr %arg.i.i9, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i.i26, ptr noundef nonnull @.str.36, ptr noundef nonnull @init_completion.__key) #7
  %call.i36.i = call fastcc i32 @port100_send_cmd_async(ptr noundef %27, i8 noundef zeroext 2, ptr noundef nonnull %call.i.i.i18, ptr noundef nonnull @port100_send_sync_complete, ptr noundef nonnull %arg.i.i9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.i)
  %tobool.not.i37.i = icmp eq i32 %call.i36.i, 0
  br i1 %tobool.not.i37.i, label %if.end.i.i27, label %if.then.i38.i

if.then.i38.i:                                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @consume_skb(ptr noundef nonnull %call.i.i.i18) #7
  %43 = inttoptr i32 %call.i36.i to ptr
  br label %port100_send_cmd_sync.exit.i30

if.end.i.i27:                                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @wait_for_completion(ptr noundef %done.i.i25) #7
  %44 = ptrtoint ptr %arg.i.i9 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arg.i.i9, align 4
  br label %port100_send_cmd_sync.exit.i30

port100_send_cmd_sync.exit.i30:                   ; preds = %if.end.i.i27, %if.then.i38.i
  %retval.0.i.i28 = phi ptr [ %43, %if.then.i38.i ], [ %45, %if.end.i.i27 ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %arg.i.i9) #7
  %cmp.i.i29 = icmp ugt ptr %retval.0.i.i28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i29, label %if.then13.i, label %if.end15.i

if.then13.i:                                      ; preds = %port100_send_cmd_sync.exit.i30
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %retval.0.i.i28 to i32
  br label %return

if.end15.i:                                       ; preds = %port100_send_cmd_sync.exit.i30
  call void @__sanitizer_cov_trace_pc() #9
  %data.i31 = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i.i28, i32 0, i32 19
  %47 = ptrtoint ptr %data.i31 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i31, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 1
  %conv17.i = zext i8 %50 to i32
  call void @consume_skb(ptr noundef %retval.0.i.i28) #7
  br label %return

return:                                           ; preds = %if.end15.i, %if.then13.i, %if.end5.i.return_crit_edge, %while.end.i.return_crit_edge, %if.then3.return_crit_edge, %if.end10.i, %if.then8.i, %if.end.i.return_crit_edge, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ %21, %if.then8.i ], [ %conv12.i, %if.end10.i ], [ -22, %if.then.return_crit_edge ], [ -12, %if.end.i.return_crit_edge ], [ %46, %if.then13.i ], [ %conv17.i, %if.end15.i ], [ -22, %if.then3.return_crit_edge ], [ 0, %while.end.i.return_crit_edge ], [ -12, %if.end5.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @port100_in_send_cmd(ptr nocapture noundef readonly %ddev, ptr noundef %skb, i16 noundef zeroext %_timeout, ptr noundef %cb, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 12) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cb, ptr %call7.i.i, align 8
  %complete_arg = getelementptr inbounds %struct.port100_cb_arg, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %complete_arg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arg, ptr %complete_arg, align 4
  %mul = mul i16 %_timeout, 10
  %5 = tail call i16 @llvm.bswap.i16(i16 %mul)
  %call3 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 2) #7
  %6 = ptrtoint ptr %call3 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 %5, ptr %call3, align 1
  %call4 = tail call fastcc i32 @port100_send_cmd_async(ptr noundef %1, i8 noundef zeroext 4, ptr noundef %skb, ptr noundef nonnull @port100_in_comm_rf_complete, ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @port100_tg_configure_hw(ptr nocapture noundef readonly %ddev, i32 noundef %type, i32 noundef %param) #2 align 64 {
entry:
  %arg.i.i9 = alloca %struct.port100_sync_cmd_response, align 4
  %arg.i.i = alloca %struct.port100_sync_cmd_response, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %type, label %entry.return_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then3
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %entry
  %conv = trunc i32 %param to i8
  %driver_data.i.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 6
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %conv.i = and i32 %param, 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %conv)
  %cmp.i = icmp ugt i8 %conv, 4
  br i1 %cmp.i, label %if.then.return_crit_edge, label %if.end.i

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.i:                                         ; preds = %if.then
  %skb_headroom.i.i = getelementptr inbounds %struct.port100, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %skb_headroom.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %skb_headroom.i.i, align 4
  %skb_tailroom.i.i = getelementptr inbounds %struct.port100, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %skb_tailroom.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %skb_tailroom.i.i, align 4
  %add.i.i = add i32 %4, 2
  %add1.i.i = add i32 %add.i.i, %6
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef %add1.i.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.return_crit_edge, label %if.end4.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end4.i:                                        ; preds = %if.end.i
  %7 = ptrtoint ptr %skb_headroom.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %skb_headroom.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %9 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 %8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %11 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %12, i32 %8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %arrayidx.i = getelementptr [6 x %struct.port100_tg_rf_setting], ptr @tg_rf_settings, i32 0, i32 %conv.i
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 2) #7
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %arrayidx.i, align 1
  %15 = ptrtoint ptr %call.i.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %14, ptr %call.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %arg.i.i) #7
  %16 = call ptr @memset(ptr %arg.i.i, i32 255, i32 60)
  %done.i.i = getelementptr inbounds %struct.port100_sync_cmd_response, ptr %arg.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %done.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %done.i.i, align 4
  %wait.i.i.i = getelementptr inbounds %struct.port100_sync_cmd_response, ptr %arg.i.i, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @init_completion.__key) #7
  %call.i23.i = call fastcc i32 @port100_send_cmd_async(ptr noundef %2, i8 noundef zeroext 64, ptr noundef nonnull %call.i.i.i, ptr noundef nonnull @port100_send_sync_complete, ptr noundef nonnull %arg.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23.i)
  %tobool.not.i24.i = icmp eq i32 %call.i23.i, 0
  br i1 %tobool.not.i24.i, label %if.end.i.i, label %if.then.i25.i

if.then.i25.i:                                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @consume_skb(ptr noundef nonnull %call.i.i.i) #7
  %18 = inttoptr i32 %call.i23.i to ptr
  br label %port100_send_cmd_sync.exit.i

if.end.i.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @wait_for_completion(ptr noundef %done.i.i) #7
  %19 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arg.i.i, align 4
  br label %port100_send_cmd_sync.exit.i

port100_send_cmd_sync.exit.i:                     ; preds = %if.end.i.i, %if.then.i25.i
  %retval.0.i.i = phi ptr [ %18, %if.then.i25.i ], [ %20, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %arg.i.i) #7
  %cmp.i.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then8.i, label %if.end10.i

if.then8.i:                                       ; preds = %port100_send_cmd_sync.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %retval.0.i.i to i32
  br label %return

if.end10.i:                                       ; preds = %port100_send_cmd_sync.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i.i, i32 0, i32 19
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 1
  %conv12.i = zext i8 %25 to i32
  call void @consume_skb(ptr noundef %retval.0.i.i) #7
  br label %return

if.then3:                                         ; preds = %entry
  %driver_data.i.i10 = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 6
  %26 = ptrtoint ptr %driver_data.i.i10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver_data.i.i10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %param)
  %cmp.i11 = icmp sgt i32 %param, 15
  br i1 %cmp.i11, label %if.then3.return_crit_edge, label %if.end.i13

if.then3.return_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.i13:                                       ; preds = %if.then3
  %arrayidx.i12 = getelementptr [17 x [4 x %struct.port100_protocol]], ptr @tg_protocols, i32 0, i32 %param
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end.i13
  %num_protocols.0.i = phi i32 [ 0, %if.end.i13 ], [ %inc.i, %while.cond.i.while.cond.i_crit_edge ]
  %arrayidx1.i = getelementptr %struct.port100_protocol, ptr %arrayidx.i12, i32 %num_protocols.0.i
  %28 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx1.i, align 1
  %cmp2.not.i = icmp eq i8 %29, 3
  %inc.i = add i32 %num_protocols.0.i, 1
  br i1 %cmp2.not.i, label %while.end.i, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_protocols.0.i)
  %tobool.not.i = icmp eq i32 %num_protocols.0.i, 0
  br i1 %tobool.not.i, label %while.end.i.return_crit_edge, label %if.end5.i

while.end.i.return_crit_edge:                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end5.i:                                        ; preds = %while.end.i
  %mul.i = shl i32 %num_protocols.0.i, 1
  %skb_headroom.i.i14 = getelementptr inbounds %struct.port100, ptr %27, i32 0, i32 1
  %30 = ptrtoint ptr %skb_headroom.i.i14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %skb_headroom.i.i14, align 4
  %skb_tailroom.i.i15 = getelementptr inbounds %struct.port100, ptr %27, i32 0, i32 2
  %32 = ptrtoint ptr %skb_tailroom.i.i15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %skb_tailroom.i.i15, align 4
  %add.i.i16 = add i32 %31, %mul.i
  %add1.i.i17 = add i32 %add.i.i16, %33
  %call.i.i.i18 = tail call ptr @__alloc_skb(i32 noundef %add1.i.i17, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #7
  %tobool.not.i.i19 = icmp eq ptr %call.i.i.i18, null
  br i1 %tobool.not.i.i19, label %if.end5.i.return_crit_edge, label %if.end9.i

if.end5.i.return_crit_edge:                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end9.i:                                        ; preds = %if.end5.i
  %34 = ptrtoint ptr %skb_headroom.i.i14 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %skb_headroom.i.i14, align 4
  %data.i.i.i20 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i18, i32 0, i32 19
  %36 = ptrtoint ptr %data.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i.i.i20, align 4
  %add.ptr.i.i.i21 = getelementptr i8, ptr %37, i32 %35
  store ptr %add.ptr.i.i.i21, ptr %data.i.i.i20, align 4
  %tail.i.i.i22 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i18, i32 0, i32 16
  %38 = ptrtoint ptr %tail.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tail.i.i.i22, align 8
  %add.ptr1.i.i.i23 = getelementptr i8, ptr %39, i32 %35
  store ptr %add.ptr1.i.i.i23, ptr %tail.i.i.i22, align 8
  %call.i.i24 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i18, i32 noundef %mul.i) #7
  %40 = call ptr @memcpy(ptr %call.i.i24, ptr %arrayidx.i12, i32 %mul.i)
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %arg.i.i9) #7
  %41 = call ptr @memset(ptr %arg.i.i9, i32 255, i32 60)
  %done.i.i25 = getelementptr inbounds %struct.port100_sync_cmd_response, ptr %arg.i.i9, i32 0, i32 1
  %42 = ptrtoint ptr %done.i.i25 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %done.i.i25, align 4
  %wait.i.i.i26 = getelementptr inbounds %struct.port100_sync_cmd_response, ptr %arg.i.i9, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i.i26, ptr noundef nonnull @.str.36, ptr noundef nonnull @init_completion.__key) #7
  %call.i36.i = call fastcc i32 @port100_send_cmd_async(ptr noundef %27, i8 noundef zeroext 66, ptr noundef nonnull %call.i.i.i18, ptr noundef nonnull @port100_send_sync_complete, ptr noundef nonnull %arg.i.i9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.i)
  %tobool.not.i37.i = icmp eq i32 %call.i36.i, 0
  br i1 %tobool.not.i37.i, label %if.end.i.i27, label %if.then.i38.i

if.then.i38.i:                                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @consume_skb(ptr noundef nonnull %call.i.i.i18) #7
  %43 = inttoptr i32 %call.i36.i to ptr
  br label %port100_send_cmd_sync.exit.i30

if.end.i.i27:                                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @wait_for_completion(ptr noundef %done.i.i25) #7
  %44 = ptrtoint ptr %arg.i.i9 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arg.i.i9, align 4
  br label %port100_send_cmd_sync.exit.i30

port100_send_cmd_sync.exit.i30:                   ; preds = %if.end.i.i27, %if.then.i38.i
  %retval.0.i.i28 = phi ptr [ %43, %if.then.i38.i ], [ %45, %if.end.i.i27 ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %arg.i.i9) #7
  %cmp.i.i29 = icmp ugt ptr %retval.0.i.i28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i29, label %if.then13.i, label %if.end15.i

if.then13.i:                                      ; preds = %port100_send_cmd_sync.exit.i30
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %retval.0.i.i28 to i32
  br label %return

if.end15.i:                                       ; preds = %port100_send_cmd_sync.exit.i30
  call void @__sanitizer_cov_trace_pc() #9
  %data.i31 = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i.i28, i32 0, i32 19
  %47 = ptrtoint ptr %data.i31 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i31, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 1
  %conv17.i = zext i8 %50 to i32
  call void @consume_skb(ptr noundef %retval.0.i.i28) #7
  br label %return

return:                                           ; preds = %if.end15.i, %if.then13.i, %if.end5.i.return_crit_edge, %while.end.i.return_crit_edge, %if.then3.return_crit_edge, %if.end10.i, %if.then8.i, %if.end.i.return_crit_edge, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ %21, %if.then8.i ], [ %conv12.i, %if.end10.i ], [ -22, %if.then.return_crit_edge ], [ -12, %if.end.i.return_crit_edge ], [ %46, %if.then13.i ], [ %conv17.i, %if.end15.i ], [ -22, %if.then3.return_crit_edge ], [ 0, %while.end.i.return_crit_edge ], [ -12, %if.end5.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @port100_tg_send_cmd(ptr nocapture noundef readonly %ddev, ptr noundef %skb, i16 noundef zeroext %timeout, ptr noundef %cb, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 12) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cb, ptr %call7.i.i, align 8
  %complete_arg = getelementptr inbounds %struct.port100_cb_arg, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %complete_arg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arg, ptr %complete_arg, align 4
  %call2 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 33) #7
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %7 = getelementptr inbounds i8, ptr %6, i32 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 27)
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 -3071, ptr %6, align 1
  %send_timeout = getelementptr inbounds %struct.port100_tg_comm_rf_cmd, ptr %6, i32 0, i32 1
  %10 = ptrtoint ptr %send_timeout to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 -1, ptr %send_timeout, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %timeout)
  %recv_timeout = getelementptr inbounds %struct.port100_tg_comm_rf_cmd, ptr %6, i32 0, i32 7
  %12 = ptrtoint ptr %recv_timeout to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %11, ptr %recv_timeout, align 1
  %call3 = tail call fastcc i32 @port100_send_cmd_async(ptr noundef %1, i8 noundef zeroext 72, ptr noundef %skb, ptr noundef nonnull @port100_tg_comm_rf_complete, ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @port100_listen(ptr nocapture noundef readonly %ddev, i16 noundef zeroext %timeout, ptr noundef %cb, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %skb_headroom.i = getelementptr inbounds %struct.port100, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %skb_headroom.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %skb_headroom.i, align 4
  %skb_tailroom.i = getelementptr inbounds %struct.port100, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %skb_tailroom.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %skb_tailroom.i, align 4
  %add1.i = add i32 %5, %3
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add1.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %skb_headroom.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %skb_headroom.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %7
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %11, i32 %7
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %12 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 12) #11
  %tobool.not.i6 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i6, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %cb, ptr %call7.i.i.i, align 8
  %complete_arg.i = getelementptr inbounds %struct.port100_cb_arg, ptr %call7.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %complete_arg.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arg, ptr %complete_arg.i, align 4
  %call2.i = tail call ptr @skb_push(ptr noundef nonnull %call.i.i, i32 noundef 33) #7
  %17 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i, align 4
  %19 = getelementptr inbounds i8, ptr %18, i32 4
  %20 = call ptr @memset(ptr %19, i32 0, i32 27)
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 -3071, ptr %18, align 1
  %send_timeout.i = getelementptr inbounds %struct.port100_tg_comm_rf_cmd, ptr %18, i32 0, i32 1
  %22 = ptrtoint ptr %send_timeout.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 -1, ptr %send_timeout.i, align 1
  %23 = tail call i16 @llvm.bswap.i16(i16 %timeout) #7
  %recv_timeout.i = getelementptr inbounds %struct.port100_tg_comm_rf_cmd, ptr %18, i32 0, i32 7
  %24 = ptrtoint ptr %recv_timeout.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %23, ptr %recv_timeout.i, align 1
  %call3.i = tail call fastcc i32 @port100_send_cmd_async(ptr noundef %13, i8 noundef zeroext 72, ptr noundef nonnull %call.i.i, ptr noundef nonnull @port100_tg_comm_rf_complete, ptr noundef nonnull %call7.i.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3.i, %if.end.i ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @port100_listen_mdaa(ptr nocapture noundef readonly %ddev, ptr nocapture noundef readonly %params, i16 noundef zeroext %timeout, ptr noundef %cb, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @port100_tg_configure_hw(ptr noundef %ddev, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @port100_tg_configure_hw(ptr noundef %ddev, i32 noundef 1, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 12) #11
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cb, ptr %call7.i.i, align 8
  %complete_arg = getelementptr inbounds %struct.port100_cb_arg, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %complete_arg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arg, ptr %complete_arg, align 4
  %mdaa = getelementptr inbounds %struct.port100_cb_arg, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %mdaa to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %mdaa, align 8
  %skb_headroom.i = getelementptr inbounds %struct.port100, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %skb_headroom.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %skb_headroom.i, align 4
  %skb_tailroom.i = getelementptr inbounds %struct.port100, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %skb_tailroom.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %skb_tailroom.i, align 4
  %add1.i = add i32 %9, %7
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add1.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %skb_headroom.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %skb_headroom.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %12 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %11
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %14 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %15, i32 %11
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call14 = tail call ptr @skb_push(ptr noundef nonnull %call.i.i, i32 noundef 33) #7
  %16 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i.i, align 4
  %send_timeout = getelementptr inbounds %struct.port100_tg_comm_rf_cmd, ptr %17, i32 0, i32 1
  %18 = call ptr @memset(ptr %17, i32 0, i32 33)
  %19 = ptrtoint ptr %send_timeout to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 -1, ptr %send_timeout, align 1
  %mdaa15 = getelementptr inbounds %struct.port100_tg_comm_rf_cmd, ptr %17, i32 0, i32 2
  %20 = ptrtoint ptr %mdaa15 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %mdaa15, align 1
  %21 = ptrtoint ptr %params to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %params, align 2
  %23 = lshr i16 %22, 8
  %conv16 = trunc i16 %23 to i8
  %nfca_param = getelementptr inbounds %struct.port100_tg_comm_rf_cmd, ptr %17, i32 0, i32 3
  %24 = ptrtoint ptr %nfca_param to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv16, ptr %nfca_param, align 1
  %25 = load i16, ptr %params, align 2
  %conv20 = trunc i16 %25 to i8
  %arrayidx22 = getelementptr %struct.port100_tg_comm_rf_cmd, ptr %17, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv20, ptr %arrayidx22, align 1
  %add.ptr = getelementptr %struct.port100_tg_comm_rf_cmd, ptr %17, i32 0, i32 3, i32 2
  %nfcid1 = getelementptr inbounds %struct.digital_tg_mdaa_params, ptr %params, i32 0, i32 1
  %27 = call ptr @memcpy(ptr %add.ptr, ptr %nfcid1, i32 3)
  %sel_res = getelementptr inbounds %struct.digital_tg_mdaa_params, ptr %params, i32 0, i32 2
  %28 = ptrtoint ptr %sel_res to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %sel_res, align 1
  %arrayidx26 = getelementptr %struct.port100_tg_comm_rf_cmd, ptr %17, i32 0, i32 3, i32 5
  %30 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx26, align 1
  %nfcf_param = getelementptr inbounds %struct.port100_tg_comm_rf_cmd, ptr %17, i32 0, i32 4
  %nfcid2 = getelementptr inbounds %struct.digital_tg_mdaa_params, ptr %params, i32 0, i32 3
  %31 = ptrtoint ptr %nfcid2 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %32 = load i64, ptr %nfcid2, align 2
  %33 = ptrtoint ptr %nfcf_param to i32
  call void @__asan_storeN_noabort(i32 %33, i32 8)
  store i64 %32, ptr %nfcf_param, align 1
  %sc = getelementptr inbounds %struct.digital_tg_mdaa_params, ptr %params, i32 0, i32 4
  %34 = ptrtoint ptr %sc to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %sc, align 2
  %36 = lshr i16 %35, 8
  %conv32 = trunc i16 %36 to i8
  %arrayidx34 = getelementptr %struct.port100_tg_comm_rf_cmd, ptr %17, i32 0, i32 4, i32 16
  %37 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv32, ptr %arrayidx34, align 1
  %38 = load i16, ptr %sc, align 2
  %conv38 = trunc i16 %38 to i8
  %arrayidx40 = getelementptr %struct.port100_tg_comm_rf_cmd, ptr %17, i32 0, i32 4, i32 17
  %39 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv38, ptr %arrayidx40, align 1
  %40 = tail call i16 @llvm.bswap.i16(i16 %timeout)
  %recv_timeout = getelementptr inbounds %struct.port100_tg_comm_rf_cmd, ptr %17, i32 0, i32 7
  %41 = ptrtoint ptr %recv_timeout to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 %40, ptr %recv_timeout, align 1
  %call41 = tail call fastcc i32 @port100_send_cmd_async(ptr noundef %1, i8 noundef zeroext 72, ptr noundef nonnull %call.i.i, ptr noundef nonnull @port100_tg_comm_rf_complete, ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then12, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call41, %if.end13 ], [ -12, %if.then12 ], [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @port100_switch_rf(ptr nocapture noundef readonly %ddev, i1 noundef zeroext %on) #2 align 64 {
entry:
  %arg.i = alloca %struct.port100_sync_cmd_response, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %skb_headroom.i = getelementptr inbounds %struct.port100, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %skb_headroom.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %skb_headroom.i, align 4
  %skb_tailroom.i = getelementptr inbounds %struct.port100, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %skb_tailroom.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %skb_tailroom.i, align 4
  %add.i = add i32 %3, 1
  %add1.i = add i32 %add.i, %5
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add1.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %skb_headroom.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %skb_headroom.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %7
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %11, i32 %7
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %conv = zext i1 %on to i8
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 1) #7
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %call.i, align 1
  br i1 %on, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @port100_abort_cmd(ptr noundef %ddev)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %arg.i) #7
  %13 = call ptr @memset(ptr %arg.i, i32 255, i32 60)
  %done.i = getelementptr inbounds %struct.port100_sync_cmd_response, ptr %arg.i, i32 0, i32 1
  %14 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %done.i, align 4
  %wait.i.i = getelementptr inbounds %struct.port100_sync_cmd_response, ptr %arg.i, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @init_completion.__key) #7
  %call.i20 = call fastcc i32 @port100_send_cmd_async(ptr noundef %1, i8 noundef zeroext 6, ptr noundef nonnull %call.i.i, ptr noundef nonnull @port100_send_sync_complete, ptr noundef nonnull %arg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %tobool.not.i21 = icmp eq i32 %call.i20, 0
  br i1 %tobool.not.i21, label %if.end.i, label %if.then.i22

if.then.i22:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  call void @consume_skb(ptr noundef nonnull %call.i.i) #7
  %15 = inttoptr i32 %call.i20 to ptr
  br label %port100_send_cmd_sync.exit

if.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  call void @wait_for_completion(ptr noundef %done.i) #7
  %16 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arg.i, align 4
  br label %port100_send_cmd_sync.exit

port100_send_cmd_sync.exit:                       ; preds = %if.end.i, %if.then.i22
  %retval.0.i = phi ptr [ %15, %if.then.i22 ], [ %17, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %arg.i) #7
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %port100_send_cmd_sync.exit
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %retval.0.i to i32
  br label %cleanup

if.end10:                                         ; preds = %port100_send_cmd_sync.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @consume_skb(ptr noundef %retval.0.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %18, %if.then8 ], [ 0, %if.end10 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @port100_abort_cmd(ptr nocapture noundef readonly %ddev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %out_urb_lock.i = getelementptr inbounds %struct.port100, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %out_urb_lock.i, i32 noundef 0) #7
  %cmd_cancel.i = getelementptr inbounds %struct.port100, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %cmd_cancel.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cmd_cancel.i, align 4, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then8.critedge.i

if.then.i:                                        ; preds = %entry
  %cmd_cancel_done.i = getelementptr inbounds %struct.port100, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %cmd_cancel_done.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %cmd_cancel_done.i, align 4
  %out_urb.i = getelementptr inbounds %struct.port100, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %out_urb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %out_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %6) #7
  %7 = ptrtoint ptr %out_urb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %out_urb.i, align 4
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %8, i32 0, i32 14
  %9 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ack_frame, ptr %transfer_buffer.i, align 4
  %10 = load ptr, ptr %out_urb.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 19
  %11 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 6, ptr %transfer_buffer_length.i, align 4
  %12 = load ptr, ptr %out_urb.i, align 4
  %call.i = tail call i32 @usb_submit_urb(ptr noundef %12, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  %frombool.i = zext i1 %tobool4.not.i to i8
  %13 = ptrtoint ptr %cmd_cancel.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool.i, ptr %cmd_cancel.i, align 4
  tail call void @mutex_unlock(ptr noundef %out_urb_lock.i) #7
  br i1 %tobool4.not.i, label %if.then.i.if.then8.i_crit_edge, label %if.then.i.port100_send_ack.exit_crit_edge

if.then.i.port100_send_ack.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %port100_send_ack.exit

if.then.i.if.then8.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

if.then8.critedge.i:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %out_urb_lock.i) #7
  br label %if.then8.i

if.then8.i:                                       ; preds = %if.then8.critedge.i, %if.then.i.if.then8.i_crit_edge
  %cmd_cancel_done9.i = getelementptr inbounds %struct.port100, ptr %1, i32 0, i32 12
  tail call void @wait_for_completion(ptr noundef %cmd_cancel_done9.i) #7
  br label %port100_send_ack.exit

port100_send_ack.exit:                            ; preds = %if.then8.i, %if.then.i.port100_send_ack.exit_crit_edge
  %in_urb = getelementptr inbounds %struct.port100, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %in_urb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %in_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %15) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @port100_in_comm_rf_complete(ptr nocapture noundef readonly %dev, ptr noundef %arg, ptr noundef %resp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 4
  %cmp.i = icmp ugt ptr %resp, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %resp, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ult i32 %3, 4
  br i1 %cmp, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %interface = getelementptr inbounds %struct.port100, ptr %dev, i32 0, i32 4
  %4 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %interface, align 4
  %dev3 = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.59) #10
  br label %error

if.end4:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %resp, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %call5 = tail call ptr @skb_pull(ptr noundef %resp, i32 noundef 4) #7
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %9, label %do.end13 [
    i32 -2147483648, label %if.end4.error_crit_edge
    i32 0, label %if.end16
  ]

if.end4.error_crit_edge:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

do.end13:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %11 = tail call i32 @llvm.bswap.i32(i32 %9)
  %interface14 = getelementptr inbounds %struct.port100, ptr %dev, i32 0, i32 4
  %12 = ptrtoint ptr %interface14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %interface14, align 4
  %dev15 = getelementptr inbounds %struct.usb_interface, ptr %13, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.62, i32 noundef %11) #10
  br label %error

if.end16:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = tail call ptr @skb_pull(ptr noundef %resp, i32 noundef 1) #7
  br label %exit

error:                                            ; preds = %do.end13, %if.end4.error_crit_edge, %do.end
  %rc.0 = phi ptr [ inttoptr (i32 -5 to ptr), %do.end ], [ inttoptr (i32 -5 to ptr), %do.end13 ], [ inttoptr (i32 -110 to ptr), %if.end4.error_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %resp, i32 noundef 0) #7
  br label %exit

exit:                                             ; preds = %error, %if.end16, %entry.exit_crit_edge
  %resp.addr.0 = phi ptr [ %rc.0, %error ], [ %resp, %if.end16 ], [ %resp, %entry.exit_crit_edge ]
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %complete_arg = getelementptr inbounds %struct.port100_cb_arg, ptr %arg, i32 0, i32 1
  %16 = ptrtoint ptr %complete_arg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %complete_arg, align 4
  tail call void %1(ptr noundef %15, ptr noundef %17, ptr noundef %resp.addr.0) #7
  tail call void @kfree(ptr noundef %arg) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @port100_tg_comm_rf_complete(ptr nocapture noundef readonly %dev, ptr noundef %arg, ptr noundef %resp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 4
  %cmp.i = icmp ugt ptr %resp, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %resp, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %status1 = getelementptr inbounds %struct.port100_tg_comm_rf_res, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %status1 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %status1, align 1
  %mdaa = getelementptr inbounds %struct.port100_cb_arg, ptr %arg, i32 0, i32 2
  %6 = ptrtoint ptr %mdaa to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mdaa, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %target_activated = getelementptr inbounds %struct.port100_tg_comm_rf_res, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %target_activated to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %target_activated, align 1
  %cmd_type.i = getelementptr inbounds %struct.port100, ptr %dev, i32 0, i32 9
  %10 = ptrtoint ptr %cmd_type.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %cmd_type.i, align 4
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.73)
  switch i8 %11, label %port100_tg_target_activated.exit.thread [
    i8 0, label %land.lhs.true.port100_tg_target_activated.exit_crit_edge
    i8 1, label %sw.bb1.i
  ]

land.lhs.true.port100_tg_target_activated.exit_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %port100_tg_target_activated.exit

sw.bb1.i:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %port100_tg_target_activated.exit

port100_tg_target_activated.exit.thread:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %interface.i = getelementptr inbounds %struct.port100, ptr %dev, i32 0, i32 4
  %13 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %interface.i, align 4
  %dev2.i = getelementptr inbounds %struct.usb_interface, ptr %14, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.64) #10
  br label %if.then3

port100_tg_target_activated.exit:                 ; preds = %sw.bb1.i, %land.lhs.true.port100_tg_target_activated.exit_crit_edge
  %mask.0.i = phi i32 [ 3, %sw.bb1.i ], [ 1, %land.lhs.true.port100_tg_target_activated.exit_crit_edge ]
  %conv3.i = zext i8 %9 to i32
  %and.i = and i32 %mask.0.i, %conv3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %mask.0.i)
  %cmp.i27 = icmp eq i32 %and.i, %mask.0.i
  br i1 %cmp.i27, label %port100_tg_target_activated.exit.if.end5_crit_edge, label %port100_tg_target_activated.exit.if.then3_crit_edge

port100_tg_target_activated.exit.if.then3_crit_edge: ; preds = %port100_tg_target_activated.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

port100_tg_target_activated.exit.if.end5_crit_edge: ; preds = %port100_tg_target_activated.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3:                                         ; preds = %port100_tg_target_activated.exit.if.then3_crit_edge, %port100_tg_target_activated.exit.thread
  tail call void @kfree_skb_reason(ptr noundef %resp, i32 noundef 0) #7
  br label %exit

if.end5:                                          ; preds = %port100_tg_target_activated.exit.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %call6 = tail call ptr @skb_pull(ptr noundef %resp, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end5.exit_crit_edge, label %if.then8

if.end5.exit_crit_edge:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree_skb_reason(ptr noundef %resp, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %5)
  %cmp9 = icmp eq i32 %5, -2147483648
  %spec.select = select i1 %cmp9, ptr inttoptr (i32 -110 to ptr), ptr inttoptr (i32 -5 to ptr)
  br label %exit

exit:                                             ; preds = %if.then8, %if.end5.exit_crit_edge, %if.then3, %entry.exit_crit_edge
  %resp.addr.0 = phi ptr [ %resp, %entry.exit_crit_edge ], [ %resp, %if.end5.exit_crit_edge ], [ inttoptr (i32 -110 to ptr), %if.then3 ], [ %spec.select, %if.then8 ]
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %complete_arg = getelementptr inbounds %struct.port100_cb_arg, ptr %arg, i32 0, i32 1
  %17 = ptrtoint ptr %complete_arg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %complete_arg, align 4
  tail call void %1(ptr noundef %16, ptr noundef %18, ptr noundef %resp.addr.0) #7
  tail call void @kfree(ptr noundef %arg) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_digital_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !72, !73, !74, !75, !77, !78, !79, !80, !82, !83, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !103, !104, !105, !107, !108, !110, !111, !112, !114, !116, !118, !120, !121, !122, !123, !125, !126, !127, !129, !131, !133, !134, !135, !136, !138, !140, !141, !142, !143}
!llvm.module.flags = !{!145, !146, !147, !148, !149, !150, !151, !152}
!llvm.ident = !{!153}

!0 = !{ptr @__initcall__kmod_port100__285_1653_port100_driver_init6, !1, !"__initcall__kmod_port100__285_1653_port100_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/nfc/port100.c", i32 1653, i32 1}
!2 = !{ptr @__exitcall_port100_driver_exit, !1, !"__exitcall_port100_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description286, !4, !"__UNIQUE_ID_description286", i1 false, i1 false}
!4 = !{!"../drivers/nfc/port100.c", i32 1655, i32 1}
!5 = !{ptr @__UNIQUE_ID_version287, !6, !"__UNIQUE_ID_version287", i1 false, i1 false}
!6 = !{!"../drivers/nfc/port100.c", i32 1656, i32 1}
!7 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__modver_attr, !6, !"__modver_attr", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_file288, !12, !"__UNIQUE_ID_file288", i1 false, i1 false}
!12 = !{!"../drivers/nfc/port100.c", i32 1657, i32 1}
!13 = !{ptr @__UNIQUE_ID_license289, !12, !"__UNIQUE_ID_license289", i1 false, i1 false}
!14 = !{ptr @port100_driver, !15, !"port100_driver", i1 false, i1 false}
!15 = !{!"../drivers/nfc/port100.c", i32 1646, i32 26}
!16 = !{ptr @port100_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/nfc/port100.c", i32 1506, i32 2}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/nfc/port100.c", i32 1524, i32 3}
!21 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @port100_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @port100_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/nfc/port100.c", i32 1534, i32 3}
!29 = !{ptr @port100_probe._entry.9, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @port100_probe._entry_ptr.11, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @port100_probe.__key.12, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/nfc/port100.c", i32 1552, i32 2}
!33 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/nfc/port100.c", i32 1559, i32 3}
!36 = !{ptr @port100_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @port100_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/nfc/port100.c", i32 1572, i32 3}
!40 = !{ptr @port100_probe._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @port100_probe._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/nfc/port100.c", i32 1580, i32 3}
!44 = !{ptr @port100_probe._entry.20, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @port100_probe._entry_ptr.22, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/nfc/port100.c", i32 1583, i32 2}
!48 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @port100_probe._entry.23, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @port100_probe._entry_ptr.26, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/nfc/port100.c", i32 1593, i32 3}
!53 = !{ptr @port100_probe._entry.27, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @port100_probe._entry_ptr.29, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/nfc/port100.c", i32 1604, i32 3}
!57 = !{ptr @port100_probe._entry.30, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @port100_probe._entry_ptr.32, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/nfc/port100.c", i32 945, i32 3}
!61 = !{ptr @.str.34, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @port100_send_complete.__UNIQUE_ID_ddebug284, !60, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!63 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/nfc/port100.c", i32 950, i32 3}
!65 = !{ptr @port100_send_complete._entry, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @port100_send_complete._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @init_completion.__key, !68, !"__key", i1 false, i1 false}
!68 = !{!"../include/linux/completion.h", i32 87, i32 2}
!69 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/nfc/port100.c", i32 853, i32 3}
!72 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @port100_send_cmd_async._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @port100_send_cmd_async._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/nfc/port100.c", i32 780, i32 2}
!77 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @port100_send_frame_async.__UNIQUE_ID_ddebug283, !76, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!79 = !{ptr @.str.41, !76, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/nfc/port100.c", i32 681, i32 3}
!82 = !{ptr @port100_recv_ack.__UNIQUE_ID_ddebug282, !81, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!83 = !{ptr @port100_recv_ack._entry, !84, !"_entry", i1 false, i1 false}
!84 = !{!"../drivers/nfc/port100.c", i32 686, i32 3}
!85 = !{ptr @port100_recv_ack._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/nfc/port100.c", i32 694, i32 3}
!88 = !{ptr @port100_recv_ack._entry.43, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @port100_recv_ack._entry_ptr.45, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/nfc/port100.c", i32 701, i32 3}
!92 = !{ptr @port100_recv_ack._entry.46, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @port100_recv_ack._entry_ptr.48, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/nfc/port100.c", i32 627, i32 3}
!96 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @port100_recv_response.__UNIQUE_ID_ddebug280, !95, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!98 = !{ptr @port100_recv_response._entry, !99, !"_entry", i1 false, i1 false}
!99 = !{!"../drivers/nfc/port100.c", i32 632, i32 3}
!100 = !{ptr @port100_recv_response._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/nfc/port100.c", i32 640, i32 3}
!103 = !{ptr @port100_recv_response._entry.51, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @port100_recv_response._entry_ptr.53, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.54, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/nfc/port100.c", i32 645, i32 2}
!107 = !{ptr @port100_recv_response.__UNIQUE_ID_ddebug281, !106, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!108 = !{ptr @.str.56, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/nfc/port100.c", i32 649, i32 3}
!110 = !{ptr @port100_recv_response._entry.55, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @port100_recv_response._entry_ptr.57, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @port100_digital_ops, !113, !"port100_digital_ops", i1 false, i1 false}
!113 = !{!"../drivers/nfc/port100.c", i32 1469, i32 37}
!114 = !{ptr @in_rf_settings, !115, !"in_rf_settings", i1 false, i1 false}
!115 = !{!"../drivers/nfc/port100.c", i32 118, i32 43}
!116 = !{ptr @in_protocols, !117, !"in_protocols", i1 false, i1 false}
!117 = !{!"../drivers/nfc/port100.c", i32 221, i32 1}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/nfc/port100.c", i32 1169, i32 3}
!120 = !{ptr @.str.60, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @port100_in_comm_rf_complete._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @port100_in_comm_rf_complete._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.62, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/nfc/port100.c", i32 1185, i32 3}
!125 = !{ptr @port100_in_comm_rf_complete._entry.61, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @port100_in_comm_rf_complete._entry_ptr.63, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @tg_rf_settings, !128, !"tg_rf_settings", i1 false, i1 false}
!128 = !{!"../drivers/nfc/port100.c", i32 167, i32 43}
!129 = !{ptr @tg_protocols, !130, !"tg_protocols", i1 false, i1 false}
!130 = !{!"../drivers/nfc/port100.c", i32 395, i32 1}
!131 = !{ptr @.str.64, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/nfc/port100.c", i32 1325, i32 3}
!133 = !{ptr @.str.65, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @port100_tg_target_activated._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @port100_tg_target_activated._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @ack_frame, !137, !"ack_frame", i1 false, i1 false}
!137 = !{!"../drivers/nfc/port100.c", i32 44, i32 11}
!138 = !{ptr @.str.66, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/nfc/port100.c", i32 1643, i32 2}
!140 = !{ptr @.str.67, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @port100_disconnect._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @port100_disconnect._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @port100_table, !144, !"port100_table", i1 false, i1 false}
!144 = !{!"../drivers/nfc/port100.c", i32 1482, i32 35}
!145 = !{i32 1, !"wchar_size", i32 2}
!146 = !{i32 1, !"min_enum_size", i32 4}
!147 = !{i32 8, !"branch-target-enforcement", i32 0}
!148 = !{i32 8, !"sign-return-address", i32 0}
!149 = !{i32 8, !"sign-return-address-all", i32 0}
!150 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!151 = !{i32 7, !"uwtable", i32 1}
!152 = !{i32 7, !"frame-pointer", i32 2}
!153 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!154 = !{i8 0, i8 2}
!155 = !{i64 2148994846, i64 2148994851, i64 2148994864, i64 2148994908, i64 2148994942, i64 2148994963}
