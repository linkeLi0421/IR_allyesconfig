; ModuleID = '/llk/IR_all_yes/drivers/bluetooth/bfusb.c_pt.bc'
source_filename = "../drivers/bluetooth/bfusb.c"
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
%struct.atomic_t = type { i32 }
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
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.bfusb_data = type { ptr, i32, ptr, i32, i32, i32, %struct.rwlock_t, %struct.sk_buff_head, ptr, %struct.atomic_t, %struct.sk_buff_head, %struct.sk_buff_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, i16, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bdaddr_t = type { [6 x i8] }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }

@__initcall__kmod_bfusb__500_719_bfusb_driver_init6 = internal global ptr @bfusb_driver_init, section ".initcall6.init", align 4
@bfusb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @bfusb_probe, ptr @bfusb_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bfusb_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 32 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_bfusb_driver_exit = internal global ptr @bfusb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author501 = internal constant [51 x i8] c"bfusb.author=Marcel Holtmann <marcel@holtmann.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description502 = internal constant [48 x i8] c"bfusb.description=BlueFRITZ! USB driver ver 1.2\00", section ".modinfo", align 1
@__UNIQUE_ID_version503 = internal constant [18 x i8] c"bfusb.version=1.2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bfusb\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.2\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file504 = internal constant [35 x i8] c"bfusb.file=drivers/bluetooth/bfusb\00", section ".modinfo", align 1
@__UNIQUE_ID_license505 = internal constant [18 x i8] c"bfusb.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware506 = internal constant [27 x i8] c"bfusb.firmware=bfubase.frm\00", section ".modinfo", align 1
@bfusb_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1404, i16 8704, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@bfusb_probe.__UNIQUE_ID_ddebug497 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 -105, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bfusb_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/bluetooth/bfusb.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"intf %p id %p\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Bulk endpoints not found\0A\00", [38 x i8] zeroinitializer }, align 32
@bfusb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bfubase.frm\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Firmware request failed\0A\00", [39 x i8] zeroinitializer }, align 32
@bfusb_probe.__UNIQUE_ID_ddebug498 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.10, i8 0, i8 -95, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"firmware data %p size %zu\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Firmware loading failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Can't allocate HCI device\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Can't register HCI device\0A\00", [37 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@bfusb_load_firmware.__UNIQUE_ID_ddebug494 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.15, ptr @.str.4, ptr @.str.16, i8 0, i8 -125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bfusb_load_firmware\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bfusb %p udev %p\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"BlueFRITZ! USB loading firmware\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Can't allocate memory chunk for firmware\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Can't change to loading configuration\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error in firmware loading\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error in null packet request\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Can't change to running configuration\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"BlueFRITZ! USB device ready\0A\00", [35 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@bfusb_open.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.24, ptr @.str.4, ptr @.str.25, i8 0, i8 101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bfusb_open\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hdev %p bfusb %p\0A\00", [46 x i8] zeroinitializer }, align 32
@bfusb_rx_submit.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.26, ptr @.str.4, ptr @.str.27, i8 0, i8 51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bfusb_rx_submit\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bfusb %p urb %p\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: bulk rx submit failed urb %p err %d\0A\00", [55 x i8] zeroinitializer }, align 32
@bfusb_rx_complete.__UNIQUE_ID_ddebug487 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.29, ptr @.str.4, ptr @.str.30, i8 0, i8 85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bfusb_rx_complete\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bfusb %p urb %p skb %p len %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: block extends over URB buffer ranges\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: bulk resubmit failed urb %p err %d\0A\00", [56 x i8] zeroinitializer }, align 32
@bfusb_recv_block.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.4, ptr @.str.34, i8 0, i8 61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bfusb_recv_block\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"bfusb %p hdr 0x%02x data %p len %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: error in block\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: unexpected start block\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: no packet type found\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: event block is too short\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: data block is too short\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: audio block is too short\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: no memory for the packet\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: unexpected continuation block\0A\00", [61 x i8] zeroinitializer }, align 32
@bfusb_close.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.43, ptr @.str.4, ptr @.str.25, i8 0, i8 109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bfusb_close\00", [20 x i8] zeroinitializer }, align 32
@bfusb_unlink_urbs.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.44, ptr @.str.4, ptr @.str.45, i8 0, i8 24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bfusb_unlink_urbs\00", [46 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bfusb %p\0A\00", [22 x i8] zeroinitializer }, align 32
@bfusb_get_completed.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.46, ptr @.str.4, ptr @.str.45, i8 0, i8 20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bfusb_get_completed\00", [44 x i8] zeroinitializer }, align 32
@bfusb_flush.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.47, ptr @.str.4, ptr @.str.25, i8 0, i8 106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bfusb_flush\00", [20 x i8] zeroinitializer }, align 32
@bfusb_send_frame.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.48, ptr @.str.4, ptr @.str.49, i8 0, i8 114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bfusb_send_frame\00", [47 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"hdev %p skb %p type %d len %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Can't allocate memory for new packet\0A\00", [54 x i8] zeroinitializer }, align 32
@bfusb_tx_wakeup.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.51, ptr @.str.4, ptr @.str.45, i8 0, i8 37, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bfusb_tx_wakeup\00", [16 x i8] zeroinitializer }, align 32
@bfusb_send_bulk.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.52, ptr @.str.4, ptr @.str.53, i8 0, i8 29, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bfusb_send_bulk\00", [16 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bfusb %p skb %p len %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: bulk tx submit failed urb %p err %d\0A\00", [55 x i8] zeroinitializer }, align 32
@bfusb_tx_complete.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.55, ptr @.str.4, ptr @.str.30, i8 0, i8 44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bfusb_tx_complete\00", [46 x i8] zeroinitializer }, align 32
@bfusb_disconnect.__UNIQUE_ID_ddebug499 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.56, ptr @.str.4, ptr @.str.57, i8 0, i8 -82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bfusb_disconnect\00", [47 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"intf %p\0A\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.58 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 3, i64 4]
@___asan_gen_.59 = private unnamed_addr constant [13 x i8] c"bfusb_driver\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 711, i32 26 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 723, i32 1 }
@___asan_gen_.71 = private unnamed_addr constant [12 x i8] c"bfusb_table\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 30, i32 35 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 607, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 617, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 634, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 642, i32 34 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 643, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 647, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 650, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 659, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 677, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 1984, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 524, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 526, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 530, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 538, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 556, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 567, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 576, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 582, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 407, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 207, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 235, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 341, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 369, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 393, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 247, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 250, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 262, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 268, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 280, i32 5 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 290, i32 5 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 300, i32 5 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 308, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 317, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 438, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 99, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 83, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 426, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 456, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 479, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 150, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 117, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 136, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 178, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.243 = private constant [29 x i8] c"../drivers/bluetooth/bfusb.c\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 698, i32 2 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @__UNIQUE_ID_author501, ptr @__UNIQUE_ID_description502, ptr @__UNIQUE_ID_file504, ptr @__UNIQUE_ID_firmware506, ptr @__UNIQUE_ID_license505, ptr @__UNIQUE_ID_version503, ptr @__exitcall_bfusb_driver_exit, ptr @__initcall__kmod_bfusb__500_719_bfusb_driver_init6, ptr @__modver_attr, ptr @bfusb_driver_exit, ptr @bfusb_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @bfusb_table, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @bfusb_probe.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @skb_queue_head_init.__key, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfusb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfusb_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfusb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bfusb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @bfusb_driver, ptr noundef null, ptr noundef nonnull @.str.1) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bfusb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_deregister(ptr noundef nonnull @bfusb_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfusb_probe(ptr noundef %intf, ptr noundef %id) #2 align 64 {
entry:
  %firmware = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %firmware) #8
  %0 = ptrtoint ptr %firmware to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %firmware, align 4, !annotation !148
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %1 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %2, i32 -128
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bfusb_probe.__UNIQUE_ID_ddebug497, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bfusb_probe, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !149

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bfusb_probe.__UNIQUE_ID_ddebug497, ptr noundef nonnull @.str.5, ptr noundef %intf, ptr noundef %id) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %3 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp = icmp ult i8 %6, 2
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %4, i32 0, i32 3
  %7 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %endpoint, align 4
  %tobool11.not = icmp eq ptr %8, null
  %arrayidx10 = getelementptr %struct.usb_host_endpoint, ptr %8, i32 1
  %tobool12.not = icmp eq ptr %arrayidx10, null
  %or.cond = or i1 %tobool11.not, %tobool12.not
  br i1 %or.cond, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.6) #8
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 244, i32 noundef 3520) #8
  %tobool16.not = icmp eq ptr %call.i, null
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %if.end18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %udev19 = getelementptr inbounds %struct.bfusb_data, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %udev19 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr.i, ptr %udev19, align 4
  %bEndpointAddress = getelementptr %struct.usb_host_endpoint, ptr %8, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bEndpointAddress, align 2
  %conv21 = zext i8 %11 to i32
  %bulk_in_ep22 = getelementptr inbounds %struct.bfusb_data, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %bulk_in_ep22 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv21, ptr %bulk_in_ep22, align 4
  %bEndpointAddress24 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %8, i32 0, i32 2
  %13 = ptrtoint ptr %bEndpointAddress24 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bEndpointAddress24, align 2
  %conv25 = zext i8 %14 to i32
  %bulk_out_ep26 = getelementptr inbounds %struct.bfusb_data, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %bulk_out_ep26 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv25, ptr %bulk_out_ep26, align 4
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %8, i32 0, i32 4
  %16 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %wMaxPacketSize, align 4
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %conv28 = zext i16 %18 to i32
  %bulk_pkt_size = getelementptr inbounds %struct.bfusb_data, ptr %call.i, i32 0, i32 5
  %19 = ptrtoint ptr %bulk_pkt_size to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv28, ptr %bulk_pkt_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool30.not = icmp eq i16 %17, 0
  br i1 %tobool30.not, label %if.end18.cleanup_crit_edge, label %do.body33

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body33:                                        ; preds = %if.end18
  %lock = getelementptr inbounds %struct.bfusb_data, ptr %call.i, i32 0, i32 6
  tail call void @__rwlock_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @bfusb_probe.__key) #8
  %reassembly = getelementptr inbounds %struct.bfusb_data, ptr %call.i, i32 0, i32 8
  %20 = ptrtoint ptr %reassembly to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %reassembly, align 4
  %transmit_q = getelementptr inbounds %struct.bfusb_data, ptr %call.i, i32 0, i32 7
  %lock.i = getelementptr inbounds %struct.bfusb_data, ptr %call.i, i32 0, i32 7, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #8
  %21 = ptrtoint ptr %transmit_q to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %transmit_q, ptr %transmit_q, align 4
  %prev.i.i = getelementptr inbounds %struct.bfusb_data, ptr %call.i, i32 0, i32 7, i32 0, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %transmit_q, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.bfusb_data, ptr %call.i, i32 0, i32 7, i32 1
  %23 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %qlen.i.i, align 4
  %pending_q = getelementptr inbounds %struct.bfusb_data, ptr %call.i, i32 0, i32 10
  %lock.i122 = getelementptr inbounds %struct.bfusb_data, ptr %call.i, i32 0, i32 10, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i122, ptr noundef nonnull @.str.14, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #8
  %24 = ptrtoint ptr %pending_q to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %pending_q, ptr %pending_q, align 4
  %prev.i.i123 = getelementptr inbounds %struct.bfusb_data, ptr %call.i, i32 0, i32 10, i32 0, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i123 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %pending_q, ptr %prev.i.i123, align 4
  %qlen.i.i124 = getelementptr inbounds %struct.bfusb_data, ptr %call.i, i32 0, i32 10, i32 1
  %26 = ptrtoint ptr %qlen.i.i124 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %qlen.i.i124, align 4
  %completed_q = getelementptr inbounds %struct.bfusb_data, ptr %call.i, i32 0, i32 11
  %lock.i125 = getelementptr inbounds %struct.bfusb_data, ptr %call.i, i32 0, i32 11, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i125, ptr noundef nonnull @.str.14, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #8
  %27 = ptrtoint ptr %completed_q to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %completed_q, ptr %completed_q, align 4
  %prev.i.i126 = getelementptr inbounds %struct.bfusb_data, ptr %call.i, i32 0, i32 11, i32 0, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i126 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %completed_q, ptr %prev.i.i126, align 4
  %qlen.i.i127 = getelementptr inbounds %struct.bfusb_data, ptr %call.i, i32 0, i32 11, i32 1
  %29 = ptrtoint ptr %qlen.i.i127 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %qlen.i.i127, align 4
  %call37 = call i32 @request_firmware(ptr noundef nonnull %firmware, ptr noundef nonnull @.str.8, ptr noundef %2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.then40, label %do.body42

if.then40:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.9) #8
  br label %cleanup

