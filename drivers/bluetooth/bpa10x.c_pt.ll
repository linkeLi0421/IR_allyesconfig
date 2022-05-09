; ModuleID = '/llk/IR_all_yes/drivers/bluetooth/bpa10x.c_pt.bc'
source_filename = "../drivers/bluetooth/bpa10x.c"
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
%struct.h4_recv_pkt = type { i8, i8, i8, i8, i16, ptr }
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
%struct.bpa10x_data = type { ptr, ptr, %struct.usb_anchor, %struct.usb_anchor, [2 x ptr] }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, i16, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bdaddr_t = type { [6 x i8] }
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
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }

@__initcall__kmod_bpa10x__494_440_bpa10x_driver_init6 = internal global ptr @bpa10x_driver_init, section ".initcall6.init", align 4
@bpa10x_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @bpa10x_probe, ptr @bpa10x_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bpa10x_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 32 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_bpa10x_driver_exit = internal global ptr @bpa10x_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author495 = internal constant [52 x i8] c"bpa10x.author=Marcel Holtmann <marcel@holtmann.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description496 = internal constant [60 x i8] c"bpa10x.description=Digianswer Bluetooth USB driver ver 0.11\00", section ".modinfo", align 1
@__UNIQUE_ID_version497 = internal constant [20 x i8] c"bpa10x.version=0.11\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bpa10x\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0.11\00", [27 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file498 = internal constant [37 x i8] c"bpa10x.file=drivers/bluetooth/bpa10x\00", section ".modinfo", align 1
@__UNIQUE_ID_license499 = internal constant [19 x i8] c"bpa10x.license=GPL\00", section ".modinfo", align 1
@bpa10x_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 2301, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@bpa10x_probe.__UNIQUE_ID_ddebug492 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bpa10x_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/bluetooth/bpa10x.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"intf %p id %p\0A\00", [17 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->wait\00", [18 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->lock\00", [18 x i8] zeroinitializer }, align 32
@bpa10x_open.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.9, ptr @.str.4, ptr @.str.10, i8 0, i8 51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bpa10x_open\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@bpa10x_submit_intr_urb.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.11, ptr @.str.4, ptr @.str.10, i8 0, i8 32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bpa10x_submit_intr_urb\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: urb %p submission failed (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@bpa10x_rx_complete.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str.4, ptr @.str.14, i8 0, i8 22, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bpa10x_rx_complete\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s urb %p status %d count %d\0A\00", [34 x i8] zeroinitializer }, align 32
@bpa10x_recv_pkts = internal constant { [4 x %struct.h4_recv_pkt], [48 x i8] } { [4 x %struct.h4_recv_pkt] [%struct.h4_recv_pkt { i8 2, i8 4, i8 2, i8 2, i16 1028, ptr @hci_recv_frame }, %struct.h4_recv_pkt { i8 3, i8 3, i8 2, i8 1, i16 255, ptr @hci_recv_frame }, %struct.h4_recv_pkt { i8 4, i8 2, i8 1, i8 1, i16 260, ptr @hci_recv_frame }, %struct.h4_recv_pkt { i8 -1, i8 5, i8 3, i8 2, i16 1028, ptr @hci_recv_diag }], [48 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: corrupted event packet\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: urb %p failed to resubmit (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@bpa10x_submit_bulk_urb.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.17, ptr @.str.4, ptr @.str.10, i8 0, i8 42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bpa10x_submit_bulk_urb\00", [41 x i8] zeroinitializer }, align 32
@bpa10x_close.__UNIQUE_ID_ddebug487 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.18, ptr @.str.4, ptr @.str.10, i8 0, i8 56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bpa10x_close\00", [19 x i8] zeroinitializer }, align 32
@bpa10x_flush.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.19, ptr @.str.4, ptr @.str.10, i8 0, i8 59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bpa10x_flush\00", [19 x i8] zeroinitializer }, align 32
@bpa10x_setup.req = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\07", [31 x i8] zeroinitializer }, align 32
@bpa10x_setup.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.4, ptr @.str.10, i8 0, i8 62, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bpa10x_setup\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %s\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@bpa10x_send_frame.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.23, ptr @.str.4, ptr @.str.10, i8 0, i8 68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bpa10x_send_frame\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: urb %p submission failed\0A\00", [34 x i8] zeroinitializer }, align 32
@bpa10x_tx_complete.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.25, ptr @.str.4, ptr @.str.14, i8 0, i8 13, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bpa10x_tx_complete\00", [45 x i8] zeroinitializer }, align 32
@bpa10x_set_diag.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.26, ptr @.str.4, ptr @.str.10, i8 0, i8 87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bpa10x_set_diag\00", [16 x i8] zeroinitializer }, align 32
@bpa10x_disconnect.__UNIQUE_ID_ddebug493 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.27, ptr @.str.4, ptr @.str.28, i8 0, i8 104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bpa10x_disconnect\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"intf %p\0A\00", [23 x i8] zeroinitializer }, align 32
@switch.table.bpa10x_rx_complete = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 3, i32 0, i32 0, i32 0, i32 1, i32 2], [40 x i8] zeroinitializer }, align 32
@switch.table.bpa10x_rx_complete.29 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 3, i32 0, i32 0, i32 0, i32 1, i32 2], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@___asan_gen_.31 = private unnamed_addr constant [14 x i8] c"bpa10x_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 432, i32 26 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 444, i32 1 }
@___asan_gen_.43 = private unnamed_addr constant [13 x i8] c"bpa10x_table\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 27, i32 35 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 369, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 1367, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 1368, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 205, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 128, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 151, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 90, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"bpa10x_recv_pkts\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 77, i32 33 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 105, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 115, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 168, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 227, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 238, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [4 x i8] c"req\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 247, i32 18 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 250, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 257, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 259, i32 24 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 273, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 333, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 51, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 348, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.131 = private constant [30 x i8] c"../drivers/bluetooth/bpa10x.c\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 418, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [32 x i8] c"switch.table.bpa10x_rx_complete\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [35 x i8] c"switch.table.bpa10x_rx_complete.29\00", align 1
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_author495, ptr @__UNIQUE_ID_description496, ptr @__UNIQUE_ID_file498, ptr @__UNIQUE_ID_license499, ptr @__UNIQUE_ID_version497, ptr @__exitcall_bpa10x_driver_exit, ptr @__initcall__kmod_bpa10x__494_440_bpa10x_driver_init6, ptr @__modver_attr, ptr @bpa10x_driver_exit, ptr @bpa10x_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @bpa10x_table, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @init_usb_anchor.__key, ptr @.str.6, ptr @init_usb_anchor.__key.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @bpa10x_recv_pkts, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @bpa10x_setup.req, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @switch.table.bpa10x_rx_complete, ptr @switch.table.bpa10x_rx_complete.29], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpa10x_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpa10x_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpa10x_recv_pkts to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpa10x_setup.req to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bpa10x_rx_complete to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bpa10x_rx_complete.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bpa10x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @bpa10x_driver, ptr noundef null, ptr noundef nonnull @.str.1) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bpa10x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_deregister(ptr noundef nonnull @bpa10x_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpa10x_probe(ptr noundef %intf, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bpa10x_probe.__UNIQUE_ID_ddebug492, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bpa10x_probe, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bpa10x_probe.__UNIQUE_ID_ddebug492, ptr noundef nonnull @.str.5, ptr noundef %intf, ptr noundef %id) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %0 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bInterfaceNumber, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %if.end5, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 240, i32 noundef 3520) #7
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 -128
  %udev = getelementptr inbounds %struct.bpa10x_data, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %udev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %udev, align 4
  %tx_anchor = getelementptr inbounds %struct.bpa10x_data, ptr %call.i, i32 0, i32 2
  %7 = getelementptr inbounds %struct.bpa10x_data, ptr %call.i, i32 0, i32 2, i32 1
  %8 = call ptr @memset(ptr %7, i32 0, i32 104)
  %9 = ptrtoint ptr %tx_anchor to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %tx_anchor, ptr %tx_anchor, align 4
  %prev.i.i = getelementptr inbounds %struct.bpa10x_data, ptr %call.i, i32 0, i32 2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %tx_anchor, ptr %prev.i.i, align 4
  tail call void @__init_waitqueue_head(ptr noundef %7, ptr noundef nonnull @.str.6, ptr noundef nonnull @init_usb_anchor.__key) #7
  %lock.i = getelementptr inbounds %struct.bpa10x_data, ptr %call.i, i32 0, i32 2, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @init_usb_anchor.__key.7, i16 noundef signext 3) #7
  %rx_anchor = getelementptr inbounds %struct.bpa10x_data, ptr %call.i, i32 0, i32 3
  %11 = getelementptr inbounds %struct.bpa10x_data, ptr %call.i, i32 0, i32 3, i32 1
  %12 = call ptr @memset(ptr %11, i32 0, i32 104)
  %13 = ptrtoint ptr %rx_anchor to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %rx_anchor, ptr %rx_anchor, align 4
  %prev.i.i50 = getelementptr inbounds %struct.bpa10x_data, ptr %call.i, i32 0, i32 3, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i50 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %rx_anchor, ptr %prev.i.i50, align 4
  tail call void @__init_waitqueue_head(ptr noundef %11, ptr noundef nonnull @.str.6, ptr noundef nonnull @init_usb_anchor.__key) #7
  %lock.i52 = getelementptr inbounds %struct.bpa10x_data, ptr %call.i, i32 0, i32 3, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i52, ptr noundef nonnull @.str.8, ptr noundef nonnull @init_usb_anchor.__key.7, i16 noundef signext 3) #7
  %call.i53 = tail call ptr @hci_alloc_dev_priv(i32 noundef 0) #7
  %tobool12.not = icmp eq ptr %call.i53, null
  br i1 %tobool12.not, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %bus = getelementptr inbounds %struct.hci_dev, ptr %call.i53, i32 0, i32 5
  %15 = ptrtoint ptr %bus to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %bus, align 2
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %call.i53, i32 0, i32 204, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i53, ptr %call.i, align 4
  %parent = getelementptr inbounds %struct.hci_dev, ptr %call.i53, i32 0, i32 204, i32 1
  %18 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev, ptr %parent, align 8
  %open = getelementptr inbounds %struct.hci_dev, ptr %call.i53, i32 0, i32 232
  %19 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @bpa10x_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.hci_dev, ptr %call.i53, i32 0, i32 233
  %20 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @bpa10x_close, ptr %close, align 4
  %flush = getelementptr inbounds %struct.hci_dev, ptr %call.i53, i32 0, i32 234
  %21 = ptrtoint ptr %flush to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @bpa10x_flush, ptr %flush, align 8
  %setup = getelementptr inbounds %struct.hci_dev, ptr %call.i53, i32 0, i32 235
  %22 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @bpa10x_setup, ptr %setup, align 4
  %send = getelementptr inbounds %struct.hci_dev, ptr %call.i53, i32 0, i32 237
  %23 = ptrtoint ptr %send to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @bpa10x_send_frame, ptr %send, align 4
  %set_diag = getelementptr inbounds %struct.hci_dev, ptr %call.i53, i32 0, i32 241
  %24 = ptrtoint ptr %set_diag to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @bpa10x_set_diag, ptr %set_diag, align 4
  %quirks = getelementptr inbounds %struct.hci_dev, ptr %call.i53, i32 0, i32 118
  tail call void @_set_bit(i32 noundef 0, ptr noundef %quirks) #7
  %call18 = tail call i32 @hci_register_dev(ptr noundef nonnull %call.i53) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @hci_free_dev(ptr noundef nonnull %call.i53) #7
  br label %cleanup

