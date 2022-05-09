; ModuleID = '/llk/IR_all_yes/drivers/staging/gdm724x/gdm_usb.c_pt.bc'
source_filename = "../drivers/staging/gdm724x/gdm_usb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.module = type { i32, %struct.list_head, [60 x i8], [20 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i8, i32, ptr, ptr, [112 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, ptr, i32, [48 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.phy_dev = type { ptr, [4 x ptr], ptr, ptr, ptr, ptr }
%struct.lte_udev = type { ptr, %struct.tx_cxt, %struct.rx_cxt, %struct.delayed_work, %struct.delayed_work, i8, i8, i8, ptr, ptr, i32, i8 }
%struct.tx_cxt = type { %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.spinlock }
%struct.rx_cxt = type { %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock }
%struct.usb_tx_sdu = type { %struct.list_head, ptr, i32, ptr, ptr }
%struct.usb_rx = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hci_packet = type { i16, i16, [0 x i8] }
%struct.usb_tx = type { %struct.list_head, ptr, ptr, i32, ptr, ptr, ptr, i8 }
%struct.sdu = type { i16, i16, i32, i32, i32, [0 x i8] }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.multi_sdu = type { i16, i16, i16, i16, [0 x i8] }
%struct.tlv = type <{ i8, i8, [1 x ptr] }>

@id_table = internal constant [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 387, i16 4214, i16 -32768, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 387, i16 4214, i16 -28672, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], align 4
@__UNIQUE_ID_version342 = internal constant [17 x i8] c"version=3.7.17.0\00", section ".modinfo", align 1
@__UNIQUE_ID_description343 = internal constant [38 x i8] c"description=GCT LTE USB Device Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license344 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@gdm_usb_lte_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 993, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013gdmulte: error creating event\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gdm_usb_lte_init\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/staging/gdm724x/gdm_usb.c\00", [62 x i8] zeroinitializer }, align 32
@gdm_usb_lte_init._entry_ptr = internal global ptr @gdm_usb_lte_init._entry, section ".printk_index", align 4
@gdm_usb_lte_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.4, ptr @gdm_usb_probe, ptr @gdm_usb_disconnect, ptr null, ptr @gdm_usb_suspend, ptr @gdm_usb_resume, ptr @gdm_usb_resume, ptr null, ptr null, ptr @id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 64 }, [44 x i8] zeroinitializer }, align 32
@__this_module = external dso_local global %struct.module, align 128
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gdmulte\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gdm_lte\00", [24 x i8] zeroinitializer }, align 32
@gdm_usb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 817, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016gdmulte: net vid = 0x%04x pid = 0x%04x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gdm_usb_probe\00", [18 x i8] zeroinitializer }, align 32
@gdm_usb_probe._entry_ptr = internal global ptr @gdm_usb_probe._entry, section ".printk_index", align 4
@gdm_usb_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 820, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016gdmulte: not a network device\0A\00", [63 x i8] zeroinitializer }, align 32
@gdm_usb_probe._entry_ptr.9 = internal global ptr @gdm_usb_probe._entry.7, section ".printk_index", align 4
@gdm_usb_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 843, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"init_usb func failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gdm_usb_probe._entry_ptr.14 = internal global ptr @gdm_usb_probe._entry.10, section ".printk_index", align 4
@gdm_usb_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.6, ptr @.str.2, i32 862, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"request Mac address failed\0A\00", [36 x i8] zeroinitializer }, align 32
@gdm_usb_probe._entry_ptr.17 = internal global ptr @gdm_usb_probe._entry.15, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@gdm_usb_hci_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 771, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013gdmulte: hci send - invalid device\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gdm_usb_hci_send\00", [47 x i8] zeroinitializer }, align 32
@gdm_usb_hci_send._entry_ptr = internal global ptr @gdm_usb_hci_send._entry, section ".printk_index", align 4
@gdm_usb_hci_send._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 777, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013gdmulte: hci_send - out of memory\0A\00", [59 x i8] zeroinitializer }, align 32
@gdm_usb_hci_send._entry_ptr.22 = internal global ptr @gdm_usb_hci_send._entry.20, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@gdm_usb_sdu_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 718, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013gdmulte: sdu send - invalid device\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gdm_usb_sdu_send\00", [47 x i8] zeroinitializer }, align 32
@gdm_usb_sdu_send._entry_ptr = internal global ptr @gdm_usb_sdu_send._entry, section ".printk_index", align 4
@gdm_usb_sdu_send._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 727, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013gdmulte: sdu send - free list empty\0A\00", [57 x i8] zeroinitializer }, align 32
@gdm_usb_sdu_send._entry_ptr.27 = internal global ptr @gdm_usb_sdu_send._entry.25, section ".printk_index", align 4
@gdm_usb_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013gdmulte: invalid device\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gdm_usb_recv\00", [19 x i8] zeroinitializer }, align 32
@gdm_usb_recv._entry_ptr = internal global ptr @gdm_usb_recv._entry, section ".printk_index", align 4
@gdm_usb_recv._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 504, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013gdmulte: Out of Memory\0A\00", [38 x i8] zeroinitializer }, align 32
@gdm_usb_recv._entry_ptr.32 = internal global ptr @gdm_usb_recv._entry.30, section ".printk_index", align 4
@gdm_usb_recv._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.2, i32 536, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013gdmulte: usb_submit_urb failed (%p)\0A\00", [57 x i8] zeroinitializer }, align 32
@gdm_usb_recv._entry_ptr.35 = internal global ptr @gdm_usb_recv._entry.33, section ".printk_index", align 4
@gdm_usb_rcv_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 475, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: urb status error %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gdm_usb_rcv_complete\00", [43 x i8] zeroinitializer }, align 32
@gdm_usb_rcv_complete._entry_ptr = internal global ptr @gdm_usb_rcv_complete._entry, section ".printk_index", align 4
@init_usb.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&tx->lock\00", [22 x i8] zeroinitializer }, align 32
@init_usb.__key.39 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&rx->rx_lock\00", [19 x i8] zeroinitializer }, align 32
@init_usb.__key.41 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&rx->submit_lock\00", [47 x i8] zeroinitializer }, align 32
@init_usb.__key.43 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&rx->to_host_lock\00", [46 x i8] zeroinitializer }, align 32
@init_usb.__key.45 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&(&udev->work_tx)->work)\00", [53 x i8] zeroinitializer }, align 32
@init_usb.__key.47 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&(&udev->work_tx)->timer\00", [39 x i8] zeroinitializer }, align 32
@init_usb.__key.49 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&(&udev->work_rx)->work)\00", [53 x i8] zeroinitializer }, align 32
@init_usb.__key.51 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&(&udev->work_rx)->timer\00", [39 x i8] zeroinitializer }, align 32
@do_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 697, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013gdmulte: send_tx_packet failed\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"do_tx\00", [26 x i8] zeroinitializer }, align 32
@do_tx._entry_ptr = internal global ptr @do_tx._entry, section ".printk_index", align 4
@send_tx_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 585, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"usb_submit_urb failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"send_tx_packet\00", [17 x i8] zeroinitializer }, align 32
@send_tx_packet._entry_ptr = internal global ptr @send_tx_packet._entry, section ".printk_index", align 4
@gdm_usb_send_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 551, ptr @.str.59, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CONNRESET\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gdm_usb_send_complete\00", [42 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@gdm_usb_send_complete._entry_ptr = internal global ptr @gdm_usb_send_complete._entry, section ".printk_index", align 4
@do_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013gdmulte: failed to send received data\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"do_rx\00", [26 x i8] zeroinitializer }, align 32
@do_rx._entry_ptr = internal global ptr @do_rx._entry, section ".printk_index", align 4
@set_mac_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013gdmulte: register lte device failed\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"set_mac_address\00", [16 x i8] zeroinitializer }, align 32
@set_mac_address._entry_ptr = internal global ptr @set_mac_address._entry, section ".printk_index", align 4
@gdm_usb_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.2, i32 918, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"usb suspend - invalid state\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gdm_usb_suspend\00", [16 x i8] zeroinitializer }, align 32
@gdm_usb_suspend._entry_ptr = internal global ptr @gdm_usb_suspend._entry, section ".printk_index", align 4
@gdm_usb_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 954, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"usb resume - invalid state\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gdm_usb_resume\00", [17 x i8] zeroinitializer }, align 32
@gdm_usb_resume._entry_ptr = internal global ptr @gdm_usb_resume._entry, section ".printk_index", align 4
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 993, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [19 x i8] c"gdm_usb_lte_driver\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 979, i32 26 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 997, i32 9 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 980, i32 10 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 817, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 820, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 843, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 862, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 771, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 777, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 718, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 727, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 498, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 504, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 536, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 474, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 320, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 321, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 322, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 323, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 351, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 352, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 697, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 584, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 551, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 427, i32 6 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 371, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 918, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.293 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.294 = private constant [37 x i8] c"../drivers/staging/gdm724x/gdm_usb.c\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 954, i32 3 }
@llvm.compiler.used = appending global [99 x ptr] [ptr @__UNIQUE_ID_description343, ptr @__UNIQUE_ID_license344, ptr @__UNIQUE_ID_version342, ptr @do_rx._entry, ptr @do_rx._entry_ptr, ptr @do_tx._entry, ptr @do_tx._entry_ptr, ptr @gdm_usb_hci_send._entry, ptr @gdm_usb_hci_send._entry.20, ptr @gdm_usb_hci_send._entry_ptr, ptr @gdm_usb_hci_send._entry_ptr.22, ptr @gdm_usb_lte_init._entry, ptr @gdm_usb_lte_init._entry_ptr, ptr @gdm_usb_probe._entry, ptr @gdm_usb_probe._entry.10, ptr @gdm_usb_probe._entry.15, ptr @gdm_usb_probe._entry.7, ptr @gdm_usb_probe._entry_ptr, ptr @gdm_usb_probe._entry_ptr.14, ptr @gdm_usb_probe._entry_ptr.17, ptr @gdm_usb_probe._entry_ptr.9, ptr @gdm_usb_rcv_complete._entry, ptr @gdm_usb_rcv_complete._entry_ptr, ptr @gdm_usb_recv._entry, ptr @gdm_usb_recv._entry.30, ptr @gdm_usb_recv._entry.33, ptr @gdm_usb_recv._entry_ptr, ptr @gdm_usb_recv._entry_ptr.32, ptr @gdm_usb_recv._entry_ptr.35, ptr @gdm_usb_resume._entry, ptr @gdm_usb_resume._entry_ptr, ptr @gdm_usb_sdu_send._entry, ptr @gdm_usb_sdu_send._entry.25, ptr @gdm_usb_sdu_send._entry_ptr, ptr @gdm_usb_sdu_send._entry_ptr.27, ptr @gdm_usb_send_complete._entry, ptr @gdm_usb_send_complete._entry_ptr, ptr @gdm_usb_suspend._entry, ptr @gdm_usb_suspend._entry_ptr, ptr @send_tx_packet._entry, ptr @send_tx_packet._entry_ptr, ptr @set_mac_address._entry, ptr @set_mac_address._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @gdm_usb_lte_driver, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @init_usb.__key, ptr @.str.38, ptr @init_usb.__key.39, ptr @.str.40, ptr @init_usb.__key.41, ptr @.str.42, ptr @init_usb.__key.43, ptr @.str.44, ptr @init_usb.__key.45, ptr @.str.46, ptr @init_usb.__key.47, ptr @.str.48, ptr @init_usb.__key.49, ptr @.str.50, ptr @init_usb.__key.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67], section "llvm.metadata"
@0 = internal global [76 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdm_usb_lte_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdm_usb_lte_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdm_usb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdm_usb_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdm_usb_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdm_usb_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdm_usb_hci_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdm_usb_hci_send._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdm_usb_sdu_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdm_usb_sdu_send._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdm_usb_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdm_usb_recv._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdm_usb_recv._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdm_usb_rcv_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb.__key.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb.__key.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb.__key.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb.__key.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb.__key.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb.__key.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb.__key.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_tx_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdm_usb_send_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_mac_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdm_usb_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdm_usb_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@__mod_usb__id_table_device_table = dso_local alias [3 x %struct.usb_device_id], ptr @id_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gdm_lte_event_init() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 @usb_register_driver(ptr noundef nonnull @gdm_usb_lte_driver, ptr noundef nonnull @__this_module, ptr noundef nonnull @.str.3) #9
  br label %return

return:                                           ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gdm_lte_event_exit() #9
  tail call void @usb_deregister(ptr noundef nonnull @gdm_usb_lte_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gdm_lte_event_init() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gdm_usb_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #3 align 64 {
entry:
  %actual.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %2 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber1 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bInterfaceNumber1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bInterfaceNumber1, align 2
  %idVendor2 = getelementptr i8, ptr %1, i32 936
  %6 = ptrtoint ptr %idVendor2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %idVendor2, align 8
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %idProduct4 = getelementptr i8, ptr %1, i32 938
  %9 = ptrtoint ptr %idProduct4 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %idProduct4, align 2
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %conv5 = zext i16 %8 to i32
  %conv6 = zext i16 %11 to i32
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %conv5, i32 noundef %conv6) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp ugt i8 %5, 1
  br i1 %cmp, label %do.end11, label %if.end

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 36) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i84 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 456) #13
  %tobool18.not = icmp eq ptr %call7.i.i84, null
  br i1 %tobool18.not, label %if.end16.err_udev_crit_edge, label %if.end20

if.end16.err_udev_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_udev