do.body42:                                        ; preds = %do.body33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bfusb_probe.__UNIQUE_ID_ddebug498, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bfusb_probe, %if.then54)) #8
          to label %do.end58 [label %if.then54], !srcloc !149

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %firmware, align 4
  %data55 = getelementptr inbounds %struct.firmware, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %data55 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data55, align 4
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %31, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bfusb_probe.__UNIQUE_ID_ddebug498, ptr noundef nonnull @.str.10, ptr noundef %33, i32 noundef %35) #8
  br label %do.end58

do.end58:                                         ; preds = %if.then54, %do.body42
  %36 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %firmware, align 4
  %data59 = getelementptr inbounds %struct.firmware, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %data59 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data59, align 4
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %37, align 4
  %call61 = call fastcc i32 @bfusb_load_firmware(ptr noundef nonnull %call.i, ptr noundef %39, i32 noundef %41)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11) #8
  %42 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %firmware, align 4
  call void @release_firmware(ptr noundef %43) #8
  br label %cleanup

if.end65:                                         ; preds = %do.end58
  %44 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %firmware, align 4
  call void @release_firmware(ptr noundef %45) #8
  %call.i128 = call ptr @hci_alloc_dev_priv(i32 noundef 0) #8
  %tobool67.not = icmp eq ptr %call.i128, null
  br i1 %tobool67.not, label %if.then68, label %if.end69

if.then68:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.12) #8
  br label %cleanup

if.end69:                                         ; preds = %if.end65
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i128, ptr %call.i, align 4
  %bus = getelementptr inbounds %struct.hci_dev, ptr %call.i128, i32 0, i32 5
  %47 = ptrtoint ptr %bus to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %bus, align 2
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %call.i128, i32 0, i32 204, i32 8
  %48 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.hci_dev, ptr %call.i128, i32 0, i32 204, i32 1
  %49 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %dev, ptr %parent, align 8
  %open = getelementptr inbounds %struct.hci_dev, ptr %call.i128, i32 0, i32 232
  %50 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @bfusb_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.hci_dev, ptr %call.i128, i32 0, i32 233
  %51 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @bfusb_close, ptr %close, align 4
  %flush = getelementptr inbounds %struct.hci_dev, ptr %call.i128, i32 0, i32 234
  %52 = ptrtoint ptr %flush to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @bfusb_flush, ptr %flush, align 8
  %send = getelementptr inbounds %struct.hci_dev, ptr %call.i128, i32 0, i32 237
  %53 = ptrtoint ptr %send to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @bfusb_send_frame, ptr %send, align 4
  %quirks = getelementptr inbounds %struct.hci_dev, ptr %call.i128, i32 0, i32 118
  call void @_set_bit(i32 noundef 4, ptr noundef %quirks) #8
  %call73 = call i32 @hci_register_dev(ptr noundef nonnull %call.i128) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.13) #8
  call void @hci_free_dev(ptr noundef nonnull %call.i128) #8
  br label %cleanup

