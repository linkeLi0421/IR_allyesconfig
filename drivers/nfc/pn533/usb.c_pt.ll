; ModuleID = '/llk/IR_all_yes/drivers/nfc/pn533/usb.c_pt.bc'
source_filename = "../drivers/nfc/pn533/usb.c"
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
%struct.pn533_frame_ops = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32, ptr }
%struct.pn533_phy_ops = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.pn533_usb_phy = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.pn533_acr122_poweron_rdr_arg = type { i32, %struct.completion }
%struct.pn533_acr122_ccid_hdr = type <{ i8, i32, i8, i8, [3 x i8], [0 x i8] }>
%struct.pn533_acr122_tx_frame = type { %struct.pn533_acr122_ccid_hdr, %struct.pn533_acr122_apdu_hdr, i8, [0 x i8] }
%struct.pn533_acr122_apdu_hdr = type { i8, i8, i8, i8 }
%struct.pn533_acr122_rx_frame = type { %struct.pn533_acr122_ccid_hdr, [0 x i8] }
%struct.pn533 = type { ptr, i32, i32, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, ptr, i8, %struct.mutex, ptr, ptr, [6 x ptr], i8, i8, i8, i32, i32, %struct.timer_list, i32, ptr, i32, i8, i8, i8, ptr, ptr, ptr, ptr }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.pn533_cmd = type { %struct.list_head, i8, i32, ptr, ptr, ptr, ptr }

@__initcall__kmod_pn533_usb__347_604_pn533_usb_driver_init6 = internal global ptr @pn533_usb_driver_init, section ".initcall6.init", align 4
@pn533_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @pn533_usb_probe, ptr @pn533_usb_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pn533_usb_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_pn533_usb_driver_exit = internal global ptr @pn533_usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author348 = internal constant [69 x i8] c"pn533_usb.author=Lauro Ramos Venancio <lauro.venancio@openbossa.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author349 = internal constant [68 x i8] c"pn533_usb.author=Aloisio Almeida Jr <aloisio.almeida@openbossa.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author350 = internal constant [73 x i8] c"pn533_usb.author=Waldemar Rymarkiewicz <waldemar.rymarkiewicz@tieto.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description351 = internal constant [47 x i8] c"pn533_usb.description=PN533 USB driver ver 0.1\00", section ".modinfo", align 1
@__UNIQUE_ID_version352 = internal constant [22 x i8] c"pn533_usb.version=0.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pn533_usb\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.1\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file353 = internal constant [43 x i8] c"pn533_usb.file=drivers/nfc/pn533/pn533_usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license354 = internal constant [22 x i8] c"pn533_usb.license=GPL\00", section ".modinfo", align 1
@pn533_usb_table = internal constant { [5 x %struct.usb_device_id], [40 x i8] } { [5 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1228, i16 9523, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1254, i16 21905, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1356, i16 737, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1839, i16 8704, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@pn533_usb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 481, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"NFC: Could not find bulk-in or bulk-out endpoint\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pn533_usb_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/nfc/pn533/usb.c\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pn533_usb_probe._entry_ptr = internal global ptr @pn533_usb_probe._entry, section ".printk_index", align 4
@pn533_acr122_frame_ops = internal global { %struct.pn533_frame_ops, [48 x i8] } { %struct.pn533_frame_ops { ptr @pn533_acr122_tx_frame_init, ptr @pn533_acr122_tx_frame_finish, ptr @pn533_acr122_tx_update_payload_len, i32 17, i32 0, ptr @pn533_acr122_is_rx_frame_valid, ptr null, ptr @pn533_acr122_rx_frame_size, i32 12, i32 2, i32 263, ptr @pn533_acr122_get_cmd_code }, [48 x i8] zeroinitializer }, align 32
@pn533_usb_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 521, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"NFC: Couldn't poweron the reader (error %d)\0A\00", [51 x i8] zeroinitializer }, align 32
@pn533_usb_probe._entry_ptr.10 = internal global ptr @pn533_usb_probe._entry.8, section ".printk_index", align 4
@pn533_usb_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 528, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"NFC: Unknown device type %lu\0A\00", [34 x i8] zeroinitializer }, align 32
@pn533_usb_probe._entry_ptr.13 = internal global ptr @pn533_usb_probe._entry.11, section ".printk_index", align 4
@usb_phy_ops = internal constant { %struct.pn533_phy_ops, [44 x i8] } { %struct.pn533_phy_ops { ptr @pn533_usb_send_frame, ptr @pn533_usb_send_ack, ptr @pn533_usb_abort_cmd, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pn533_send_complete.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.14, ptr @.str.5, ptr @.str.15, i8 0, i8 105, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pn533_send_complete\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"The urb has been stopped (status %d)\0A\00", [58 x i8] zeroinitializer }, align 32
@pn533_send_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.5, i32 428, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"NFC: Urb failure (status %d)\0A\00", [34 x i8] zeroinitializer }, align 32
@pn533_send_complete._entry_ptr = internal global ptr @pn533_send_complete._entry, section ".printk_index", align 4
@__const.pn533_acr122_poweron_rdr.cmd = private unnamed_addr constant [10 x i8] c"b\00\00\00\00\00\00\03\00\00", align 1
@pn533_acr122_poweron_rdr.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.17, ptr @.str.5, ptr @.str.18, i8 0, i8 96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pn533_acr122_poweron_rdr\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ACR122 TX: \00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@pn533_acr122_poweron_rdr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.17, ptr @.str.5, i32 394, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"NFC: Reader power on cmd error %d\0A\00", [61 x i8] zeroinitializer }, align 32
@pn533_acr122_poweron_rdr._entry_ptr = internal global ptr @pn533_acr122_poweron_rdr._entry, section ".printk_index", align 4
@pn533_acr122_poweron_rdr._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.5, i32 401, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"NFC: Can't submit reader poweron cmd response %d\0A\00", [46 x i8] zeroinitializer }, align 32
@pn533_acr122_poweron_rdr._entry_ptr.23 = internal global ptr @pn533_acr122_poweron_rdr._entry.21, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@pn533_acr122_poweron_rdr_resp.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.25, ptr @.str.5, ptr @.str.26, i8 0, i8 89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pn533_acr122_poweron_rdr_resp\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ACR122 RX: \00", [20 x i8] zeroinitializer }, align 32
@pn533_usb_send_frame.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.27, ptr @.str.5, ptr @.str.28, i8 0, i8 42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pn533_usb_send_frame\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PN533 TX: \00", [21 x i8] zeroinitializer }, align 32
@pn533_recv_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.5, i32 67, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"NFC: failed to alloc memory\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pn533_recv_response\00", [44 x i8] zeroinitializer }, align 32
@pn533_recv_response._entry_ptr = internal global ptr @pn533_recv_response._entry, section ".printk_index", align 4
@pn533_recv_ack.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str.5, ptr @.str.15, i8 0, i8 25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pn533_recv_ack\00", [17 x i8] zeroinitializer }, align 32
@pn533_recv_ack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.31, ptr @.str.5, i32 106, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@pn533_recv_ack._entry_ptr = internal global ptr @pn533_recv_ack._entry, section ".printk_index", align 4
@pn533_recv_ack._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.5, i32 113, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"NFC: Received an invalid ack\0A\00", [34 x i8] zeroinitializer }, align 32
@pn533_recv_ack._entry_ptr.34 = internal global ptr @pn533_recv_ack._entry.32, section ".printk_index", align 4
@pn533_recv_ack._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.5, i32 121, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"NFC: usb_submit_urb failed with result %d\0A\00", [53 x i8] zeroinitializer }, align 32
@pn533_recv_ack._entry_ptr.37 = internal global ptr @pn533_recv_ack._entry.35, section ".printk_index", align 4
@pn533_usb_send_ack.ack = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\00\00\FF\00\FF\00", [26 x i8] zeroinitializer }, align 32
@pn533_usb_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.5, i32 594, ptr @.str.40, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"NFC: NXP PN533 NFC device disconnected\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pn533_usb_disconnect\00", [43 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pn533_usb_disconnect._entry_ptr = internal global ptr @pn533_usb_disconnect._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967192, i64 4294967294]
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"pn533_usb_driver\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 597, i32 26 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 610, i32 1 }
@___asan_gen_.56 = private unnamed_addr constant [16 x i8] c"pn533_usb_table\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 33, i32 35 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 480, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [23 x i8] c"pn533_acr122_frame_ops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 332, i32 31 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 520, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 527, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [12 x i8] c"usb_phy_ops\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 432, i32 35 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 420, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 426, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 386, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 393, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 400, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 87, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 357, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 168, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 67, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 99, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 105, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 113, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 120, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant [4 x i8] c"ack\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 142, i32 18 }
@___asan_gen_.176 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.186 = private constant [27 x i8] c"../drivers/nfc/pn533/usb.c\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 594, i32 2 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @__UNIQUE_ID_author348, ptr @__UNIQUE_ID_author349, ptr @__UNIQUE_ID_author350, ptr @__UNIQUE_ID_description351, ptr @__UNIQUE_ID_file353, ptr @__UNIQUE_ID_license354, ptr @__UNIQUE_ID_version352, ptr @__exitcall_pn533_usb_driver_exit, ptr @__initcall__kmod_pn533_usb__347_604_pn533_usb_driver_init6, ptr @__modver_attr, ptr @pn533_acr122_poweron_rdr._entry, ptr @pn533_acr122_poweron_rdr._entry.21, ptr @pn533_acr122_poweron_rdr._entry_ptr, ptr @pn533_acr122_poweron_rdr._entry_ptr.23, ptr @pn533_recv_ack._entry, ptr @pn533_recv_ack._entry.32, ptr @pn533_recv_ack._entry.35, ptr @pn533_recv_ack._entry_ptr, ptr @pn533_recv_ack._entry_ptr.34, ptr @pn533_recv_ack._entry_ptr.37, ptr @pn533_recv_response._entry, ptr @pn533_recv_response._entry_ptr, ptr @pn533_send_complete._entry, ptr @pn533_send_complete._entry_ptr, ptr @pn533_usb_disconnect._entry, ptr @pn533_usb_disconnect._entry_ptr, ptr @pn533_usb_driver_exit, ptr @pn533_usb_probe._entry, ptr @pn533_usb_probe._entry.11, ptr @pn533_usb_probe._entry.8, ptr @pn533_usb_probe._entry_ptr, ptr @pn533_usb_probe._entry_ptr.10, ptr @pn533_usb_probe._entry_ptr.13, ptr @pn533_usb_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @pn533_usb_table, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @pn533_acr122_frame_ops, ptr @.str.9, ptr @.str.12, ptr @usb_phy_ops, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @init_completion.__key, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @pn533_usb_send_ack.ack, ptr @.str.38, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn533_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn533_usb_table to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn533_usb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn533_acr122_frame_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn533_usb_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn533_usb_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_phy_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn533_send_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn533_acr122_poweron_rdr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn533_acr122_poweron_rdr._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn533_recv_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn533_recv_ack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn533_recv_ack._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn533_recv_ack._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn533_usb_send_ack.ack to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn533_usb_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pn533_usb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @pn533_usb_driver, ptr noundef null, ptr noundef nonnull @.str.1) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pn533_usb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_deregister(ptr noundef nonnull @pn533_usb_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn533_usb_probe(ptr noundef %interface, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 28, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 275) #12
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %1 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %2, i32 -128
  %call6 = tail call ptr @usb_get_dev(ptr noundef %add.ptr.i) #9
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call6, ptr %call.i, align 4
  %interface7 = getelementptr inbounds %struct.pn533_usb_phy, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %interface7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %interface, ptr %interface7, align 4
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
  %cmp202.not = icmp eq i8 %8, 0
  br i1 %cmp202.not, label %if.end4.do.end_crit_edge, label %for.body.lr.ph

