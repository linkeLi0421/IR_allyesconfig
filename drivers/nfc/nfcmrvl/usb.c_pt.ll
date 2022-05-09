; ModuleID = '/llk/IR_all_yes/drivers/nfc/nfcmrvl/usb.c_pt.bc'
source_filename = "../drivers/nfc/nfcmrvl/usb.c"
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
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nfcmrvl_if_ops = type { ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.nfcmrvl_platform_data = type { i32, i32, i32, i32, i32, i32 }
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
%struct.nfcmrvl_usb_drv_data = type { ptr, ptr, i32, %struct.work_struct, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, i32, %struct.spinlock, ptr, ptr, i32, ptr }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.nfcmrvl_private = type { i32, %struct.nfcmrvl_platform_data, ptr, %struct.nfcmrvl_fw_dnld, i8, ptr, ptr, i32, ptr }
%struct.nfcmrvl_fw_dnld = type { [33 x i8], ptr, ptr, ptr, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.timer_list }
%struct.sk_buff_head = type { %union.anon.97, i32, %struct.spinlock }
%union.anon.97 = type { %struct.anon.98 }
%struct.anon.98 = type { ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.77, %union.anon.80, %union.anon.81, [48 x i8], %union.anon.82, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.84, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { ptr, ptr, %union.anon.79 }
%union.anon.79 = type { ptr }
%union.anon.80 = type { ptr }
%union.anon.81 = type { i64 }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { i32, ptr }
%union.anon.84 = type { %struct.anon.85 }
%struct.anon.85 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.86, i32, i32, i32, i16, i16, %union.anon.88, i32, %union.anon.89, %union.anon.90, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.86 = type { i32 }
%union.anon.88 = type { i32 }
%union.anon.89 = type { i32 }
%union.anon.90 = type { i16 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.nci_dev = type { ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, %struct.atomic_t, i8, %struct.list_head, ptr, %struct.timer_list, %struct.timer_list, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.mutex, %struct.completion, i32, i32, ptr, i32, i32, [10 x %struct.nfc_target], i32, i8, i32, i8, [4 x i8], i8, i16, i8, i16, i8, i32, %struct.dest_spec_params, i8, ptr, [48 x i8], i8 }
%struct.nfc_target = type { i32, i32, i16, i8, i8, [10 x i8], i8, [8 x i8], i8, [12 x i8], i8, [18 x i8], i8, i8, i8, i8, [8 x i8] }
%struct.dest_spec_params = type { i8, i8 }

@__initcall__kmod_nfcmrvl_usb__281_455_nfcmrvl_usb_driver_init6 = internal global ptr @nfcmrvl_usb_driver_init, section ".initcall6.init", align 4
@nfcmrvl_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @nfcmrvl_probe, ptr @nfcmrvl_disconnect, ptr null, ptr @nfcmrvl_suspend, ptr @nfcmrvl_resume, ptr @nfcmrvl_resume, ptr null, ptr null, ptr @nfcmrvl_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 112 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_nfcmrvl_usb_driver_exit = internal global ptr @nfcmrvl_usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author282 = internal constant [46 x i8] c"nfcmrvl_usb.author=Marvell International Ltd.\00", section ".modinfo", align 1
@__UNIQUE_ID_description283 = internal constant [52 x i8] c"nfcmrvl_usb.description=Marvell NFC-over-USB driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file284 = internal constant [49 x i8] c"nfcmrvl_usb.file=drivers/nfc/nfcmrvl/nfcmrvl_usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license285 = internal constant [27 x i8] c"nfcmrvl_usb.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nfcmrvl_usb\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nfcmrvl\00", [24 x i8] zeroinitializer }, align 32
@nfcmrvl_table = internal global { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 899, i16 4742, i16 8262, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 4, i8 1, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@nfcmrvl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 299, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"NFC: intf %p id %p\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nfcmrvl_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/nfc/nfcmrvl/usb.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nfcmrvl_probe._entry_ptr = internal global ptr @nfcmrvl_probe._entry, section ".printk_index", align 4
@nfcmrvl_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&drv_data->waker)\00", [60 x i8] zeroinitializer }, align 32
@nfcmrvl_probe.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&drv_data->txlock\00", [46 x i8] zeroinitializer }, align 32
@usb_ops = internal constant { %struct.nfcmrvl_if_ops, [16 x i8] } { %struct.nfcmrvl_if_ops { ptr @nfcmrvl_usb_nci_open, ptr @nfcmrvl_usb_nci_close, ptr @nfcmrvl_usb_nci_send, ptr null }, [16 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->wait\00", [18 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->lock\00", [18 x i8] zeroinitializer }, align 32
@nfcmrvl_submit_bulk_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 138, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"NFC: urb %p submission failed (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nfcmrvl_submit_bulk_urb\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@nfcmrvl_submit_bulk_urb._entry_ptr = internal global ptr @nfcmrvl_submit_bulk_urb._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nfcmrvl_bulk_complete.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.4, ptr @.str.17, i8 0, i8 15, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfcmrvl_bulk_complete\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"urb %p status %d count %d\0A\00", [37 x i8] zeroinitializer }, align 32
@nfcmrvl_bulk_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.4, i32 74, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"NFC: failed to alloc mem\0A\00", [38 x i8] zeroinitializer }, align 32
@nfcmrvl_bulk_complete._entry_ptr = internal global ptr @nfcmrvl_bulk_complete._entry, section ".printk_index", align 4
@nfcmrvl_bulk_complete._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.16, ptr @.str.4, i32 80, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"NFC: corrupted Rx packet\0A\00", [38 x i8] zeroinitializer }, align 32
@nfcmrvl_bulk_complete._entry_ptr.21 = internal global ptr @nfcmrvl_bulk_complete._entry.19, section ".printk_index", align 4
@nfcmrvl_bulk_complete._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.16, ptr @.str.4, i32 97, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"NFC: urb %p failed to resubmit (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@nfcmrvl_bulk_complete._entry_ptr.24 = internal global ptr @nfcmrvl_bulk_complete._entry.22, section ".printk_index", align 4
@nfcmrvl_usb_nci_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.25, ptr @.str.4, i32 255, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nfcmrvl_usb_nci_send\00", [43 x i8] zeroinitializer }, align 32
@nfcmrvl_usb_nci_send._entry_ptr = internal global ptr @nfcmrvl_usb_nci_send._entry, section ".printk_index", align 4
@nfcmrvl_tx_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 156, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"NFC: urb %p status %d count %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nfcmrvl_tx_complete\00", [44 x i8] zeroinitializer }, align 32
@nfcmrvl_tx_complete._entry_ptr = internal global ptr @nfcmrvl_tx_complete._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@nfcmrvl_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 352, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"NFC: intf %p\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfcmrvl_disconnect\00", [45 x i8] zeroinitializer }, align 32
@nfcmrvl_disconnect._entry_ptr = internal global ptr @nfcmrvl_disconnect._entry, section ".printk_index", align 4
@nfcmrvl_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.30, ptr @.str.4, i32 364, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nfcmrvl_suspend\00", [16 x i8] zeroinitializer }, align 32
@nfcmrvl_suspend._entry_ptr = internal global ptr @nfcmrvl_suspend._entry, section ".printk_index", align 4
@nfcmrvl_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.31, ptr @.str.4, i32 405, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nfcmrvl_resume\00", [17 x i8] zeroinitializer }, align 32
@nfcmrvl_resume._entry_ptr = internal global ptr @nfcmrvl_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967277, i64 4294967295]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967277, i64 4294967295]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967277, i64 4294967295]
@___asan_gen_.34 = private unnamed_addr constant [19 x i8] c"nfcmrvl_usb_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 441, i32 26 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 455, i32 1 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 442, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant [14 x i8] c"nfcmrvl_table\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 15, i32 29 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 299, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 325, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 326, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [8 x i8] c"usb_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 267, i32 36 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 1367, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 1368, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 137, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 62, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 74, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 79, i32 5 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 96, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 254, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 155, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 352, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 364, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.161 = private constant [29 x i8] c"../drivers/nfc/nfcmrvl/usb.c\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 405, i32 2 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @__UNIQUE_ID_author282, ptr @__UNIQUE_ID_description283, ptr @__UNIQUE_ID_file284, ptr @__UNIQUE_ID_license285, ptr @__exitcall_nfcmrvl_usb_driver_exit, ptr @__initcall__kmod_nfcmrvl_usb__281_455_nfcmrvl_usb_driver_init6, ptr @nfcmrvl_bulk_complete._entry, ptr @nfcmrvl_bulk_complete._entry.19, ptr @nfcmrvl_bulk_complete._entry.22, ptr @nfcmrvl_bulk_complete._entry_ptr, ptr @nfcmrvl_bulk_complete._entry_ptr.21, ptr @nfcmrvl_bulk_complete._entry_ptr.24, ptr @nfcmrvl_disconnect._entry, ptr @nfcmrvl_disconnect._entry_ptr, ptr @nfcmrvl_probe._entry, ptr @nfcmrvl_probe._entry_ptr, ptr @nfcmrvl_resume._entry, ptr @nfcmrvl_resume._entry_ptr, ptr @nfcmrvl_submit_bulk_urb._entry, ptr @nfcmrvl_submit_bulk_urb._entry_ptr, ptr @nfcmrvl_suspend._entry, ptr @nfcmrvl_suspend._entry_ptr, ptr @nfcmrvl_tx_complete._entry, ptr @nfcmrvl_tx_complete._entry_ptr, ptr @nfcmrvl_usb_driver_exit, ptr @nfcmrvl_usb_nci_send._entry, ptr @nfcmrvl_usb_nci_send._entry_ptr, ptr @nfcmrvl_usb_driver, ptr @.str, ptr @.str.1, ptr @nfcmrvl_table, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @nfcmrvl_probe.__key, ptr @.str.7, ptr @nfcmrvl_probe.__key.8, ptr @.str.9, ptr @usb_ops, ptr @init_usb_anchor.__key, ptr @.str.10, ptr @init_usb_anchor.__key.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcmrvl_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcmrvl_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcmrvl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcmrvl_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcmrvl_probe.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcmrvl_submit_bulk_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcmrvl_bulk_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcmrvl_bulk_complete._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcmrvl_bulk_complete._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcmrvl_usb_nci_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcmrvl_tx_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcmrvl_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcmrvl_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcmrvl_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nfcmrvl_usb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @nfcmrvl_usb_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nfcmrvl_usb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_deregister(ptr noundef nonnull @nfcmrvl_usb_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfcmrvl_probe(ptr noundef %intf, ptr noundef %id) #2 align 64 {
entry:
  %config = alloca %struct.nfcmrvl_platform_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %2 = getelementptr inbounds i8, ptr %config, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 20)
  %4 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -22, ptr %config, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef %intf, ptr noundef %id) #9
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 456, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %5 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp100.not = icmp eq i8 %8, 0
  br i1 %cmp100.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %6, i32 0, i32 3
  %bulk_tx_ep = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %call.i, i32 0, i32 9
  %bulk_rx_ep = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %call.i, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %if.end18.for.body_crit_edge, %for.body.lr.ph
  %i.0101 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end18.for.body_crit_edge ]
  %9 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %endpoint, align 4
  %arrayidx = getelementptr %struct.usb_host_endpoint, ptr %10, i32 %i.0101
  %11 = ptrtoint ptr %bulk_tx_ep to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bulk_tx_ep, align 4
  %tobool6.not = icmp eq ptr %12, null
  br i1 %tobool6.not, label %land.lhs.true, label %for.body.if.else_crit_edge

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %for.body
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %13 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bmAttributes.i.i, align 1
  %15 = and i8 %14, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cmp.i.not.i = icmp eq i8 %15, 2
  br i1 %cmp.i.not.i, label %usb_endpoint_is_bulk_out.exit, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