if.end20:                                         ; preds = %if.end16
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i84, ptr %call7.i.i, align 8
  %send_hci_func = getelementptr inbounds %struct.phy_dev, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %send_hci_func to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @gdm_usb_hci_send, ptr %send_hci_func, align 4
  %send_sdu_func = getelementptr inbounds %struct.phy_dev, ptr %call7.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %send_sdu_func to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @gdm_usb_sdu_send, ptr %send_sdu_func, align 8
  %rcv_func = getelementptr inbounds %struct.phy_dev, ptr %call7.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %rcv_func to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @gdm_usb_recv, ptr %rcv_func, align 4
  %get_endian = getelementptr inbounds %struct.phy_dev, ptr %call7.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %get_endian to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @gdm_usb_get_endian, ptr %get_endian, align 8
  %19 = ptrtoint ptr %call7.i.i84 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr.i, ptr %call7.i.i84, align 8
  %tx1.i = getelementptr inbounds %struct.lte_udev, ptr %call7.i.i84, i32 0, i32 1
  %rx2.i = getelementptr inbounds %struct.lte_udev, ptr %call7.i.i84, i32 0, i32 2
  %send_complete.i = getelementptr inbounds %struct.lte_udev, ptr %call7.i.i84, i32 0, i32 6
  %20 = ptrtoint ptr %send_complete.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %send_complete.i, align 1
  %tx_stop.i = getelementptr inbounds %struct.lte_udev, ptr %call7.i.i84, i32 0, i32 7
  %21 = ptrtoint ptr %tx_stop.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %tx_stop.i, align 2
  %request_mac_addr.i = getelementptr inbounds %struct.lte_udev, ptr %call7.i.i84, i32 0, i32 11
  %22 = ptrtoint ptr %request_mac_addr.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %request_mac_addr.i, align 4
  %usb_state.i = getelementptr inbounds %struct.lte_udev, ptr %call7.i.i84, i32 0, i32 10
  %23 = ptrtoint ptr %usb_state.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %usb_state.i, align 8
  %24 = ptrtoint ptr %tx1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %tx1.i, ptr %tx1.i, align 4
  %prev.i.i = getelementptr inbounds %struct.lte_udev, ptr %call7.i.i84, i32 0, i32 1, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %tx1.i, ptr %prev.i.i, align 8
  %hci_list.i = getelementptr inbounds %struct.lte_udev, ptr %call7.i.i84, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %hci_list.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %hci_list.i, ptr %hci_list.i, align 4
  %prev.i123.i = getelementptr inbounds %struct.lte_udev, ptr %call7.i.i84, i32 0, i32 1, i32 1, i32 1
  %27 = ptrtoint ptr %prev.i123.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %hci_list.i, ptr %prev.i123.i, align 8
  %free_list.i = getelementptr inbounds %struct.lte_udev, ptr %call7.i.i84, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %free_list.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %free_list.i, ptr %free_list.i, align 4
  %prev.i124.i = getelementptr inbounds %struct.lte_udev, ptr %call7.i.i84, i32 0, i32 1, i32 2, i32 1
  %29 = ptrtoint ptr %prev.i124.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %free_list.i, ptr %prev.i124.i, align 8
  %rx_submit_list.i = getelementptr inbounds %struct.lte_udev, ptr %call7.i.i84, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %rx_submit_list.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %rx_submit_list.i, ptr %rx_submit_list.i, align 4
  %prev.i125.i = getelementptr inbounds %struct.lte_udev, ptr %call7.i.i84, i32 0, i32 2, i32 1, i32 1
  %31 = ptrtoint ptr %prev.i125.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %rx_submit_list.i, ptr %prev.i125.i, align 8
  %free_list3.i = getelementptr inbounds %struct.lte_udev, ptr %call7.i.i84, i32 0, i32 2, i32 2
  %32 = ptrtoint ptr %free_list3.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %free_list3.i, ptr %free_list3.i, align 4
  %prev.i126.i = getelementptr inbounds %struct.lte_udev, ptr %call7.i.i84, i32 0, i32 2, i32 2, i32 1
  %33 = ptrtoint ptr %prev.i126.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %free_list3.i, ptr %prev.i126.i, align 8
  %34 = ptrtoint ptr %rx2.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %rx2.i, ptr %rx2.i, align 4
  %prev.i127.i = getelementptr inbounds %struct.lte_udev, ptr %call7.i.i84, i32 0, i32 2, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i127.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %rx2.i, ptr %prev.i127.i, align 8
  %lock.i = getelementptr inbounds %struct.lte_udev, ptr %call7.i.i84, i32 0, i32 1, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @init_usb.__key, i16 noundef signext 3) #9
  %rx_lock.i = getelementptr inbounds %struct.lte_udev, ptr %call7.i.i84, i32 0, i32 2, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %rx_lock.i, ptr noundef nonnull @.str.40, ptr noundef nonnull @init_usb.__key.39, i16 noundef signext 3) #9
  %submit_lock.i = getelementptr inbounds %struct.lte_udev, ptr %call7.i.i84, i32 0, i32 2, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %submit_lock.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @init_usb.__key.41, i16 noundef signext 3) #9
  %to_host_lock.i = getelementptr inbounds %struct.lte_udev, ptr %call7.i.i84, i32 0, i32 2, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %to_host_lock.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @init_usb.__key.43, i16 noundef signext 3) #9
  %avail_count.i = getelementptr inbounds %struct.lte_udev, ptr %call7.i.i84, i32 0, i32 1, i32 3
  %36 = ptrtoint ptr %avail_count.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %avail_count.i, align 4
  %avail_count16.i = getelementptr inbounds %struct.lte_udev, ptr %call7.i.i84, i32 0, i32 2, i32 3
  %37 = ptrtoint ptr %avail_count16.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %avail_count16.i, align 4
  %rx_cb.i = getelementptr inbounds %struct.lte_udev, ptr %call7.i.i84, i32 0, i32 9
  %38 = ptrtoint ptr %rx_cb.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %rx_cb.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %list_add.exit.i.for.body.i_crit_edge, %if.end20
  %i.0147.i = phi i32 [ 0, %if.end20 ], [ %inc20.i, %list_add.exit.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %39 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3520, i32 noundef 24) #13
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %for.body.i.do.end28_crit_edge, label %if.end.i.i

for.body.i.do.end28_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end28

if.end.i.i:                                       ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %40 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3264, i32 noundef 2048) #13
  %buf.i.i = getelementptr inbounds %struct.usb_tx_sdu, ptr %call7.i.i.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i.i.i, ptr %buf.i.i, align 8
  %tobool3.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.fail.sink.split.i_crit_edge, label %if.end.i

if.end.i.i.fail.sink.split.i_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail.sink.split.i

if.end.i:                                         ; preds = %if.end.i.i
  %42 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %free_list.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %free_list.i, ptr noundef %43) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_add.exit.i_crit_edge

if.end.i.list_add.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call7.i.i.i.i, ptr %prev1.i.i.i, align 4
  %45 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %43, ptr %call7.i.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %free_list.i, ptr %prev3.i.i.i, align 4
  %47 = ptrtoint ptr %free_list.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %call7.i.i.i.i, ptr %free_list.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_add.exit.i_crit_edge
  %48 = ptrtoint ptr %avail_count.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %avail_count.i, align 4
  %inc.i = add i32 %49, 1
  store i32 %inc.i, ptr %avail_count.i, align 4
  %inc20.i = add nuw nsw i32 %i.0147.i, 1
  %exitcond.not.i = icmp eq i32 %inc20.i, 64
  br i1 %exitcond.not.i, label %list_add.exit.i.for.body23.i_crit_edge, label %list_add.exit.i.for.body.i_crit_edge

list_add.exit.i.for.body.i_crit_edge:             ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

list_add.exit.i.for.body23.i_crit_edge:           ; preds = %list_add.exit.i
  br label %for.body23.i

for.body23.i:                                     ; preds = %list_add.exit137.i.for.body23.i_crit_edge, %list_add.exit.i.for.body23.i_crit_edge
  %i.1148.i = phi i32 [ %inc33.i, %list_add.exit137.i.for.body23.i_crit_edge ], [ 0, %list_add.exit.i.for.body23.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %50 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i128.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %50, i32 noundef 3264, i32 noundef 48) #13
  %tobool.not.i129.i = icmp eq ptr %call7.i.i128.i, null
  br i1 %tobool.not.i129.i, label %for.body23.i.do.end28_crit_edge, label %if.end.i131.i

for.body23.i.do.end28_crit_edge:                  ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end28

if.end.i131.i:                                    ; preds = %for.body23.i
  %call1.i.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #9
  %urb.i.i = getelementptr inbounds %struct.usb_rx, ptr %call7.i.i128.i, i32 0, i32 4
  %51 = ptrtoint ptr %urb.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call1.i.i, ptr %urb.i.i, align 4
  %call1.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 32768, i32 noundef 3264, i32 noundef 3) #14
  %buf.i130.i = getelementptr inbounds %struct.usb_rx, ptr %call7.i.i128.i, i32 0, i32 5
  %52 = ptrtoint ptr %buf.i130.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call1.i.i.i.i, ptr %buf.i130.i, align 8
  %tobool4.not.i.i = icmp eq ptr %call1.i.i, null
  %tobool6.not.i.i = icmp eq ptr %call1.i.i.i.i, null
  %or.cond.i.i = select i1 %tobool4.not.i.i, i1 true, i1 %tobool6.not.i.i
  br i1 %or.cond.i.i, label %if.then11.critedge.i.i, label %if.end27.i

if.then11.critedge.i.i:                           ; preds = %if.end.i131.i
  call void @__sanitizer_cov_trace_pc() #11
  %buf.i130.i.le = getelementptr inbounds %struct.usb_rx, ptr %call7.i.i128.i, i32 0, i32 5
  tail call void @usb_free_urb(ptr noundef %call1.i.i) #9
  %53 = ptrtoint ptr %buf.i130.i.le to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %buf.i130.i.le, align 8
  tail call void @kfree(ptr noundef %54) #9
  br label %fail.sink.split.i

if.end27.i:                                       ; preds = %if.end.i131.i
  %free_list28.i = getelementptr inbounds %struct.usb_rx, ptr %call7.i.i128.i, i32 0, i32 1
  %55 = ptrtoint ptr %free_list3.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %free_list3.i, align 4
  %call.i.i133.i = tail call zeroext i1 @__list_add_valid(ptr noundef %free_list28.i, ptr noundef %free_list3.i, ptr noundef %56) #9
  br i1 %call.i.i133.i, label %if.end.i.i136.i, label %if.end27.i.list_add.exit137.i_crit_edge

if.end27.i.list_add.exit137.i_crit_edge:          ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit137.i

if.end.i.i136.i:                                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i134.i = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %prev1.i.i134.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %free_list28.i, ptr %prev1.i.i134.i, align 4
  %58 = ptrtoint ptr %free_list28.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %56, ptr %free_list28.i, align 8
  %prev3.i.i135.i = getelementptr inbounds %struct.usb_rx, ptr %call7.i.i128.i, i32 0, i32 1, i32 1
  %59 = ptrtoint ptr %prev3.i.i135.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %free_list3.i, ptr %prev3.i.i135.i, align 4
  %60 = ptrtoint ptr %free_list3.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %free_list28.i, ptr %free_list3.i, align 4
  br label %list_add.exit137.i

list_add.exit137.i:                               ; preds = %if.end.i.i136.i, %if.end27.i.list_add.exit137.i_crit_edge
  %61 = ptrtoint ptr %avail_count16.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %avail_count16.i, align 4
  %inc31.i = add i32 %62, 1
  store i32 %inc31.i, ptr %avail_count16.i, align 4
  %inc33.i = add nuw nsw i32 %i.1148.i, 1
  %exitcond155.not.i = icmp eq i32 %inc33.i, 6
  br i1 %exitcond155.not.i, label %if.end29, label %list_add.exit137.i.for.body23.i_crit_edge

list_add.exit137.i.for.body23.i_crit_edge:        ; preds = %list_add.exit137.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body23.i

fail.sink.split.i:                                ; preds = %if.then11.critedge.i.i, %if.end.i.i.fail.sink.split.i_crit_edge
  %call7.i.i128.lcssa.sink.i = phi ptr [ %call7.i.i128.i, %if.then11.critedge.i.i ], [ %call7.i.i.i.i, %if.end.i.i.fail.sink.split.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i128.lcssa.sink.i) #9
  br label %do.end28

do.end28:                                         ; preds = %fail.sink.split.i, %for.body23.i.do.end28_crit_edge, %for.body.i.do.end28_crit_edge
  tail call fastcc void @release_usb(ptr noundef %call7.i.i84) #9
  %usb_dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 8
  %63 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %usb_dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.11) #12
  br label %err_init_usb