if.end4.do.end_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.body.lr.ph:                                   ; preds = %if.end4
  %endpoint9 = getelementptr inbounds %struct.usb_host_interface, ptr %6, i32 0, i32 3
  %9 = ptrtoint ptr %endpoint9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %endpoint9, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0205 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %out_endpoint.0204 = phi i32 [ 0, %for.body.lr.ph ], [ %out_endpoint.1, %for.inc.for.body_crit_edge ]
  %in_endpoint.0203 = phi i32 [ 0, %for.body.lr.ph ], [ %in_endpoint.1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.usb_host_endpoint, ptr %10, i32 %i.0205
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in_endpoint.0203)
  %tobool11.not = icmp eq i32 %in_endpoint.0203, 0
  br i1 %tobool11.not, label %land.lhs.true, label %for.body.if.end16_crit_edge

for.body.if.end16_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

land.lhs.true:                                    ; preds = %for.body
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %11 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bmAttributes.i.i, align 1
  %13 = and i8 %12, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp.i.not.i = icmp eq i8 %13, 2
  br i1 %cmp.i.not.i, label %usb_endpoint_is_bulk_in.exit, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

usb_endpoint_is_bulk_in.exit:                     ; preds = %land.lhs.true
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %14 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %tobool13.not = icmp sgt i8 %15, -1
  br i1 %tobool13.not, label %usb_endpoint_is_bulk_in.exit.if.end16_crit_edge, label %if.then14