usb_endpoint_is_bulk_out.exit:                    ; preds = %land.lhs.true
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %16 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool8.not = icmp slt i8 %17, 0
  br i1 %tobool8.not, label %usb_endpoint_is_bulk_out.exit.if.else_crit_edge, label %usb_endpoint_is_bulk_out.exit.if.end18.sink.split_crit_edge

usb_endpoint_is_bulk_out.exit.if.end18.sink.split_crit_edge: ; preds = %usb_endpoint_is_bulk_out.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.sink.split

usb_endpoint_is_bulk_out.exit.if.else_crit_edge:  ; preds = %usb_endpoint_is_bulk_out.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.else:                                          ; preds = %usb_endpoint_is_bulk_out.exit.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %for.body.if.else_crit_edge
  %18 = ptrtoint ptr %bulk_rx_ep to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bulk_rx_ep, align 4
  %tobool11.not = icmp eq ptr %19, null
  br i1 %tobool11.not, label %land.lhs.true12, label %if.else.if.end18_crit_edge

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

land.lhs.true12:                                  ; preds = %if.else
  %bmAttributes.i.i87 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %20 = ptrtoint ptr %bmAttributes.i.i87 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bmAttributes.i.i87, align 1
  %22 = and i8 %21, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %cmp.i.not.i88 = icmp eq i8 %22, 2
  br i1 %cmp.i.not.i88, label %usb_endpoint_is_bulk_in.exit, label %land.lhs.true12.if.end18_crit_edge