if.end77:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i129 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %54 = ptrtoint ptr %driver_data.i.i129 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i, ptr %driver_data.i.i129, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %if.then76, %if.then68, %if.then64, %if.then40, %if.end18.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.then13, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end77 ], [ -5, %do.end.cleanup_crit_edge ], [ -12, %if.end14.cleanup_crit_edge ], [ -5, %if.end18.cleanup_crit_edge ], [ -5, %if.then64 ], [ -5, %if.then76 ], [ -5, %if.then68 ], [ -5, %if.then40 ], [ -5, %if.then13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %firmware) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfusb_disconnect(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bfusb_disconnect.__UNIQUE_ID_ddebug499, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bfusb_disconnect, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !149

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bfusb_disconnect.__UNIQUE_ID_ddebug499, ptr noundef nonnull @.str.57, ptr noundef %intf) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver_data.i.i, align 4
  %call8 = tail call i32 @bfusb_close(ptr noundef nonnull %3)
  tail call void @hci_unregister_dev(ptr noundef nonnull %3) #8
  tail call void @hci_free_dev(ptr noundef nonnull %3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bfusb_load_firmware(ptr noundef %data, ptr nocapture noundef readonly %firmware, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #8
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len, align 4, !annotation !148
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bfusb_load_firmware.__UNIQUE_ID_ddebug494, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bfusb_load_firmware, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !149

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %udev = getelementptr inbounds %struct.bfusb_data, ptr %data, i32 0, i32 2
  %1 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %udev, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bfusb_load_firmware.__UNIQUE_ID_ddebug494, ptr noundef nonnull @.str.16, ptr noundef %data, ptr noundef %2) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.17) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 259) #11
  %tobool4.not = icmp eq ptr %call7.i, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.18) #8
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %udev7 = getelementptr inbounds %struct.bfusb_data, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %udev7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev7, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %shl.i = shl i32 %7, 8
  %or = or i32 %shl.i, -2147483648
  %call10 = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or, i8 noundef zeroext 9, i8 noundef zeroext 0, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.19) #8
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %8 = ptrtoint ptr %udev7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udev7, align 4
  %arrayidx = getelementptr %struct.usb_device, ptr %9, i32 0, i32 10, i32 1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %arrayidx, align 4
  %11 = load ptr, ptr %udev7, align 4
  %toggle15 = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %toggle15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %toggle15, align 4
  %13 = load ptr, ptr %udev7, align 4
  %bulk_out_ep = getelementptr inbounds %struct.bfusb_data, ptr %data, i32 0, i32 4
  %14 = ptrtoint ptr %bulk_out_ep to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bulk_out_ep, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %13, align 8
  %shl.i94 = shl i32 %17, 8
  %shl1.i = shl i32 %15, 15
  %or.i = or i32 %shl1.i, %shl.i94
  %or19 = or i32 %or.i, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool20.not98 = icmp eq i32 %count, 0
  br i1 %tobool20.not98, label %if.end12.while.end_crit_edge, label %if.end12.while.body_crit_edge

if.end12.while.body_crit_edge:                    ; preds = %if.end12
  br label %while.body

if.end12.while.end_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %if.end28.while.body_crit_edge, %if.end12.while.body_crit_edge
  %count.addr.0100 = phi i32 [ %sub, %if.end28.while.body_crit_edge ], [ %count, %if.end12.while.body_crit_edge ]
  %sent.099 = phi i32 [ %add, %if.end28.while.body_crit_edge ], [ 0, %if.end12.while.body_crit_edge ]
  %18 = call i32 @llvm.umin.i32(i32 %count.addr.0100, i32 259)
  %add.ptr = getelementptr i8, ptr %firmware, i32 %sent.099
  %19 = call ptr @memcpy(ptr %call7.i, ptr %add.ptr, i32 %18)
  %20 = ptrtoint ptr %udev7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %udev7, align 4
  %call24 = call i32 @usb_bulk_msg(ptr noundef %21, i32 noundef %or19, ptr noundef nonnull %call7.i, i32 noundef %18, ptr noundef nonnull %len, i32 noundef 3000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %lor.lhs.false, label %while.body.error_crit_edge

while.body.error_crit_edge:                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

lor.lhs.false:                                    ; preds = %while.body
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %18)
  %cmp26.not = icmp eq i32 %23, %18
  br i1 %cmp26.not, label %if.end28, label %lor.lhs.false.error_crit_edge

lor.lhs.false.error_crit_edge:                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end28:                                         ; preds = %lor.lhs.false
  %add = add i32 %18, %sent.099
  %sub = sub i32 %count.addr.0100, %18
  %tobool20.not = icmp eq i32 %sub, 0
  br i1 %tobool20.not, label %if.end28.while.end_crit_edge, label %if.end28.while.body_crit_edge

if.end28.while.body_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end28.while.end_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end28.while.end_crit_edge, %if.end12.while.end_crit_edge
  %24 = ptrtoint ptr %udev7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %udev7, align 4
  %call30 = call i32 @usb_bulk_msg(ptr noundef %25, i32 noundef %or19, ptr noundef null, i32 noundef 0, ptr noundef nonnull %len, i32 noundef 3000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %while.end.error_crit_edge, label %if.end33

while.end.error_crit_edge:                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end33:                                         ; preds = %while.end
  %26 = ptrtoint ptr %udev7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %udev7, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 8
  %shl.i95 = shl i32 %29, 8
  %or36 = or i32 %shl.i95, -2147483648
  %call38 = call i32 @usb_control_msg(ptr noundef %27, i32 noundef %or36, i8 noundef zeroext 9, i8 noundef zeroext 0, i16 noundef zeroext 2, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.end33.error_crit_edge, label %if.end41

if.end33.error_crit_edge:                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end41:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %udev7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %udev7, align 4
  %arrayidx44 = getelementptr %struct.usb_device, ptr %31, i32 0, i32 10, i32 1
  %32 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %arrayidx44, align 4
  %33 = load ptr, ptr %udev7, align 4
  %toggle46 = getelementptr inbounds %struct.usb_device, ptr %33, i32 0, i32 10
  %34 = ptrtoint ptr %toggle46 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %toggle46, align 4
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.23) #8
  call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

error:                                            ; preds = %if.end33.error_crit_edge, %while.end.error_crit_edge, %lor.lhs.false.error_crit_edge, %while.body.error_crit_edge
  %.str.22.sink = phi ptr [ @.str.21, %while.end.error_crit_edge ], [ @.str.22, %if.end33.error_crit_edge ], [ @.str.20, %lor.lhs.false.error_crit_edge ], [ @.str.20, %while.body.error_crit_edge ]
  %err.0 = phi i32 [ %call30, %while.end.error_crit_edge ], [ %call38, %if.end33.error_crit_edge ], [ %call24, %lor.lhs.false.error_crit_edge ], [ %call24, %while.body.error_crit_edge ]
  call void (ptr, ...) @bt_err(ptr noundef nonnull %.str.22.sink) #8
  call void @kfree(ptr noundef nonnull %call7.i) #8
  %35 = ptrtoint ptr %udev7 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %udev7, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 8
  %shl.i96 = shl i32 %38, 8
  %or50 = or i32 %shl.i96, -2147483648
  %call52 = call i32 @usb_control_msg(ptr noundef %36, i32 noundef %or50, i8 noundef zeroext 9, i8 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end41, %if.then11, %if.then5
  %retval.0 = phi i32 [ -16, %if.then11 ], [ %err.0, %error ], [ 0, %if.end41 ], [ -12, %if.then5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfusb_open(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bfusb_open.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bfusb_open, %if.then)) #8
          to label %do.body4 [label %if.then], !srcloc !149

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bfusb_open.__UNIQUE_ID_ddebug488, ptr noundef nonnull @.str.25, ptr noundef %hdev, ptr noundef %1) #8
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.bfusb_data, ptr %1, i32 0, i32 6
  %call6 = tail call i32 @_raw_write_lock_irqsave(ptr noundef %lock) #8
  %call9 = tail call fastcc i32 @bfusb_rx_submit(ptr noundef %1, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %for.body, label %do.body4.do.body16_crit_edge

do.body4.do.body16_crit_edge:                     ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body16

for.body:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = tail call fastcc i32 @bfusb_rx_submit(ptr noundef %1, ptr noundef null)
  br label %do.body16

do.body16:                                        ; preds = %for.body, %do.body4.do.body16_crit_edge
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #8
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfusb_close(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bfusb_close.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bfusb_close, %if.then)) #8
          to label %do.body4 [label %if.then], !srcloc !149

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bfusb_close.__UNIQUE_ID_ddebug490, ptr noundef nonnull @.str.25, ptr noundef %hdev, ptr noundef %1) #8
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.bfusb_data, ptr %1, i32 0, i32 6
  %call6 = tail call i32 @_raw_write_lock_irqsave(ptr noundef %lock) #8
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #8
  tail call fastcc void @bfusb_unlink_urbs(ptr noundef %1)
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bfusb_flush.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bfusb_close, %if.then.i)) #8
          to label %bfusb_flush.exit [label %if.then.i], !srcloc !149