usb_endpoint_is_bulk_in.exit.if.end16_crit_edge:  ; preds = %usb_endpoint_is_bulk_in.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then14:                                        ; preds = %usb_endpoint_is_bulk_in.exit
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bEndpointAddress.i.i, align 1
  %conv15 = zext i8 %17 to i32
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %usb_endpoint_is_bulk_in.exit.if.end16_crit_edge, %land.lhs.true.if.end16_crit_edge, %for.body.if.end16_crit_edge
  %in_endpoint.1 = phi i32 [ %in_endpoint.0203, %for.body.if.end16_crit_edge ], [ %conv15, %if.then14 ], [ 0, %usb_endpoint_is_bulk_in.exit.if.end16_crit_edge ], [ 0, %land.lhs.true.if.end16_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %out_endpoint.0204)
  %tobool17.not = icmp eq i32 %out_endpoint.0204, 0
  br i1 %tobool17.not, label %land.lhs.true18, label %if.end16.for.inc_crit_edge

if.end16.for.inc_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true18:                                  ; preds = %if.end16
  %bmAttributes.i.i178 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %18 = ptrtoint ptr %bmAttributes.i.i178 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bmAttributes.i.i178, align 1
  %20 = and i8 %19, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %20)
  %cmp.i.not.i179 = icmp eq i8 %20, 2
  br i1 %cmp.i.not.i179, label %usb_endpoint_is_bulk_out.exit, label %land.lhs.true18.for.inc_crit_edge

land.lhs.true18.for.inc_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

usb_endpoint_is_bulk_out.exit:                    ; preds = %land.lhs.true18
  %bEndpointAddress.i.i180 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %21 = ptrtoint ptr %bEndpointAddress.i.i180 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bEndpointAddress.i.i180, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool20.not = icmp slt i8 %22, 0
  br i1 %tobool20.not, label %usb_endpoint_is_bulk_out.exit.for.inc_crit_edge, label %if.then21

usb_endpoint_is_bulk_out.exit.for.inc_crit_edge:  ; preds = %usb_endpoint_is_bulk_out.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then21:                                        ; preds = %usb_endpoint_is_bulk_out.exit
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %bEndpointAddress.i.i180 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bEndpointAddress.i.i180, align 1
  %conv23 = zext i8 %24 to i32
  br label %for.inc

for.inc:                                          ; preds = %if.then21, %usb_endpoint_is_bulk_out.exit.for.inc_crit_edge, %land.lhs.true18.for.inc_crit_edge, %if.end16.for.inc_crit_edge
  %out_endpoint.1 = phi i32 [ %out_endpoint.0204, %if.end16.for.inc_crit_edge ], [ %conv23, %if.then21 ], [ 0, %usb_endpoint_is_bulk_out.exit.for.inc_crit_edge ], [ 0, %land.lhs.true18.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0205, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in_endpoint.1)
  %tobool25.not = icmp eq i32 %in_endpoint.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %out_endpoint.1)
  %tobool26.not = icmp eq i32 %out_endpoint.1, 0
  %or.cond = select i1 %tobool25.not, i1 true, i1 %tobool26.not
  br i1 %or.cond, label %for.end.do.end_crit_edge, label %if.end29

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %if.end4.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #13
  br label %error

if.end29:                                         ; preds = %for.end
  %call30 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #9
  %in_urb = getelementptr inbounds %struct.pn533_usb_phy, ptr %call.i, i32 0, i32 3
  %25 = ptrtoint ptr %in_urb to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call30, ptr %in_urb, align 4
  %call31 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #9
  %out_urb = getelementptr inbounds %struct.pn533_usb_phy, ptr %call.i, i32 0, i32 2
  %26 = ptrtoint ptr %out_urb to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call31, ptr %out_urb, align 4
  %call32 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #9
  %ack_urb = getelementptr inbounds %struct.pn533_usb_phy, ptr %call.i, i32 0, i32 4
  %27 = ptrtoint ptr %ack_urb to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call32, ptr %ack_urb, align 4
  %28 = ptrtoint ptr %in_urb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %in_urb, align 4
  %tobool34.not = icmp eq ptr %29, null
  br i1 %tobool34.not, label %if.end29.error_crit_edge, label %lor.lhs.false35

if.end29.error_crit_edge:                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

lor.lhs.false35:                                  ; preds = %if.end29
  %30 = ptrtoint ptr %out_urb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %out_urb, align 4
  %tobool37.not = icmp eq ptr %31, null
  %tobool40.not = icmp eq ptr %call32, null
  %or.cond177 = select i1 %tobool37.not, i1 true, i1 %tobool40.not
  br i1 %or.cond177, label %lor.lhs.false35.error_crit_edge, label %if.end42

lor.lhs.false35.error_crit_edge:                  ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end42:                                         ; preds = %lor.lhs.false35
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 8
  %shl.i = shl i32 %35, 8
  %shl1.i = shl i32 %in_endpoint.1, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or47 = or i32 %or.i, -1073741696
  %dev1.i = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 8
  %36 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 10
  %37 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or47, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 14
  %38 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 19
  %39 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 275, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 28
  %40 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 27
  %41 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i, ptr %context4.i, align 4
  %42 = ptrtoint ptr %out_urb to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %out_urb, align 4
  %44 = load ptr, ptr %call.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 8
  %shl.i182 = shl i32 %46, 8
  %shl1.i183 = shl i32 %out_endpoint.1, 15
  %or.i184 = or i32 %shl1.i183, %shl.i182
  %or52 = or i32 %or.i184, -1073741824
  %dev1.i185 = getelementptr inbounds %struct.urb, ptr %43, i32 0, i32 8
  %47 = ptrtoint ptr %dev1.i185 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %dev1.i185, align 4
  %pipe2.i186 = getelementptr inbounds %struct.urb, ptr %43, i32 0, i32 10
  %48 = ptrtoint ptr %pipe2.i186 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or52, ptr %pipe2.i186, align 4
  %transfer_buffer3.i187 = getelementptr inbounds %struct.urb, ptr %43, i32 0, i32 14
  %49 = ptrtoint ptr %transfer_buffer3.i187 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %transfer_buffer3.i187, align 4
  %transfer_buffer_length.i188 = getelementptr inbounds %struct.urb, ptr %43, i32 0, i32 19
  %50 = ptrtoint ptr %transfer_buffer_length.i188 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %transfer_buffer_length.i188, align 4
  %complete.i189 = getelementptr inbounds %struct.urb, ptr %43, i32 0, i32 28
  %51 = ptrtoint ptr %complete.i189 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @pn533_send_complete, ptr %complete.i189, align 4
  %context4.i190 = getelementptr inbounds %struct.urb, ptr %43, i32 0, i32 27
  %52 = ptrtoint ptr %context4.i190 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i, ptr %context4.i190, align 4
  %53 = ptrtoint ptr %ack_urb to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ack_urb, align 4
  %55 = load ptr, ptr %call.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 8
  %shl.i191 = shl i32 %57, 8
  %or.i193 = or i32 %shl1.i183, %shl.i191
  %or57 = or i32 %or.i193, -1073741824
  %dev1.i194 = getelementptr inbounds %struct.urb, ptr %54, i32 0, i32 8
  %58 = ptrtoint ptr %dev1.i194 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %dev1.i194, align 4
  %pipe2.i195 = getelementptr inbounds %struct.urb, ptr %54, i32 0, i32 10
  %59 = ptrtoint ptr %pipe2.i195 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %or57, ptr %pipe2.i195, align 4
  %transfer_buffer3.i196 = getelementptr inbounds %struct.urb, ptr %54, i32 0, i32 14
  %60 = ptrtoint ptr %transfer_buffer3.i196 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %transfer_buffer3.i196, align 4
  %transfer_buffer_length.i197 = getelementptr inbounds %struct.urb, ptr %54, i32 0, i32 19
  %61 = ptrtoint ptr %transfer_buffer_length.i197 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %transfer_buffer_length.i197, align 4
  %complete.i198 = getelementptr inbounds %struct.urb, ptr %54, i32 0, i32 28
  %62 = ptrtoint ptr %complete.i198 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @pn533_send_complete, ptr %complete.i198, align 4
  %context4.i199 = getelementptr inbounds %struct.urb, ptr %54, i32 0, i32 27
  %63 = ptrtoint ptr %context4.i199 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i, ptr %context4.i199, align 4
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %64 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %driver_info, align 4
  %66 = zext i32 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values)
  switch i32 %65, label %do.end71 [
    i32 1, label %if.end42.sw.epilog_crit_edge
    i32 2, label %sw.bb58
    i32 3, label %sw.bb59
  ]