if.end22:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i54 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %25 = ptrtoint ptr %driver_data.i.i54 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %driver_data.i.i54, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then21, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.then21 ], [ 0, %if.end22 ], [ -19, %do.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ -12, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpa10x_disconnect(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bpa10x_disconnect.__UNIQUE_ID_ddebug493, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bpa10x_disconnect, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bpa10x_disconnect.__UNIQUE_ID_ddebug493, ptr noundef nonnull @.str.28, ptr noundef %intf) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  tail call void @hci_unregister_dev(ptr noundef %4) #7
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  tail call void @hci_free_dev(ptr noundef %6) #7
  %rx_skb = getelementptr inbounds %struct.bpa10x_data, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_skb, align 4
  tail call void @kfree_skb_reason(ptr noundef %8, i32 noundef 0) #7
  %arrayidx9 = getelementptr %struct.bpa10x_data, ptr %1, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx9, align 4
  tail call void @kfree_skb_reason(ptr noundef %10, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpa10x_open(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bpa10x_open.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bpa10x_open, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bpa10x_open.__UNIQUE_ID_ddebug486, ptr noundef nonnull @.str.10, ptr noundef %name) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call fastcc i32 @bpa10x_submit_intr_urb(ptr noundef %hdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end.error_crit_edge, label %if.end6

do.end.error_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end6:                                          ; preds = %do.end
  %call7 = tail call fastcc i32 @bpa10x_submit_bulk_urb(ptr noundef %hdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end6.error_crit_edge, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6.error_crit_edge:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

error:                                            ; preds = %if.end6.error_crit_edge, %do.end.error_crit_edge
  %err.0 = phi i32 [ %call4, %do.end.error_crit_edge ], [ %call7, %if.end6.error_crit_edge ]
  %rx_anchor = getelementptr inbounds %struct.bpa10x_data, ptr %1, i32 0, i32 3
  tail call void @usb_kill_anchored_urbs(ptr noundef %rx_anchor) #7
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %error ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpa10x_close(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bpa10x_close.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bpa10x_close, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bpa10x_close.__UNIQUE_ID_ddebug487, ptr noundef nonnull @.str.10, ptr noundef %name) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %rx_anchor = getelementptr inbounds %struct.bpa10x_data, ptr %1, i32 0, i32 3
  tail call void @usb_kill_anchored_urbs(ptr noundef %rx_anchor) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpa10x_flush(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bpa10x_flush.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bpa10x_flush, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bpa10x_flush.__UNIQUE_ID_ddebug488, ptr noundef nonnull @.str.10, ptr noundef %name) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tx_anchor = getelementptr inbounds %struct.bpa10x_data, ptr %1, i32 0, i32 2
  tail call void @usb_kill_anchored_urbs(ptr noundef %tx_anchor) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpa10x_setup(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bpa10x_setup.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bpa10x_setup, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bpa10x_setup.__UNIQUE_ID_ddebug489, ptr noundef nonnull @.str.10, ptr noundef %name) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call ptr @__hci_cmd_sync(ptr noundef %hdev, i16 noundef zeroext -1010, i32 noundef 1, ptr noundef nonnull @bpa10x_setup.req, i32 noundef 1000) #7
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %name9 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %data = getelementptr inbounds %struct.sk_buff, ptr %call4, i32 0, i32 19
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 1
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.21, ptr noundef %name9, ptr noundef %add.ptr) #7
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %add.ptr12 = getelementptr i8, ptr %4, i32 1
  tail call void (ptr, ptr, ...) @hci_set_fw_info(ptr noundef %hdev, ptr noundef nonnull @.str.22, ptr noundef %add.ptr12) #7
  tail call void @kfree_skb_reason(ptr noundef %call4, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6
  %retval.0 = phi i32 [ %0, %if.then6 ], [ 0, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpa10x_send_frame(ptr noundef %hdev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bpa10x_send_frame.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bpa10x_send_frame, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bpa10x_send_frame.__UNIQUE_ID_ddebug490, ptr noundef nonnull @.str.10, ptr noundef %name) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %hdev, ptr %2, align 8
  %call4 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #7
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %4 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cb, align 8
  %call9 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 1) #7
  %6 = ptrtoint ptr %call9 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %call9, align 1
  %7 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cb, align 8
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i8 %8, label %if.end7.cleanup.sink.split_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb22
    i8 3, label %sw.bb31
  ]

if.end7.cleanup.sink.split_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

sw.bb:                                            ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 8) #10
  %tobool14.not = icmp eq ptr %call7.i, null
  br i1 %tobool14.not, label %sw.bb.cleanup.sink.split_crit_edge, label %if.end16

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end16:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 64, ptr %call7.i, align 8
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i, i32 0, i32 1
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %12 = call ptr @memset(ptr %bRequest, i32 0, i32 5)
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  %conv17 = trunc i32 %14 to i16
  %15 = tail call i16 @llvm.bswap.i16(i16 %conv17)
  %wLength = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i, i32 0, i32 4
  %16 = ptrtoint ptr %wLength to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %wLength, align 2
  %udev = getelementptr inbounds %struct.bpa10x_data, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %udev, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %shl.i = shl i32 %20, 8
  %or = or i32 %shl.i, -2147483648
  %data20 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %21 = ptrtoint ptr %data20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data20, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 8
  %23 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %18, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 10
  %24 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or, ptr %pipe2.i, align 4
  %setup_packet3.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 21
  %25 = ptrtoint ptr %setup_packet3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i, ptr %setup_packet3.i, align 4
  %transfer_buffer4.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 14
  %26 = ptrtoint ptr %transfer_buffer4.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %22, ptr %transfer_buffer4.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 19
  %27 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %14, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 28
  %28 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @bpa10x_tx_complete, ptr %complete.i, align 4
  %context5.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 27
  %29 = ptrtoint ptr %context5.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %skb, ptr %context5.i, align 4
  %cmd_tx = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 199, i32 2
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %udev23 = getelementptr inbounds %struct.bpa10x_data, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %udev23 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %udev23, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 8
  %shl.i95 = shl i32 %33, 8
  %or25 = or i32 %shl.i95, -1073676288
  %data27 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %34 = ptrtoint ptr %data27 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data27, align 4
  %len28 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %36 = ptrtoint ptr %len28 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len28, align 4
  %dev1.i96 = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 8
  %38 = ptrtoint ptr %dev1.i96 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %31, ptr %dev1.i96, align 4
  %pipe2.i97 = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 10
  %39 = ptrtoint ptr %pipe2.i97 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or25, ptr %pipe2.i97, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 14
  %40 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %35, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i98 = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 19
  %41 = ptrtoint ptr %transfer_buffer_length.i98 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %37, ptr %transfer_buffer_length.i98, align 4
  %complete.i99 = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 28
  %42 = ptrtoint ptr %complete.i99 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @bpa10x_tx_complete, ptr %complete.i99, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 27
  %43 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %skb, ptr %context4.i, align 4
  %acl_tx = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 199, i32 4
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %udev32 = getelementptr inbounds %struct.bpa10x_data, ptr %1, i32 0, i32 1
  %44 = ptrtoint ptr %udev32 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %udev32, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 8
  %shl.i100 = shl i32 %47, 8
  %or34 = or i32 %shl.i100, -1073676288
  %data36 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %48 = ptrtoint ptr %data36 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data36, align 4
  %len37 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %50 = ptrtoint ptr %len37 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len37, align 4
  %dev1.i102 = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 8
  %52 = ptrtoint ptr %dev1.i102 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %45, ptr %dev1.i102, align 4
  %pipe2.i103 = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 10
  %53 = ptrtoint ptr %pipe2.i103 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or34, ptr %pipe2.i103, align 4
  %transfer_buffer3.i104 = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 14
  %54 = ptrtoint ptr %transfer_buffer3.i104 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %49, ptr %transfer_buffer3.i104, align 4
  %transfer_buffer_length.i105 = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 19
  %55 = ptrtoint ptr %transfer_buffer_length.i105 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %51, ptr %transfer_buffer_length.i105, align 4
  %complete.i106 = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 28
  %56 = ptrtoint ptr %complete.i106 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @bpa10x_tx_complete, ptr %complete.i106, align 4
  %context4.i107 = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 27
  %57 = ptrtoint ptr %context4.i107 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %skb, ptr %context4.i107, align 4
  %sco_tx = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 199, i32 6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb31, %sw.bb22, %if.end16
  %sco_tx.sink109 = phi ptr [ %sco_tx, %sw.bb31 ], [ %acl_tx, %sw.bb22 ], [ %cmd_tx, %if.end16 ]
  %58 = ptrtoint ptr %sco_tx.sink109 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sco_tx.sink109, align 8
  %inc39 = add i32 %59, 1
  store i32 %inc39, ptr %sco_tx.sink109, align 8
  %tx_anchor = getelementptr inbounds %struct.bpa10x_data, ptr %1, i32 0, i32 2
  tail call void @usb_anchor_urb(ptr noundef nonnull %call4, ptr noundef %tx_anchor) #7
  %call40 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call4, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp = icmp slt i32 %call40, 0
  br i1 %cmp, label %if.then42, label %sw.epilog.cleanup.sink.split_crit_edge

sw.epilog.cleanup.sink.split_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then42:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %name43 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.24, ptr noundef %name43, ptr noundef nonnull %call4) #7
  %setup_packet = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 21
  %60 = ptrtoint ptr %setup_packet to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %setup_packet, align 4
  tail call void @kfree(ptr noundef %61) #7
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call4) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then42, %sw.epilog.cleanup.sink.split_crit_edge, %sw.bb.cleanup.sink.split_crit_edge, %if.end7.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -12, %sw.bb.cleanup.sink.split_crit_edge ], [ -84, %if.end7.cleanup.sink.split_crit_edge ], [ %call40, %if.then42 ], [ %call40, %sw.epilog.cleanup.sink.split_crit_edge ]
  tail call void @usb_free_urb(ptr noundef nonnull %call4) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpa10x_set_diag(ptr noundef %hdev, i1 noundef zeroext %enable) #2 align 64 {