if.then.i:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bfusb_flush.__UNIQUE_ID_ddebug489, ptr noundef nonnull @.str.25, ptr noundef %hdev, ptr noundef %3) #8
  br label %bfusb_flush.exit

bfusb_flush.exit:                                 ; preds = %if.then.i, %do.body4
  %transmit_q.i = getelementptr inbounds %struct.bfusb_data, ptr %3, i32 0, i32 7
  tail call void @skb_queue_purge(ptr noundef %transmit_q.i) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfusb_flush(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bfusb_flush.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bfusb_flush, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !149

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bfusb_flush.__UNIQUE_ID_ddebug489, ptr noundef nonnull @.str.25, ptr noundef %hdev, ptr noundef %1) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %transmit_q = getelementptr inbounds %struct.bfusb_data, ptr %1, i32 0, i32 7
  tail call void @skb_queue_purge(ptr noundef %transmit_q) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfusb_send_frame(ptr noundef %hdev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bfusb_send_frame.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bfusb_send_frame, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !149

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %2 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cb, align 8
  %conv = zext i8 %3 to i32
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bfusb_send_frame.__UNIQUE_ID_ddebug491, ptr noundef nonnull @.str.49, ptr noundef %hdev, ptr noundef %skb, i32 noundef %conv, i32 noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cb4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %6 = ptrtoint ptr %cb4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cb4, align 8
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %7, label %do.end.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb8
    i8 3, label %sw.bb11
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %cmd_tx = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 199, i32 2
  br label %sw.epilog.sink.split

sw.bb8:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %acl_tx = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 199, i32 4
  br label %sw.epilog.sink.split

sw.bb11:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %sco_tx = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 199, i32 6
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb11, %sw.bb8, %sw.bb
  %sco_tx.sink108 = phi ptr [ %sco_tx, %sw.bb11 ], [ %acl_tx, %sw.bb8 ], [ %cmd_tx, %sw.bb ]
  %9 = ptrtoint ptr %sco_tx.sink108 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sco_tx.sink108, align 8
  %inc13 = add i32 %10, 1
  store i32 %inc13, ptr %sco_tx.sink108, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %do.end.sw.epilog_crit_edge
  %call14 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 1) #8
  %11 = ptrtoint ptr %cb4 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %cb4, align 8
  %13 = ptrtoint ptr %call14 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %call14, align 1
  %len18 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %14 = ptrtoint ptr %len18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len18, align 4
  %add.i = add i32 %15, 40
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then21, label %if.end23

if.then21:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.50, ptr noundef %name) #8
  br label %cleanup

if.end23:                                         ; preds = %sw.epilog
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %16 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 8
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %18 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %19, i32 8
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %20 = getelementptr inbounds %struct.anon.51, ptr %call.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %1, ptr %20, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool24.not105 = icmp eq i32 %15, 0
  br i1 %tobool24.not105, label %if.end23.while.end_crit_edge, label %while.body.lr.ph

if.end23.while.end_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end23
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %count.0107 = phi i32 [ %15, %while.body.lr.ph ], [ %sub, %while.body.while.body_crit_edge ]
  %sent.0106 = phi i32 [ 0, %while.body.lr.ph ], [ %add47, %while.body.while.body_crit_edge ]
  %22 = tail call i32 @llvm.umin.i32(i32 %count.0107, i32 256)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sent.0106)
  %cmp27 = icmp eq i32 %sent.0106, 0
  %or = select i1 %cmp27, i8 -59, i8 -63
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %count.0107)
  %cmp30 = icmp ult i32 %count.0107, 257
  %cond32 = select i1 %cmp30, i8 8, i8 0
  %or33 = or i8 %cond32, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %count.0107)
  %cmp36 = icmp ugt i32 %count.0107, 255
  %23 = trunc i32 %22 to i8
  %conv42 = select i1 %cmp36, i8 0, i8 %23
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 3) #8
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %or33, ptr %call.i, align 1
  %buf.sroa.7.0.call.i.sroa_idx = getelementptr inbounds i8, ptr %call.i, i32 1
  %25 = ptrtoint ptr %buf.sroa.7.0.call.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %buf.sroa.7.0.call.i.sroa_idx, align 1
  %buf.sroa.10.0.call.i.sroa_idx = getelementptr inbounds i8, ptr %call.i, i32 2
  %26 = ptrtoint ptr %buf.sroa.10.0.call.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv42, ptr %buf.sroa.10.0.call.i.sroa_idx, align 1
  %call46 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %22) #8
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 %sent.0106
  %29 = call ptr @memcpy(ptr %call46, ptr %add.ptr.i, i32 %22)
  %add47 = add i32 %22, %sent.0106
  %sub = sub i32 %count.0107, %22
  %tobool24.not = icmp eq i32 %sub, 0
  br i1 %tobool24.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end23.while.end_crit_edge
  %len48 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %30 = ptrtoint ptr %len48 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len48, align 4
  %bulk_pkt_size = getelementptr inbounds %struct.bfusb_data, ptr %1, i32 0, i32 5
  %32 = ptrtoint ptr %bulk_pkt_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bulk_pkt_size, align 4
  %rem = urem i32 %31, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp49 = icmp eq i32 %rem, 0
  br i1 %cmp49, label %if.then51, label %while.end.if.end56_crit_edge

while.end.if.end56_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then51:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i101 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 2) #8
  %34 = ptrtoint ptr %call.i101 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -35, ptr %call.i101, align 1
  %buf.sroa.7.0.call.i101.sroa_idx = getelementptr inbounds i8, ptr %call.i101, i32 1
  %35 = ptrtoint ptr %buf.sroa.7.0.call.i101.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %buf.sroa.7.0.call.i101.sroa_idx, align 1
  br label %if.end56