if.end42.sw.epilog_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb59:                                          ; preds = %if.end42
  %call60 = tail call fastcc i32 @pn533_acr122_poweron_rdr(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %do.end66, label %sw.bb59.sw.epilog_crit_edge

sw.bb59.sw.epilog_crit_edge:                      ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end66:                                         ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call60) #13
  br label %error

do.end71:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %65) #13
  br label %error

sw.epilog:                                        ; preds = %sw.bb59.sw.epilog_crit_edge, %sw.bb58, %if.end42.sw.epilog_crit_edge
  %protocols.0 = phi i32 [ 62, %sw.bb59.sw.epilog_crit_edge ], [ 62, %sw.bb58 ], [ 126, %if.end42.sw.epilog_crit_edge ]
  %protocol_type.0 = phi i32 [ 1, %sw.bb59.sw.epilog_crit_edge ], [ 0, %sw.bb58 ], [ 0, %if.end42.sw.epilog_crit_edge ]
  %fops.0 = phi ptr [ @pn533_acr122_frame_ops, %sw.bb59.sw.epilog_crit_edge ], [ null, %sw.bb58 ], [ null, %if.end42.sw.epilog_crit_edge ]
  %67 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %driver_info, align 4
  %69 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %call.i, align 4
  %dev76 = getelementptr inbounds %struct.usb_device, ptr %70, i32 0, i32 15
  %call77 = tail call ptr @pn53x_common_init(i32 noundef %68, i32 noundef %protocol_type.0, ptr noundef nonnull %call.i, ptr noundef nonnull @usb_phy_ops, ptr noundef %fops.0, ptr noundef %dev76) #9
  %cmp.i = icmp ugt ptr %call77, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then79, label %if.end81

if.then79:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %call77 to i32
  br label %error

if.end81:                                         ; preds = %sw.epilog
  %priv82 = getelementptr inbounds %struct.pn533_usb_phy, ptr %call.i, i32 0, i32 6
  %72 = ptrtoint ptr %priv82 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call77, ptr %priv82, align 4
  %call83 = tail call i32 @pn533_finalize_setup(ptr noundef %call77) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end86, label %if.end81.err_clean_crit_edge

if.end81.err_clean_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_clean