if.end29:                                         ; preds = %list_add.exit137.i
  %work_tx.i = getelementptr inbounds %struct.lte_udev, ptr %call7.i.i84, i32 0, i32 3
  tail call void @__init_work(ptr noundef %work_tx.i, i32 noundef 0) #9
  %65 = ptrtoint ptr %work_tx.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -64, ptr %work_tx.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.lte_udev, ptr %call7.i.i84, i32 0, i32 3, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @init_usb.__key.45, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry43.i = getelementptr inbounds %struct.lte_udev, ptr %call7.i.i84, i32 0, i32 3, i32 0, i32 1
  %66 = ptrtoint ptr %entry43.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %entry43.i, ptr %entry43.i, align 8
  %prev.i138.i = getelementptr inbounds %struct.lte_udev, ptr %call7.i.i84, i32 0, i32 3, i32 0, i32 1, i32 1
  %67 = ptrtoint ptr %prev.i138.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %entry43.i, ptr %prev.i138.i, align 4
  %func.i = getelementptr inbounds %struct.lte_udev, ptr %call7.i.i84, i32 0, i32 3, i32 0, i32 2
  %68 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @do_tx, ptr %func.i, align 8
  %timer.i = getelementptr inbounds %struct.lte_udev, ptr %call7.i.i84, i32 0, i32 3, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.48, ptr noundef nonnull @init_usb.__key.47) #9
  %work_rx.i = getelementptr inbounds %struct.lte_udev, ptr %call7.i.i84, i32 0, i32 4
  tail call void @__init_work(ptr noundef %work_rx.i, i32 noundef 0) #9
  %69 = ptrtoint ptr %work_rx.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -64, ptr %work_rx.i, align 8
  %lockdep_map64.i = getelementptr inbounds %struct.lte_udev, ptr %call7.i.i84, i32 0, i32 4, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map64.i, ptr noundef nonnull @.str.50, ptr noundef nonnull @init_usb.__key.49, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry67.i = getelementptr inbounds %struct.lte_udev, ptr %call7.i.i84, i32 0, i32 4, i32 0, i32 1
  %70 = ptrtoint ptr %entry67.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %entry67.i, ptr %entry67.i, align 4
  %prev.i139.i = getelementptr inbounds %struct.lte_udev, ptr %call7.i.i84, i32 0, i32 4, i32 0, i32 1, i32 1
  %71 = ptrtoint ptr %prev.i139.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %entry67.i, ptr %prev.i139.i, align 8
  %func70.i = getelementptr inbounds %struct.lte_udev, ptr %call7.i.i84, i32 0, i32 4, i32 0, i32 2
  %72 = ptrtoint ptr %func70.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @do_rx, ptr %func70.i, align 4
  %timer75.i = getelementptr inbounds %struct.lte_udev, ptr %call7.i.i84, i32 0, i32 4, i32 1
  tail call void @init_timer_key(ptr noundef %timer75.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.52, ptr noundef nonnull @init_usb.__key.51) #9
  %intf30 = getelementptr inbounds %struct.lte_udev, ptr %call7.i.i84, i32 0, i32 8
  %73 = ptrtoint ptr %intf30 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %intf, ptr %intf30, align 8
  %needs_remote_wakeup = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 6
  %74 = ptrtoint ptr %needs_remote_wakeup to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load = load i8, ptr %needs_remote_wakeup, align 8
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %needs_remote_wakeup, align 8
  tail call void @usb_enable_autosuspend(ptr noundef %add.ptr.i) #9
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %1, i32 noundef 5000) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 144, i16 %10)
  %cmp32 = icmp eq i16 %10, 144
  %spec.select = select i1 %cmp32, i8 3, i8 2
  %75 = getelementptr inbounds %struct.lte_udev, ptr %call7.i.i84, i32 0, i32 5
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %spec.select, ptr %75, align 4
  %77 = ptrtoint ptr %call7.i.i84 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %call7.i.i84, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual.i) #9
  %79 = ptrtoint ptr %actual.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -1, ptr %actual.i, align 4, !annotation !142
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %80 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i85 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %80, i32 noundef 3264, i32 noundef 5) #13
  %tobool.not.i = icmp eq ptr %call7.i.i85, null
  br i1 %tobool.not.i, label %request_mac_address.exit.thread, label %request_mac_address.exit

request_mac_address.exit.thread:                  ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i) #9
  br label %do.end43

request_mac_address.exit:                         ; preds = %if.end29
  %81 = ptrtoint ptr %75 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %75, align 4
  %call3.i = tail call zeroext i16 @gdm_cpu_to_dev16(i8 noundef zeroext %82, i16 noundef zeroext 12290) #9
  %83 = ptrtoint ptr %call7.i.i85 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %call3.i, ptr %call7.i.i85, align 8
  %84 = ptrtoint ptr %75 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %75, align 4
  %call5.i = tail call zeroext i16 @gdm_cpu_to_dev16(i8 noundef zeroext %85, i16 noundef zeroext 1) #9
  %len.i = getelementptr inbounds %struct.hci_packet, ptr %call7.i.i85, i32 0, i32 1
  %86 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %call5.i, ptr %len.i, align 2
  %data.i = getelementptr inbounds %struct.hci_packet, ptr %call7.i.i85, i32 0, i32 2
  %87 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 -94, ptr %data.i, align 4
  %88 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %78, align 8
  %shl.i.i = shl i32 %89, 8
  %or.i = or i32 %shl.i.i, -1073676288
  %call7.i = call i32 @usb_bulk_msg(ptr noundef %78, i32 noundef %or.i, ptr noundef nonnull %call7.i.i85, i32 noundef 5, ptr noundef nonnull %actual.i, i32 noundef 1000) #9
  %90 = ptrtoint ptr %request_mac_addr.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %request_mac_addr.i, align 4
  call void @kfree(ptr noundef nonnull %call7.i.i85) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp38 = icmp slt i32 %call7.i, 0
  br i1 %cmp38, label %request_mac_address.exit.do.end43_crit_edge, label %if.end45

request_mac_address.exit.do.end43_crit_edge:      ; preds = %request_mac_address.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end43

do.end43:                                         ; preds = %request_mac_address.exit.do.end43_crit_edge, %request_mac_address.exit.thread
  %retval.0.i8894 = phi i32 [ -12, %request_mac_address.exit.thread ], [ %call7.i, %request_mac_address.exit.do.end43_crit_edge ]
  %usb_dev44 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 8
  %91 = ptrtoint ptr %usb_dev44 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %usb_dev44, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.16) #12
  call fastcc void @release_usb(ptr noundef nonnull %call7.i.i84)
  br label %err_init_usb

if.end45:                                         ; preds = %request_mac_address.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @start_rx_proc(ptr noundef nonnull %call7.i.i) #9
  %call46 = call ptr @usb_get_dev(ptr noundef %add.ptr.i) #9
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %93 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_init_usb:                                     ; preds = %do.end43, %do.end28
  %ret.0 = phi i32 [ -12, %do.end28 ], [ %retval.0.i8894, %do.end43 ]
  call void @kfree(ptr noundef nonnull %call7.i.i84) #9
  br label %err_udev

err_udev:                                         ; preds = %err_init_usb, %if.end16.err_udev_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_init_usb ], [ -12, %if.end16.err_udev_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %err_udev, %if.end45, %if.end.cleanup_crit_edge, %do.end11
  %retval.0 = phi i32 [ -19, %do.end11 ], [ %ret.1, %err_udev ], [ 0, %if.end45 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gdm_usb_disconnect(ptr nocapture noundef readonly %intf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @unregister_lte_device(ptr noundef %3) #9
  tail call fastcc void @release_usb(ptr noundef %5)
  tail call void @kfree(ptr noundef %5) #9
  tail call void @kfree(ptr noundef %3) #9
  tail call void @usb_put_dev(ptr noundef %add.ptr.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gdm_usb_suspend(ptr nocapture noundef readonly %intf, [1 x i32] %pm_msg.coerce) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %usb_state = getelementptr inbounds %struct.lte_udev, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %usb_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usb_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %usb_dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 8
  %6 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.64) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %usb_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %usb_state, align 4
  %submit_lock = getelementptr inbounds %struct.lte_udev, ptr %3, i32 0, i32 2, i32 6
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %submit_lock) #9
  %rx_submit_list = getelementptr inbounds %struct.lte_udev, ptr %3, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %rx_submit_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_submit_list, align 4
  %cmp20.not66 = icmp eq ptr %10, %rx_submit_list
  br i1 %cmp20.not66, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn.in68 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %10, %if.end.for.body_crit_edge ]
  %flags.067 = phi i32 [ %call32, %for.body.for.body_crit_edge ], [ %call7, %if.end.for.body_crit_edge ]
  %11 = ptrtoint ptr %.pn.in68 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn.in68, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %submit_lock, i32 noundef %flags.067) #9
  %urb = getelementptr i8, ptr %.pn.in68, i32 12
  %12 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %urb, align 4
  tail call void @usb_kill_urb(ptr noundef %13) #9
  %call32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %submit_lock) #9
  %cmp20.not = icmp eq ptr %.pn, %rx_submit_list
  br i1 %cmp20.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call7, %if.end.for.end_crit_edge ], [ %call32, %for.body.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %submit_lock, i32 noundef %flags.0.lcssa) #9
  %work_tx = getelementptr inbounds %struct.lte_udev, ptr %3, i32 0, i32 3
  %call43 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work_tx) #9
  %work_rx = getelementptr inbounds %struct.lte_udev, ptr %3, i32 0, i32 4
  %call45 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work_rx) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gdm_usb_resume(ptr nocapture noundef readonly %intf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %usb_state = getelementptr inbounds %struct.lte_udev, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %usb_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usb_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %usb_dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 8
  %6 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.66) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %usb_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %usb_state, align 4
  %rx_lock = getelementptr inbounds %struct.lte_udev, ptr %3, i32 0, i32 2, i32 5
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_lock) #9
  %avail_count = getelementptr inbounds %struct.lte_udev, ptr %3, i32 0, i32 2, i32 3
  %9 = ptrtoint ptr %avail_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %avail_count, align 4
  %sub = add i32 %10, -3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_lock, i32 noundef %call7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp1657 = icmp sgt i32 %sub, 0
  br i1 %cmp1657, label %for.body.lr.ph, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

for.body.lr.ph:                                   ; preds = %if.end
  %rx_cb = getelementptr inbounds %struct.lte_udev, ptr %3, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.058 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %13 = ptrtoint ptr %rx_cb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_cb, align 4
  %call19 = tail call i32 @gdm_usb_recv(ptr noundef %12, ptr noundef %14, ptr noundef %1, i32 noundef 1)
  %inc = add nuw nsw i32 %i.058, 1
  %exitcond.not = icmp eq i32 %inc, %sub
  br i1 %exitcond.not, label %for.body.if.end20_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.if.end20_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.end20:                                         ; preds = %for.body.if.end20_crit_edge, %if.end.if.end20_crit_edge
  %lock = getelementptr inbounds %struct.lte_udev, ptr %3, i32 0, i32 1, i32 4
  %call30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %work_tx = getelementptr inbounds %struct.lte_udev, ptr %3, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %15 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %work_tx) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call30) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gdm_usb_hci_send(ptr noundef %priv_dev, ptr nocapture noundef readonly %data, i32 noundef %len, ptr noundef %cb, ptr noundef %cb_data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tx1 = getelementptr inbounds %struct.lte_udev, ptr %priv_dev, i32 0, i32 1
  %0 = ptrtoint ptr %priv_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_dev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc ptr @alloc_tx_struct(i32 noundef %len)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #12
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %buf = getelementptr inbounds %struct.usb_tx, ptr %call2, i32 0, i32 2
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 4
  %4 = call ptr @memcpy(ptr %3, ptr %data, i32 %len)
  %callback = getelementptr inbounds %struct.usb_tx, ptr %call2, i32 0, i32 4
  %5 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %cb, ptr %callback, align 4
  %cb_data11 = getelementptr inbounds %struct.usb_tx, ptr %call2, i32 0, i32 5
  %6 = ptrtoint ptr %cb_data11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cb_data, ptr %cb_data11, align 4
  %len12 = getelementptr inbounds %struct.usb_tx, ptr %call2, i32 0, i32 3
  %7 = ptrtoint ptr %len12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %len, ptr %len12, align 4
  %tx13 = getelementptr inbounds %struct.usb_tx, ptr %call2, i32 0, i32 6
  %8 = ptrtoint ptr %tx13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %tx1, ptr %tx13, align 4
  %is_sdu = getelementptr inbounds %struct.usb_tx, ptr %call2, i32 0, i32 7
  %9 = ptrtoint ptr %is_sdu to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %is_sdu, align 4
  %lock = getelementptr inbounds %struct.lte_udev, ptr %priv_dev, i32 0, i32 1, i32 4
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %hci_list = getelementptr inbounds %struct.lte_udev, ptr %priv_dev, i32 0, i32 1, i32 1
  %prev.i = getelementptr inbounds %struct.lte_udev, ptr %priv_dev, i32 0, i32 1, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call2, ptr noundef %11, ptr noundef %hci_list) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end10.list_add_tail.exit_crit_edge

if.end10.list_add_tail.exit_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call2, ptr %prev.i, align 4
  %13 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %hci_list, ptr %call2, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call2, i32 0, i32 1
  %14 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %call2, ptr %11, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end10.list_add_tail.exit_crit_edge
  %work_tx = getelementptr inbounds %struct.lte_udev, ptr %priv_dev, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %16 = load ptr, ptr @system_wq, align 4
  %call.i.i42 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %work_tx) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call18) #9
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %do.end7, %do.end
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -12, %do.end7 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gdm_usb_sdu_send(ptr noundef %priv_dev, ptr nocapture noundef readonly %data, i32 noundef %len, i32 noundef %dft_eps_ID, i32 noundef %eps_ID, ptr noundef %cb, ptr noundef %cb_data, i32 noundef %dev_idx, i32 noundef %nic_type) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tx1 = getelementptr inbounds %struct.lte_udev, ptr %priv_dev, i32 0, i32 1
  %0 = ptrtoint ptr %priv_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_dev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %do.body3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #12
  br label %cleanup

do.body3:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.lte_udev, ptr %priv_dev, i32 0, i32 1, i32 4
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %free_list.i = getelementptr inbounds %struct.lte_udev, ptr %priv_dev, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %free_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %3, %free_list.i
  br i1 %cmp.i.not.i, label %get_tx_sdu_struct.exit.thread, label %if.end.i

get_tx_sdu_struct.exit.thread:                    ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #9
  br label %do.end17

if.end.i:                                         ; preds = %do.body3
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.get_tx_sdu_struct.exit_crit_edge

if.end.i.get_tx_sdu_struct.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_tx_sdu_struct.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %get_tx_sdu_struct.exit

get_tx_sdu_struct.exit:                           ; preds = %if.end.i.i.i, %if.end.i.get_tx_sdu_struct.exit_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %avail_count.i = getelementptr inbounds %struct.lte_udev, ptr %priv_dev, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %avail_count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %avail_count.i, align 4
  %dec.i = add i32 %13, -1
  store i32 %dec.i, ptr %avail_count.i, align 4
  %14 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %free_list.i, align 4
  %cmp.i9.i.not = icmp eq ptr %15, %free_list.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #9
  %tobool13.not = icmp eq ptr %3, null
  br i1 %tobool13.not, label %get_tx_sdu_struct.exit.do.end17_crit_edge, label %if.end20

get_tx_sdu_struct.exit.do.end17_crit_edge:        ; preds = %get_tx_sdu_struct.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17

do.end17:                                         ; preds = %get_tx_sdu_struct.exit.do.end17_crit_edge, %get_tx_sdu_struct.exit.thread
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #12
  br label %cleanup