land.lhs.true12.if.end18_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

usb_endpoint_is_bulk_in.exit:                     ; preds = %land.lhs.true12
  %bEndpointAddress.i.i89 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %23 = ptrtoint ptr %bEndpointAddress.i.i89 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bEndpointAddress.i.i89, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %tobool14.not = icmp sgt i8 %24, -1
  br i1 %tobool14.not, label %usb_endpoint_is_bulk_in.exit.if.end18_crit_edge, label %usb_endpoint_is_bulk_in.exit.if.end18.sink.split_crit_edge

usb_endpoint_is_bulk_in.exit.if.end18.sink.split_crit_edge: ; preds = %usb_endpoint_is_bulk_in.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.sink.split

usb_endpoint_is_bulk_in.exit.if.end18_crit_edge:  ; preds = %usb_endpoint_is_bulk_in.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.end18.sink.split:                              ; preds = %usb_endpoint_is_bulk_in.exit.if.end18.sink.split_crit_edge, %usb_endpoint_is_bulk_out.exit.if.end18.sink.split_crit_edge
  %bulk_rx_ep.sink = phi ptr [ %bulk_tx_ep, %usb_endpoint_is_bulk_out.exit.if.end18.sink.split_crit_edge ], [ %bulk_rx_ep, %usb_endpoint_is_bulk_in.exit.if.end18.sink.split_crit_edge ]
  %25 = ptrtoint ptr %bulk_rx_ep.sink to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx, ptr %bulk_rx_ep.sink, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %usb_endpoint_is_bulk_in.exit.if.end18_crit_edge, %land.lhs.true12.if.end18_crit_edge, %if.else.if.end18_crit_edge
  %inc = add nuw nsw i32 %i.0101, 1
  %26 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bNumEndpoints, align 4
  %conv = zext i8 %27 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %if.end18.for.body_crit_edge, label %if.end18.for.end_crit_edge