if.end86:                                         ; preds = %if.end81
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %73 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call88 = tail call i32 @pn53x_register_nfc(ptr noundef %call77, i32 noundef %protocols.0, ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end86.cleanup_crit_edge, label %if.end86.err_clean_crit_edge

if.end86.err_clean_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_clean

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_clean:                                        ; preds = %if.end86.err_clean_crit_edge, %if.end81.err_clean_crit_edge
  %rc.0 = phi i32 [ %call83, %if.end81.err_clean_crit_edge ], [ %call88, %if.end86.err_clean_crit_edge ]
  tail call void @pn53x_common_clean(ptr noundef %call77) #9
  br label %error

error:                                            ; preds = %err_clean, %if.then79, %do.end71, %do.end66, %lor.lhs.false35.error_crit_edge, %if.end29.error_crit_edge, %do.end
  %rc.1 = phi i32 [ -22, %do.end71 ], [ %call60, %do.end66 ], [ %71, %if.then79 ], [ %rc.0, %err_clean ], [ -12, %lor.lhs.false35.error_crit_edge ], [ -12, %if.end29.error_crit_edge ], [ -19, %do.end ]
  %in_urb92 = getelementptr inbounds %struct.pn533_usb_phy, ptr %call.i, i32 0, i32 3
  %74 = ptrtoint ptr %in_urb92 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %in_urb92, align 4
  tail call void @usb_kill_urb(ptr noundef %75) #9
  %out_urb93 = getelementptr inbounds %struct.pn533_usb_phy, ptr %call.i, i32 0, i32 2
  %76 = ptrtoint ptr %out_urb93 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %out_urb93, align 4
  tail call void @usb_kill_urb(ptr noundef %77) #9
  %ack_urb94 = getelementptr inbounds %struct.pn533_usb_phy, ptr %call.i, i32 0, i32 4
  %78 = ptrtoint ptr %ack_urb94 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ack_urb94, align 4
  tail call void @usb_kill_urb(ptr noundef %79) #9
  %80 = ptrtoint ptr %in_urb92 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %in_urb92, align 4
  tail call void @usb_free_urb(ptr noundef %81) #9
  %82 = ptrtoint ptr %out_urb93 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %out_urb93, align 4
  tail call void @usb_free_urb(ptr noundef %83) #9
  %84 = ptrtoint ptr %ack_urb94 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ack_urb94, align 4
  tail call void @usb_free_urb(ptr noundef %85) #9
  %86 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %call.i, align 4
  tail call void @usb_put_dev(ptr noundef %87) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  %ack_buffer = getelementptr inbounds %struct.pn533_usb_phy, ptr %call.i, i32 0, i32 5
  %88 = ptrtoint ptr %ack_buffer to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ack_buffer, align 4
  tail call void @kfree(ptr noundef %89) #9
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end86.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.1, %error ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end86.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pn533_usb_disconnect(ptr noundef %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %priv = getelementptr inbounds %struct.pn533_usb_phy, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  tail call void @pn53x_unregister_nfc(ptr noundef %3) #9
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  tail call void @pn53x_common_clean(ptr noundef %5) #9
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %driver_data.i.i, align 4
  %in_urb = getelementptr inbounds %struct.pn533_usb_phy, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %in_urb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %in_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %8) #9
  %out_urb = getelementptr inbounds %struct.pn533_usb_phy, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %out_urb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %out_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %10) #9
  %ack_urb = getelementptr inbounds %struct.pn533_usb_phy, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %ack_urb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ack_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %12) #9
  %13 = ptrtoint ptr %in_urb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %in_urb, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 14
  %15 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %transfer_buffer, align 4
  tail call void @kfree(ptr noundef %16) #9
  %17 = ptrtoint ptr %in_urb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %in_urb, align 4
  tail call void @usb_free_urb(ptr noundef %18) #9
  %19 = ptrtoint ptr %out_urb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %out_urb, align 4
  tail call void @usb_free_urb(ptr noundef %20) #9
  %21 = ptrtoint ptr %ack_urb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ack_urb, align 4
  tail call void @usb_free_urb(ptr noundef %22) #9
  %ack_buffer = getelementptr inbounds %struct.pn533_usb_phy, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %ack_buffer to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ack_buffer, align 4
  tail call void @kfree(ptr noundef %24) #9
  %dev = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.38) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pn533_send_complete(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %3, label %do.end7 [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 -104, label %entry.do.body_crit_edge
    i32 -2, label %entry.do.body_crit_edge16
  ]

entry.do.body_crit_edge16:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pn533_send_complete.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pn533_send_complete, %if.then)) #9
          to label %sw.epilog [label %if.then], !srcloc !112

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pn533_send_complete.__UNIQUE_ID_ddebug346, ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %8) #9
  br label %sw.epilog

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %dev9 = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.16, i32 noundef %3) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end7, %if.then, %do.body, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pn533_acr122_poweron_rdr(ptr nocapture noundef readonly %phy) unnamed_addr #2 align 64 {
entry:
  %cmd = alloca [10 x i8], align 1
  %transferred = alloca i32, align 4
  %arg = alloca %struct.pn533_acr122_poweron_rdr_arg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %cmd) #9
  %0 = call ptr @memcpy(ptr %cmd, ptr @__const.pn533_acr122_poweron_rdr.cmd, i32 10)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %transferred) #9
  %1 = ptrtoint ptr %transferred to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %transferred, align 4, !annotation !113
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %arg) #9
  %2 = call ptr @memset(ptr %arg, i32 255, i32 60)
  %call = call ptr @kmemdup(ptr noundef nonnull %cmd, i32 noundef 10, i32 noundef 3264) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %done = getelementptr inbounds %struct.pn533_acr122_poweron_rdr_arg, ptr %arg, i32 0, i32 1
  %3 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.pn533_acr122_poweron_rdr_arg, ptr %arg, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @init_completion.__key) #9
  %in_urb = getelementptr inbounds %struct.pn533_usb_phy, ptr %phy, i32 0, i32 3
  %4 = ptrtoint ptr %in_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %in_urb, align 4
  %context = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %context, align 4
  %complete = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 28
  %8 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @pn533_acr122_poweron_rdr_resp, ptr %complete, align 4
  %9 = load ptr, ptr %in_urb, align 4
  %context3 = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %context3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arg, ptr %context3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pn533_acr122_poweron_rdr.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pn533_acr122_poweron_rdr, %if.then8)) #9
          to label %do.end [label %if.then8], !srcloc !112

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @print_hex_dump(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %cmd, i32 noundef 10, i1 noundef zeroext false) #9
  br label %do.end

do.end:                                           ; preds = %if.then8, %if.end
  %11 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %phy, align 4
  %out_urb = getelementptr inbounds %struct.pn533_usb_phy, ptr %phy, i32 0, i32 2
  %13 = ptrtoint ptr %out_urb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %out_urb, align 4
  %pipe = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pipe, align 4
  %call11 = call i32 @usb_bulk_msg(ptr noundef %12, i32 noundef %16, ptr noundef nonnull %call, i32 noundef 10, ptr noundef nonnull %transferred, i32 noundef 5000) #9
  call void @kfree(ptr noundef nonnull %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %lor.lhs.false, label %do.end.do.end16_crit_edge

do.end.do.end16_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

lor.lhs.false:                                    ; preds = %do.end
  %17 = ptrtoint ptr %transferred to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %transferred, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %18)
  %cmp.not = icmp eq i32 %18, 10
  br i1 %cmp.not, label %if.end18, label %lor.lhs.false.do.end16_crit_edge

lor.lhs.false.do.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

do.end16:                                         ; preds = %lor.lhs.false.do.end16_crit_edge, %do.end.do.end16_crit_edge
  %19 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phy, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %call11) #13
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false
  %21 = ptrtoint ptr %in_urb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %in_urb, align 4
  %call20 = call i32 @usb_submit_urb(ptr noundef %22, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end28, label %do.end25

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %phy, align 4
  %dev27 = getelementptr inbounds %struct.usb_device, ptr %24, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27, ptr noundef nonnull @.str.22, i32 noundef %call20) #13
  br label %cleanup