if.end20:                                         ; preds = %get_tx_sdu_struct.exit
  %buf = getelementptr inbounds %struct.usb_tx_sdu, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buf, align 4
  %gdm_ed = getelementptr inbounds %struct.lte_udev, ptr %priv_dev, i32 0, i32 5
  %18 = ptrtoint ptr %gdm_ed to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %gdm_ed, align 4
  %call21 = tail call zeroext i16 @gdm_cpu_to_dev16(i8 noundef zeroext %19, i16 noundef zeroext 12800) #9
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 %call21, ptr %17, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %nic_type)
  %cmp22 = icmp eq i32 %nic_type, 256
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %21 = trunc i32 %len to i16
  %conv25 = add i16 %21, 12
  %data26 = getelementptr inbounds %struct.sdu, ptr %17, i32 0, i32 5
  %22 = call ptr @memcpy(ptr %data26, ptr %data, i32 %len)
  br label %if.end34

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add i32 %len, -14
  %23 = trunc i32 %len to i16
  %conv30 = add i16 %23, -2
  %data31 = getelementptr inbounds %struct.sdu, ptr %17, i32 0, i32 5
  %add.ptr = getelementptr i8, ptr %data, i32 14
  %24 = call ptr @memcpy(ptr %data31, ptr %add.ptr, i32 %sub)
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then24
  %send_len.0 = phi i16 [ %conv25, %if.then24 ], [ %conv30, %if.else ]
  %25 = ptrtoint ptr %gdm_ed to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %gdm_ed, align 4
  %call36 = tail call zeroext i16 @gdm_cpu_to_dev16(i8 noundef zeroext %26, i16 noundef zeroext %send_len.0) #9
  %len37 = getelementptr inbounds %struct.sdu, ptr %17, i32 0, i32 1
  %27 = ptrtoint ptr %len37 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 %call36, ptr %len37, align 1
  %28 = ptrtoint ptr %gdm_ed to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %gdm_ed, align 4
  %call39 = tail call i32 @gdm_cpu_to_dev32(i8 noundef zeroext %29, i32 noundef %dft_eps_ID) #9
  %dft_eps_ID40 = getelementptr inbounds %struct.sdu, ptr %17, i32 0, i32 2
  %30 = ptrtoint ptr %dft_eps_ID40 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %call39, ptr %dft_eps_ID40, align 1
  %31 = ptrtoint ptr %gdm_ed to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %gdm_ed, align 4
  %call42 = tail call i32 @gdm_cpu_to_dev32(i8 noundef zeroext %32, i32 noundef %eps_ID) #9
  %bearer_ID = getelementptr inbounds %struct.sdu, ptr %17, i32 0, i32 3
  %33 = ptrtoint ptr %bearer_ID to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %call42, ptr %bearer_ID, align 1
  %34 = ptrtoint ptr %gdm_ed to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %gdm_ed, align 4
  %call44 = tail call i32 @gdm_cpu_to_dev32(i8 noundef zeroext %35, i32 noundef %nic_type) #9
  %nic_type45 = getelementptr inbounds %struct.sdu, ptr %17, i32 0, i32 4
  %36 = ptrtoint ptr %nic_type45 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %call44, ptr %nic_type45, align 1
  %conv46 = zext i16 %send_len.0 to i32
  %add47 = add nuw nsw i32 %conv46, 4
  %len48 = getelementptr inbounds %struct.usb_tx_sdu, ptr %3, i32 0, i32 2
  %37 = ptrtoint ptr %len48 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add47, ptr %len48, align 4
  %callback = getelementptr inbounds %struct.usb_tx_sdu, ptr %3, i32 0, i32 3
  %38 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %cb, ptr %callback, align 4
  %cb_data49 = getelementptr inbounds %struct.usb_tx_sdu, ptr %3, i32 0, i32 4
  %39 = ptrtoint ptr %cb_data49 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %cb_data, ptr %cb_data49, align 4
  %call59 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %prev.i = getelementptr inbounds %struct.lte_udev, ptr %priv_dev, i32 0, i32 1, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %3, ptr noundef %41, ptr noundef %tx1) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end34.list_add_tail.exit_crit_edge

if.end34.list_add_tail.exit_crit_edge:            ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %3, ptr %prev.i, align 4
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %tx1, ptr %3, align 4
  %44 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %3, ptr %41, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end34.list_add_tail.exit_crit_edge
  %work_tx = getelementptr inbounds %struct.lte_udev, ptr %priv_dev, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %46 = load ptr, ptr @system_wq, align 4
  %call.i.i106 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %46, ptr noundef %work_tx) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call59) #9
  %. = select i1 %cmp.i9.i.not, i32 3, i32 0
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %do.end17, %do.end
  %retval.0 = phi i32 [ 2, %do.end17 ], [ 1, %do.end ], [ %., %list_add_tail.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gdm_usb_recv(ptr noundef %priv_dev, ptr noundef %cb, ptr noundef %cb_data, i32 noundef %context) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_dev, align 4
  %rx2 = getelementptr inbounds %struct.lte_udev, ptr %priv_dev, i32 0, i32 2
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_lock.i = getelementptr inbounds %struct.lte_udev, ptr %priv_dev, i32 0, i32 2, i32 5
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_lock.i) #9
  %free_list.i = getelementptr inbounds %struct.lte_udev, ptr %priv_dev, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %free_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %3, %free_list.i
  br i1 %cmp.i.not.i, label %get_rx_struct.exit.thread, label %if.end.i

get_rx_struct.exit.thread:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_lock.i, i32 noundef %call2.i) #9
  br label %do.end9

if.end.i:                                         ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %3, i32 -8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.get_rx_struct.exit_crit_edge

if.end.i.get_rx_struct.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_rx_struct.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %get_rx_struct.exit

get_rx_struct.exit:                               ; preds = %if.end.i.i.i, %if.end.i.get_rx_struct.exit_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i.i = getelementptr %struct.list_head, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %avail_count.i = getelementptr inbounds %struct.lte_udev, ptr %priv_dev, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %avail_count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %avail_count.i, align 4
  %dec.i = add i32 %13, -1
  store i32 %dec.i, ptr %avail_count.i, align 4
  %14 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %free_list.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_lock.i, i32 noundef %call2.i) #9
  %tobool5.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool5.not, label %get_rx_struct.exit.do.end9_crit_edge, label %if.end12

get_rx_struct.exit.do.end9_crit_edge:             ; preds = %get_rx_struct.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

do.end9:                                          ; preds = %get_rx_struct.exit.do.end9_crit_edge, %get_rx_struct.exit.thread
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #12
  br label %cleanup

if.end12:                                         ; preds = %get_rx_struct.exit
  %rx_cb = getelementptr inbounds %struct.lte_udev, ptr %priv_dev, i32 0, i32 9
  %16 = ptrtoint ptr %rx_cb to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %cb, ptr %rx_cb, align 4
  %callback = getelementptr i8, ptr %3, i32 28
  %17 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %cb, ptr %callback, align 4
  %cb_data13 = getelementptr i8, ptr %3, i32 32
  %18 = ptrtoint ptr %cb_data13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %cb_data, ptr %cb_data13, align 4
  %index = getelementptr i8, ptr %3, i32 36
  %19 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %priv_dev, ptr %index, align 4
  %rx14 = getelementptr i8, ptr %3, i32 16
  %20 = ptrtoint ptr %rx14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %rx2, ptr %rx14, align 4
  %urb = getelementptr i8, ptr %3, i32 20
  %21 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %urb, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %1, align 8
  %shl.i = shl i32 %24, 8
  %or16 = or i32 %shl.i, -1069449088
  %buf = getelementptr i8, ptr %3, i32 24
  %25 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buf, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %22, i32 0, i32 8
  %27 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %1, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %22, i32 0, i32 10
  %28 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or16, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %22, i32 0, i32 14
  %29 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %22, i32 0, i32 19
  %30 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 32768, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %22, i32 0, i32 28
  %31 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @gdm_usb_rcv_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %22, i32 0, i32 27
  %32 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr.i, ptr %context4.i, align 4
  %submit_lock = getelementptr inbounds %struct.lte_udev, ptr %priv_dev, i32 0, i32 2, i32 6
  %call21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %submit_lock) #9
  %rx_submit_list = getelementptr i8, ptr %3, i32 8
  %rx_submit_list26 = getelementptr inbounds %struct.lte_udev, ptr %priv_dev, i32 0, i32 2, i32 1
  %prev.i = getelementptr inbounds %struct.lte_udev, ptr %priv_dev, i32 0, i32 2, i32 1, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %rx_submit_list, ptr noundef %34, ptr noundef %rx_submit_list26) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end12.list_add_tail.exit_crit_edge

if.end12.list_add_tail.exit_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %rx_submit_list, ptr %prev.i, align 4
  %36 = ptrtoint ptr %rx_submit_list to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %rx_submit_list26, ptr %rx_submit_list, align 4
  %prev3.i.i = getelementptr i8, ptr %3, i32 12
  %37 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev3.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %rx_submit_list, ptr %34, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end12.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %submit_lock, i32 noundef %call21) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %context)
  %cmp28 = icmp eq i32 %context, 0
  %39 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %urb, align 4
  %. = select i1 %cmp28, i32 3264, i32 2592
  %call34 = tail call i32 @usb_submit_urb(ptr noundef %40, i32 noundef %.) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool36.not = icmp eq i32 %call34, 0
  br i1 %tobool36.not, label %list_add_tail.exit.cleanup_crit_edge, label %do.body39

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body39:                                        ; preds = %list_add_tail.exit
  %call47 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %submit_lock) #9
  %call.i.i94 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %rx_submit_list) #9
  br i1 %call.i.i94, label %if.end.i.i96, label %do.body39.list_del.exit_crit_edge

do.body39.list_del.exit_crit_edge:                ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i96:                                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i95 = getelementptr i8, ptr %3, i32 12
  %41 = ptrtoint ptr %prev.i.i95 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i95, align 4
  %43 = ptrtoint ptr %rx_submit_list to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rx_submit_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev1.i.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %44, ptr %42, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i96, %do.body39.list_del.exit_crit_edge
  %47 = ptrtoint ptr %rx_submit_list to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 256 to ptr), ptr %rx_submit_list, align 4
  %prev.i97 = getelementptr i8, ptr %3, i32 12
  %48 = ptrtoint ptr %prev.i97 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i97, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %submit_lock, i32 noundef %call47) #9
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull %add.ptr.i) #12
  %call2.i99 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_lock.i) #9
  %prev.i.i101 = getelementptr inbounds %struct.lte_udev, ptr %priv_dev, i32 0, i32 2, i32 2, i32 1
  %49 = ptrtoint ptr %prev.i.i101 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i.i101, align 4
  %call.i.i.i102 = tail call zeroext i1 @__list_add_valid(ptr noundef %3, ptr noundef %50, ptr noundef %free_list.i) #9
  br i1 %call.i.i.i102, label %if.end.i.i.i103, label %list_del.exit.put_rx_struct.exit_crit_edge

list_del.exit.put_rx_struct.exit_crit_edge:       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_rx_struct.exit

if.end.i.i.i103:                                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %prev.i.i101 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %3, ptr %prev.i.i101, align 4
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %free_list.i, ptr %3, align 4
  %53 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev.i.i, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %3, ptr %50, align 4
  br label %put_rx_struct.exit

put_rx_struct.exit:                               ; preds = %if.end.i.i.i103, %list_del.exit.put_rx_struct.exit_crit_edge
  %55 = ptrtoint ptr %avail_count.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %avail_count.i, align 4
  %inc.i = add i32 %56, 1
  store i32 %inc.i, ptr %avail_count.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_lock.i, i32 noundef %call2.i99) #9
  br label %cleanup