if.end18.for.end_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end18.for.body_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end18.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %bulk_tx_ep19 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %call.i, i32 0, i32 9
  %28 = ptrtoint ptr %bulk_tx_ep19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bulk_tx_ep19, align 4
  %tobool20.not = icmp eq ptr %29, null
  br i1 %tobool20.not, label %for.end.cleanup_crit_edge, label %lor.lhs.false

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.end
  %bulk_rx_ep21 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %call.i, i32 0, i32 10
  %30 = ptrtoint ptr %bulk_rx_ep21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bulk_rx_ep21, align 4
  %tobool22.not = icmp eq ptr %31, null
  br i1 %tobool22.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end24

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %lor.lhs.false
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr.i, ptr %call.i, align 4
  %intf26 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %call.i, i32 0, i32 1
  %33 = ptrtoint ptr %intf26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %intf, ptr %intf26, align 4
  %waker = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %call.i, i32 0, i32 3
  tail call void @__init_work(ptr noundef %waker, i32 noundef 0) #6
  %34 = ptrtoint ptr %waker to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -64, ptr %waker, align 4
  %lockdep_map = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %call.i, i32 0, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.7, ptr noundef nonnull @nfcmrvl_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry31 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %call.i, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %entry31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %entry31, ptr %entry31, align 4
  %prev.i = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %call.i, i32 0, i32 3, i32 1, i32 1
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %entry31, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %call.i, i32 0, i32 3, i32 2
  %37 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @nfcmrvl_waker, ptr %func, align 4
  %txlock = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %call.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %txlock, ptr noundef nonnull @.str.9, ptr noundef nonnull @nfcmrvl_probe.__key.8, i16 noundef signext 3) #6
  %tx_anchor = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %call.i, i32 0, i32 4
  %38 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %call.i, i32 0, i32 4, i32 1
  %39 = call ptr @memset(ptr %38, i32 0, i32 104)
  %40 = ptrtoint ptr %tx_anchor to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %tx_anchor, ptr %tx_anchor, align 4
  %prev.i.i = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %call.i, i32 0, i32 4, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %tx_anchor, ptr %prev.i.i, align 4
  tail call void @__init_waitqueue_head(ptr noundef %38, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_usb_anchor.__key) #6
  %lock.i = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %call.i, i32 0, i32 4, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @init_usb_anchor.__key.11, i16 noundef signext 3) #6
  %bulk_anchor = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %call.i, i32 0, i32 5
  %42 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %call.i, i32 0, i32 5, i32 1
  %43 = call ptr @memset(ptr %42, i32 0, i32 104)
  %44 = ptrtoint ptr %bulk_anchor to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %bulk_anchor, ptr %bulk_anchor, align 4
  %prev.i.i91 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %call.i, i32 0, i32 5, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i.i91 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %bulk_anchor, ptr %prev.i.i91, align 4
  tail call void @__init_waitqueue_head(ptr noundef %42, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_usb_anchor.__key) #6
  %lock.i93 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %call.i, i32 0, i32 5, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i93, ptr noundef nonnull @.str.12, ptr noundef nonnull @init_usb_anchor.__key.11, i16 noundef signext 3) #6
  %deferred = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %call.i, i32 0, i32 6
  %46 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %call.i, i32 0, i32 6, i32 1
  %47 = call ptr @memset(ptr %46, i32 0, i32 104)
  %48 = ptrtoint ptr %deferred to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %deferred, ptr %deferred, align 4
  %prev.i.i94 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %call.i, i32 0, i32 6, i32 0, i32 1
  %49 = ptrtoint ptr %prev.i.i94 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %deferred, ptr %prev.i.i94, align 4
  tail call void @__init_waitqueue_head(ptr noundef %46, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_usb_anchor.__key) #6
  %lock.i96 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %call.i, i32 0, i32 6, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i96, ptr noundef nonnull @.str.12, ptr noundef nonnull @init_usb_anchor.__key.11, i16 noundef signext 3) #6
  %call40 = call ptr @nfcmrvl_nci_register_dev(i32 noundef 0, ptr noundef nonnull %call.i, ptr noundef nonnull @usb_ops, ptr noundef %dev1, ptr noundef nonnull %config) #6
  %cmp.i = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %call40 to i32
  br label %cleanup