if.end28:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  call void @wait_for_completion(ptr noundef %done) #9
  %25 = ptrtoint ptr %in_urb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %in_urb, align 4
  %context31 = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 27
  %27 = ptrtoint ptr %context31 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %7, ptr %context31, align 4
  %28 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arg, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %do.end25, %do.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %do.end16 ], [ %call20, %do.end25 ], [ %29, %if.end28 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %arg) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %transferred) #9
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %cmd) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pn53x_common_init(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pn533_finalize_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pn53x_register_nfc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pn53x_common_clean(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @pn533_acr122_tx_frame_init(ptr nocapture noundef writeonly %_frame, i8 noundef zeroext %cmd_code) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_frame to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 107, ptr %_frame, align 1
  %datalen = getelementptr inbounds %struct.pn533_acr122_ccid_hdr, ptr %_frame, i32 0, i32 1
  %1 = ptrtoint ptr %datalen to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 5, ptr %datalen, align 1
  %slot = getelementptr inbounds %struct.pn533_acr122_ccid_hdr, ptr %_frame, i32 0, i32 2
  %data = getelementptr inbounds %struct.pn533_acr122_tx_frame, ptr %_frame, i32 0, i32 3
  %2 = call ptr @memset(ptr %slot, i32 0, i32 5)
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -44, ptr %data, align 1
  %arrayidx13 = getelementptr %struct.pn533_acr122_tx_frame, ptr %_frame, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %cmd_code, ptr %arrayidx13, align 1
  %datalen14 = getelementptr inbounds %struct.pn533_acr122_tx_frame, ptr %_frame, i32 0, i32 2
  %5 = ptrtoint ptr %datalen14 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %datalen14, align 1
  %apdu = getelementptr inbounds %struct.pn533_acr122_tx_frame, ptr %_frame, i32 0, i32 1
  %6 = ptrtoint ptr %apdu to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %apdu, align 1
  %ins = getelementptr inbounds %struct.pn533_acr122_tx_frame, ptr %_frame, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %ins to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %ins, align 1
  %p1 = getelementptr inbounds %struct.pn533_acr122_tx_frame, ptr %_frame, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %p1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %p1, align 1
  %p2 = getelementptr inbounds %struct.pn533_acr122_tx_frame, ptr %_frame, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %p2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %p2, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @pn533_acr122_tx_frame_finish(ptr nocapture noundef %_frame) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %datalen = getelementptr inbounds %struct.pn533_acr122_tx_frame, ptr %_frame, i32 0, i32 2
  %0 = ptrtoint ptr %datalen to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %datalen, align 1
  %conv = zext i8 %1 to i32
  %datalen1 = getelementptr inbounds %struct.pn533_acr122_ccid_hdr, ptr %_frame, i32 0, i32 1
  %2 = ptrtoint ptr %datalen1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %datalen1, align 1
  %add = add i32 %3, %conv
  store i32 %add, ptr %datalen1, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @pn533_acr122_tx_update_payload_len(ptr nocapture noundef %_frame, i32 noundef %len) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %datalen = getelementptr inbounds %struct.pn533_acr122_tx_frame, ptr %_frame, i32 0, i32 2
  %0 = ptrtoint ptr %datalen to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %datalen, align 1
  %2 = trunc i32 %len to i8
  %conv1 = add i8 %1, %2
  store i8 %conv1, ptr %datalen, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @pn533_acr122_is_rx_frame_valid(ptr nocapture noundef readonly %_frame, ptr nocapture noundef readnone %dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_frame to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %_frame, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -125, i8 %1)
  %cmp.not = icmp eq i8 %1, -125
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %datalen = getelementptr inbounds %struct.pn533_acr122_ccid_hdr, ptr %_frame, i32 0, i32 1
  %2 = ptrtoint ptr %datalen to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %datalen, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add i32 %3, -2
  %arrayidx = getelementptr %struct.pn533_acr122_rx_frame, ptr %_frame, i32 0, i32 1, i32 %sub
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 99, i8 %5)
  %cmp8 = icmp ne i8 %5, 99
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ %cmp8, %if.end4 ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pn533_acr122_rx_frame_size(ptr nocapture noundef readonly %frame) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %datalen = getelementptr inbounds %struct.pn533_acr122_ccid_hdr, ptr %frame, i32 0, i32 1
  %0 = ptrtoint ptr %datalen to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %datalen, align 1
  %add = add i32 %1, 10
  ret i32 %add
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @pn533_acr122_get_cmd_code(ptr nocapture noundef readonly %frame) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.pn533_acr122_rx_frame, ptr %frame, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  ret i8 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pn533_acr122_poweron_rdr_resp(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pn533_acr122_poweron_rdr_resp.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pn533_acr122_poweron_rdr_resp, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !112

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %2 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transfer_buffer, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %4 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %transfer_buffer_length, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.26, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %3, i32 noundef %5, i1 noundef zeroext false) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %1, align 4
  %done = getelementptr inbounds %struct.pn533_acr122_poweron_rdr_arg, ptr %1, i32 0, i32 1
  tail call void @complete(ptr noundef %done) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn533_usb_send_frame(ptr noundef %dev, ptr nocapture noundef readonly %out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %phy1 = getelementptr inbounds %struct.pn533, ptr %dev, i32 0, i32 36
  %0 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy1, align 4
  %priv = getelementptr inbounds %struct.pn533_usb_phy, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %priv, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %out, i32 0, i32 19
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %out_urb = getelementptr inbounds %struct.pn533_usb_phy, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %out_urb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %out_urb, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %8, i32 0, i32 14
  %9 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %transfer_buffer, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %out, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %12 = load ptr, ptr %out_urb, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 19
  %13 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %11, ptr %transfer_buffer_length, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pn533_usb_send_frame.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pn533_usb_send_frame, %if.then6)) #9
          to label %do.end [label %if.then6], !srcloc !112

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.28, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %15, i32 noundef %17, i1 noundef zeroext false) #9
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.end
  %18 = ptrtoint ptr %out_urb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %out_urb, align 4
  %call11 = tail call i32 @usb_submit_urb(ptr noundef %19, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %do.end
  %protocol_type = getelementptr inbounds %struct.pn533, ptr %dev, i32 0, i32 2
  %20 = ptrtoint ptr %protocol_type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %protocol_type, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %21, label %if.end14.cleanup_crit_edge [
    i32 1, label %if.then16
    i32 0, label %if.then23
  ]

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then16:                                        ; preds = %if.end14
  %in_urb.i = getelementptr inbounds %struct.pn533_usb_phy, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %in_urb.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %in_urb.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %24, i32 0, i32 28
  %25 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @pn533_recv_response, ptr %complete.i, align 4
  %26 = load ptr, ptr %in_urb.i, align 4
  %call.i = tail call i32 @usb_submit_urb(ptr noundef %26, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not = icmp eq i32 %call.i, 0
  br i1 %tobool18.not, label %if.then16.cleanup_crit_edge, label %if.then16.error_crit_edge

if.then16.error_crit_edge:                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then23:                                        ; preds = %if.end14
  %in_urb.i50 = getelementptr inbounds %struct.pn533_usb_phy, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %in_urb.i50 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %in_urb.i50, align 4
  %complete.i51 = getelementptr inbounds %struct.urb, ptr %28, i32 0, i32 28
  %29 = ptrtoint ptr %complete.i51 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @pn533_recv_ack, ptr %complete.i51, align 4
  %30 = load ptr, ptr %in_urb.i50, align 4
  %call.i52 = tail call i32 @usb_submit_urb(ptr noundef %30, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %tobool25.not = icmp eq i32 %call.i52, 0
  br i1 %tobool25.not, label %if.then23.cleanup_crit_edge, label %if.then23.error_crit_edge

if.then23.error_crit_edge:                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

error:                                            ; preds = %if.then23.error_crit_edge, %if.then16.error_crit_edge
  %rc.0 = phi i32 [ %call.i, %if.then16.error_crit_edge ], [ %call.i52, %if.then23.error_crit_edge ]
  %31 = ptrtoint ptr %out_urb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %out_urb, align 4
  %call31 = tail call i32 @usb_unlink_urb(ptr noundef %32) #9
  br label %cleanup

cleanup:                                          ; preds = %error, %if.then23.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %error ], [ %call11, %do.end.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ 0, %if.then23.cleanup_crit_edge ], [ 0, %if.then16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn533_usb_send_ack(ptr nocapture noundef readonly %dev, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %phy1 = getelementptr inbounds %struct.pn533, ptr %dev, i32 0, i32 36
  %0 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy1, align 4
  %ack_buffer = getelementptr inbounds %struct.pn533_usb_phy, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ack_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ack_buffer, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then:                                          ; preds = %entry
  %call = tail call ptr @kmemdup(ptr noundef nonnull @pn533_usb_send_ack.ack, i32 noundef 6, i32 noundef %flags) #9
  %4 = ptrtoint ptr %ack_buffer to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %ack_buffer, align 4
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.then.cleanup_crit_edge, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %5 = ptrtoint ptr %ack_buffer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ack_buffer, align 4
  %ack_urb = getelementptr inbounds %struct.pn533_usb_phy, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %ack_urb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ack_urb, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %8, i32 0, i32 14
  %9 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %transfer_buffer, align 4
  %10 = load ptr, ptr %ack_urb, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 19
  %11 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 6, ptr %transfer_buffer_length, align 4
  %12 = load ptr, ptr %ack_urb, align 4
  %call10 = tail call i32 @usb_submit_urb(ptr noundef %12, i32 noundef %flags) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end6 ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pn533_usb_abort_cmd(ptr nocapture noundef readonly %dev, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device_type = getelementptr inbounds %struct.pn533, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %device_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %phy1 = getelementptr inbounds %struct.pn533, ptr %dev, i32 0, i32 36
  %2 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy1, align 4
  %ack_buffer.i = getelementptr inbounds %struct.pn533_usb_phy, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %ack_buffer.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ack_buffer.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.if.end6.i_crit_edge

if.end.if.end6.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.then.i:                                        ; preds = %if.end
  %call.i = tail call ptr @kmemdup(ptr noundef nonnull @pn533_usb_send_ack.ack, i32 noundef 6, i32 noundef %flags) #9
  %6 = ptrtoint ptr %ack_buffer.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %ack_buffer.i, align 4
  %tobool4.not.i = icmp eq ptr %call.i, null
  br i1 %tobool4.not.i, label %if.then.i.pn533_usb_send_ack.exit_crit_edge, label %if.then.i.if.end6.i_crit_edge

if.then.i.if.end6.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.then.i.pn533_usb_send_ack.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pn533_usb_send_ack.exit

if.end6.i:                                        ; preds = %if.then.i.if.end6.i_crit_edge, %if.end.if.end6.i_crit_edge
  %7 = ptrtoint ptr %ack_buffer.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ack_buffer.i, align 4
  %ack_urb.i = getelementptr inbounds %struct.pn533_usb_phy, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %ack_urb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ack_urb.i, align 4
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 14
  %11 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %transfer_buffer.i, align 4
  %12 = load ptr, ptr %ack_urb.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 19
  %13 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 6, ptr %transfer_buffer_length.i, align 4
  %14 = load ptr, ptr %ack_urb.i, align 4
  %call10.i = tail call i32 @usb_submit_urb(ptr noundef %14, i32 noundef %flags) #9
  br label %pn533_usb_send_ack.exit

pn533_usb_send_ack.exit:                          ; preds = %if.end6.i, %if.then.i.pn533_usb_send_ack.exit_crit_edge
  %in_urb = getelementptr inbounds %struct.pn533_usb_phy, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %in_urb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %in_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %16) #9
  br label %cleanup

cleanup:                                          ; preds = %pn533_usb_send_ack.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_unlink_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pn533_recv_response(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %entry
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %4 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %actual_length, align 4
  %call.i = tail call ptr @__alloc_skb(i32 noundef %5, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #9
  %tobool1.not = icmp eq ptr %call.i, null
  br i1 %tobool1.not, label %do.end, label %if.else

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #13
  br label %if.end5

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %8 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %transfer_buffer, align 4
  %10 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %actual_length, align 4
  %call.i15 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %11) #9
  %12 = call ptr @memcpy(ptr %call.i15, ptr %9, i32 %11)
  br label %if.end5

if.end5:                                          ; preds = %if.else, %do.end, %entry.if.end5_crit_edge
  %skb.0 = phi ptr [ null, %entry.if.end5_crit_edge ], [ %call.i, %if.else ], [ null, %do.end ]
  %priv = getelementptr inbounds %struct.pn533_usb_phy, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 4
  %15 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status, align 4
  tail call void @pn533_recv_frame(ptr noundef %14, ptr noundef %skb.0, i32 noundef %16) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pn533_recv_frame(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pn533_recv_ack(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %priv1 = getelementptr inbounds %struct.pn533_usb_phy, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  %cmd2 = getelementptr inbounds %struct.pn533, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %cmd2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd2, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  %status3 = getelementptr inbounds %struct.pn533_cmd, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %status3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %status3, align 4
  %9 = load i32, ptr %status, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %9, label %do.end11 [
    i32 0, label %sw.epilog
    i32 -104, label %entry.do.body_crit_edge
    i32 -2, label %entry.do.body_crit_edge57
  ]

entry.do.body_crit_edge57:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge57
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pn533_recv_ack.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pn533_recv_ack, %if.then)) #9
          to label %sched_wq [label %if.then], !srcloc !112

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pn533_recv_ack.__UNIQUE_ID_ddebug342, ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %14) #9
  br label %sched_wq

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %dev13 = getelementptr inbounds %struct.usb_device, ptr %16, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.16, i32 noundef %9) #13
  br label %sched_wq

sw.epilog:                                        ; preds = %entry
  %in_urb = getelementptr inbounds %struct.pn533_usb_phy, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %in_urb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %in_urb, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %18, i32 0, i32 14
  %19 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %transfer_buffer, align 4
  %call15 = tail call zeroext i1 @pn533_rx_frame_is_ack(ptr noundef %20) #9
  br i1 %call15, label %if.end23, label %do.end19

do.end19:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %dev21 = getelementptr inbounds %struct.usb_device, ptr %22, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.33) #13
  %23 = ptrtoint ptr %status3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -5, ptr %status3, align 4
  br label %sched_wq

if.end23:                                         ; preds = %sw.epilog
  %24 = ptrtoint ptr %in_urb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %in_urb, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 28
  %26 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @pn533_recv_response, ptr %complete.i, align 4
  %27 = load ptr, ptr %in_urb, align 4
  %call.i = tail call i32 @usb_submit_urb(ptr noundef %27, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool25.not = icmp eq i32 %call.i, 0
  br i1 %tobool25.not, label %if.end23.cleanup_crit_edge, label %do.end29

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %dev31 = getelementptr inbounds %struct.usb_device, ptr %29, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31, ptr noundef nonnull @.str.36, i32 noundef %call.i) #13
  %30 = ptrtoint ptr %status3 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call.i, ptr %status3, align 4
  br label %sched_wq

sched_wq:                                         ; preds = %do.end29, %do.end19, %do.end11, %if.then, %do.body
  %wq = getelementptr inbounds %struct.pn533, ptr %3, i32 0, i32 5
  %31 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wq, align 4
  %cmd_complete_work = getelementptr inbounds %struct.pn533, ptr %3, i32 0, i32 7
  %call.i55 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %32, ptr noundef %cmd_complete_work) #9
  br label %cleanup

cleanup:                                          ; preds = %sched_wq, %if.end23.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pn533_rx_frame_is_ack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pn53x_unregister_nfc(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !15, !16, !17, !19, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !66, !67, !68, !70, !72, !73, !74, !76, !77, !78, !79, !81, !82, !84, !85, !87, !88, !89, !91, !92, !93, !95, !97, !98, !99, !100, !101}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @__initcall__kmod_pn533_usb__347_604_pn533_usb_driver_init6, !1, !"__initcall__kmod_pn533_usb__347_604_pn533_usb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/nfc/pn533/usb.c", i32 604, i32 1}
!2 = !{ptr @__exitcall_pn533_usb_driver_exit, !1, !"__exitcall_pn533_usb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author348, !4, !"__UNIQUE_ID_author348", i1 false, i1 false}
!4 = !{!"../drivers/nfc/pn533/usb.c", i32 606, i32 1}
!5 = !{ptr @__UNIQUE_ID_author349, !6, !"__UNIQUE_ID_author349", i1 false, i1 false}
!6 = !{!"../drivers/nfc/pn533/usb.c", i32 607, i32 1}
!7 = !{ptr @__UNIQUE_ID_author350, !8, !"__UNIQUE_ID_author350", i1 false, i1 false}
!8 = !{!"../drivers/nfc/pn533/usb.c", i32 608, i32 1}
!9 = !{ptr @__UNIQUE_ID_description351, !10, !"__UNIQUE_ID_description351", i1 false, i1 false}
!10 = !{!"../drivers/nfc/pn533/usb.c", i32 609, i32 1}
!11 = !{ptr @__UNIQUE_ID_version352, !12, !"__UNIQUE_ID_version352", i1 false, i1 false}
!12 = !{!"../drivers/nfc/pn533/usb.c", i32 610, i32 1}
!13 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__modver_attr, !12, !"__modver_attr", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_file353, !18, !"__UNIQUE_ID_file353", i1 false, i1 false}
!18 = !{!"../drivers/nfc/pn533/usb.c", i32 611, i32 1}
!19 = !{ptr @__UNIQUE_ID_license354, !18, !"__UNIQUE_ID_license354", i1 false, i1 false}
!20 = !{ptr @pn533_usb_driver, !21, !"pn533_usb_driver", i1 false, i1 false}
!21 = !{!"../drivers/nfc/pn533/usb.c", i32 597, i32 26}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/nfc/pn533/usb.c", i32 480, i32 3}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @pn533_usb_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @pn533_usb_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/nfc/pn533/usb.c", i32 520, i32 4}
!32 = !{ptr @pn533_usb_probe._entry.8, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @pn533_usb_probe._entry_ptr.10, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/nfc/pn533/usb.c", i32 527, i32 3}
!36 = !{ptr @pn533_usb_probe._entry.11, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @pn533_usb_probe._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/nfc/pn533/usb.c", i32 420, i32 3}
!40 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @pn533_send_complete.__UNIQUE_ID_ddebug346, !39, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/nfc/pn533/usb.c", i32 426, i32 3}
!44 = !{ptr @pn533_send_complete._entry, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @pn533_send_complete._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @pn533_acr122_frame_ops, !47, !"pn533_acr122_frame_ops", i1 false, i1 false}
!47 = !{!"../drivers/nfc/pn533/usb.c", i32 332, i32 31}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/nfc/pn533/usb.c", i32 386, i32 2}
!50 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @pn533_acr122_poweron_rdr.__UNIQUE_ID_ddebug345, !49, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!52 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/nfc/pn533/usb.c", i32 393, i32 3}
!55 = !{ptr @pn533_acr122_poweron_rdr._entry, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @pn533_acr122_poweron_rdr._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/nfc/pn533/usb.c", i32 400, i32 3}
!59 = !{ptr @pn533_acr122_poweron_rdr._entry.21, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @pn533_acr122_poweron_rdr._entry_ptr.23, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @init_completion.__key, !62, !"__key", i1 false, i1 false}
!62 = !{!"../include/linux/completion.h", i32 87, i32 2}
!63 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/nfc/pn533/usb.c", i32 357, i32 2}
!66 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @pn533_acr122_poweron_rdr_resp.__UNIQUE_ID_ddebug344, !65, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!68 = !{ptr @usb_phy_ops, !69, !"usb_phy_ops", i1 false, i1 false}
!69 = !{!"../drivers/nfc/pn533/usb.c", i32 432, i32 35}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/nfc/pn533/usb.c", i32 168, i32 2}
!72 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @pn533_usb_send_frame.__UNIQUE_ID_ddebug343, !71, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/nfc/pn533/usb.c", i32 67, i32 4}
!76 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @pn533_recv_response._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @pn533_recv_response._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/nfc/pn533/usb.c", i32 99, i32 3}
!81 = !{ptr @pn533_recv_ack.__UNIQUE_ID_ddebug342, !80, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!82 = !{ptr @pn533_recv_ack._entry, !83, !"_entry", i1 false, i1 false}
!83 = !{!"../drivers/nfc/pn533/usb.c", i32 105, i32 3}
!84 = !{ptr @pn533_recv_ack._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/nfc/pn533/usb.c", i32 113, i32 3}
!87 = !{ptr @pn533_recv_ack._entry.32, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @pn533_recv_ack._entry_ptr.34, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/nfc/pn533/usb.c", i32 120, i32 3}
!91 = !{ptr @pn533_recv_ack._entry.35, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @pn533_recv_ack._entry_ptr.37, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @pn533_usb_send_ack.ack, !94, !"ack", i1 false, i1 false}
!94 = !{!"../drivers/nfc/pn533/usb.c", i32 142, i32 18}
!95 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/nfc/pn533/usb.c", i32 594, i32 2}
!97 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @pn533_usb_disconnect._entry, !96, !"_entry", i1 false, i1 false}
!100 = !{ptr @pn533_usb_disconnect._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @pn533_usb_table, !102, !"pn533_usb_table", i1 false, i1 false}
!102 = !{!"../drivers/nfc/pn533/usb.c", i32 33, i32 35}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{i64 2148290276, i64 2148290281, i64 2148290294, i64 2148290338, i64 2148290372, i64 2148290393}
!113 = !{!"auto-init"}