cleanup:                                          ; preds = %put_rx_struct.exit, %list_add_tail.exit.cleanup_crit_edge, %do.end9, %do.end
  %retval.0 = phi i32 [ -12, %do.end9 ], [ -19, %do.end ], [ %call34, %put_rx_struct.exit ], [ 0, %list_add_tail.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @gdm_usb_get_endian(ptr nocapture noundef readonly %priv_dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gdm_ed = getelementptr inbounds %struct.lte_udev, ptr %priv_dev, i32 0, i32 5
  %0 = ptrtoint ptr %gdm_ed to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %gdm_ed, align 4
  ret i8 %1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_enable_autosuspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @start_rx_proc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @release_usb(ptr noundef %udev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rx1 = getelementptr inbounds %struct.lte_udev, ptr %udev, i32 0, i32 2
  %tx2 = getelementptr inbounds %struct.lte_udev, ptr %udev, i32 0, i32 1
  %lock = getelementptr inbounds %struct.lte_udev, ptr %udev, i32 0, i32 1, i32 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %0 = ptrtoint ptr %tx2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx2, align 4
  %cmp14.not301 = icmp eq ptr %1, %tx2
  br i1 %cmp14.not301, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %free_tx_sdu_struct.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %t_sdu.0302 = phi ptr [ %t_sdu_next.0, %free_tx_sdu_struct.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %t_sdu.0302 to i32
  call void @__asan_load4_noabort(i32 %2)
  %t_sdu_next.0 = load ptr, ptr %t_sdu.0302, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %t_sdu.0302) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %t_sdu.0302, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %t_sdu.0302 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %t_sdu.0302, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %t_sdu.0302 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %t_sdu.0302, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %t_sdu.0302, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %tobool.not.i = icmp eq ptr %t_sdu.0302, null
  br i1 %tobool.not.i, label %list_del.exit.free_tx_sdu_struct.exit_crit_edge, label %if.then.i

list_del.exit.free_tx_sdu_struct.exit_crit_edge:  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_tx_sdu_struct.exit

if.then.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  %buf.i = getelementptr inbounds %struct.usb_tx_sdu, ptr %t_sdu.0302, i32 0, i32 1
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buf.i, align 4
  tail call void @kfree(ptr noundef %12) #9
  tail call void @kfree(ptr noundef nonnull %t_sdu.0302) #9
  br label %free_tx_sdu_struct.exit

free_tx_sdu_struct.exit:                          ; preds = %if.then.i, %list_del.exit.free_tx_sdu_struct.exit_crit_edge
  %cmp14.not = icmp eq ptr %t_sdu_next.0, %tx2
  br i1 %cmp14.not, label %free_tx_sdu_struct.exit.for.end_crit_edge, label %free_tx_sdu_struct.exit.for.body_crit_edge

free_tx_sdu_struct.exit.for.body_crit_edge:       ; preds = %free_tx_sdu_struct.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

free_tx_sdu_struct.exit.for.end_crit_edge:        ; preds = %free_tx_sdu_struct.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %free_tx_sdu_struct.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %hci_list = getelementptr inbounds %struct.lte_udev, ptr %udev, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %hci_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hci_list, align 4
  %cmp34.not303 = icmp eq ptr %14, %hci_list
  br i1 %cmp34.not303, label %for.end.for.end45_crit_edge, label %for.end.for.body37_crit_edge

for.end.for.body37_crit_edge:                     ; preds = %for.end
  br label %for.body37

for.end.for.end45_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end45

for.body37:                                       ; preds = %free_tx_struct.exit.for.body37_crit_edge, %for.end.for.body37_crit_edge
  %t.0304 = phi ptr [ %t_next.0, %free_tx_struct.exit.for.body37_crit_edge ], [ %14, %for.end.for.body37_crit_edge ]
  %15 = ptrtoint ptr %t.0304 to i32
  call void @__asan_load4_noabort(i32 %15)
  %t_next.0 = load ptr, ptr %t.0304, align 4
  %call.i.i261 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %t.0304) #9
  br i1 %call.i.i261, label %if.end.i.i264, label %for.body37.list_del.exit266_crit_edge

for.body37.list_del.exit266_crit_edge:            ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit266

if.end.i.i264:                                    ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i262 = getelementptr inbounds %struct.list_head, ptr %t.0304, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i262 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i262, align 4
  %18 = ptrtoint ptr %t.0304 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %t.0304, align 4
  %prev1.i.i.i263 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i263 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i263, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit266

list_del.exit266:                                 ; preds = %if.end.i.i264, %for.body37.list_del.exit266_crit_edge
  %22 = ptrtoint ptr %t.0304 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %t.0304, align 4
  %prev.i265 = getelementptr inbounds %struct.list_head, ptr %t.0304, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i265 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i265, align 4
  %tobool.not.i267 = icmp eq ptr %t.0304, null
  br i1 %tobool.not.i267, label %list_del.exit266.free_tx_struct.exit_crit_edge, label %if.then.i269

list_del.exit266.free_tx_struct.exit_crit_edge:   ; preds = %list_del.exit266
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_tx_struct.exit

if.then.i269:                                     ; preds = %list_del.exit266
  call void @__sanitizer_cov_trace_pc() #11
  %urb.i = getelementptr inbounds %struct.usb_tx, ptr %t.0304, i32 0, i32 1
  %24 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %25) #9
  %buf.i268 = getelementptr inbounds %struct.usb_tx, ptr %t.0304, i32 0, i32 2
  %26 = ptrtoint ptr %buf.i268 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buf.i268, align 4
  tail call void @kfree(ptr noundef %27) #9
  tail call void @kfree(ptr noundef nonnull %t.0304) #9
  br label %free_tx_struct.exit

free_tx_struct.exit:                              ; preds = %if.then.i269, %list_del.exit266.free_tx_struct.exit_crit_edge
  %cmp34.not = icmp eq ptr %t_next.0, %hci_list
  br i1 %cmp34.not, label %free_tx_struct.exit.for.end45_crit_edge, label %free_tx_struct.exit.for.body37_crit_edge

free_tx_struct.exit.for.body37_crit_edge:         ; preds = %free_tx_struct.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body37

free_tx_struct.exit.for.end45_crit_edge:          ; preds = %free_tx_struct.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end45

for.end45:                                        ; preds = %free_tx_struct.exit.for.end45_crit_edge, %for.end.for.end45_crit_edge
  %free_list = getelementptr inbounds %struct.lte_udev, ptr %udev, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %free_list, align 4
  %cmp58.not305 = icmp eq ptr %29, %free_list
  br i1 %cmp58.not305, label %for.end45.for.end69_crit_edge, label %for.end45.for.body61_crit_edge

for.end45.for.body61_crit_edge:                   ; preds = %for.end45
  br label %for.body61

for.end45.for.end69_crit_edge:                    ; preds = %for.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end69

for.body61:                                       ; preds = %free_tx_sdu_struct.exit279.for.body61_crit_edge, %for.end45.for.body61_crit_edge
  %t_sdu.1306 = phi ptr [ %t_sdu_next.1, %free_tx_sdu_struct.exit279.for.body61_crit_edge ], [ %29, %for.end45.for.body61_crit_edge ]
  %30 = ptrtoint ptr %t_sdu.1306 to i32
  call void @__asan_load4_noabort(i32 %30)
  %t_sdu_next.1 = load ptr, ptr %t_sdu.1306, align 4
  %call.i.i270 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %t_sdu.1306) #9
  br i1 %call.i.i270, label %if.end.i.i273, label %for.body61.list_del.exit275_crit_edge

for.body61.list_del.exit275_crit_edge:            ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit275

if.end.i.i273:                                    ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i271 = getelementptr inbounds %struct.list_head, ptr %t_sdu.1306, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i271 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i271, align 4
  %33 = ptrtoint ptr %t_sdu.1306 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %t_sdu.1306, align 4
  %prev1.i.i.i272 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i272 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i272, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %list_del.exit275

list_del.exit275:                                 ; preds = %if.end.i.i273, %for.body61.list_del.exit275_crit_edge
  %37 = ptrtoint ptr %t_sdu.1306 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 256 to ptr), ptr %t_sdu.1306, align 4
  %prev.i274 = getelementptr inbounds %struct.list_head, ptr %t_sdu.1306, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i274 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i274, align 4
  %tobool.not.i276 = icmp eq ptr %t_sdu.1306, null
  br i1 %tobool.not.i276, label %list_del.exit275.free_tx_sdu_struct.exit279_crit_edge, label %if.then.i278

list_del.exit275.free_tx_sdu_struct.exit279_crit_edge: ; preds = %list_del.exit275
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_tx_sdu_struct.exit279

if.then.i278:                                     ; preds = %list_del.exit275
  call void @__sanitizer_cov_trace_pc() #11
  %buf.i277 = getelementptr inbounds %struct.usb_tx_sdu, ptr %t_sdu.1306, i32 0, i32 1
  %39 = ptrtoint ptr %buf.i277 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %buf.i277, align 4
  tail call void @kfree(ptr noundef %40) #9
  tail call void @kfree(ptr noundef nonnull %t_sdu.1306) #9
  br label %free_tx_sdu_struct.exit279

free_tx_sdu_struct.exit279:                       ; preds = %if.then.i278, %list_del.exit275.free_tx_sdu_struct.exit279_crit_edge
  %cmp58.not = icmp eq ptr %t_sdu_next.1, %free_list
  br i1 %cmp58.not, label %free_tx_sdu_struct.exit279.for.end69_crit_edge, label %free_tx_sdu_struct.exit279.for.body61_crit_edge

free_tx_sdu_struct.exit279.for.body61_crit_edge:  ; preds = %free_tx_sdu_struct.exit279
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body61

free_tx_sdu_struct.exit279.for.end69_crit_edge:   ; preds = %free_tx_sdu_struct.exit279
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end69

for.end69:                                        ; preds = %free_tx_sdu_struct.exit279.for.end69_crit_edge, %for.end45.for.end69_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  %submit_lock = getelementptr inbounds %struct.lte_udev, ptr %udev, i32 0, i32 2, i32 6
  %call79 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %submit_lock) #9
  %rx_submit_list = getelementptr inbounds %struct.lte_udev, ptr %udev, i32 0, i32 2, i32 1
  %41 = ptrtoint ptr %rx_submit_list to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rx_submit_list, align 4
  %cmp96.not307 = icmp eq ptr %42, %rx_submit_list
  br i1 %cmp96.not307, label %for.end69.for.end121_crit_edge, label %for.end69.for.body99_crit_edge

for.end69.for.body99_crit_edge:                   ; preds = %for.end69
  br label %for.body99

for.end69.for.end121_crit_edge:                   ; preds = %for.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end121

for.body99:                                       ; preds = %for.body99.for.body99_crit_edge, %for.end69.for.body99_crit_edge
  %.pn.in309 = phi ptr [ %.pn, %for.body99.for.body99_crit_edge ], [ %42, %for.end69.for.body99_crit_edge ]
  %flags.0308 = phi i32 [ %call110, %for.body99.for.body99_crit_edge ], [ %call79, %for.end69.for.body99_crit_edge ]
  %43 = ptrtoint ptr %.pn.in309 to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn = load ptr, ptr %.pn.in309, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %submit_lock, i32 noundef %flags.0308) #9
  %urb = getelementptr i8, ptr %.pn.in309, i32 12
  %44 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %urb, align 4
  tail call void @usb_kill_urb(ptr noundef %45) #9
  %call110 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %submit_lock) #9
  %cmp96.not = icmp eq ptr %.pn, %rx_submit_list
  br i1 %cmp96.not, label %for.body99.for.end121_crit_edge, label %for.body99.for.body99_crit_edge

for.body99.for.body99_crit_edge:                  ; preds = %for.body99
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body99

for.body99.for.end121_crit_edge:                  ; preds = %for.body99
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end121

for.end121:                                       ; preds = %for.body99.for.end121_crit_edge, %for.end69.for.end121_crit_edge
  %flags.0.lcssa = phi i32 [ %call79, %for.end69.for.end121_crit_edge ], [ %call110, %for.body99.for.end121_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %submit_lock, i32 noundef %flags.0.lcssa) #9
  %rx_lock = getelementptr inbounds %struct.lte_udev, ptr %udev, i32 0, i32 2, i32 5
  %call131 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_lock) #9
  %free_list137 = getelementptr inbounds %struct.lte_udev, ptr %udev, i32 0, i32 2, i32 2
  %46 = ptrtoint ptr %free_list137 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %free_list137, align 4
  %cmp149.not310 = icmp eq ptr %47, %free_list137
  br i1 %cmp149.not310, label %for.end121.for.end160_crit_edge, label %for.end121.for.body152_crit_edge

for.end121.for.body152_crit_edge:                 ; preds = %for.end121
  br label %for.body152

for.end121.for.end160_crit_edge:                  ; preds = %for.end121
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end160

for.body152:                                      ; preds = %free_rx_struct.exit.for.body152_crit_edge, %for.end121.for.body152_crit_edge
  %.pn258.in311 = phi ptr [ %.pn258, %free_rx_struct.exit.for.body152_crit_edge ], [ %47, %for.end121.for.body152_crit_edge ]
  %r.1 = getelementptr i8, ptr %.pn258.in311, i32 -8
  %48 = ptrtoint ptr %.pn258.in311 to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pn258 = load ptr, ptr %.pn258.in311, align 4
  %call.i.i280 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn258.in311) #9
  br i1 %call.i.i280, label %if.end.i.i283, label %for.body152.list_del.exit285_crit_edge

for.body152.list_del.exit285_crit_edge:           ; preds = %for.body152
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit285

if.end.i.i283:                                    ; preds = %for.body152
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i281 = getelementptr inbounds %struct.list_head, ptr %.pn258.in311, i32 0, i32 1
  %49 = ptrtoint ptr %prev.i.i281 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i.i281, align 4
  %51 = ptrtoint ptr %.pn258.in311 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %.pn258.in311, align 4
  %prev1.i.i.i282 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %prev1.i.i.i282 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev1.i.i.i282, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %52, ptr %50, align 4
  br label %list_del.exit285

list_del.exit285:                                 ; preds = %if.end.i.i283, %for.body152.list_del.exit285_crit_edge
  %55 = ptrtoint ptr %.pn258.in311 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn258.in311, align 4
  %prev.i284 = getelementptr inbounds %struct.list_head, ptr %.pn258.in311, i32 0, i32 1
  %56 = ptrtoint ptr %prev.i284 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i284, align 4
  %tobool.not.i286 = icmp eq ptr %r.1, null
  br i1 %tobool.not.i286, label %list_del.exit285.free_rx_struct.exit_crit_edge, label %if.then.i289

list_del.exit285.free_rx_struct.exit_crit_edge:   ; preds = %list_del.exit285
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_rx_struct.exit

if.then.i289:                                     ; preds = %list_del.exit285
  call void @__sanitizer_cov_trace_pc() #11
  %urb.i287 = getelementptr i8, ptr %.pn258.in311, i32 20
  %57 = ptrtoint ptr %urb.i287 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %urb.i287, align 4
  tail call void @usb_free_urb(ptr noundef %58) #9
  %buf.i288 = getelementptr i8, ptr %.pn258.in311, i32 24
  %59 = ptrtoint ptr %buf.i288 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %buf.i288, align 4
  tail call void @kfree(ptr noundef %60) #9
  tail call void @kfree(ptr noundef nonnull %r.1) #9
  br label %free_rx_struct.exit

free_rx_struct.exit:                              ; preds = %if.then.i289, %list_del.exit285.free_rx_struct.exit_crit_edge
  %cmp149.not = icmp eq ptr %.pn258, %free_list137
  br i1 %cmp149.not, label %free_rx_struct.exit.for.end160_crit_edge, label %free_rx_struct.exit.for.body152_crit_edge

free_rx_struct.exit.for.body152_crit_edge:        ; preds = %free_rx_struct.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body152

free_rx_struct.exit.for.end160_crit_edge:         ; preds = %free_rx_struct.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end160