entry:
  %req = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %req) #7
  %0 = getelementptr inbounds [2 x i8], ptr %req, i32 0, i32 1
  %1 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %req, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %0, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bpa10x_set_diag.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bpa10x_set_diag, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bpa10x_set_diag.__UNIQUE_ID_ddebug491, ptr noundef nonnull @.str.10, ptr noundef %name) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 3
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %5 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %if.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %call11 = call ptr @__hci_cmd_sync(ptr noundef %hdev, i16 noundef zeroext -1010, i32 noundef 2, ptr noundef nonnull %req, i32 noundef 1000) #7
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree_skb_reason(ptr noundef %call11, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then13, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then13 ], [ 0, %if.end15 ], [ -100, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %req) #7
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
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_alloc_dev_priv(i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bpa10x_submit_intr_urb(ptr noundef %hdev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bpa10x_submit_intr_urb.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bpa10x_submit_intr_urb, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bpa10x_submit_intr_urb.__UNIQUE_ID_ddebug484, ptr noundef nonnull @.str.10, ptr noundef %name) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #7
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 16) #10
  %tobool9.not = icmp eq ptr %call7.i, null
  br i1 %tobool9.not, label %if.end7.cleanup.sink.split_crit_edge, label %if.end11

if.end7.cleanup.sink.split_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end11:                                         ; preds = %if.end7
  %udev = getelementptr inbounds %struct.bpa10x_data, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %udev, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i = shl i32 %6, 8
  %or13 = or i32 %shl.i, 1077969024
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 8
  %7 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 10
  %8 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or13, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 14
  %9 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 19
  %10 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 16, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 28
  %11 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @bpa10x_rx_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 27
  %12 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %hdev, ptr %context4.i, align 4
  %13 = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 25
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %13, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 23
  %15 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %start_frame.i, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 13
  %16 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %transfer_flags, align 4
  %or15 = or i32 %17, 256
  store i32 %or15, ptr %transfer_flags, align 4
  %rx_anchor = getelementptr inbounds %struct.bpa10x_data, ptr %1, i32 0, i32 3
  tail call void @usb_anchor_urb(ptr noundef nonnull %call4, ptr noundef %rx_anchor) #7
  %call16 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call4, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp slt i32 %call16, 0
  br i1 %cmp, label %if.then17, label %if.end11.cleanup.sink.split_crit_edge