if.end44:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %priv45 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %call.i, i32 0, i32 12
  %51 = ptrtoint ptr %priv45 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call40, ptr %priv45, align 4
  %support_fw_dnld = getelementptr inbounds %struct.nfcmrvl_private, ptr %call40, i32 0, i32 4
  %52 = ptrtoint ptr %support_fw_dnld to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %support_fw_dnld, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %53 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.then42, %lor.lhs.false.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %50, %if.then42 ], [ 0, %if.end44 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfcmrvl_disconnect(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef %intf) #9
  %priv = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  tail call void @nfcmrvl_nci_unregister_dev(ptr noundef %5) #6
  %intf1 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intf1, align 4
  %driver_data.i.i6 = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 7, i32 8
  %8 = ptrtoint ptr %driver_data.i.i6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %driver_data.i.i6, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfcmrvl_suspend(ptr noundef %intf, [1 x i32] %message.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef %intf) #9
  %suspend_count = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %suspend_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %suspend_count, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %suspend_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %message.coerce.fca.0.extract = extractvalue [1 x i32] %message.coerce, 0
  %txlock = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock_irq(ptr noundef %txlock) #6
  %and = and i32 %message.coerce.fca.0.extract, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end.if.then2_crit_edge, label %land.lhs.true

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

land.lhs.true:                                    ; preds = %if.end
  %tx_in_flight = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %tx_in_flight to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_in_flight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not = icmp eq i32 %7, 0
  br i1 %tobool1.not, label %land.lhs.true.if.then2_crit_edge, label %if.else

land.lhs.true.if.then2_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.then2:                                         ; preds = %land.lhs.true.if.then2_crit_edge, %if.end.if.then2_crit_edge
  %flags = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %1, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #6
  tail call void @_raw_spin_unlock_irq(ptr noundef %txlock) #6
  %bulk_anchor.i = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %1, i32 0, i32 5
  tail call void @usb_kill_anchored_urbs(ptr noundef %bulk_anchor.i) #6
  %tx_anchor = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %1, i32 0, i32 4
  tail call void @usb_kill_anchored_urbs(ptr noundef %tx_anchor) #6
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irq(ptr noundef %txlock) #6
  %8 = ptrtoint ptr %suspend_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %suspend_count, align 4
  %dec = add i32 %9, -1
  store i32 %dec, ptr %suspend_count, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.else ], [ 0, %if.then2 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfcmrvl_resume(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef %intf) #9
  %suspend_count = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %suspend_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %suspend_count, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %suspend_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not = icmp eq i32 %8, 0
  br i1 %tobool2.not, label %if.end.done_crit_edge, label %if.end4

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end4:                                          ; preds = %if.end
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %11 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not = icmp eq i32 %11, 0
  br i1 %tobool7.not, label %if.end4.if.end15_crit_edge, label %if.then8

if.end4.if.end15_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then8:                                         ; preds = %if.end4
  %call9 = tail call fastcc i32 @nfcmrvl_submit_bulk_urb(ptr noundef %1, i32 noundef 3072)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #6
  %deferred = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %1, i32 0, i32 6
  tail call void @usb_scuttle_anchored_urbs(ptr noundef %deferred) #6
  br label %done

if.end13:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = tail call fastcc i32 @nfcmrvl_submit_bulk_urb(ptr noundef %1, i32 noundef 3072)
  br label %if.end15

if.end15:                                         ; preds = %if.end13, %if.end4.if.end15_crit_edge
  %txlock = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock_irq(ptr noundef %txlock) #6
  %deferred.i = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %1, i32 0, i32 6
  %call6.i = tail call ptr @usb_get_from_anchor(ptr noundef %deferred.i) #6
  %tobool.not7.i = icmp eq ptr %call6.i, null
  br i1 %tobool.not7.i, label %if.end15.nfcmrvl_play_deferred.exit_crit_edge, label %while.body.lr.ph.i

if.end15.nfcmrvl_play_deferred.exit_crit_edge:    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfcmrvl_play_deferred.exit

while.body.lr.ph.i:                               ; preds = %if.end15
  %tx_in_flight.i = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %1, i32 0, i32 7
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %call8.i = phi ptr [ %call6.i, %while.body.lr.ph.i ], [ %call.i, %if.end.i.while.body.i_crit_edge ]
  %call1.i = tail call i32 @usb_submit_urb(ptr noundef nonnull %call8.i, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i, label %while.body.i.nfcmrvl_play_deferred.exit_crit_edge

while.body.i.nfcmrvl_play_deferred.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfcmrvl_play_deferred.exit

if.end.i:                                         ; preds = %while.body.i
  %12 = ptrtoint ptr %tx_in_flight.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_in_flight.i, align 4
  %inc.i = add i32 %13, 1
  store i32 %inc.i, ptr %tx_in_flight.i, align 4
  %call.i = tail call ptr @usb_get_from_anchor(ptr noundef %deferred.i) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i.nfcmrvl_play_deferred.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end.i.nfcmrvl_play_deferred.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfcmrvl_play_deferred.exit

nfcmrvl_play_deferred.exit:                       ; preds = %if.end.i.nfcmrvl_play_deferred.exit_crit_edge, %while.body.i.nfcmrvl_play_deferred.exit_crit_edge, %if.end15.nfcmrvl_play_deferred.exit_crit_edge
  tail call void @usb_scuttle_anchored_urbs(ptr noundef %deferred.i) #6
  br label %cleanup.sink.split

done:                                             ; preds = %if.then11, %if.end.done_crit_edge
  %err.0 = phi i32 [ %call9, %if.then11 ], [ 0, %if.end.done_crit_edge ]
  %txlock18 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock_irq(ptr noundef %txlock18) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %done, %nfcmrvl_play_deferred.exit
  %txlock18.sink = phi ptr [ %txlock18, %done ], [ %txlock, %nfcmrvl_play_deferred.exit ]
  %retval.0.ph = phi i32 [ %err.0, %done ], [ 0, %nfcmrvl_play_deferred.exit ]
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #6
  tail call void @_raw_spin_unlock_irq(ptr noundef %txlock18.sink) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfcmrvl_waker(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %intf = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 4
  %call = tail call i32 @usb_autopm_get_interface(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfcmrvl_nci_register_dev(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfcmrvl_usb_nci_open(ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_data1 = getelementptr inbounds %struct.nfcmrvl_private, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %drv_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_data1, align 4
  %intf = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %call = tail call i32 @usb_autopm_get_interface(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf, align 4
  %needs_remote_wakeup = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %needs_remote_wakeup to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %needs_remote_wakeup, align 8
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %needs_remote_wakeup, align 8
  %call3 = tail call fastcc i32 @nfcmrvl_submit_bulk_urb(ptr noundef %1, i32 noundef 3264)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %flags = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %1, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #6
  %call7 = tail call fastcc i32 @nfcmrvl_submit_bulk_urb(ptr noundef %1, i32 noundef 3264)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end6, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end6 ], [ %call3, %if.end.cleanup.sink.split_crit_edge ]
  %7 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %intf, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %8) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfcmrvl_usb_nci_close(ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_data1 = getelementptr inbounds %struct.nfcmrvl_private, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %drv_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_data1, align 4
  %waker = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %1, i32 0, i32 3
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %waker) #6
  %flags = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %1, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #6
  %bulk_anchor.i = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %1, i32 0, i32 5
  tail call void @usb_kill_anchored_urbs(ptr noundef %bulk_anchor.i) #6
  %tx_anchor = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %1, i32 0, i32 4
  tail call void @usb_kill_anchored_urbs(ptr noundef %tx_anchor) #6
  %intf = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %call2 = tail call i32 @usb_autopm_get_interface(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.failed_crit_edge

entry.failed_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %failed

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf, align 4
  %needs_remote_wakeup = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %needs_remote_wakeup to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %needs_remote_wakeup, align 8
  %bf.clear = and i8 %bf.load, -17
  store i8 %bf.clear, ptr %needs_remote_wakeup, align 8
  %7 = load ptr, ptr %intf, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %7) #6
  br label %failed

failed:                                           ; preds = %if.end, %entry.failed_crit_edge
  %deferred = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %1, i32 0, i32 6
  tail call void @usb_scuttle_anchored_urbs(ptr noundef %deferred) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfcmrvl_usb_nci_send(ptr nocapture noundef readonly %priv, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_data1 = getelementptr inbounds %struct.nfcmrvl_private, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %drv_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_data1, align 4
  %bulk_tx_ep = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %bulk_tx_ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bulk_tx_ep, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #6
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %bulk_tx_ep to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bulk_tx_ep, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bEndpointAddress, align 1
  %conv = zext i8 %9 to i32
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %5, align 8
  %shl.i = shl i32 %11, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i, -1073741824
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 8
  %16 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %5, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 10
  %17 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 14
  %18 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %13, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 19
  %19 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %15, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 28
  %20 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @nfcmrvl_tx_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 27
  %21 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %skb, ptr %context4.i, align 4
  %txlock.i = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %1, i32 0, i32 8
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %txlock.i) #6
  %flags5.i = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %flags5.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags5.i, align 4
  %24 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %txlock.i, i32 noundef %call2.i) #6
  %deferred = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %1, i32 0, i32 6
  tail call void @usb_anchor_urb(ptr noundef nonnull %call, ptr noundef %deferred) #6
  %waker = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %1, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %25 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %25, ptr noundef %waker) #6
  br label %done

if.end12:                                         ; preds = %if.end4
  %tx_in_flight.i = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %1, i32 0, i32 7
  %26 = ptrtoint ptr %tx_in_flight.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_in_flight.i, align 4
  %inc.i = add i32 %27, 1
  store i32 %inc.i, ptr %tx_in_flight.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %txlock.i, i32 noundef %call2.i) #6
  %tx_anchor = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %1, i32 0, i32 4
  tail call void @usb_anchor_urb(ptr noundef nonnull %call, ptr noundef %tx_anchor) #6
  %call13 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call, i32 noundef 2592) #6
  %28 = zext i32 %call13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call13, label %do.end [
    i32 0, label %if.else
    i32 -1, label %if.end12.if.end21_crit_edge
    i32 -19, label %if.end12.if.end21_crit_edge52
  ]

if.end12.if.end21_crit_edge52:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %30, i32 0, i32 15
  %sub = sub i32 0, %call13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull %call, i32 noundef %sub) #9
  br label %if.end21