if.end56:                                         ; preds = %if.then51, %while.end.if.end56_crit_edge
  %lock = getelementptr inbounds %struct.bfusb_data, ptr %1, i32 0, i32 6
  tail call void @_raw_read_lock(ptr noundef %lock) #8
  %transmit_q = getelementptr inbounds %struct.bfusb_data, ptr %1, i32 0, i32 7
  tail call void @skb_queue_tail(ptr noundef %transmit_q, ptr noundef nonnull %call.i.i) #8
  tail call fastcc void @bfusb_tx_wakeup(ptr noundef %1)
  tail call void @_raw_read_unlock(ptr noundef %lock) #8
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %if.then21
  %retval.0 = phi i32 [ 0, %if.end56 ], [ -12, %if.then21 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_register_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_free_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_info(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_alloc_dev_priv(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_write_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bfusb_rx_submit(ptr noundef %data, ptr noundef %urb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bfusb_rx_submit.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bfusb_rx_submit, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !149

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bfusb_rx_submit.__UNIQUE_ID_ddebug485, ptr noundef nonnull @.str.27, ptr noundef %data, ptr noundef %urb) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool3.not = icmp eq ptr %urb, null
  br i1 %tobool3.not, label %if.then4, label %do.end.if.end9_crit_edge

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then4:                                         ; preds = %do.end
  %call5 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #8
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.then4.cleanup_crit_edge, label %if.then4.if.end9_crit_edge

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.then4.if.end9_crit_edge, %do.end.if.end9_crit_edge
  %urb.addr.0 = phi ptr [ %urb, %do.end.if.end9_crit_edge ], [ %call5, %if.then4.if.end9_crit_edge ]
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 1068, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end9.cleanup.sink.split_crit_edge, label %if.end13

if.end9.cleanup.sink.split_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end13:                                         ; preds = %if.end9
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 8
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %3, i32 8
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %4 = getelementptr inbounds %struct.anon.51, ptr %call.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %data, ptr %4, align 8
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %urb.addr.0, ptr %cb, align 4
  %udev = getelementptr inbounds %struct.bfusb_data, ptr %data, i32 0, i32 2
  %7 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %udev, align 4
  %bulk_in_ep = getelementptr inbounds %struct.bfusb_data, ptr %data, i32 0, i32 3
  %9 = ptrtoint ptr %bulk_in_ep to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bulk_in_ep, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %8, align 8
  %shl.i = shl i32 %12, 8
  %shl1.i = shl i32 %10, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or16 = or i32 %or.i, -1073741696
  %dev1.i = getelementptr inbounds %struct.urb, ptr %urb.addr.0, i32 0, i32 8
  %13 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %8, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %urb.addr.0, i32 0, i32 10
  %14 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or16, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %urb.addr.0, i32 0, i32 14
  %15 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr.i.i, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %urb.addr.0, i32 0, i32 19
  %16 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1060, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %urb.addr.0, i32 0, i32 28
  %17 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @bfusb_rx_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %urb.addr.0, i32 0, i32 27
  %18 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i.i, ptr %context4.i, align 4
  %pending_q = getelementptr inbounds %struct.bfusb_data, ptr %data, i32 0, i32 10
  tail call void @skb_queue_tail(ptr noundef %pending_q, ptr noundef nonnull %call.i.i) #8
  %call19 = tail call i32 @usb_submit_urb(ptr noundef nonnull %urb.addr.0, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end13.cleanup_crit_edge, label %if.then21

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then21:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %20, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.28, ptr noundef %name, ptr noundef nonnull %urb.addr.0, i32 noundef %call19) #8
  tail call void @skb_unlink(ptr noundef nonnull %call.i.i, ptr noundef %pending_q) #8
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then21, %if.end9.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call19, %if.then21 ], [ -12, %if.end9.cleanup.sink.split_crit_edge ]
  tail call void @usb_free_urb(ptr noundef nonnull %urb.addr.0) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end13.cleanup_crit_edge, %if.then4.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then4.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfusb_rx_complete(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = getelementptr inbounds %struct.anon.51, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %5 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %transfer_buffer, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %7 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %actual_length, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bfusb_rx_complete.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bfusb_rx_complete, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !149

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %len3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len3, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bfusb_rx_complete.__UNIQUE_ID_ddebug487, ptr noundef nonnull @.str.30, ptr noundef %4, ptr noundef %urb, ptr noundef %1, i32 noundef %10) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.bfusb_data, ptr %4, i32 0, i32 6
  tail call void @_raw_read_lock(ptr noundef %lock) #8
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %4, align 4
  %flags = getelementptr inbounds %struct.hci_dev, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags, align 4
  %15 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool5.not = icmp eq i32 %15, 0
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %16 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool8.not = icmp ne i32 %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool9.not = icmp eq i32 %8, 0
  %or.cond = select i1 %tobool8.not, i1 true, i1 %tobool9.not
  br i1 %or.cond, label %resubmit, label %if.end11

if.end11:                                         ; preds = %if.end7
  %byte_rx = getelementptr inbounds %struct.hci_dev, ptr %12, i32 0, i32 199, i32 8
  %18 = ptrtoint ptr %byte_rx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %byte_rx, align 8
  %add = add i32 %19, %8
  store i32 %add, ptr %byte_rx, align 8
  %call13 = tail call ptr @skb_put(ptr noundef %1, i32 noundef %8) #8
  br label %while.body

while.body:                                       ; preds = %if.end37.while.body_crit_edge, %if.end11
  %count.0103 = phi i32 [ %8, %if.end11 ], [ %sub38, %if.end37.while.body_crit_edge ]
  %buf.0102 = phi ptr [ %6, %if.end11 ], [ %add.ptr39, %if.end37.while.body_crit_edge ]
  %20 = ptrtoint ptr %buf.0102 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %buf.0102, align 1
  %conv = zext i8 %21 to i32
  %arrayidx15 = getelementptr i8, ptr %buf.0102, i32 1
  %22 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %23 to i32
  %shl = shl nuw nsw i32 %conv16, 8
  %or = or i32 %shl, %conv
  %24 = and i32 %conv16, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool17.not = icmp eq i32 %24, 0
  br i1 %tobool17.not, label %if.else, label %while.body.if.end26_crit_edge

while.body.if.end26_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx19 = getelementptr i8, ptr %buf.0102, i32 2
  %25 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp = icmp eq i8 %26, 0
  %conv20 = zext i8 %26 to i32
  %spec.select = select i1 %cmp, i32 256, i32 %conv20
  br label %if.end26

if.end26:                                         ; preds = %if.else, %while.body.if.end26_crit_edge
  %.sink104 = phi i32 [ -3, %if.else ], [ -2, %while.body.if.end26_crit_edge ]
  %.sink = phi i32 [ 3, %if.else ], [ 2, %while.body.if.end26_crit_edge ]
  %len.0 = phi i32 [ %spec.select, %if.else ], [ 0, %while.body.if.end26_crit_edge ]
  %sub24 = add i32 %count.0103, %.sink104
  %add.ptr25 = getelementptr i8, ptr %buf.0102, i32 %.sink
  call void @__sanitizer_cov_trace_cmp4(i32 %sub24, i32 %len.0)
  %cmp27 = icmp slt i32 %sub24, %len.0
  br i1 %cmp27, label %if.then29, label %if.end26.if.end31_crit_edge

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %4, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %28, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.31, ptr noundef %name) #8
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end26.if.end31_crit_edge
  %and32 = and i32 %conv, 225
  call void @__sanitizer_cov_trace_const_cmp4(i32 193, i32 %and32)
  %cmp33 = icmp eq i32 %and32, 193
  br i1 %cmp33, label %if.then35, label %if.end31.if.end37_crit_edge

if.end31.if.end37_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @bfusb_recv_block(ptr noundef %4, i32 noundef %or, ptr noundef %add.ptr25, i32 noundef %len.0)
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end31.if.end37_crit_edge
  %sub38 = sub i32 %sub24, %len.0
  %add.ptr39 = getelementptr i8, ptr %add.ptr25, i32 %len.0
  %tobool14.not = icmp eq i32 %sub38, 0
  br i1 %tobool14.not, label %while.end, label %if.end37.while.body_crit_edge

if.end37.while.body_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %pending_q = getelementptr inbounds %struct.bfusb_data, ptr %4, i32 0, i32 10
  tail call void @skb_unlink(ptr noundef %1, ptr noundef %pending_q) #8
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #8
  %call40 = tail call fastcc i32 @bfusb_rx_submit(ptr noundef %4, ptr noundef %urb)
  br label %cleanup

resubmit:                                         ; preds = %if.end7
  %udev = getelementptr inbounds %struct.bfusb_data, ptr %4, i32 0, i32 2
  %29 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %dev, align 4
  %call42 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %resubmit.cleanup_crit_edge, label %if.then44

resubmit.cleanup_crit_edge:                       ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then44:                                        ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %4, align 4
  %name46 = getelementptr inbounds %struct.hci_dev, ptr %33, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.32, ptr noundef %name46, ptr noundef %urb, i32 noundef %call42) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %resubmit.cleanup_crit_edge, %while.end, %do.end.cleanup_crit_edge
  tail call void @_raw_read_unlock(ptr noundef %lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_unlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bfusb_recv_block(ptr noundef %data, i32 noundef %hdr, ptr noundef %buf, i32 noundef %len) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bfusb_recv_block.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bfusb_recv_block, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !149

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bfusb_recv_block.__UNIQUE_ID_ddebug486, ptr noundef nonnull @.str.34, ptr noundef %data, i32 noundef %hdr, ptr noundef %buf, i32 noundef %len) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and = and i32 %hdr, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.35, ptr noundef %name) #8
  %reassembly = getelementptr inbounds %struct.bfusb_data, ptr %data, i32 0, i32 8
  %2 = ptrtoint ptr %reassembly to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reassembly, align 4
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #8
  %4 = ptrtoint ptr %reassembly to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %reassembly, align 4
  br label %return

if.end6:                                          ; preds = %do.end
  %and7 = and i32 %hdr, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %reassembly71 = getelementptr inbounds %struct.bfusb_data, ptr %data, i32 0, i32 8
  %5 = ptrtoint ptr %reassembly71 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reassembly71, align 4
  %tobool72.not = icmp eq ptr %6, null
  br i1 %tobool8.not, label %if.else70, label %if.then9

if.then9:                                         ; preds = %if.end6
  br i1 %tobool72.not, label %if.then9.if.end18_crit_edge, label %if.then12

if.then9.if.end18_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %name14 = getelementptr inbounds %struct.hci_dev, ptr %8, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.36, ptr noundef %name14) #8
  %9 = ptrtoint ptr %reassembly71 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reassembly71, align 4
  tail call void @kfree_skb_reason(ptr noundef %10, i32 noundef 0) #8
  %11 = ptrtoint ptr %reassembly71 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %reassembly71, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %if.then9.if.end18_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp = icmp slt i32 %len, 1
  br i1 %cmp, label %if.then19, label %if.end23