if.end11.cleanup.sink.split_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %name18 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %sub = sub i32 0, %call16
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.12, ptr noundef %name18, ptr noundef nonnull %call4, i32 noundef %sub) #7
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call4) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then17, %if.end11.cleanup.sink.split_crit_edge, %if.end7.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -12, %if.end7.cleanup.sink.split_crit_edge ], [ %call16, %if.then17 ], [ %call16, %if.end11.cleanup.sink.split_crit_edge ]
  tail call void @usb_free_urb(ptr noundef nonnull %call4) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bpa10x_submit_bulk_urb(ptr noundef %hdev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bpa10x_submit_bulk_urb.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bpa10x_submit_bulk_urb, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bpa10x_submit_bulk_urb.__UNIQUE_ID_ddebug485, ptr noundef nonnull @.str.10, ptr noundef %name) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #7
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 64) #10
  %tobool9.not = icmp eq ptr %call7.i, null
  br i1 %tobool9.not, label %if.end7.cleanup.sink.split_crit_edge, label %if.end11

if.end7.cleanup.sink.split_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end11:                                         ; preds = %if.end7
  %udev = getelementptr inbounds %struct.bpa10x_data, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %udev, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i = shl i32 %6, 8
  %or13 = or i32 %shl.i, -1069481856
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 8
  %7 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 10
  %8 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or13, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 14
  %9 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 19
  %10 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 64, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 28
  %11 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @bpa10x_rx_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 27
  %12 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %hdev, ptr %context4.i, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 13
  %13 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %transfer_flags, align 4
  %or15 = or i32 %14, 256
  store i32 %or15, ptr %transfer_flags, align 4
  %rx_anchor = getelementptr inbounds %struct.bpa10x_data, ptr %1, i32 0, i32 3
  tail call void @usb_anchor_urb(ptr noundef nonnull %call4, ptr noundef %rx_anchor) #7
  %call16 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call4, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp slt i32 %call16, 0
  br i1 %cmp, label %if.then17, label %if.end11.cleanup.sink.split_crit_edge

if.end11.cleanup.sink.split_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %name18 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %sub = sub i32 0, %call16
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.12, ptr noundef %name18, ptr noundef nonnull %call4, i32 noundef %sub) #7
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call4) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then17, %if.end11.cleanup.sink.split_crit_edge, %if.end7.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -12, %if.end7.cleanup.sink.split_crit_edge ], [ %call16, %if.then17 ], [ %call16, %if.end11.cleanup.sink.split_crit_edge ]
  tail call void @usb_free_urb(ptr noundef nonnull %call4) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_anchored_urbs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpa10x_rx_complete(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 204, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bpa10x_rx_complete.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bpa10x_rx_complete, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %6 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual_length, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bpa10x_rx_complete.__UNIQUE_ID_ddebug483, ptr noundef nonnull @.str.14, ptr noundef %name, ptr noundef %urb, i32 noundef %5, i32 noundef %7) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5.not = icmp eq i32 %10, 0
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %status8 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %11 = ptrtoint ptr %status8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then9, label %if.end7.if.end32_crit_edge

if.end7.if.end32_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then9:                                         ; preds = %if.end7
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %13 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pipe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741825, i32 %14)
  %cmp10 = icmp ugt i32 %14, -1073741825
  %idxprom = zext i1 %cmp10 to i32
  %arrayidx = getelementptr %struct.bpa10x_data, ptr %3, i32 0, i32 4, i32 %idxprom
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %actual_length13 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %17 = ptrtoint ptr %actual_length13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %actual_length13, align 4
  %cmp.i.i = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  %spec.select.i = select i1 %cmp.i.i, ptr null, ptr %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not36.i = icmp eq i32 %18, 0
  br i1 %tobool.not36.i, label %if.then9.if.end32.sink.split_crit_edge, label %while.body.i.preheader