if.end21:                                         ; preds = %do.end, %if.end12.if.end21_crit_edge, %if.end12.if.end21_crit_edge52
  %setup_packet = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 21
  %31 = ptrtoint ptr %setup_packet to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %setup_packet, align 4
  tail call void @kfree(ptr noundef %32) #6
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call) #6
  br label %done

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %call.i.i51 = tail call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i.i = getelementptr inbounds %struct.usb_device, ptr %34, i32 0, i32 15, i32 12, i32 22
  %35 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store volatile i64 %call.i.i51, ptr %last_busy.i.i, align 8
  br label %done

done:                                             ; preds = %if.else, %if.end21, %if.then10
  %err.0 = phi i32 [ 0, %if.then10 ], [ %call13, %if.end21 ], [ 0, %if.else ]
  tail call void @usb_free_urb(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %done, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %done ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfcmrvl_submit_bulk_urb(ptr noundef %drv_data, i32 noundef %mem_flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bulk_rx_ep = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %drv_data, i32 0, i32 10
  %0 = ptrtoint ptr %bulk_rx_ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bulk_rx_ep, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef %mem_flags) #6
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %and.i.i = and i32 %mem_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i, label %if.end3.kmalloc.exit_crit_edge, label %if.end.i.i, !prof !92

if.end3.kmalloc.exit_crit_edge:                   ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %kmalloc.exit

if.end.i.i:                                       ; preds = %if.end3
  %and2.i.i = and i32 %mem_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end5.i.i, label %if.end.i.i.kmalloc.exit_crit_edge

if.end.i.i.kmalloc.exit_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kmalloc.exit

if.end5.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %and6.i.i = and i32 %mem_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  %..i.i = select i1 %tobool7.not.i.i, i32 1, i32 2
  br label %kmalloc.exit

kmalloc.exit:                                     ; preds = %if.end5.i.i, %if.end.i.i.kmalloc.exit_crit_edge, %if.end3.kmalloc.exit_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end3.kmalloc.exit_crit_edge ], [ 3, %if.end.i.i.kmalloc.exit_crit_edge ], [ %..i.i, %if.end5.i.i ]
  %arrayidx6.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i, i32 9
  %2 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx6.i, align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef %mem_flags, i32 noundef 260) #10
  %tobool5.not = icmp eq ptr %call7.i, null
  br i1 %tobool5.not, label %kmalloc.exit.cleanup.sink.split_crit_edge, label %if.end7

kmalloc.exit.cleanup.sink.split_crit_edge:        ; preds = %kmalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end7:                                          ; preds = %kmalloc.exit
  %4 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv_data, align 4
  %6 = ptrtoint ptr %bulk_rx_ep to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bulk_rx_ep, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bEndpointAddress, align 1
  %conv = zext i8 %9 to i32
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %5, align 8
  %shl.i = shl i32 %11, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or10 = or i32 %or.i, -1073741696
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 8
  %12 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %5, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 10
  %13 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or10, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 14
  %14 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 19
  %15 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 260, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 28
  %16 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @nfcmrvl_bulk_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 27
  %17 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %drv_data, ptr %context4.i, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 13
  %18 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %transfer_flags, align 4
  %or12 = or i32 %19, 256
  store i32 %or12, ptr %transfer_flags, align 4
  %20 = load ptr, ptr %drv_data, align 4
  %call.i.i = tail call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i.i = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 15, i32 12, i32 22
  %21 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store volatile i64 %call.i.i, ptr %last_busy.i.i, align 8
  %bulk_anchor = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %drv_data, i32 0, i32 5
  tail call void @usb_anchor_urb(ptr noundef nonnull %call, ptr noundef %bulk_anchor) #6
  %call14 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call, i32 noundef %mem_flags) #6
  %22 = zext i32 %call14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %call14, label %do.end [
    i32 0, label %if.end7.cleanup.sink.split_crit_edge
    i32 -1, label %if.end7.if.end22_crit_edge
    i32 -19, label %if.end7.if.end22_crit_edge51
  ]