if.then19:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %name21 = getelementptr inbounds %struct.hci_dev, ptr %13, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.37, ptr noundef %name21) #8
  br label %return

if.end23:                                         ; preds = %if.end18
  %incdec.ptr = getelementptr i8, ptr %buf, i32 1
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %buf, align 1
  %dec = add nsw i32 %len, -1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.58)
  switch i8 %15, label %if.end23.sw.epilog_crit_edge [
    i8 4, label %sw.bb
    i8 2, label %sw.bb33
    i8 3, label %sw.bb45
  ]

if.end23.sw.epilog_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %cmp24 = icmp ugt i32 %dec, 1
  br i1 %cmp24, label %if.then26, label %if.else

if.then26:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %plen = getelementptr i8, ptr %buf, i32 2
  %17 = ptrtoint ptr %plen to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %plen, align 1
  %conv28 = zext i8 %18 to i32
  %add = add nuw nsw i32 %conv28, 2
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %name30 = getelementptr inbounds %struct.hci_dev, ptr %20, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.38, ptr noundef %name30) #8
  br label %return

sw.bb33:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %dec)
  %cmp34 = icmp ugt i32 %dec, 3
  br i1 %cmp34, label %if.then36, label %if.else40

if.then36:                                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #10
  %dlen = getelementptr i8, ptr %buf, i32 3
  %21 = ptrtoint ptr %dlen to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %dlen, align 1
  %23 = tail call i16 @llvm.bswap.i16(i16 %22)
  %conv38 = zext i16 %23 to i32
  %add39 = add nuw nsw i32 %conv38, 4
  br label %sw.epilog

if.else40:                                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  %name42 = getelementptr inbounds %struct.hci_dev, ptr %25, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.39, ptr noundef %name42) #8
  br label %return

sw.bb45:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dec)
  %cmp46 = icmp ugt i32 %dec, 2
  br i1 %cmp46, label %if.then48, label %if.else53

if.then48:                                        ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #10
  %dlen50 = getelementptr i8, ptr %buf, i32 3
  %26 = ptrtoint ptr %dlen50 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %dlen50, align 1
  %conv51 = zext i8 %27 to i32
  %add52 = add nuw nsw i32 %conv51, 3
  br label %sw.epilog

if.else53:                                        ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %name55 = getelementptr inbounds %struct.hci_dev, ptr %29, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.40, ptr noundef %name55) #8
  br label %return

sw.epilog:                                        ; preds = %if.then48, %if.then36, %if.then26, %if.end23.sw.epilog_crit_edge
  %pkt_len.0 = phi i32 [ 0, %if.end23.sw.epilog_crit_edge ], [ %add52, %if.then48 ], [ %add39, %if.then36 ], [ %add, %if.then26 ]
  %add.i = add nuw nsw i32 %pkt_len.0, 8
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then60, label %cleanup

if.then60:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %name62 = getelementptr inbounds %struct.hci_dev, ptr %31, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.41, ptr noundef %name62) #8
  br label %return

cleanup:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %32 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 8
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %34 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %35, i32 8
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %36 = ptrtoint ptr %cb to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %15, ptr %cb, align 8
  %37 = ptrtoint ptr %reassembly71 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i.i, ptr %reassembly71, align 4
  br label %if.end78

if.else70:                                        ; preds = %if.end6
  br i1 %tobool72.not, label %if.then73, label %if.else70.if.end78_crit_edge

if.else70.if.end78_crit_edge:                     ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.then73:                                        ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data, align 4
  %name75 = getelementptr inbounds %struct.hci_dev, ptr %39, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.42, ptr noundef %name75) #8
  br label %return

if.end78:                                         ; preds = %if.else70.if.end78_crit_edge, %cleanup
  %len.addr.1 = phi i32 [ %dec, %cleanup ], [ %len, %if.else70.if.end78_crit_edge ]
  %buf.addr.1 = phi ptr [ %incdec.ptr, %cleanup ], [ %buf, %if.else70.if.end78_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.1)
  %cmp79 = icmp sgt i32 %len.addr.1, 0
  br i1 %cmp79, label %if.then81, label %if.end78.if.end84_crit_edge

if.end78.if.end84_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.then81:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  %reassembly82 = getelementptr inbounds %struct.bfusb_data, ptr %data, i32 0, i32 8
  %40 = ptrtoint ptr %reassembly82 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reassembly82, align 4
  %call.i = tail call ptr @skb_put(ptr noundef %41, i32 noundef %len.addr.1) #8
  %42 = call ptr @memcpy(ptr %call.i, ptr %buf.addr.1, i32 %len.addr.1)
  br label %if.end84

if.end84:                                         ; preds = %if.then81, %if.end78.if.end84_crit_edge
  %and85 = and i32 %hdr, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.end84.return_crit_edge, label %if.then87

if.end84.return_crit_edge:                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then87:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data, align 4
  %reassembly89 = getelementptr inbounds %struct.bfusb_data, ptr %data, i32 0, i32 8
  %45 = ptrtoint ptr %reassembly89 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reassembly89, align 4
  %call90 = tail call i32 @hci_recv_frame(ptr noundef %44, ptr noundef %46) #8
  %47 = ptrtoint ptr %reassembly89 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %reassembly89, align 4
  br label %return

return:                                           ; preds = %if.then87, %if.end84.return_crit_edge, %if.then73, %if.then60, %if.else53, %if.else40, %if.else, %if.then19, %if.then4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_recv_frame(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bfusb_unlink_urbs(ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bfusb_unlink_urbs.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bfusb_unlink_urbs, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !149

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bfusb_unlink_urbs.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.45, ptr noundef %data) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pending_q = getelementptr inbounds %struct.bfusb_data, ptr %data, i32 0, i32 10
  %call319 = tail call ptr @skb_dequeue(ptr noundef %pending_q) #8
  %tobool4.not20 = icmp eq ptr %call319, null
  br i1 %tobool4.not20, label %do.end.while.cond6.preheader_crit_edge, label %while.body.lr.ph

do.end.while.cond6.preheader_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond6.preheader

while.body.lr.ph:                                 ; preds = %do.end
  %completed_q = getelementptr inbounds %struct.bfusb_data, ptr %data, i32 0, i32 11
  br label %while.body

while.cond6.preheader:                            ; preds = %while.body.while.cond6.preheader_crit_edge, %do.end.while.cond6.preheader_crit_edge
  %completed_q.i = getelementptr inbounds %struct.bfusb_data, ptr %data, i32 0, i32 11
  br label %while.cond6

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %call321 = phi ptr [ %call319, %while.body.lr.ph ], [ %call3, %while.body.while.body_crit_edge ]
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call321, i32 0, i32 3
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb, align 8
  tail call void @usb_kill_urb(ptr noundef %1) #8
  tail call void @skb_queue_tail(ptr noundef %completed_q, ptr noundef nonnull %call321) #8
  %call3 = tail call ptr @skb_dequeue(ptr noundef %pending_q) #8
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %while.body.while.cond6.preheader_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.cond6.preheader_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond6.preheader

while.cond6:                                      ; preds = %while.body9, %while.cond6.preheader
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bfusb_get_completed.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bfusb_unlink_urbs, %if.then.i)) #8
          to label %do.end.i [label %if.then.i], !srcloc !149

if.then.i:                                        ; preds = %while.cond6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bfusb_get_completed.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.45, ptr noundef %data) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %while.cond6
  %call3.i = tail call ptr @skb_dequeue(ptr noundef %completed_q.i) #8
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %do.end.i.while.end10_crit_edge, label %bfusb_get_completed.exit

do.end.i.while.end10_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end10

bfusb_get_completed.exit:                         ; preds = %do.end.i
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call3.i, i32 0, i32 3
  %2 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cb.i, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %call3.i, i32 noundef 0) #8
  %tobool8.not = icmp eq ptr %3, null
  br i1 %tobool8.not, label %bfusb_get_completed.exit.while.end10_crit_edge, label %while.body9

bfusb_get_completed.exit.while.end10_crit_edge:   ; preds = %bfusb_get_completed.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end10

while.body9:                                      ; preds = %bfusb_get_completed.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_free_urb(ptr noundef nonnull %3) #8
  br label %while.cond6