if.then9.if.end32.sink.split_crit_edge:           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.sink.split

while.body.i.preheader:                           ; preds = %if.then9
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %19 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %transfer_buffer, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.backedge, %while.body.i.preheader
  %skb.addr.139.i = phi ptr [ %spec.select.i, %while.body.i.preheader ], [ %skb.addr.139.i.be, %while.body.i.backedge ]
  %buffer.addr.038.i = phi ptr [ %20, %while.body.i.preheader ], [ %add.ptr37.i, %while.body.i.backedge ]
  %count.addr.037.i = phi i32 [ %18, %while.body.i.preheader ], [ %sub36.i, %while.body.i.backedge ]
  %tobool1.not.i = icmp eq ptr %skb.addr.139.i, null
  br i1 %tobool1.not.i, label %for.cond.preheader.i, label %while.body.i.if.end26.i_crit_edge

while.body.i.if.end26.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

for.cond.preheader.i:                             ; preds = %while.body.i
  %21 = ptrtoint ptr %buffer.addr.038.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %buffer.addr.038.i, align 1
  %switch.tableidx = add i8 %22, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %switch.tableidx)
  %23 = icmp ult i8 %switch.tableidx, 6
  br i1 %23, label %switch.hole_check, label %for.cond.preheader.i.h4_recv_buf.exit.thread_crit_edge

for.cond.preheader.i.h4_recv_buf.exit.thread_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %h4_recv_buf.exit.thread

switch.hole_check:                                ; preds = %for.cond.preheader.i
  %switch.shifted = lshr i8 57, %switch.tableidx
  %24 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %switch.lobit.not = icmp eq i8 %24, 0
  br i1 %switch.lobit.not, label %switch.hole_check.h4_recv_buf.exit.thread_crit_edge, label %switch.lookup

switch.hole_check.h4_recv_buf.exit.thread_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %h4_recv_buf.exit.thread

switch.lookup:                                    ; preds = %switch.hole_check
  %25 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.bpa10x_rx_complete, i32 0, i32 %25
  %26 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %26)
  %switch.load = load i32, ptr %switch.gep, align 4
  %maxlen.i = getelementptr %struct.h4_recv_pkt, ptr @bpa10x_recv_pkts, i32 %switch.load, i32 4
  %27 = ptrtoint ptr %maxlen.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %maxlen.i, align 4
  %conv10.i = zext i16 %28 to i32
  %add.i.i = add nuw nsw i32 %conv10.i, 8
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %switch.lookup.h4_recv_buf.exit.thread_crit_edge, label %if.end25.i

switch.lookup.h4_recv_buf.exit.thread_crit_edge:  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %h4_recv_buf.exit.thread

if.end25.i:                                       ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %29 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %30, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %31 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %32, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %33 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %22, ptr %cb.i, align 8
  %hlen.i = getelementptr %struct.h4_recv_pkt, ptr @bpa10x_recv_pkts, i32 %switch.load, i32 1
  %34 = ptrtoint ptr %hlen.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %hlen.i, align 1
  %conv19.i = zext i8 %35 to i16
  %expect.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 2
  %36 = ptrtoint ptr %expect.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv19.i, ptr %expect.i, align 2
  %sub.i = add i32 %count.addr.037.i, -1
  %add.ptr.i = getelementptr i8, ptr %buffer.addr.038.i, i32 1
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.end25.i, %while.body.i.if.end26.i_crit_edge
  %count.addr.1.i = phi i32 [ %count.addr.037.i, %while.body.i.if.end26.i_crit_edge ], [ %sub.i, %if.end25.i ]
  %buffer.addr.1.i = phi ptr [ %buffer.addr.038.i, %while.body.i.if.end26.i_crit_edge ], [ %add.ptr.i, %if.end25.i ]
  %skb.addr.3.i = phi ptr [ %skb.addr.139.i, %while.body.i.if.end26.i_crit_edge ], [ %call.i.i.i, %if.end25.i ]
  %expect29.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.3.i, i32 0, i32 3, i32 2
  %37 = ptrtoint ptr %expect29.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %expect29.i, align 2
  %conv30.i = zext i16 %38 to i32
  %len31.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.3.i, i32 0, i32 6
  %39 = ptrtoint ptr %len31.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len31.i, align 4
  %sub32.i = sub i32 %conv30.i, %40
  %41 = tail call i32 @llvm.umin.i32(i32 %sub32.i, i32 %count.addr.1.i) #7
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %skb.addr.3.i, i32 noundef %41) #7
  %42 = call ptr @memcpy(ptr %call.i.i, ptr %buffer.addr.1.i, i32 %41)
  %sub36.i = sub i32 %count.addr.1.i, %41
  %add.ptr37.i = getelementptr i8, ptr %buffer.addr.1.i, i32 %41
  %43 = ptrtoint ptr %len31.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len31.i, align 4
  %45 = ptrtoint ptr %expect29.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %expect29.i, align 2
  %conv42.i = zext i16 %46 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %conv42.i)
  %cmp43.i = icmp ult i32 %44, %conv42.i
  br i1 %cmp43.i, label %if.end26.i.cleanup127.i_crit_edge, label %for.cond47.preheader.i

if.end26.i.cleanup127.i_crit_edge:                ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup127.i

for.cond47.preheader.i:                           ; preds = %if.end26.i
  %cb27.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.3.i, i32 0, i32 3
  %47 = ptrtoint ptr %cb27.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %cb27.i, align 8
  %switch.tableidx85 = add i8 %48, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %switch.tableidx85)
  %49 = icmp ult i8 %switch.tableidx85, 6
  br i1 %49, label %switch.hole_check86, label %for.cond47.preheader.i.return.sink.split.i_crit_edge

for.cond47.preheader.i.return.sink.split.i_crit_edge: ; preds = %for.cond47.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i

switch.hole_check86:                              ; preds = %for.cond47.preheader.i
  %switch.shifted88 = lshr i8 57, %switch.tableidx85
  %50 = and i8 %switch.shifted88, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %switch.lobit89.not = icmp eq i8 %50, 0
  br i1 %switch.lobit89.not, label %switch.hole_check86.return.sink.split.i_crit_edge, label %switch.lookup87

switch.hole_check86.return.sink.split.i_crit_edge: ; preds = %switch.hole_check86
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i