if.end7.if.end22_crit_edge51:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.end7.if.end22_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.end7.cleanup.sink.split_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %drv_data, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %24, i32 0, i32 15
  %sub = sub i32 0, %call14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull %call, i32 noundef %sub) #9
  br label %if.end22

if.end22:                                         ; preds = %do.end, %if.end7.if.end22_crit_edge, %if.end7.if.end22_crit_edge51
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end22, %if.end7.cleanup.sink.split_crit_edge, %kmalloc.exit.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -12, %kmalloc.exit.cleanup.sink.split_crit_edge ], [ %call14, %if.end7.cleanup.sink.split_crit_edge ], [ %call14, %if.end22 ]
  tail call void @usb_free_urb(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfcmrvl_bulk_complete(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfcmrvl_bulk_complete.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfcmrvl_bulk_complete, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !93

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %6 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual_length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nfcmrvl_bulk_complete.__UNIQUE_ID_ddebug280, ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef %urb, i32 noundef %5, i32 noundef %7) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool4.not = icmp eq i32 %10, 0
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %status7 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %11 = ptrtoint ptr %status7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool8.not = icmp eq i32 %12, 0
  br i1 %tobool8.not, label %if.then9, label %if.end6.if.end31_crit_edge

if.end6.if.end31_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then9:                                         ; preds = %if.end6
  %priv = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %1, i32 0, i32 12
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 4
  %ndev = getelementptr inbounds %struct.nfcmrvl_private, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ndev, align 4
  %actual_length10 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %17 = ptrtoint ptr %actual_length10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %actual_length10, align 4
  %tx_headroom.i = getelementptr inbounds %struct.nci_dev, ptr %16, i32 0, i32 3
  %19 = ptrtoint ptr %tx_headroom.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_headroom.i, align 4
  %add.i = add i32 %20, %18
  %tx_tailroom.i = getelementptr inbounds %struct.nci_dev, ptr %16, i32 0, i32 4
  %21 = ptrtoint ptr %tx_tailroom.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_tailroom.i, align 4
  %add1.i = add i32 %add.i, %22
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add1.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then9.if.end31.sink.split_crit_edge, label %if.else

if.then9.if.end31.sink.split_crit_edge:           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31.sink.split

if.else:                                          ; preds = %if.then9
  %23 = ptrtoint ptr %tx_headroom.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_headroom.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %25 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 %24
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %27 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %28, i32 %24
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %29 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %transfer_buffer, align 4
  %31 = ptrtoint ptr %actual_length10 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %actual_length10, align 4
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %32) #6
  %33 = call ptr @memcpy(ptr %call.i, ptr %30, i32 %32)
  %34 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %priv, align 4
  %call22 = tail call i32 @nfcmrvl_nci_recv_frame(ptr noundef %35, ptr noundef nonnull %call.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp = icmp slt i32 %call22, 0
  br i1 %cmp, label %if.else.if.end31.sink.split_crit_edge, label %if.else.if.end31_crit_edge

if.else.if.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.else.if.end31.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31.sink.split

if.end31.sink.split:                              ; preds = %if.else.if.end31.sink.split_crit_edge, %if.then9.if.end31.sink.split_crit_edge
  %.str.18.sink = phi ptr [ @.str.18, %if.then9.if.end31.sink.split_crit_edge ], [ @.str.20, %if.else.if.end31.sink.split_crit_edge ]
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %dev18 = getelementptr inbounds %struct.usb_device, ptr %37, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull %.str.18.sink) #9
  br label %if.end31

if.end31:                                         ; preds = %if.end31.sink.split, %if.else.if.end31_crit_edge, %if.end6.if.end31_crit_edge
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %flags, align 4
  %40 = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool34.not = icmp eq i32 %40, 0
  br i1 %tobool34.not, label %if.end31.cleanup_crit_edge, label %if.end36

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end36:                                         ; preds = %if.end31
  %bulk_anchor = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %1, i32 0, i32 5
  tail call void @usb_anchor_urb(ptr noundef %urb, ptr noundef %bulk_anchor) #6
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %call.i.i79 = tail call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i.i = getelementptr inbounds %struct.usb_device, ptr %42, i32 0, i32 15, i32 12, i32 22
  %43 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store volatile i64 %call.i.i79, ptr %last_busy.i.i, align 8
  %call38 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #6
  %44 = zext i32 %call38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %call38, label %do.end46 [
    i32 0, label %if.end36.cleanup_crit_edge
    i32 -1, label %if.end36.if.end49_crit_edge
    i32 -19, label %if.end36.if.end49_crit_edge81
  ]

if.end36.if.end49_crit_edge81:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.end36.if.end49_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end46:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %dev48 = getelementptr inbounds %struct.usb_device, ptr %46, i32 0, i32 15
  %sub = sub i32 0, %call38
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev48, ptr noundef nonnull @.str.23, ptr noundef %urb, i32 noundef %sub) #9
  br label %if.end49