while.end10:                                      ; preds = %bfusb_get_completed.exit.while.end10_crit_edge, %do.end.i.while.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bfusb_tx_wakeup(ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bfusb_tx_wakeup.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bfusb_tx_wakeup, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !149

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bfusb_tx_wakeup.__UNIQUE_ID_ddebug483, ptr noundef nonnull @.str.45, ptr noundef %data) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %state = getelementptr inbounds %struct.bfusb_data, ptr %data, i32 0, i32 1
  %call3 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.body8.preheader, label %if.then5

do.body8.preheader:                               ; preds = %do.end
  %pending_tx = getelementptr inbounds %struct.bfusb_data, ptr %data, i32 0, i32 9
  %transmit_q = getelementptr inbounds %struct.bfusb_data, ptr %data, i32 0, i32 7
  br label %do.body8

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %state) #8
  br label %cleanup

do.body8:                                         ; preds = %do.cond18.do.body8_crit_edge, %do.body8.preheader
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state) #8
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %do.body8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pending_tx, i32 noundef 4) #8
  %0 = ptrtoint ptr %pending_tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %pending_tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %land.rhs, label %while.cond.do.cond18_crit_edge

while.cond.do.cond18_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond18

land.rhs:                                         ; preds = %while.cond
  %call11 = tail call ptr @skb_dequeue(ptr noundef %transmit_q) #8
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %land.rhs.do.cond18_crit_edge, label %while.body

land.rhs.do.cond18_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond18

while.body:                                       ; preds = %land.rhs
  %call13 = tail call fastcc i32 @bfusb_send_bulk(ptr noundef %data, ptr noundef nonnull %call11)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

if.then15:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @skb_queue_head(ptr noundef %transmit_q, ptr noundef nonnull %call11) #8
  br label %do.cond18

do.cond18:                                        ; preds = %if.then15, %land.rhs.do.cond18_crit_edge, %while.cond.do.cond18_crit_edge
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %4 = and i32 %3, 4
  %tobool21.not = icmp eq i32 %4, 0
  br i1 %tobool21.not, label %do.end22, label %do.cond18.do.body8_crit_edge

do.cond18.do.body8_crit_edge:                     ; preds = %do.cond18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body8

do.end22:                                         ; preds = %do.cond18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %if.then5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bfusb_send_bulk(ptr noundef %data, ptr noundef %skb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bfusb_get_completed.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bfusb_send_bulk, %if.then.i)) #8
          to label %do.end.i [label %if.then.i], !srcloc !149

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bfusb_get_completed.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.45, ptr noundef %data) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %completed_q.i = getelementptr inbounds %struct.bfusb_data, ptr %data, i32 0, i32 11
  %call3.i = tail call ptr @skb_dequeue(ptr noundef %completed_q.i) #8
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %do.end.i.bfusb_get_completed.exit_crit_edge, label %if.then5.i

do.end.i.bfusb_get_completed.exit_crit_edge:      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bfusb_get_completed.exit

if.then5.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call3.i, i32 0, i32 3
  %0 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb.i, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %call3.i, i32 noundef 0) #8
  br label %bfusb_get_completed.exit

bfusb_get_completed.exit:                         ; preds = %if.then5.i, %do.end.i.bfusb_get_completed.exit_crit_edge
  %urb.0.i = phi ptr [ %1, %if.then5.i ], [ null, %do.end.i.bfusb_get_completed.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bfusb_send_bulk.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bfusb_send_bulk, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !149

if.then:                                          ; preds = %bfusb_get_completed.exit
  call void @__sanitizer_cov_trace_pc() #10
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bfusb_send_bulk.__UNIQUE_ID_ddebug482, ptr noundef nonnull @.str.53, ptr noundef %data, ptr noundef %skb, i32 noundef %3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %bfusb_get_completed.exit
  %tobool4.not = icmp eq ptr %urb.0.i, null
  br i1 %tobool4.not, label %if.then5, label %do.end.if.end10_crit_edge

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then5:                                         ; preds = %do.end
  %call6 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #8
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.then5.cleanup_crit_edge, label %if.then5.if.end10_crit_edge

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.then5.if.end10_crit_edge, %do.end.if.end10_crit_edge
  %urb.0 = phi ptr [ %urb.0.i, %do.end.if.end10_crit_edge ], [ %call6, %if.then5.if.end10_crit_edge ]
  %udev = getelementptr inbounds %struct.bfusb_data, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 4
  %bulk_out_ep = getelementptr inbounds %struct.bfusb_data, ptr %data, i32 0, i32 4
  %6 = ptrtoint ptr %bulk_out_ep to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bulk_out_ep, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 8
  %shl.i = shl i32 %9, 8
  %shl1.i = shl i32 %7, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i, -1073741824
  %data13 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data13, align 4
  %len14 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %12 = ptrtoint ptr %len14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len14, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %urb.0, i32 0, i32 8
  %14 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %5, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %urb.0, i32 0, i32 10
  %15 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %urb.0, i32 0, i32 14
  %16 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %11, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %urb.0, i32 0, i32 19
  %17 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %13, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %urb.0, i32 0, i32 28
  %18 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @bfusb_tx_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %urb.0, i32 0, i32 27
  %19 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %skb, ptr %context4.i, align 4
  %20 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %urb.0, ptr %cb, align 4
  %pending_q = getelementptr inbounds %struct.bfusb_data, ptr %data, i32 0, i32 10
  tail call void @skb_queue_tail(ptr noundef %pending_q, ptr noundef %skb) #8
  %call16 = tail call i32 @usb_submit_urb(ptr noundef nonnull %urb.0, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %22, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.54, ptr noundef %name, ptr noundef nonnull %urb.0, i32 noundef %call16) #8
  tail call void @skb_unlink(ptr noundef %skb, ptr noundef %pending_q) #8
  tail call void @usb_free_urb(ptr noundef nonnull %urb.0) #8
  br label %cleanup

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %pending_tx = getelementptr inbounds %struct.bfusb_data, ptr %data, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_tx, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %pending_tx, i32 1, i32 3, i32 1) #8
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_tx, ptr %pending_tx, i32 1, ptr elementtype(i32) %pending_tx) #8, !srcloc !150
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then18, %if.then5.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then5.cleanup_crit_edge ], [ 0, %if.else ], [ %call16, %if.then18 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfusb_tx_complete(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = getelementptr inbounds %struct.anon.51, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bfusb_tx_complete.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bfusb_tx_complete, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !149

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bfusb_tx_complete.__UNIQUE_ID_ddebug484, ptr noundef nonnull @.str.30, ptr noundef %4, ptr noundef %urb, ptr noundef %1, i32 noundef %6) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pending_tx = getelementptr inbounds %struct.bfusb_data, ptr %4, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_tx, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %pending_tx, i32 1, i32 3, i32 1) #8
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_tx, ptr %pending_tx, i32 1, ptr elementtype(i32) %pending_tx) #8, !srcloc !151
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %4, align 4
  %flags = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool4.not = icmp eq i32 %12, 0
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool7.not = icmp eq i32 %14, 0
  br i1 %tobool7.not, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %len9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %len9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len9, align 4
  %byte_tx = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 199, i32 9
  br label %if.end13

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %err_tx = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 199, i32 1
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then8
  %err_tx.sink34 = phi ptr [ %err_tx, %if.else ], [ %byte_tx, %if.then8 ]
  %.sink33 = phi i32 [ 1, %if.else ], [ %16, %if.then8 ]
  %17 = ptrtoint ptr %err_tx.sink34 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %err_tx.sink34, align 4
  %inc = add i32 %18, %.sink33
  store i32 %inc, ptr %err_tx.sink34, align 4
  %lock = getelementptr inbounds %struct.bfusb_data, ptr %4, i32 0, i32 6
  tail call void @_raw_read_lock(ptr noundef %lock) #8
  %pending_q = getelementptr inbounds %struct.bfusb_data, ptr %4, i32 0, i32 10
  tail call void @skb_unlink(ptr noundef %1, ptr noundef %pending_q) #8
  %completed_q = getelementptr inbounds %struct.bfusb_data, ptr %4, i32 0, i32 11
  tail call void @skb_queue_tail(ptr noundef %completed_q, ptr noundef %1) #8
  tail call fastcc void @bfusb_tx_wakeup(ptr noundef %4)
  tail call void @_raw_read_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_unregister_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !22, !23, !24, !25, !27, !29, !30, !32, !34, !36, !37, !39, !41, !43, !45, !46, !48, !49, !50, !52, !54, !56, !58, !60, !62, !64, !66, !67, !68, !70, !71, !72, !74, !76, !77, !78, !80, !82, !84, !85, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !105, !107, !108, !109, !111, !112, !114, !115, !117, !118, !119, !121, !123, !124, !126, !127, !128, !130, !132, !133, !135, !136, !137}