switch.lookup87:                                  ; preds = %switch.hole_check86
  %51 = sext i8 %switch.tableidx85 to i32
  %switch.gep90 = getelementptr inbounds [6 x i32], ptr @switch.table.bpa10x_rx_complete.29, i32 0, i32 %51
  %52 = ptrtoint ptr %switch.gep90 to i32
  call void @__asan_load4_noabort(i32 %52)
  %switch.load91 = load i32, ptr %switch.gep90, align 4
  %hlen72.i = getelementptr %struct.h4_recv_pkt, ptr @bpa10x_recv_pkts, i32 %switch.load91, i32 1
  %53 = ptrtoint ptr %hlen72.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %hlen72.i, align 1
  %conv73.i = zext i8 %54 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %conv73.i)
  %cmp74.i = icmp eq i32 %44, %conv73.i
  br i1 %cmp74.i, label %if.then76.i, label %switch.lookup87.cleanup127.i.thread_crit_edge

switch.lookup87.cleanup127.i.thread_crit_edge:    ; preds = %switch.lookup87
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup127.i.thread

if.then76.i:                                      ; preds = %switch.lookup87
  %lsize.i = getelementptr %struct.h4_recv_pkt, ptr @bpa10x_recv_pkts, i32 %switch.load91, i32 3
  %55 = ptrtoint ptr %lsize.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %lsize.i, align 1
  %57 = zext i8 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %56, label %if.then76.i.return.sink.split.i_crit_edge [
    i8 0, label %if.then76.i.cleanup127.i.thread_crit_edge
    i8 1, label %sw.bb79.i
    i8 2, label %sw.bb96.i
  ]

if.then76.i.cleanup127.i.thread_crit_edge:        ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup127.i.thread

if.then76.i.return.sink.split.i_crit_edge:        ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i

sw.bb79.i:                                        ; preds = %if.then76.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.3.i, i32 0, i32 19
  %58 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data.i, align 4
  %loff.i = getelementptr %struct.h4_recv_pkt, ptr @bpa10x_recv_pkts, i32 %switch.load91, i32 2
  %60 = ptrtoint ptr %loff.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %loff.i, align 2
  %idxprom.i = zext i8 %61 to i32
  %arrayidx81.i = getelementptr i8, ptr %59, i32 %idxprom.i
  %62 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx81.i, align 1
  %conv82.i = zext i8 %63 to i16
  %conv83.i = zext i8 %63 to i32
  %conv88.i = add i16 %46, %conv82.i
  %64 = ptrtoint ptr %expect29.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv88.i, ptr %expect29.i, align 2
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.3.i, i32 0, i32 7
  %65 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.i.not.i.i = icmp eq i32 %66, 0
  br i1 %tobool.i.not.i.i, label %cond.false.i.i, label %sw.bb79.i.skb_tailroom.exit.i_crit_edge

sw.bb79.i.skb_tailroom.exit.i_crit_edge:          ; preds = %sw.bb79.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_tailroom.exit.i

cond.false.i.i:                                   ; preds = %sw.bb79.i
  call void @__sanitizer_cov_trace_pc() #9
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.3.i, i32 0, i32 17
  %67 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.3.i, i32 0, i32 16
  %69 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %68 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %70 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  br label %skb_tailroom.exit.i

skb_tailroom.exit.i:                              ; preds = %cond.false.i.i, %sw.bb79.i.skb_tailroom.exit.i_crit_edge
  %cond.i.i = phi i32 [ %sub.ptr.sub.i.i, %cond.false.i.i ], [ 0, %sw.bb79.i.skb_tailroom.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %conv83.i)
  %cmp91.i = icmp slt i32 %cond.i.i, %conv83.i
  br i1 %cmp91.i, label %skb_tailroom.exit.i.return.sink.split.i_crit_edge, label %skb_tailroom.exit.i.sw.epilog.i_crit_edge

skb_tailroom.exit.i.sw.epilog.i_crit_edge:        ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

skb_tailroom.exit.i.return.sink.split.i_crit_edge: ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i

sw.bb96.i:                                        ; preds = %if.then76.i
  %data97.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.3.i, i32 0, i32 19
  %71 = ptrtoint ptr %data97.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data97.i, align 4
  %loff99.i = getelementptr %struct.h4_recv_pkt, ptr @bpa10x_recv_pkts, i32 %switch.load91, i32 2
  %73 = ptrtoint ptr %loff99.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %loff99.i, align 2
  %conv100.i = zext i8 %74 to i32
  %add.ptr101.i = getelementptr i8, ptr %72, i32 %conv100.i
  %75 = ptrtoint ptr %add.ptr101.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 2)
  %76 = load i16, ptr %add.ptr101.i, align 1
  %77 = tail call i16 @llvm.bswap.i16(i16 %76) #7
  %conv103.i = zext i16 %77 to i32
  %add108.i = add i16 %77, %46
  %78 = ptrtoint ptr %expect29.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %add108.i, ptr %expect29.i, align 2
  %data_len.i.i1.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.3.i, i32 0, i32 7
  %79 = ptrtoint ptr %data_len.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %data_len.i.i1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.i.not.i2.i = icmp eq i32 %80, 0
  br i1 %tobool.i.not.i2.i, label %cond.false.i8.i, label %sw.bb96.i.skb_tailroom.exit10.i_crit_edge

sw.bb96.i.skb_tailroom.exit10.i_crit_edge:        ; preds = %sw.bb96.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_tailroom.exit10.i

cond.false.i8.i:                                  ; preds = %sw.bb96.i
  call void @__sanitizer_cov_trace_pc() #9
  %end.i3.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.3.i, i32 0, i32 17
  %81 = ptrtoint ptr %end.i3.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %end.i3.i, align 4
  %tail.i4.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.3.i, i32 0, i32 16
  %83 = ptrtoint ptr %tail.i4.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %tail.i4.i, align 8
  %sub.ptr.lhs.cast.i5.i = ptrtoint ptr %82 to i32
  %sub.ptr.rhs.cast.i6.i = ptrtoint ptr %84 to i32
  %sub.ptr.sub.i7.i = sub i32 %sub.ptr.lhs.cast.i5.i, %sub.ptr.rhs.cast.i6.i
  br label %skb_tailroom.exit10.i

skb_tailroom.exit10.i:                            ; preds = %cond.false.i8.i, %sw.bb96.i.skb_tailroom.exit10.i_crit_edge
  %cond.i9.i = phi i32 [ %sub.ptr.sub.i7.i, %cond.false.i8.i ], [ 0, %sw.bb96.i.skb_tailroom.exit10.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i9.i, i32 %conv103.i)
  %cmp112.i = icmp slt i32 %cond.i9.i, %conv103.i
  br i1 %cmp112.i, label %skb_tailroom.exit10.i.return.sink.split.i_crit_edge, label %skb_tailroom.exit10.i.sw.epilog.i_crit_edge

skb_tailroom.exit10.i.sw.epilog.i_crit_edge:      ; preds = %skb_tailroom.exit10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

skb_tailroom.exit10.i.return.sink.split.i_crit_edge: ; preds = %skb_tailroom.exit10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i