if.end49:                                         ; preds = %do.end46, %if.end36.if.end49_crit_edge, %if.end36.if.end49_crit_edge81
  tail call void @usb_unanchor_urb(ptr noundef %urb) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.end36.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_anchor_urb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_unanchor_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfcmrvl_nci_recv_frame(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_anchored_urbs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_scuttle_anchored_urbs(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfcmrvl_tx_complete(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = getelementptr inbounds %struct.anon.78, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %driver_data.i = getelementptr inbounds %struct.nci_dev, ptr %4, i32 0, i32 26
  %5 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i, align 4
  %drv_data1 = getelementptr inbounds %struct.nfcmrvl_private, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %drv_data1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %drv_data1, align 4
  %dev = getelementptr inbounds %struct.nfcmrvl_private, ptr %6, i32 0, i32 6
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %11 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %13 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %actual_length, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.26, ptr noundef %urb, i32 noundef %12, i32 noundef %14) #9
  %txlock = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %8, i32 0, i32 8
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %txlock) #6
  %tx_in_flight = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, ptr %8, i32 0, i32 7
  %15 = ptrtoint ptr %tx_in_flight to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_in_flight, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr %tx_in_flight, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %txlock, i32 noundef %call5) #6
  %setup_packet = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 21
  %17 = ptrtoint ptr %setup_packet to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %setup_packet, align 4
  tail call void @kfree(ptr noundef %18) #6
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfcmrvl_nci_unregister_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_from_anchor(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !37, !39, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @__initcall__kmod_nfcmrvl_usb__281_455_nfcmrvl_usb_driver_init6, !1, !"__initcall__kmod_nfcmrvl_usb__281_455_nfcmrvl_usb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/nfc/nfcmrvl/usb.c", i32 455, i32 1}
!2 = !{ptr @__exitcall_nfcmrvl_usb_driver_exit, !1, !"__exitcall_nfcmrvl_usb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author282, !4, !"__UNIQUE_ID_author282", i1 false, i1 false}
!4 = !{!"../drivers/nfc/nfcmrvl/usb.c", i32 457, i32 1}
!5 = !{ptr @__UNIQUE_ID_description283, !6, !"__UNIQUE_ID_description283", i1 false, i1 false}
!6 = !{!"../drivers/nfc/nfcmrvl/usb.c", i32 458, i32 1}
!7 = !{ptr @__UNIQUE_ID_file284, !8, !"__UNIQUE_ID_file284", i1 false, i1 false}
!8 = !{!"../drivers/nfc/nfcmrvl/usb.c", i32 459, i32 1}
!9 = !{ptr @__UNIQUE_ID_license285, !8, !"__UNIQUE_ID_license285", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/nfc/nfcmrvl/usb.c", i32 442, i32 11}
!13 = !{ptr @nfcmrvl_usb_driver, !14, !"nfcmrvl_usb_driver", i1 false, i1 false}
!14 = !{!"../drivers/nfc/nfcmrvl/usb.c", i32 441, i32 26}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/nfc/nfcmrvl/usb.c", i32 299, i32 2}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @nfcmrvl_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @nfcmrvl_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @nfcmrvl_probe.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/nfc/nfcmrvl/usb.c", i32 325, i32 2}
!25 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @nfcmrvl_probe.__key.8, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/nfc/nfcmrvl/usb.c", i32 326, i32 2}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @init_usb_anchor.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../include/linux/usb.h", i32 1367, i32 2}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @init_usb_anchor.__key.11, !33, !"__key", i1 false, i1 false}
!33 = !{!"../include/linux/usb.h", i32 1368, i32 2}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @usb_ops, !36, !"usb_ops", i1 false, i1 false}
!36 = !{!"../drivers/nfc/nfcmrvl/usb.c", i32 267, i32 36}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/nfc/nfcmrvl/usb.c", i32 137, i32 4}
!39 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @nfcmrvl_submit_bulk_urb._entry, !38, !"_entry", i1 false, i1 false}
!42 = !{ptr @nfcmrvl_submit_bulk_urb._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/nfc/nfcmrvl/usb.c", i32 62, i32 2}
!45 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @nfcmrvl_bulk_complete.__UNIQUE_ID_ddebug280, !44, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/nfc/nfcmrvl/usb.c", i32 74, i32 4}
!49 = !{ptr @nfcmrvl_bulk_complete._entry, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @nfcmrvl_bulk_complete._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/nfc/nfcmrvl/usb.c", i32 79, i32 5}
!53 = !{ptr @nfcmrvl_bulk_complete._entry.19, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @nfcmrvl_bulk_complete._entry_ptr.21, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/nfc/nfcmrvl/usb.c", i32 96, i32 4}
!57 = !{ptr @nfcmrvl_bulk_complete._entry.22, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @nfcmrvl_bulk_complete._entry_ptr.24, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/nfc/nfcmrvl/usb.c", i32 254, i32 4}
!61 = !{ptr @nfcmrvl_usb_nci_send._entry, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @nfcmrvl_usb_nci_send._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/nfc/nfcmrvl/usb.c", i32 155, i32 2}
!65 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @nfcmrvl_tx_complete._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @nfcmrvl_tx_complete._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/nfc/nfcmrvl/usb.c", i32 352, i32 2}
!70 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @nfcmrvl_disconnect._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @nfcmrvl_disconnect._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/nfc/nfcmrvl/usb.c", i32 364, i32 2}
!75 = !{ptr @nfcmrvl_suspend._entry, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @nfcmrvl_suspend._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/nfc/nfcmrvl/usb.c", i32 405, i32 2}
!79 = !{ptr @nfcmrvl_resume._entry, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @nfcmrvl_resume._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @nfcmrvl_table, !82, !"nfcmrvl_table", i1 false, i1 false}
!82 = !{!"../drivers/nfc/nfcmrvl/usb.c", i32 15, i32 29}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{!"branch_weights", i32 2000, i32 1}
!93 = !{i64 2148962346, i64 2148962351, i64 2148962364, i64 2148962408, i64 2148962442, i64 2148962463}