!llvm.module.flags = !{!139, !140, !141, !142, !143, !144, !145, !146}
!llvm.ident = !{!147}

!0 = !{ptr @__initcall__kmod_bfusb__500_719_bfusb_driver_init6, !1, !"__initcall__kmod_bfusb__500_719_bfusb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/bluetooth/bfusb.c", i32 719, i32 1}
!2 = !{ptr @__exitcall_bfusb_driver_exit, !1, !"__exitcall_bfusb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author501, !4, !"__UNIQUE_ID_author501", i1 false, i1 false}
!4 = !{!"../drivers/bluetooth/bfusb.c", i32 721, i32 1}
!5 = !{ptr @__UNIQUE_ID_description502, !6, !"__UNIQUE_ID_description502", i1 false, i1 false}
!6 = !{!"../drivers/bluetooth/bfusb.c", i32 722, i32 1}
!7 = !{ptr @__UNIQUE_ID_version503, !8, !"__UNIQUE_ID_version503", i1 false, i1 false}
!8 = !{!"../drivers/bluetooth/bfusb.c", i32 723, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_file504, !14, !"__UNIQUE_ID_file504", i1 false, i1 false}
!14 = !{!"../drivers/bluetooth/bfusb.c", i32 724, i32 1}
!15 = !{ptr @__UNIQUE_ID_license505, !14, !"__UNIQUE_ID_license505", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_firmware506, !17, !"__UNIQUE_ID_firmware506", i1 false, i1 false}
!17 = !{!"../drivers/bluetooth/bfusb.c", i32 725, i32 1}
!18 = !{ptr @bfusb_driver, !19, !"bfusb_driver", i1 false, i1 false}
!19 = !{!"../drivers/bluetooth/bfusb.c", i32 711, i32 26}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/bluetooth/bfusb.c", i32 607, i32 2}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @bfusb_probe.__UNIQUE_ID_ddebug497, !21, !"__UNIQUE_ID_ddebug497", i1 false, i1 false}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/bluetooth/bfusb.c", i32 617, i32 3}
!27 = !{ptr @bfusb_probe.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/bluetooth/bfusb.c", i32 634, i32 2}
!29 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/bluetooth/bfusb.c", i32 642, i32 34}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/bluetooth/bfusb.c", i32 643, i32 3}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/bluetooth/bfusb.c", i32 647, i32 2}
!36 = !{ptr @bfusb_probe.__UNIQUE_ID_ddebug498, !35, !"__UNIQUE_ID_ddebug498", i1 false, i1 false}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/bluetooth/bfusb.c", i32 650, i32 3}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/bluetooth/bfusb.c", i32 659, i32 3}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/bluetooth/bfusb.c", i32 677, i32 3}
!43 = !{ptr @skb_queue_head_init.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!45 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/bluetooth/bfusb.c", i32 524, i32 2}
!48 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @bfusb_load_firmware.__UNIQUE_ID_ddebug494, !47, !"__UNIQUE_ID_ddebug494", i1 false, i1 false}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/bluetooth/bfusb.c", i32 526, i32 2}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/bluetooth/bfusb.c", i32 530, i32 3}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/bluetooth/bfusb.c", i32 538, i32 3}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/bluetooth/bfusb.c", i32 556, i32 4}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/bluetooth/bfusb.c", i32 567, i32 3}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/bluetooth/bfusb.c", i32 576, i32 3}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/bluetooth/bfusb.c", i32 582, i32 2}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/bluetooth/bfusb.c", i32 407, i32 2}
!66 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @bfusb_open.__UNIQUE_ID_ddebug488, !65, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/bluetooth/bfusb.c", i32 207, i32 2}
!70 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @bfusb_rx_submit.__UNIQUE_ID_ddebug485, !69, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/bluetooth/bfusb.c", i32 235, i32 3}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/bluetooth/bfusb.c", i32 341, i32 2}
!76 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @bfusb_rx_complete.__UNIQUE_ID_ddebug487, !75, !"__UNIQUE_ID_ddebug487", i1 false, i1 false}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/bluetooth/bfusb.c", i32 369, i32 4}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/bluetooth/bfusb.c", i32 393, i32 3}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/bluetooth/bfusb.c", i32 247, i32 2}
!84 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @bfusb_recv_block.__UNIQUE_ID_ddebug486, !83, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/bluetooth/bfusb.c", i32 250, i32 3}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/bluetooth/bfusb.c", i32 262, i32 4}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/bluetooth/bfusb.c", i32 268, i32 4}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/bluetooth/bfusb.c", i32 280, i32 5}
!94 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/bluetooth/bfusb.c", i32 290, i32 5}
!96 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/bluetooth/bfusb.c", i32 300, i32 5}
!98 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/bluetooth/bfusb.c", i32 308, i32 4}
!100 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/bluetooth/bfusb.c", i32 317, i32 4}
!102 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/bluetooth/bfusb.c", i32 438, i32 2}
!104 = !{ptr @bfusb_close.__UNIQUE_ID_ddebug490, !103, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!105 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/bluetooth/bfusb.c", i32 99, i32 2}
!107 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @bfusb_unlink_urbs.__UNIQUE_ID_ddebug481, !106, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!109 = !{ptr @.str.46, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/bluetooth/bfusb.c", i32 83, i32 2}
!111 = !{ptr @bfusb_get_completed.__UNIQUE_ID_ddebug480, !110, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!112 = !{ptr @.str.47, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/bluetooth/bfusb.c", i32 426, i32 2}
!114 = !{ptr @bfusb_flush.__UNIQUE_ID_ddebug489, !113, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!115 = !{ptr @.str.48, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/bluetooth/bfusb.c", i32 456, i32 2}
!117 = !{ptr @.str.49, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @bfusb_send_frame.__UNIQUE_ID_ddebug491, !116, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!119 = !{ptr @.str.50, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/bluetooth/bfusb.c", i32 479, i32 3}
!121 = !{ptr @.str.51, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/bluetooth/bfusb.c", i32 150, i32 2}
!123 = !{ptr @bfusb_tx_wakeup.__UNIQUE_ID_ddebug483, !122, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!124 = !{ptr @.str.52, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/bluetooth/bfusb.c", i32 117, i32 2}
!126 = !{ptr @.str.53, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @bfusb_send_bulk.__UNIQUE_ID_ddebug482, !125, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!128 = !{ptr @.str.54, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/bluetooth/bfusb.c", i32 136, i32 3}
!130 = !{ptr @.str.55, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/bluetooth/bfusb.c", i32 178, i32 2}
!132 = !{ptr @bfusb_tx_complete.__UNIQUE_ID_ddebug484, !131, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!133 = !{ptr @.str.56, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/bluetooth/bfusb.c", i32 698, i32 2}
!135 = !{ptr @.str.57, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @bfusb_disconnect.__UNIQUE_ID_ddebug499, !134, !"__UNIQUE_ID_ddebug499", i1 false, i1 false}
!137 = !{ptr @bfusb_table, !138, !"bfusb_table", i1 false, i1 false}
!138 = !{!"../drivers/bluetooth/bfusb.c", i32 30, i32 35}
!139 = !{i32 1, !"wchar_size", i32 2}
!140 = !{i32 1, !"min_enum_size", i32 4}
!141 = !{i32 8, !"branch-target-enforcement", i32 0}
!142 = !{i32 8, !"sign-return-address", i32 0}
!143 = !{i32 8, !"sign-return-address-all", i32 0}
!144 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!145 = !{i32 7, !"uwtable", i32 1}
!146 = !{i32 7, !"frame-pointer", i32 2}
!147 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!148 = !{!"auto-init"}
!149 = !{i64 2148966737, i64 2148966742, i64 2148966755, i64 2148966799, i64 2148966833, i64 2148966854}
!150 = !{i64 2148353360, i64 2148353386, i64 2148353415, i64 2148353449, i64 2148353480, i64 2148353503}
!151 = !{i64 2148355825, i64 2148355851, i64 2148355880, i64 2148355914, i64 2148355945, i64 2148355968}