sw.epilog.i:                                      ; preds = %skb_tailroom.exit10.i.sw.epilog.i_crit_edge, %skb_tailroom.exit.i.sw.epilog.i_crit_edge
  %dlen.0.i = phi i16 [ %77, %skb_tailroom.exit10.i.sw.epilog.i_crit_edge ], [ %conv82.i, %skb_tailroom.exit.i.sw.epilog.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dlen.0.i)
  %tobool118.not.i = icmp eq i16 %dlen.0.i, 0
  br i1 %tobool118.not.i, label %sw.epilog.i.cleanup127.i.thread_crit_edge, label %sw.epilog.i.cleanup127.i_crit_edge

sw.epilog.i.cleanup127.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup127.i

sw.epilog.i.cleanup127.i.thread_crit_edge:        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup127.i.thread

cleanup127.i:                                     ; preds = %sw.epilog.i.cleanup127.i_crit_edge, %if.end26.i.cleanup127.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub36.i)
  %tobool.not.i = icmp eq i32 %sub36.i, 0
  br i1 %tobool.not.i, label %h4_recv_buf.exit, label %cleanup127.i.while.body.i.backedge_crit_edge

cleanup127.i.while.body.i.backedge_crit_edge:     ; preds = %cleanup127.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.backedge

while.body.i.backedge:                            ; preds = %cleanup127.i.thread.while.body.i.backedge_crit_edge, %cleanup127.i.while.body.i.backedge_crit_edge
  %skb.addr.139.i.be = phi ptr [ %skb.addr.3.i, %cleanup127.i.while.body.i.backedge_crit_edge ], [ null, %cleanup127.i.thread.while.body.i.backedge_crit_edge ]
  br label %while.body.i

cleanup127.i.thread:                              ; preds = %sw.epilog.i.cleanup127.i.thread_crit_edge, %if.then76.i.cleanup127.i.thread_crit_edge, %switch.lookup87.cleanup127.i.thread_crit_edge
  %recv124.i = getelementptr %struct.h4_recv_pkt, ptr @bpa10x_recv_pkts, i32 %switch.load91, i32 5
  %85 = ptrtoint ptr %recv124.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %recv124.i, align 4
  %call125.i = tail call i32 %86(ptr noundef %1, ptr noundef nonnull %skb.addr.3.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub36.i)
  %tobool.not.i75 = icmp eq i32 %sub36.i, 0
  br i1 %tobool.not.i75, label %cleanup127.i.thread.if.end32.sink.split_crit_edge, label %cleanup127.i.thread.while.body.i.backedge_crit_edge

cleanup127.i.thread.while.body.i.backedge_crit_edge: ; preds = %cleanup127.i.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.backedge

cleanup127.i.thread.if.end32.sink.split_crit_edge: ; preds = %cleanup127.i.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.sink.split

return.sink.split.i:                              ; preds = %skb_tailroom.exit10.i.return.sink.split.i_crit_edge, %skb_tailroom.exit.i.return.sink.split.i_crit_edge, %if.then76.i.return.sink.split.i_crit_edge, %switch.hole_check86.return.sink.split.i_crit_edge, %for.cond47.preheader.i.return.sink.split.i_crit_edge
  %retval.4.ph.i = phi ptr [ inttoptr (i32 -84 to ptr), %for.cond47.preheader.i.return.sink.split.i_crit_edge ], [ inttoptr (i32 -90 to ptr), %skb_tailroom.exit.i.return.sink.split.i_crit_edge ], [ inttoptr (i32 -90 to ptr), %skb_tailroom.exit10.i.return.sink.split.i_crit_edge ], [ inttoptr (i32 -84 to ptr), %if.then76.i.return.sink.split.i_crit_edge ], [ inttoptr (i32 -84 to ptr), %switch.hole_check86.return.sink.split.i_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb.addr.3.i, i32 noundef 0) #7
  br label %h4_recv_buf.exit.thread

h4_recv_buf.exit.thread:                          ; preds = %return.sink.split.i, %switch.lookup.h4_recv_buf.exit.thread_crit_edge, %switch.hole_check.h4_recv_buf.exit.thread_crit_edge, %for.cond.preheader.i.h4_recv_buf.exit.thread_crit_edge
  %retval.4.i.ph = phi ptr [ %retval.4.ph.i, %return.sink.split.i ], [ inttoptr (i32 -84 to ptr), %switch.hole_check.h4_recv_buf.exit.thread_crit_edge ], [ inttoptr (i32 -12 to ptr), %switch.lookup.h4_recv_buf.exit.thread_crit_edge ], [ inttoptr (i32 -84 to ptr), %for.cond.preheader.i.h4_recv_buf.exit.thread_crit_edge ]
  %87 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %retval.4.i.ph, ptr %arrayidx, align 4
  br label %if.then24

h4_recv_buf.exit:                                 ; preds = %cleanup127.i
  %88 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %skb.addr.3.i, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %skb.addr.3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %h4_recv_buf.exit.if.then24_crit_edge, label %h4_recv_buf.exit.if.end32_crit_edge

h4_recv_buf.exit.if.end32_crit_edge:              ; preds = %h4_recv_buf.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

h4_recv_buf.exit.if.then24_crit_edge:             ; preds = %h4_recv_buf.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24

if.then24:                                        ; preds = %h4_recv_buf.exit.if.then24_crit_edge, %h4_recv_buf.exit.thread
  %name25 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.15, ptr noundef %name25) #7
  %stat = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 199
  %89 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %stat, align 8
  %inc = add i32 %90, 1
  store i32 %inc, ptr %stat, align 8
  br label %if.end32.sink.split