for.end160:                                       ; preds = %free_rx_struct.exit.for.end160_crit_edge, %for.end121.for.end160_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_lock, i32 noundef %call131) #9
  %to_host_lock = getelementptr inbounds %struct.lte_udev, ptr %udev, i32 0, i32 2, i32 4
  %call170 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %to_host_lock) #9
  %61 = ptrtoint ptr %rx1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rx1, align 4
  %cmp187.not313 = icmp eq ptr %62, %rx1
  br i1 %cmp187.not313, label %for.end160.for.end200_crit_edge, label %for.end160.for.body190_crit_edge

for.end160.for.body190_crit_edge:                 ; preds = %for.end160
  br label %for.body190

for.end160.for.end200_crit_edge:                  ; preds = %for.end160
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end200

for.body190:                                      ; preds = %for.inc194.for.body190_crit_edge, %for.end160.for.body190_crit_edge
  %r.2314 = phi ptr [ %r_next.2315, %for.inc194.for.body190_crit_edge ], [ %62, %for.end160.for.body190_crit_edge ]
  %63 = ptrtoint ptr %r.2314 to i32
  call void @__asan_load4_noabort(i32 %63)
  %r_next.2315 = load ptr, ptr %r.2314, align 4
  %index = getelementptr inbounds %struct.usb_rx, ptr %r.2314, i32 0, i32 8
  %64 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %index, align 4
  %cmp191 = icmp eq ptr %65, %udev
  br i1 %cmp191, label %if.then, label %for.body190.for.inc194_crit_edge

for.body190.for.inc194_crit_edge:                 ; preds = %for.body190
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc194

if.then:                                          ; preds = %for.body190
  %call.i.i290 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %r.2314) #9
  br i1 %call.i.i290, label %if.end.i.i293, label %if.then.list_del.exit295_crit_edge

if.then.list_del.exit295_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit295

if.end.i.i293:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i291 = getelementptr inbounds %struct.list_head, ptr %r.2314, i32 0, i32 1
  %66 = ptrtoint ptr %prev.i.i291 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prev.i.i291, align 4
  %68 = ptrtoint ptr %r.2314 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %r.2314, align 4
  %prev1.i.i.i292 = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %prev1.i.i.i292 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %67, ptr %prev1.i.i.i292, align 4
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %69, ptr %67, align 4
  br label %list_del.exit295

list_del.exit295:                                 ; preds = %if.end.i.i293, %if.then.list_del.exit295_crit_edge
  %72 = ptrtoint ptr %r.2314 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr inttoptr (i32 256 to ptr), ptr %r.2314, align 4
  %prev.i294 = getelementptr inbounds %struct.list_head, ptr %r.2314, i32 0, i32 1
  %73 = ptrtoint ptr %prev.i294 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i294, align 4
  %tobool.not.i296 = icmp eq ptr %r.2314, null
  br i1 %tobool.not.i296, label %list_del.exit295.for.inc194_crit_edge, label %if.then.i299

list_del.exit295.for.inc194_crit_edge:            ; preds = %list_del.exit295
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc194

if.then.i299:                                     ; preds = %list_del.exit295
  call void @__sanitizer_cov_trace_pc() #11
  %urb.i297 = getelementptr inbounds %struct.usb_rx, ptr %r.2314, i32 0, i32 4
  %74 = ptrtoint ptr %urb.i297 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %urb.i297, align 4
  tail call void @usb_free_urb(ptr noundef %75) #9
  %buf.i298 = getelementptr inbounds %struct.usb_rx, ptr %r.2314, i32 0, i32 5
  %76 = ptrtoint ptr %buf.i298 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %buf.i298, align 4
  tail call void @kfree(ptr noundef %77) #9
  tail call void @kfree(ptr noundef nonnull %r.2314) #9
  br label %for.inc194

for.inc194:                                       ; preds = %if.then.i299, %list_del.exit295.for.inc194_crit_edge, %for.body190.for.inc194_crit_edge
  %cmp187.not = icmp eq ptr %r_next.2315, %rx1
  br i1 %cmp187.not, label %for.inc194.for.end200_crit_edge, label %for.inc194.for.body190_crit_edge

for.inc194.for.body190_crit_edge:                 ; preds = %for.inc194
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body190

for.inc194.for.end200_crit_edge:                  ; preds = %for.inc194
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end200

for.end200:                                       ; preds = %for.inc194.for.end200_crit_edge, %for.end160.for.end200_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %to_host_lock, i32 noundef %call170) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @alloc_tx_struct(i32 noundef %len) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 36) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #9
  %urb = getelementptr inbounds %struct.usb_tx, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %urb to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %urb, align 8
  %2 = and i32 %len, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool2.not = icmp eq i32 %2, 0
  %inc = zext i1 %tobool2.not to i32
  %spec.select = add i32 %inc, %len
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select, i32 noundef 2592) #14
  %buf = getelementptr inbounds %struct.usb_tx, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call9.i, ptr %buf, align 4
  %4 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %urb, align 8
  %tobool7.not = icmp eq ptr %5, null
  %tobool9.not = icmp eq ptr %call9.i, null
  %or.cond = select i1 %tobool7.not, i1 true, i1 %tobool9.not
  br i1 %or.cond, label %if.then14.critedge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then14.critedge:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_free_urb(ptr noundef %5) #9
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf, align 4
  tail call void @kfree(ptr noundef %7) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then14.critedge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then14.critedge ], [ %call7.i.i, %if.end.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @gdm_cpu_to_dev16(i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gdm_cpu_to_dev32(i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gdm_usb_rcv_complete(ptr nocapture noundef readonly %urb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %rx1 = getelementptr inbounds %struct.usb_rx, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %rx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -76
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %submit_lock.i = getelementptr inbounds %struct.rx_cxt, ptr %3, i32 0, i32 6
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %submit_lock.i) #9
  %rx_submit_list.i = getelementptr inbounds %struct.rx_cxt, ptr %3, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.in.i = phi ptr [ %rx_submit_list.i, %entry ], [ %.pn.in.i, %for.body.i.for.cond.i_crit_edge ]
  %6 = ptrtoint ptr %.pn.in.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.in.i = load ptr, ptr %.pn.in.in.i, align 4
  %cmp13.not.i = icmp eq ptr %.pn.in.i, %rx_submit_list.i
  br i1 %cmp13.not.i, label %for.cond.i.remove_rx_submit_list.exit_crit_edge, label %for.body.i

for.cond.i.remove_rx_submit_list.exit_crit_edge:  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_rx_submit_list.exit

for.body.i:                                       ; preds = %for.cond.i
  %r_remove.0.i = getelementptr i8, ptr %.pn.in.i, i32 -16
  %cmp15.i = icmp eq ptr %r_remove.0.i, %1
  br i1 %cmp15.i, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %rx_submit_list17.i = getelementptr inbounds %struct.usb_rx, ptr %1, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %rx_submit_list17.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.usb_rx, ptr %1, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %rx_submit_list17.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_submit_list17.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.list_del.exit.i_crit_edge
  %13 = ptrtoint ptr %rx_submit_list17.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %rx_submit_list17.i, align 4
  %prev.i.i = getelementptr inbounds %struct.usb_rx, ptr %1, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %remove_rx_submit_list.exit

remove_rx_submit_list.exit:                       ; preds = %list_del.exit.i, %for.cond.i.remove_rx_submit_list.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %submit_lock.i, i32 noundef %call2.i) #9
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %15 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %land.lhs.true, label %land.lhs.true15

land.lhs.true:                                    ; preds = %remove_rx_submit_list.exit
  %callback = getelementptr inbounds %struct.usb_rx, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %callback, align 4
  %tobool4.not = icmp eq ptr %18, null
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %do.body5

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body5:                                         ; preds = %land.lhs.true
  %to_host_lock = getelementptr inbounds %struct.rx_cxt, ptr %3, i32 0, i32 4
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %to_host_lock) #9
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %20, ptr noundef %3) #9
  br i1 %call.i.i, label %if.end.i.i, label %do.body5.list_add_tail.exit_crit_edge

do.body5.list_add_tail.exit_crit_edge:            ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %1, ptr %prev.i, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %3, ptr %1, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %1, ptr %20, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body5.list_add_tail.exit_crit_edge
  %work_rx = getelementptr i8, ptr %3, i32 260
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %25 = load ptr, ptr @system_wq, align 4
  %call.i.i40 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %25, ptr noundef %work_rx) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %to_host_lock, i32 noundef %call7) #9
  br label %if.end24

land.lhs.true15:                                  ; preds = %remove_rx_submit_list.exit
  %usb_state = getelementptr i8, ptr %3, i32 372
  %26 = ptrtoint ptr %usb_state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %usb_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp16 = icmp eq i32 %27, 0
  br i1 %cmp16, label %do.end21, label %land.lhs.true15.if.end_crit_edge

land.lhs.true15.if.end_crit_edge:                 ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end21:                                         ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %dev22 = getelementptr inbounds %struct.usb_device, ptr %29, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef %16) #12
  br label %if.end

if.end:                                           ; preds = %do.end21, %land.lhs.true15.if.end_crit_edge, %land.lhs.true.if.end_crit_edge
  %rx_lock.i = getelementptr inbounds %struct.rx_cxt, ptr %3, i32 0, i32 5
  %call2.i41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_lock.i) #9
  %free_list.i = getelementptr inbounds %struct.usb_rx, ptr %1, i32 0, i32 1
  %free_list5.i = getelementptr inbounds %struct.rx_cxt, ptr %3, i32 0, i32 2
  %prev.i.i42 = getelementptr inbounds %struct.rx_cxt, ptr %3, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %prev.i.i42 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i42, align 4
  %call.i.i.i43 = tail call zeroext i1 @__list_add_valid(ptr noundef %free_list.i, ptr noundef %31, ptr noundef %free_list5.i) #9
  br i1 %call.i.i.i43, label %if.end.i.i.i44, label %if.end.put_rx_struct.exit_crit_edge

if.end.put_rx_struct.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_rx_struct.exit

if.end.i.i.i44:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %prev.i.i42 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %free_list.i, ptr %prev.i.i42, align 4
  %33 = ptrtoint ptr %free_list.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %free_list5.i, ptr %free_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.usb_rx, ptr %1, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev3.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %free_list.i, ptr %31, align 4
  br label %put_rx_struct.exit

put_rx_struct.exit:                               ; preds = %if.end.i.i.i44, %if.end.put_rx_struct.exit_crit_edge
  %avail_count.i = getelementptr inbounds %struct.rx_cxt, ptr %3, i32 0, i32 3
  %36 = ptrtoint ptr %avail_count.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %avail_count.i, align 4
  %inc.i = add i32 %37, 1
  store i32 %inc.i, ptr %avail_count.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_lock.i, i32 noundef %call2.i41) #9
  br label %if.end24

if.end24:                                         ; preds = %put_rx_struct.exit, %list_add_tail.exit
  %call.i.i45 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i.i = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15, i32 12, i32 22
  %38 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store volatile i64 %call.i.i45, ptr %last_busy.i.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_tx(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -236
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %tx2 = getelementptr i8, ptr %work, i32 -232
  %intf = getelementptr i8, ptr %work, i32 204
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %call = tail call i32 @usb_autopm_get_interface(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %5) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %usb_state = getelementptr i8, ptr %work, i32 212
  %6 = ptrtoint ptr %usb_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %usb_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %do.body6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body6:                                         ; preds = %if.end
  %lock = getelementptr i8, ptr %work, i32 -204
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %send_complete = getelementptr i8, ptr %work, i32 201
  %8 = ptrtoint ptr %send_complete to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %send_complete, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool13.not = icmp eq i8 %9, 0
  br i1 %tobool13.not, label %if.then14, label %if.end16

if.then14:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #9
  br label %cleanup

if.end16:                                         ; preds = %do.body6
  %10 = ptrtoint ptr %send_complete to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %send_complete, align 1
  %hci_list = getelementptr i8, ptr %work, i32 -224
  %11 = ptrtoint ptr %hci_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %hci_list, align 4
  %cmp.i.not = icmp eq ptr %12, %hci_list
  br i1 %cmp.i.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end16
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %12) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then20.list_del.exit_crit_edge

if.then20.list_del.exit_crit_edge:                ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then20.list_del.exit_crit_edge
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %12, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %len25 = getelementptr inbounds %struct.usb_tx, ptr %12, i32 0, i32 3
  %21 = ptrtoint ptr %len25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len25, align 4
  br label %if.end47

if.else:                                          ; preds = %if.end16
  %23 = ptrtoint ptr %tx2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %tx2, align 4
  %cmp.i104.not = icmp eq ptr %24, %tx2
  br i1 %cmp.i104.not, label %if.then44, label %if.then28

if.then28:                                        ; preds = %if.else
  %tx_stop = getelementptr i8, ptr %work, i32 202
  %25 = ptrtoint ptr %tx_stop to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %tx_stop, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool29.not = icmp eq i8 %26, 0
  br i1 %tobool29.not, label %if.end33, label %if.then30

if.then30:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %send_complete to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %send_complete, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #9
  br label %cleanup

if.end33:                                         ; preds = %if.then28
  %call34 = tail call fastcc ptr @alloc_tx_struct(i32 noundef 32768)
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #9
  br label %cleanup

if.end38:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %callback = getelementptr inbounds %struct.usb_tx, ptr %call34, i32 0, i32 4
  %28 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %callback, align 4
  %tx39 = getelementptr inbounds %struct.usb_tx, ptr %call34, i32 0, i32 6
  %29 = ptrtoint ptr %tx39 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %tx2, ptr %tx39, align 4
  br label %if.end47

if.then44:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %send_complete to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %send_complete, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #9
  br label %cleanup

if.end47:                                         ; preds = %if.end38, %list_del.exit
  %call34.sink = phi ptr [ %call34, %if.end38 ], [ %12, %list_del.exit ]
  %.sink = phi i8 [ 1, %if.end38 ], [ 0, %list_del.exit ]
  %len.0.ph = phi i32 [ 0, %if.end38 ], [ %22, %list_del.exit ]
  %is_sdu40 = getelementptr inbounds %struct.usb_tx, ptr %call34.sink, i32 0, i32 7
  %31 = ptrtoint ptr %is_sdu40 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %.sink, ptr %is_sdu40, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #9
  %is_sdu49 = getelementptr inbounds %struct.usb_tx, ptr %call34.sink, i32 0, i32 7
  %32 = ptrtoint ptr %is_sdu49 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %is_sdu49, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool50.not = icmp eq i8 %33, 0
  br i1 %tobool50.not, label %if.end47.if.end53_crit_edge, label %if.then51