if.end32.sink.split:                              ; preds = %if.then24, %cleanup127.i.thread.if.end32.sink.split_crit_edge, %if.then9.if.end32.sink.split_crit_edge
  %.sink = phi ptr [ null, %if.then24 ], [ %spec.select.i, %if.then9.if.end32.sink.split_crit_edge ], [ null, %cleanup127.i.thread.if.end32.sink.split_crit_edge ]
  %91 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %.sink, ptr %arrayidx, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.end32.sink.split, %h4_recv_buf.exit.if.end32_crit_edge, %if.end7.if.end32_crit_edge
  %rx_anchor = getelementptr inbounds %struct.bpa10x_data, ptr %3, i32 0, i32 3
  tail call void @usb_anchor_urb(ptr noundef %urb, ptr noundef %rx_anchor) #7
  %call33 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then35, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %name36 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  %sub = sub i32 0, %call33
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.16, ptr noundef %name36, ptr noundef %urb, i32 noundef %sub) #7
  tail call void @usb_unanchor_urb(ptr noundef %urb) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.end32.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_anchor_urb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_unanchor_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_recv_frame(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_recv_diag(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__hci_cmd_sync(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_info(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_set_fw_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpa10x_tx_complete(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = getelementptr inbounds %struct.anon.51, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bpa10x_tx_complete.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bpa10x_tx_complete, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 2
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %7 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %actual_length, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bpa10x_tx_complete.__UNIQUE_ID_ddebug482, ptr noundef nonnull @.str.14, ptr noundef %name, ptr noundef %urb, i32 noundef %6, i32 noundef %8) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 3
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %11 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not = icmp eq i32 %11, 0
  br i1 %tobool4.not, label %do.end.done_crit_edge, label %if.end6

do.end.done_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end6:                                          ; preds = %do.end
  %status7 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %12 = ptrtoint ptr %status7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool8.not = icmp eq i32 %13, 0
  br i1 %tobool8.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %14 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %transfer_buffer_length, align 4
  %byte_tx = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 199, i32 9
  br label %done.sink.split

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %err_tx = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 199, i32 1
  br label %done.sink.split

done.sink.split:                                  ; preds = %if.else, %if.then9
  %byte_tx.sink24 = phi ptr [ %byte_tx, %if.then9 ], [ %err_tx, %if.else ]
  %.sink23 = phi i32 [ %15, %if.then9 ], [ 1, %if.else ]
  %16 = ptrtoint ptr %byte_tx.sink24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %byte_tx.sink24, align 4
  %add = add i32 %17, %.sink23
  store i32 %add, ptr %byte_tx.sink24, align 4
  br label %done

done:                                             ; preds = %done.sink.split, %do.end.done_crit_edge
  %setup_packet = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 21
  %18 = ptrtoint ptr %setup_packet to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %setup_packet, align 4
  tail call void @kfree(ptr noundef %19) #7
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_unregister_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !21, !22, !23, !25, !26, !28, !29, !31, !32, !33, !35, !36, !38, !40, !41, !42, !44, !46, !48, !50, !51, !53, !54, !56, !57, !59, !61, !62, !64, !66, !68, !69, !71, !73, !74, !76, !77, !79, !80, !81}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @__initcall__kmod_bpa10x__494_440_bpa10x_driver_init6, !1, !"__initcall__kmod_bpa10x__494_440_bpa10x_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/bluetooth/bpa10x.c", i32 440, i32 1}
!2 = !{ptr @__exitcall_bpa10x_driver_exit, !1, !"__exitcall_bpa10x_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author495, !4, !"__UNIQUE_ID_author495", i1 false, i1 false}
!4 = !{!"../drivers/bluetooth/bpa10x.c", i32 442, i32 1}
!5 = !{ptr @__UNIQUE_ID_description496, !6, !"__UNIQUE_ID_description496", i1 false, i1 false}
!6 = !{!"../drivers/bluetooth/bpa10x.c", i32 443, i32 1}
!7 = !{ptr @__UNIQUE_ID_version497, !8, !"__UNIQUE_ID_version497", i1 false, i1 false}
!8 = !{!"../drivers/bluetooth/bpa10x.c", i32 444, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_file498, !14, !"__UNIQUE_ID_file498", i1 false, i1 false}
!14 = !{!"../drivers/bluetooth/bpa10x.c", i32 445, i32 1}
!15 = !{ptr @__UNIQUE_ID_license499, !14, !"__UNIQUE_ID_license499", i1 false, i1 false}
!16 = !{ptr @bpa10x_driver, !17, !"bpa10x_driver", i1 false, i1 false}
!17 = !{!"../drivers/bluetooth/bpa10x.c", i32 432, i32 26}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/bluetooth/bpa10x.c", i32 369, i32 2}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @bpa10x_probe.__UNIQUE_ID_ddebug492, !19, !"__UNIQUE_ID_ddebug492", i1 false, i1 false}
!23 = !{ptr @init_usb_anchor.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../include/linux/usb.h", i32 1367, i32 2}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @init_usb_anchor.__key.7, !27, !"__key", i1 false, i1 false}
!27 = !{!"../include/linux/usb.h", i32 1368, i32 2}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/bluetooth/bpa10x.c", i32 205, i32 2}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @bpa10x_open.__UNIQUE_ID_ddebug486, !30, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/bluetooth/bpa10x.c", i32 128, i32 2}
!35 = !{ptr @bpa10x_submit_intr_urb.__UNIQUE_ID_ddebug484, !34, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/bluetooth/bpa10x.c", i32 151, i32 3}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/bluetooth/bpa10x.c", i32 90, i32 2}
!40 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @bpa10x_rx_complete.__UNIQUE_ID_ddebug483, !39, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/bluetooth/bpa10x.c", i32 105, i32 4}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/bluetooth/bpa10x.c", i32 115, i32 3}
!46 = !{ptr @bpa10x_recv_pkts, !47, !"bpa10x_recv_pkts", i1 false, i1 false}
!47 = !{!"../drivers/bluetooth/bpa10x.c", i32 77, i32 33}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/bluetooth/bpa10x.c", i32 168, i32 2}
!50 = !{ptr @bpa10x_submit_bulk_urb.__UNIQUE_ID_ddebug485, !49, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/bluetooth/bpa10x.c", i32 227, i32 2}
!53 = !{ptr @bpa10x_close.__UNIQUE_ID_ddebug487, !52, !"__UNIQUE_ID_ddebug487", i1 false, i1 false}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/bluetooth/bpa10x.c", i32 238, i32 2}
!56 = !{ptr @bpa10x_flush.__UNIQUE_ID_ddebug488, !55, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!57 = !{ptr @bpa10x_setup.req, !58, !"req", i1 false, i1 false}
!58 = !{!"../drivers/bluetooth/bpa10x.c", i32 247, i32 18}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/bluetooth/bpa10x.c", i32 250, i32 2}
!61 = !{ptr @bpa10x_setup.__UNIQUE_ID_ddebug489, !60, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/bluetooth/bpa10x.c", i32 257, i32 2}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/bluetooth/bpa10x.c", i32 259, i32 24}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/bluetooth/bpa10x.c", i32 273, i32 2}
!68 = !{ptr @bpa10x_send_frame.__UNIQUE_ID_ddebug490, !67, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!69 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/bluetooth/bpa10x.c", i32 333, i32 3}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/bluetooth/bpa10x.c", i32 51, i32 2}
!73 = !{ptr @bpa10x_tx_complete.__UNIQUE_ID_ddebug482, !72, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!74 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/bluetooth/bpa10x.c", i32 348, i32 2}
!76 = !{ptr @bpa10x_set_diag.__UNIQUE_ID_ddebug491, !75, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!77 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/bluetooth/bpa10x.c", i32 418, i32 2}
!79 = !{ptr @.str.28, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @bpa10x_disconnect.__UNIQUE_ID_ddebug493, !78, !"__UNIQUE_ID_ddebug493", i1 false, i1 false}
!81 = !{ptr @bpa10x_table, !82, !"bpa10x_table", i1 false, i1 false}
!82 = !{!"../drivers/bluetooth/bpa10x.c", i32 27, i32 35}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{i64 2148698625, i64 2148698630, i64 2148698643, i64 2148698687, i64 2148698721, i64 2148698742}