if.end47.if.end53_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then51:                                        ; preds = %if.end47
  %buf = getelementptr inbounds %struct.usb_tx, ptr %call34.sink, i32 0, i32 2
  %34 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %buf, align 4
  %gdm_ed.i = getelementptr i8, ptr %work, i32 200
  %36 = ptrtoint ptr %gdm_ed.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %gdm_ed.i, align 4
  %call.i = tail call zeroext i16 @gdm_cpu_to_dev16(i8 noundef zeroext %37, i16 noundef zeroext 12802) #9
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 %call.i, ptr %35, align 1
  %data.i = getelementptr inbounds %struct.multi_sdu, ptr %35, i32 0, i32 4
  %avail_count.i = getelementptr i8, ptr %work, i32 -208
  %free_list.i.i = getelementptr i8, ptr %work, i32 -216
  %prev.i.i87.i = getelementptr i8, ptr %work, i32 -212
  br label %do.body3.i

do.body3.i:                                       ; preds = %put_tx_struct.exit.i.do.body3.i_crit_edge, %if.then51
  %send_len.097.i = phi i16 [ 0, %if.then51 ], [ %conv28.i, %put_tx_struct.exit.i.do.body3.i_crit_edge ]
  %num_packet.096.i = phi i16 [ 0, %if.then51 ], [ %inc.i, %put_tx_struct.exit.i.do.body3.i_crit_edge ]
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %39 = ptrtoint ptr %tx2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %tx2, align 4
  %cmp.i.not.i = icmp eq ptr %40, %tx2
  br i1 %cmp.i.not.i, label %do.body3.i.while.end.sink.split.i_crit_edge, label %if.end.i

do.body3.i.while.end.sink.split.i_crit_edge:      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.sink.split.i

if.end.i:                                         ; preds = %do.body3.i
  %conv14.i = zext i16 %send_len.097.i to i32
  %len.i = getelementptr inbounds %struct.usb_tx_sdu, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len.i, align 4
  %add.i = add i32 %42, %conv14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 30720, i32 %add.i)
  %cmp15.i = icmp ugt i32 %add.i, 30720
  br i1 %cmp15.i, label %if.end.i.while.end.sink.split.i_crit_edge, label %if.end19.i

if.end.i.while.end.sink.split.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.sink.split.i

if.end19.i:                                       ; preds = %if.end.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %40) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end19.i.list_del.exit.i_crit_edge

if.end19.i.list_del.exit.i_crit_edge:             ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i.i.i, align 4
  %45 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %40, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev1.i.i.i.i, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %46, ptr %44, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end19.i.list_del.exit.i_crit_edge
  %49 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 256 to ptr), ptr %40, align 4
  %prev.i.i106 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i.i106 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i106, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7.i) #9
  %add.ptr22.i = getelementptr i8, ptr %data.i, i32 %conv14.i
  %buf.i = getelementptr inbounds %struct.usb_tx_sdu, ptr %40, i32 0, i32 1
  %51 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %buf.i, align 4
  %53 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len.i, align 4
  %55 = call ptr @memcpy(ptr %add.ptr22.i, ptr %52, i32 %54)
  %56 = load i32, ptr %len.i, align 4
  %57 = trunc i32 %56 to i16
  %58 = add i16 %57, 3
  %59 = and i16 %58, -4
  %conv28.i = add i16 %59, %send_len.097.i
  %inc.i = add nuw nsw i16 %num_packet.096.i, 1
  %60 = ptrtoint ptr %avail_count.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %avail_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %61)
  %cmp29.i = icmp ugt i32 %61, 10
  br i1 %cmp29.i, label %if.then31.i, label %list_del.exit.i.do.body34.i_crit_edge

list_del.exit.i.do.body34.i_crit_edge:            ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body34.i

if.then31.i:                                      ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %callback.i = getelementptr inbounds %struct.usb_tx_sdu, ptr %40, i32 0, i32 3
  %62 = ptrtoint ptr %callback.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %callback.i, align 4
  %cb_data.i = getelementptr inbounds %struct.usb_tx_sdu, ptr %40, i32 0, i32 4
  %64 = ptrtoint ptr %cb_data.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cb_data.i, align 4
  tail call void %63(ptr noundef %65) #9
  br label %do.body34.i

do.body34.i:                                      ; preds = %if.then31.i, %list_del.exit.i.do.body34.i_crit_edge
  %call42.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %66 = ptrtoint ptr %prev.i.i87.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prev.i.i87.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %40, ptr noundef %67, ptr noundef %free_list.i.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %do.body34.i.put_tx_struct.exit.i_crit_edge

do.body34.i.put_tx_struct.exit.i_crit_edge:       ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_tx_struct.exit.i

if.end.i.i.i.i:                                   ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %prev.i.i87.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %40, ptr %prev.i.i87.i, align 4
  %69 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %free_list.i.i, ptr %40, align 4
  %70 = ptrtoint ptr %prev.i.i106 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %67, ptr %prev.i.i106, align 4
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %40, ptr %67, align 4
  br label %put_tx_struct.exit.i

put_tx_struct.exit.i:                             ; preds = %if.end.i.i.i.i, %do.body34.i.put_tx_struct.exit.i_crit_edge
  %72 = ptrtoint ptr %avail_count.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %avail_count.i, align 4
  %inc.i.i = add i32 %73, 1
  store i32 %inc.i.i, ptr %avail_count.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call42.i) #9
  %cmp.i107 = icmp ult i16 %num_packet.096.i, 255
  br i1 %cmp.i107, label %put_tx_struct.exit.i.do.body3.i_crit_edge, label %put_tx_struct.exit.i.packet_aggregation.exit_crit_edge

put_tx_struct.exit.i.packet_aggregation.exit_crit_edge: ; preds = %put_tx_struct.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %packet_aggregation.exit

put_tx_struct.exit.i.do.body3.i_crit_edge:        ; preds = %put_tx_struct.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3.i

while.end.sink.split.i:                           ; preds = %if.end.i.while.end.sink.split.i_crit_edge, %do.body3.i.while.end.sink.split.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7.i) #9
  br label %packet_aggregation.exit

packet_aggregation.exit:                          ; preds = %while.end.sink.split.i, %put_tx_struct.exit.i.packet_aggregation.exit_crit_edge
  %num_packet.093.i = phi i16 [ %num_packet.096.i, %while.end.sink.split.i ], [ 256, %put_tx_struct.exit.i.packet_aggregation.exit_crit_edge ]
  %send_len.090.i = phi i16 [ %send_len.097.i, %while.end.sink.split.i ], [ %conv28.i, %put_tx_struct.exit.i.packet_aggregation.exit_crit_edge ]
  %74 = ptrtoint ptr %gdm_ed.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %gdm_ed.i, align 4
  %call49.i = tail call zeroext i16 @gdm_cpu_to_dev16(i8 noundef zeroext %75, i16 noundef zeroext %send_len.090.i) #9
  %len50.i = getelementptr inbounds %struct.multi_sdu, ptr %35, i32 0, i32 1
  %76 = ptrtoint ptr %len50.i to i32
  call void @__asan_storeN_noabort(i32 %76, i32 2)
  store i16 %call49.i, ptr %len50.i, align 1
  %77 = ptrtoint ptr %gdm_ed.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %gdm_ed.i, align 4
  %call52.i = tail call zeroext i16 @gdm_cpu_to_dev16(i8 noundef zeroext %78, i16 noundef zeroext %num_packet.093.i) #9
  %num_packet53.i = getelementptr inbounds %struct.multi_sdu, ptr %35, i32 0, i32 2
  %79 = ptrtoint ptr %num_packet53.i to i32
  call void @__asan_storeN_noabort(i32 %79, i32 2)
  store i16 %call52.i, ptr %num_packet53.i, align 1
  %conv54.i = zext i16 %send_len.090.i to i32
  %add55.i = add nuw nsw i32 %conv54.i, 8
  br label %if.end53

if.end53:                                         ; preds = %packet_aggregation.exit, %if.end47.if.end53_crit_edge
  %len.1 = phi i32 [ %add55.i, %packet_aggregation.exit ], [ %len.0.ph, %if.end47.if.end53_crit_edge ]
  %rem.i = and i32 %len.1, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  %inc.i108 = zext i1 %tobool.not.i to i32
  %spec.select.i = add i32 %len.1, %inc.i108
  %urb.i = getelementptr inbounds %struct.usb_tx, ptr %call34.sink, i32 0, i32 1
  %80 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %urb.i, align 4
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %1, align 8
  %shl.i.i = shl i32 %83, 8
  %or.i = or i32 %shl.i.i, -1073676288
  %buf.i109 = getelementptr inbounds %struct.usb_tx, ptr %call34.sink, i32 0, i32 2
  %84 = ptrtoint ptr %buf.i109 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %buf.i109, align 4
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %81, i32 0, i32 8
  %86 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %1, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %81, i32 0, i32 10
  %87 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %or.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %81, i32 0, i32 14
  %88 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %85, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %81, i32 0, i32 19
  %89 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %spec.select.i, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %81, i32 0, i32 28
  %90 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @gdm_usb_send_complete, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %81, i32 0, i32 27
  %91 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call34.sink, ptr %context4.i.i, align 4
  %92 = load ptr, ptr %urb.i, align 4
  %call2.i = tail call i32 @usb_submit_urb(ptr noundef %92, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %send_tx_packet.exit.thread, label %do.end59

send_tx_packet.exit.thread:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i110117 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i.i.i118 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15, i32 12, i32 22
  %93 = ptrtoint ptr %last_busy.i.i.i118 to i32
  call void @__asan_store8_noabort(i32 %93)
  store volatile i64 %call.i.i.i110117, ptr %last_busy.i.i.i118, align 8
  br label %cleanup

do.end59:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.55, i32 noundef %call2.i) #12
  %call.i.i.i110 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i.i.i = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15, i32 12, i32 22
  %94 = ptrtoint ptr %last_busy.i.i.i to i32
  call void @__asan_store8_noabort(i32 %94)
  store volatile i64 %call.i.i.i110, ptr %last_busy.i.i.i, align 8
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #12
  %callback62 = getelementptr inbounds %struct.usb_tx, ptr %call34.sink, i32 0, i32 4
  %95 = ptrtoint ptr %callback62 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %callback62, align 4
  %96 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %urb.i, align 4
  tail call void @gdm_usb_send_complete(ptr noundef %97)
  br label %cleanup

cleanup:                                          ; preds = %do.end59, %send_tx_packet.exit.thread, %if.then44, %if.then36, %if.then30, %if.then14, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_rx(ptr noundef %work) #3 align 64 {
entry:
  %mac_address.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rx1 = getelementptr i8, ptr %work, i32 -260
  %to_host_lock = getelementptr i8, ptr %work, i32 -232
  %call477 = call i32 @_raw_spin_lock_irqsave(ptr noundef %to_host_lock) #9
  %0 = ptrtoint ptr %rx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %rx1, align 4
  %cmp.i.not78 = icmp eq ptr %1, %rx1
  br i1 %cmp.i.not78, label %entry.if.then_crit_edge, label %if.end.lr.ph

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.lr.ph:                                     ; preds = %entry
  %rx_lock.i = getelementptr i8, ptr %work, i32 -188
  %free_list5.i = getelementptr i8, ptr %work, i32 -244
  %prev.i.i74 = getelementptr i8, ptr %work, i32 -240
  %avail_count.i = getelementptr i8, ptr %work, i32 -236
  br label %if.end

if.then:                                          ; preds = %put_rx_struct.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %call4.lcssa = phi i32 [ %call477, %entry.if.then_crit_edge ], [ %call4, %put_rx_struct.exit.if.then_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %to_host_lock, i32 noundef %call4.lcssa) #9
  ret void

if.end:                                           ; preds = %put_rx_struct.exit.if.end_crit_edge, %if.end.lr.ph
  %2 = phi ptr [ %1, %if.end.lr.ph ], [ %69, %put_rx_struct.exit.if.end_crit_edge ]
  %call479 = phi i32 [ %call477, %if.end.lr.ph ], [ %call4, %put_rx_struct.exit.if.end_crit_edge ]
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %to_host_lock, i32 noundef %call479) #9
  %cb_data = getelementptr inbounds %struct.usb_rx, ptr %2, i32 0, i32 7
  %11 = ptrtoint ptr %cb_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cb_data, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %buf = getelementptr inbounds %struct.usb_rx, ptr %2, i32 0, i32 5
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buf, align 4
  %gdm_ed = getelementptr inbounds %struct.lte_udev, ptr %14, i32 0, i32 5
  %17 = ptrtoint ptr %gdm_ed to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %gdm_ed, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %16, align 1
  %call16 = call zeroext i16 @gdm_dev16_to_cpu(i8 noundef zeroext %18, i16 noundef zeroext %20) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 -20477, i16 %call16)
  %cond = icmp eq i16 %call16, -20477
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %list_del.exit
  %data = getelementptr inbounds %struct.hci_packet, ptr %16, i32 0, i32 2
  %21 = ptrtoint ptr %cb_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cb_data, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac_address.i) #9
  %25 = call ptr @memset(ptr %mac_address.i, i32 0, i32 6)
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -94, i8 %27)
  %cmp.i73 = icmp eq i8 %27, -94
  br i1 %cmp.i73, label %land.lhs.true.i, label %sw.bb.if.then22_crit_edge

sw.bb.if.then22_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22

land.lhs.true.i:                                  ; preds = %sw.bb
  %request_mac_addr.i = getelementptr inbounds %struct.lte_udev, ptr %24, i32 0, i32 11
  %28 = ptrtoint ptr %request_mac_addr.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %request_mac_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.then22_crit_edge, label %if.then.i

land.lhs.true.i.if.then22_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22

if.then.i:                                        ; preds = %land.lhs.true.i
  %data3.i = getelementptr inbounds %struct.hci_packet, ptr %16, i32 1, i32 1
  %len.i = getelementptr inbounds %struct.tlv, ptr %data, i32 0, i32 1
  %30 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %len.i, align 1
  %conv5.i = zext i8 %31 to i32
  %32 = call ptr @memcpy(ptr %mac_address.i, ptr %data3.i, i32 %conv5.i)
  %intf.i = getelementptr inbounds %struct.lte_udev, ptr %24, i32 0, i32 8
  %33 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %intf.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %34, i32 0, i32 7
  %call.i = call i32 @register_lte_device(ptr noundef %22, ptr noundef %dev.i, ptr noundef nonnull %mac_address.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7.i = icmp slt i32 %call.i, 0
  br i1 %cmp7.i, label %do.end.i, label %if.then.i.set_mac_address.exit_crit_edge

if.then.i.set_mac_address.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_mac_address.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #12
  br label %set_mac_address.exit

set_mac_address.exit:                             ; preds = %do.end.i, %if.then.i.set_mac_address.exit_crit_edge
  %35 = ptrtoint ptr %request_mac_addr.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %request_mac_addr.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac_address.i) #9
  br label %sw.epilog

if.then22:                                        ; preds = %land.lhs.true.i.if.then22_crit_edge, %sw.bb.if.then22_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac_address.i) #9
  %callback = getelementptr inbounds %struct.usb_rx, ptr %2, i32 0, i32 6
  %36 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %callback, align 4
  %38 = ptrtoint ptr %cb_data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cb_data, align 4
  %40 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buf, align 4
  %urb = getelementptr inbounds %struct.usb_rx, ptr %2, i32 0, i32 4
  %42 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %urb, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %43, i32 0, i32 20
  %44 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %actual_length, align 4
  %call25 = call i32 %37(ptr noundef %39, ptr noundef %41, i32 noundef %45, i32 noundef 0) #9
  br label %sw.epilog

sw.default:                                       ; preds = %list_del.exit
  %callback27 = getelementptr inbounds %struct.usb_rx, ptr %2, i32 0, i32 6
  %46 = ptrtoint ptr %callback27 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %callback27, align 4
  %tobool28.not = icmp eq ptr %47, null
  br i1 %tobool28.not, label %sw.default.sw.epilog_crit_edge, label %if.then29

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then29:                                        ; preds = %sw.default
  %48 = ptrtoint ptr %cb_data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cb_data, align 4
  %50 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %buf, align 4
  %urb33 = getelementptr inbounds %struct.usb_rx, ptr %2, i32 0, i32 4
  %52 = ptrtoint ptr %urb33 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %urb33, align 4
  %actual_length34 = getelementptr inbounds %struct.urb, ptr %53, i32 0, i32 20
  %54 = ptrtoint ptr %actual_length34 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %actual_length34, align 4
  %call35 = call i32 %47(ptr noundef %49, ptr noundef %51, i32 noundef %55, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call35)
  %cmp36 = icmp eq i32 %call35, -11
  br i1 %cmp36, label %do.end41, label %if.then29.sw.epilog_crit_edge

if.then29.sw.epilog_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end41:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end41, %if.then29.sw.epilog_crit_edge, %sw.default.sw.epilog_crit_edge, %if.then22, %set_mac_address.exit
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_lock.i) #9
  %free_list.i = getelementptr inbounds %struct.usb_rx, ptr %2, i32 0, i32 1
  %56 = ptrtoint ptr %prev.i.i74 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev.i.i74, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %free_list.i, ptr noundef %57, ptr noundef %free_list5.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %sw.epilog.put_rx_struct.exit_crit_edge

sw.epilog.put_rx_struct.exit_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_rx_struct.exit

if.end.i.i.i:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %prev.i.i74 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %free_list.i, ptr %prev.i.i74, align 4
  %59 = ptrtoint ptr %free_list.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %free_list5.i, ptr %free_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.usb_rx, ptr %2, i32 0, i32 1, i32 1
  %60 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev3.i.i.i, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %free_list.i, ptr %57, align 4
  br label %put_rx_struct.exit

put_rx_struct.exit:                               ; preds = %if.end.i.i.i, %sw.epilog.put_rx_struct.exit_crit_edge
  %62 = ptrtoint ptr %avail_count.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %avail_count.i, align 4
  %inc.i = add i32 %63, 1
  store i32 %inc.i, ptr %avail_count.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_lock.i, i32 noundef %call2.i) #9
  %callback46 = getelementptr inbounds %struct.usb_rx, ptr %2, i32 0, i32 6
  %64 = ptrtoint ptr %callback46 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %callback46, align 4
  %66 = ptrtoint ptr %cb_data to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cb_data, align 4
  %call48 = call i32 @gdm_usb_recv(ptr noundef %14, ptr noundef %65, ptr noundef %67, i32 noundef 1)
  %call4 = call i32 @_raw_spin_lock_irqsave(ptr noundef %to_host_lock) #9
  %68 = ptrtoint ptr %rx1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile ptr, ptr %rx1, align 4
  %cmp.i.not = icmp eq ptr %69, %rx1
  br i1 %cmp.i.not, label %put_rx_struct.exit.if.then_crit_edge, label %put_rx_struct.exit.if.end_crit_edge

put_rx_struct.exit.if.end_crit_edge:              ; preds = %put_rx_struct.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

put_rx_struct.exit.if.then_crit_edge:             ; preds = %put_rx_struct.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gdm_usb_send_complete(ptr nocapture noundef readonly %urb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %tx1 = getelementptr inbounds %struct.usb_tx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %tx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx1, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -104, i32 %5)
  %cmp = icmp eq i32 %5, -104
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %dev2 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.57) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %callback = getelementptr inbounds %struct.usb_tx, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %callback, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %cb_data = getelementptr inbounds %struct.usb_tx, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %cb_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cb_data, align 4
  tail call void %9(ptr noundef %11) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end5.free_tx_struct.exit_crit_edge, label %if.then.i

if.end5.free_tx_struct.exit_crit_edge:            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_tx_struct.exit

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %urb.i = getelementptr inbounds %struct.usb_tx, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %13) #9
  %buf.i = getelementptr inbounds %struct.usb_tx, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buf.i, align 4
  tail call void @kfree(ptr noundef %15) #9
  tail call void @kfree(ptr noundef nonnull %1) #9
  br label %free_tx_struct.exit

free_tx_struct.exit:                              ; preds = %if.then.i, %if.end5.free_tx_struct.exit_crit_edge
  %lock = getelementptr inbounds %struct.tx_cxt, ptr %3, i32 0, i32 4
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %send_complete = getelementptr i8, ptr %3, i32 433
  %16 = ptrtoint ptr %send_complete to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %send_complete, align 1
  %work_tx = getelementptr i8, ptr %3, i32 232
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %17 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %work_tx) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #9
  br label %cleanup

cleanup:                                          ; preds = %free_tx_struct.exit, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @gdm_dev16_to_cpu(i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_lte_device(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_lte_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gdm_lte_event_exit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !18, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !75, !77, !78, !80, !81, !83, !84, !86, !87, !89, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !123, !125, !126, !127, !128, !130, !131, !132}
!llvm.module.flags = !{!133, !134, !135, !136, !137, !138, !139, !140}
!llvm.ident = !{!141}

!0 = !{ptr @__UNIQUE_ID_version342, !1, !"__UNIQUE_ID_version342", i1 false, i1 false}
!1 = !{!"../drivers/staging/gdm724x/gdm_usb.c", i32 1010, i32 1}
!2 = !{ptr @__UNIQUE_ID_description343, !3, !"__UNIQUE_ID_description343", i1 false, i1 false}
!3 = !{!"../drivers/staging/gdm724x/gdm_usb.c", i32 1011, i32 1}
!4 = !{ptr @__UNIQUE_ID_license344, !5, !"__UNIQUE_ID_license344", i1 false, i1 false}
!5 = !{!"../drivers/staging/gdm724x/gdm_usb.c", i32 1012, i32 1}
!6 = !{ptr @id_table, !7, !"id_table", i1 false, i1 false}
!7 = !{!"../drivers/staging/gdm724x/gdm_usb.c", i32 40, i32 35}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/gdm724x/gdm_usb.c", i32 993, i32 3}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @gdm_usb_lte_init._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @gdm_usb_lte_init._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/gdm724x/gdm_usb.c", i32 997, i32 9}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/gdm724x/gdm_usb.c", i32 980, i32 10}
!18 = !{ptr @gdm_usb_lte_driver, !19, !"gdm_usb_lte_driver", i1 false, i1 false}
!19 = !{!"../drivers/staging/gdm724x/gdm_usb.c", i32 979, i32 26}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/gdm724x/gdm_usb.c", i32 817, i32 2}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @gdm_usb_probe._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @gdm_usb_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/staging/gdm724x/gdm_usb.c", i32 820, i32 3}
!27 = !{ptr @gdm_usb_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @gdm_usb_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/gdm724x/gdm_usb.c", i32 843, i32 3}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @gdm_usb_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @gdm_usb_probe._entry_ptr.14, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/staging/gdm724x/gdm_usb.c", i32 862, i32 3}
!37 = !{ptr @gdm_usb_probe._entry.15, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @gdm_usb_probe._entry_ptr.17, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/gdm724x/gdm_usb.c", i32 771, i32 3}
!41 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @gdm_usb_hci_send._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @gdm_usb_hci_send._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/staging/gdm724x/gdm_usb.c", i32 777, i32 3}
!46 = !{ptr @gdm_usb_hci_send._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @gdm_usb_hci_send._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/staging/gdm724x/gdm_usb.c", i32 718, i32 3}
!50 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @gdm_usb_sdu_send._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @gdm_usb_sdu_send._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/staging/gdm724x/gdm_usb.c", i32 727, i32 3}
!55 = !{ptr @gdm_usb_sdu_send._entry.25, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @gdm_usb_sdu_send._entry_ptr.27, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/staging/gdm724x/gdm_usb.c", i32 498, i32 3}
!59 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @gdm_usb_recv._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @gdm_usb_recv._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/staging/gdm724x/gdm_usb.c", i32 504, i32 3}
!64 = !{ptr @gdm_usb_recv._entry.30, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @gdm_usb_recv._entry_ptr.32, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/staging/gdm724x/gdm_usb.c", i32 536, i32 3}
!68 = !{ptr @gdm_usb_recv._entry.33, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @gdm_usb_recv._entry_ptr.35, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/staging/gdm724x/gdm_usb.c", i32 474, i32 4}
!72 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @gdm_usb_rcv_complete._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @gdm_usb_rcv_complete._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @init_usb.__key, !76, !"__key", i1 false, i1 false}
!76 = !{!"../drivers/staging/gdm724x/gdm_usb.c", i32 320, i32 2}
!77 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @init_usb.__key.39, !79, !"__key", i1 false, i1 false}
!79 = !{!"../drivers/staging/gdm724x/gdm_usb.c", i32 321, i32 2}
!80 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @init_usb.__key.41, !82, !"__key", i1 false, i1 false}
!82 = !{!"../drivers/staging/gdm724x/gdm_usb.c", i32 322, i32 2}
!83 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @init_usb.__key.43, !85, !"__key", i1 false, i1 false}
!85 = !{!"../drivers/staging/gdm724x/gdm_usb.c", i32 323, i32 2}
!86 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @init_usb.__key.45, !88, !"__key", i1 false, i1 false}
!88 = !{!"../drivers/staging/gdm724x/gdm_usb.c", i32 351, i32 2}
!89 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @init_usb.__key.47, !88, !"__key", i1 false, i1 false}
!91 = !{ptr @.str.48, !88, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @init_usb.__key.49, !93, !"__key", i1 false, i1 false}
!93 = !{!"../drivers/staging/gdm724x/gdm_usb.c", i32 352, i32 2}
!94 = !{ptr @.str.50, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @init_usb.__key.51, !93, !"__key", i1 false, i1 false}
!96 = !{ptr @.str.52, !93, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.53, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/staging/gdm724x/gdm_usb.c", i32 697, i32 3}
!99 = !{ptr @.str.54, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @do_tx._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @do_tx._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.55, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/staging/gdm724x/gdm_usb.c", i32 584, i32 3}
!104 = !{ptr @.str.56, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @send_tx_packet._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @send_tx_packet._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.57, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/staging/gdm724x/gdm_usb.c", i32 551, i32 3}
!109 = !{ptr @.str.58, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.59, !108, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @gdm_usb_send_complete._entry, !108, !"_entry", i1 false, i1 false}
!112 = !{ptr @gdm_usb_send_complete._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.60, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/staging/gdm724x/gdm_usb.c", i32 427, i32 6}
!115 = !{ptr @.str.61, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @do_rx._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @do_rx._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.62, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/staging/gdm724x/gdm_usb.c", i32 371, i32 4}
!120 = !{ptr @.str.63, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @set_mac_address._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @set_mac_address._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.64, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/staging/gdm724x/gdm_usb.c", i32 918, i32 3}
!125 = !{ptr @.str.65, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @gdm_usb_suspend._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @gdm_usb_suspend._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.66, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/staging/gdm724x/gdm_usb.c", i32 954, i32 3}
!130 = !{ptr @.str.67, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @gdm_usb_resume._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @gdm_usb_resume._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{i32 1, !"wchar_size", i32 2}
!134 = !{i32 1, !"min_enum_size", i32 4}
!135 = !{i32 8, !"branch-target-enforcement", i32 0}
!136 = !{i32 8, !"sign-return-address", i32 0}
!137 = !{i32 8, !"sign-return-address-all", i32 0}
!138 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!139 = !{i32 7, !"uwtable", i32 1}
!140 = !{i32 7, !"frame-pointer", i32 2}
!141 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!142 = !{!"auto-init"}
