; ModuleID = '/llk/IR_all_yes/drivers/staging/gdm724x/gdm_mux.c_pt.bc'
source_filename = "../drivers/staging/gdm724x/gdm_mux.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.mux_dev = type { ptr, ptr, ptr, %struct.rx_cxt, %struct.delayed_work, ptr, i32, ptr, %struct.spinlock, ptr }
%struct.rx_cxt = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock }
%struct.mux_rx = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, ptr }
%struct.tty_dev = type { ptr, ptr, ptr, ptr, [2 x ptr] }
%struct.mux_tx = type { ptr, ptr, i32, ptr, ptr }
%struct.mux_pkt_header = type { i32, i32, i32, i16, [0 x i8] }
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

@id_table = internal constant [5 x %struct.usb_device_id] [%struct.usb_device_id { i16 387, i16 4214, i16 -32768, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 387, i16 4214, i16 -28928, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 387, i16 4214, i16 -28672, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 387, i16 7540, i16 8960, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 2, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], align 4
@__UNIQUE_ID_description234 = internal constant [38 x i8] c"description=GCT LTE TTY Device Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@gdm_mux_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @gdm_mux_probe, ptr @gdm_mux_disconnect, ptr null, ptr @gdm_mux_suspend, ptr @gdm_mux_resume, ptr @gdm_mux_resume, ptr null, ptr null, ptr @id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 64 }, [44 x i8] zeroinitializer }, align 32
@__this_module = external dso_local global %struct.module, align 128
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gdmtty\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gdm_mux\00", [24 x i8] zeroinitializer }, align 32
@gdm_mux_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 509, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016gdmtty: mux vid = 0x%04x pid = 0x%04x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gdm_mux_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/staging/gdm724x/gdm_mux.c\00", [62 x i8] zeroinitializer }, align 32
@gdm_mux_probe._entry_ptr = internal global ptr @gdm_mux_probe._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_usb.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&mux_dev->write_lock\00", [43 x i8] zeroinitializer }, align 32
@init_usb.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&rx->to_host_lock\00", [46 x i8] zeroinitializer }, align 32
@init_usb.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&rx->submit_list_lock\00", [42 x i8] zeroinitializer }, align 32
@init_usb.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&rx->free_list_lock\00", [44 x i8] zeroinitializer }, align 32
@init_usb.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&(&mux_dev->work_rx)->work)\00", [50 x i8] zeroinitializer }, align 32
@init_usb.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&mux_dev->work_rx)->timer\00", [36 x i8] zeroinitializer }, align 32
@do_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013gdmtty: failed to send mux data to host\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"do_rx\00", [26 x i8] zeroinitializer }, align 32
@do_rx._entry_ptr = internal global ptr @do_rx._entry, section ".printk_index", align 4
@up_to_host._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013gdmtty: invalid START_FLAG %x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"up_to_host\00", [21 x i8] zeroinitializer }, align 32
@up_to_host._entry_ptr = internal global ptr @up_to_host._entry, section ".printk_index", align 4
@up_to_host._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.4, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013gdmtty: invalid payload : %d %d %04x\0A\00", [56 x i8] zeroinitializer }, align 32
@up_to_host._entry_ptr.22 = internal global ptr @up_to_host._entry.20, section ".printk_index", align 4
@up_to_host._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.4, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013gdmtty: invalid index %d\0A\00", [36 x i8] zeroinitializer }, align 32
@up_to_host._entry_ptr.25 = internal global ptr @up_to_host._entry.23, section ".printk_index", align 4
@packet_type_for_tty_index = internal constant { [2 x i16], [28 x i8] } { [2 x i16] [i16 -4079, i16 -4080], [28 x i8] zeroinitializer }, align 32
@gdm_mux_send.seq_num = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@gdm_mux_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013gdmtty: alloc_mux_tx fail\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gdm_mux_send\00", [19 x i8] zeroinitializer }, align 32
@gdm_mux_send._entry_ptr = internal global ptr @gdm_mux_send._entry, section ".printk_index", align 4
@gdm_mux_send._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.4, i32 398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013gdmtty: usb_submit_urb Error: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@gdm_mux_send._entry_ptr.30 = internal global ptr @gdm_mux_send._entry.28, section ".printk_index", align 4
@gdm_mux_send_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.4, i32 331, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CONNRESET\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gdm_mux_send_complete\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gdm_mux_send_complete._entry_ptr = internal global ptr @gdm_mux_send_complete._entry, section ".printk_index", align 4
@gdm_mux_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.4, i32 282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013gdmtty: device is disconnected\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gdm_mux_recv\00", [19 x i8] zeroinitializer }, align 32
@gdm_mux_recv._entry_ptr = internal global ptr @gdm_mux_recv._entry, section ".printk_index", align 4
@gdm_mux_recv._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.4, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013gdmtty: get_rx_struct fail\0A\00", [34 x i8] zeroinitializer }, align 32
@gdm_mux_recv._entry_ptr.39 = internal global ptr @gdm_mux_recv._entry.37, section ".printk_index", align 4
@gdm_mux_recv._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str.4, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013gdmtty: usb_submit_urb ret=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@gdm_mux_recv._entry_ptr.42 = internal global ptr @gdm_mux_recv._entry.40, section ".printk_index", align 4
@gdm_mux_rcv_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 259, ptr @.str.45, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: urb status error %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gdm_mux_rcv_complete\00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@gdm_mux_rcv_complete._entry_ptr = internal global ptr @gdm_mux_rcv_complete._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@gdm_mux_send_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.4, i32 424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013gdmtty: usb_control_msg error: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gdm_mux_send_control\00", [43 x i8] zeroinitializer }, align 32
@gdm_mux_send_control._entry_ptr = internal global ptr @gdm_mux_send_control._entry, section ".printk_index", align 4
@gdm_mux_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.4, i32 596, ptr @.str.45, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"usb suspend - invalid state\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gdm_mux_suspend\00", [16 x i8] zeroinitializer }, align 32
@gdm_mux_suspend._entry_ptr = internal global ptr @gdm_mux_suspend._entry, section ".printk_index", align 4
@gdm_mux_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.4, i32 624, ptr @.str.45, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"usb resume - invalid state\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gdm_mux_resume\00", [17 x i8] zeroinitializer }, align 32
@gdm_mux_resume._entry_ptr = internal global ptr @gdm_mux_resume._entry, section ".printk_index", align 4
@___asan_gen_.52 = private unnamed_addr constant [15 x i8] c"gdm_mux_driver\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 636, i32 26 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 655, i32 9 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 637, i32 10 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 509, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 470, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 474, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 475, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 476, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 488, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 227, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 161, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 168, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 175, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant [26 x i8] c"packet_type_for_tty_index\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 19, i32 12 }
@___asan_gen_.142 = private unnamed_addr constant [8 x i8] c"seq_num\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 349, i32 13 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 366, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 398, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 331, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 282, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 288, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 318, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 258, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 424, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 596, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.232 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.233 = private constant [37 x i8] c"../drivers/staging/gdm724x/gdm_mux.c\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 624, i32 3 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_license235, ptr @do_rx._entry, ptr @do_rx._entry_ptr, ptr @gdm_mux_probe._entry, ptr @gdm_mux_probe._entry_ptr, ptr @gdm_mux_rcv_complete._entry, ptr @gdm_mux_rcv_complete._entry_ptr, ptr @gdm_mux_recv._entry, ptr @gdm_mux_recv._entry.37, ptr @gdm_mux_recv._entry.40, ptr @gdm_mux_recv._entry_ptr, ptr @gdm_mux_recv._entry_ptr.39, ptr @gdm_mux_recv._entry_ptr.42, ptr @gdm_mux_resume._entry, ptr @gdm_mux_resume._entry_ptr, ptr @gdm_mux_send._entry, ptr @gdm_mux_send._entry.28, ptr @gdm_mux_send._entry_ptr, ptr @gdm_mux_send._entry_ptr.30, ptr @gdm_mux_send_complete._entry, ptr @gdm_mux_send_complete._entry_ptr, ptr @gdm_mux_send_control._entry, ptr @gdm_mux_send_control._entry_ptr, ptr @gdm_mux_suspend._entry, ptr @gdm_mux_suspend._entry_ptr, ptr @up_to_host._entry, ptr @up_to_host._entry.20, ptr @up_to_host._entry.23, ptr @up_to_host._entry_ptr, ptr @up_to_host._entry_ptr.22, ptr @up_to_host._entry_ptr.25, ptr @gdm_mux_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @init_usb.__key, ptr @.str.5, ptr @init_usb.__key.6, ptr @.str.7, ptr @init_usb.__key.8, ptr @.str.9, ptr @init_usb.__key.10, ptr @.str.11, ptr @init_usb.__key.12, ptr @.str.13, ptr @init_usb.__key.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @packet_type_for_tty_index, ptr @gdm_mux_send.seq_num, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdm_mux_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdm_mux_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @up_to_host._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @up_to_host._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @up_to_host._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @packet_type_for_tty_index to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdm_mux_send.seq_num to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdm_mux_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdm_mux_send._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdm_mux_send_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdm_mux_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdm_mux_recv._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdm_mux_recv._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdm_mux_rcv_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdm_mux_send_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdm_mux_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdm_mux_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@__mod_usb__id_table_device_table = dso_local alias [5 x %struct.usb_device_id], ptr @id_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_lte_tty_driver() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @usb_register_driver(ptr noundef nonnull @gdm_mux_driver, ptr noundef nonnull @__this_module, ptr noundef nonnull @.str) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_deregister(ptr noundef nonnull @gdm_mux_driver) #7
  tail call void @unregister_lte_tty_driver() #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_lte_tty_driver() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gdm_mux_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %conv5, i32 noundef %conv6) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp.not = icmp eq i8 %5, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 328) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i66 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 24) #11
  %tobool13.not = icmp eq ptr %call7.i.i66, null
  br i1 %tobool13.not, label %if.end11.err_free_mux_crit_edge, label %if.end15

if.end11.err_free_mux_crit_edge:                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_mux

if.end15:                                         ; preds = %if.end11
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr.i, ptr %call7.i.i, align 8
  %control_intf = getelementptr inbounds %struct.mux_dev, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %control_intf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %intf, ptr %control_intf, align 4
  %rx1.i = getelementptr inbounds %struct.mux_dev, ptr %call7.i.i, i32 0, i32 3
  %write_lock.i = getelementptr inbounds %struct.mux_dev, ptr %call7.i.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %write_lock.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @init_usb.__key, i16 noundef signext 3) #7
  %16 = ptrtoint ptr %rx1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %rx1.i, ptr %rx1.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mux_dev, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %rx1.i, ptr %prev.i.i, align 8
  %rx_submit_list.i = getelementptr inbounds %struct.mux_dev, ptr %call7.i.i, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %rx_submit_list.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %rx_submit_list.i, ptr %rx_submit_list.i, align 4
  %prev.i50.i = getelementptr inbounds %struct.mux_dev, ptr %call7.i.i, i32 0, i32 3, i32 1, i32 1
  %19 = ptrtoint ptr %prev.i50.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %rx_submit_list.i, ptr %prev.i50.i, align 8
  %rx_free_list.i = getelementptr inbounds %struct.mux_dev, ptr %call7.i.i, i32 0, i32 3, i32 2
  %20 = ptrtoint ptr %rx_free_list.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %rx_free_list.i, ptr %rx_free_list.i, align 4
  %prev.i51.i = getelementptr inbounds %struct.mux_dev, ptr %call7.i.i, i32 0, i32 3, i32 2, i32 1
  %21 = ptrtoint ptr %prev.i51.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %rx_free_list.i, ptr %prev.i51.i, align 8
  %to_host_lock.i = getelementptr inbounds %struct.mux_dev, ptr %call7.i.i, i32 0, i32 3, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %to_host_lock.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_usb.__key.6, i16 noundef signext 3) #7
  %submit_list_lock.i = getelementptr inbounds %struct.mux_dev, ptr %call7.i.i, i32 0, i32 3, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %submit_list_lock.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @init_usb.__key.8, i16 noundef signext 3) #7
  %free_list_lock.i = getelementptr inbounds %struct.mux_dev, ptr %call7.i.i, i32 0, i32 3, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %free_list_lock.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @init_usb.__key.10, i16 noundef signext 3) #7
  br label %for.body.i

for.body.i:                                       ; preds = %list_add.exit.i.for.body.i_crit_edge, %if.end15
  %i.056.i = phi i32 [ 0, %if.end15 ], [ %inc.i, %list_add.exit.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 48) #11
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %for.body.i.init_usb.exit.loopexit_crit_edge, label %if.end.i.i

for.body.i.init_usb.exit.loopexit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %init_usb.exit.loopexit

if.end.i.i:                                       ; preds = %for.body.i
  %call1.i.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #7
  %urb.i.i = getelementptr inbounds %struct.mux_rx, ptr %call7.i.i.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %urb.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call1.i.i, ptr %urb.i.i, align 8
  %call1.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 30720, i32 noundef 3264, i32 noundef 3) #12
  %buf.i.i = getelementptr inbounds %struct.mux_rx, ptr %call7.i.i.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call1.i.i.i.i, ptr %buf.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %call1.i.i, null
  %tobool6.not.i.i = icmp eq ptr %call1.i.i.i.i, null
  %or.cond.i.i = select i1 %tobool4.not.i.i, i1 true, i1 %tobool6.not.i.i
  br i1 %or.cond.i.i, label %if.then7.i.i, label %if.end.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i.i.le = getelementptr inbounds %struct.mux_rx, ptr %call7.i.i.i.i, i32 0, i32 4
  tail call void @usb_free_urb(ptr noundef %call1.i.i) #7
  %25 = ptrtoint ptr %buf.i.i.le to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buf.i.i.le, align 4
  tail call void @kfree(ptr noundef %26) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #7
  br label %init_usb.exit

if.end.i:                                         ; preds = %if.end.i.i
  %27 = ptrtoint ptr %rx_free_list.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rx_free_list.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %rx_free_list.i, ptr noundef %28) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_add.exit.i_crit_edge

if.end.i.list_add.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i.i.i, ptr %prev1.i.i.i, align 4
  %30 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %28, ptr %call7.i.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %rx_free_list.i, ptr %prev3.i.i.i, align 4
  %32 = ptrtoint ptr %rx_free_list.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %call7.i.i.i.i, ptr %rx_free_list.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_add.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.056.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 6
  br i1 %exitcond.not.i, label %list_add.exit.i.init_usb.exit.loopexit_crit_edge, label %list_add.exit.i.for.body.i_crit_edge

list_add.exit.i.for.body.i_crit_edge:             ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

list_add.exit.i.init_usb.exit.loopexit_crit_edge: ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %init_usb.exit.loopexit

init_usb.exit.loopexit:                           ; preds = %list_add.exit.i.init_usb.exit.loopexit_crit_edge, %for.body.i.init_usb.exit.loopexit_crit_edge
  %ret.0.i.ph = phi i32 [ -12, %for.body.i.init_usb.exit.loopexit_crit_edge ], [ 0, %list_add.exit.i.init_usb.exit.loopexit_crit_edge ]
  %33 = xor i1 %tobool.not.i.i, true
  br label %init_usb.exit

init_usb.exit:                                    ; preds = %init_usb.exit.loopexit, %if.then7.i.i
  %tobool18.not = phi i1 [ false, %if.then7.i.i ], [ %33, %init_usb.exit.loopexit ]
  %ret.0.i = phi i32 [ -12, %if.then7.i.i ], [ %ret.0.i.ph, %init_usb.exit.loopexit ]
  %work_rx.i = getelementptr inbounds %struct.mux_dev, ptr %call7.i.i, i32 0, i32 4
  tail call void @__init_work(ptr noundef %work_rx.i, i32 noundef 0) #7
  %34 = ptrtoint ptr %work_rx.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -64, ptr %work_rx.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.mux_dev, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @init_usb.__key.12, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry24.i = getelementptr inbounds %struct.mux_dev, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 1
  %35 = ptrtoint ptr %entry24.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %entry24.i, ptr %entry24.i, align 4
  %prev.i52.i = getelementptr inbounds %struct.mux_dev, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %prev.i52.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %entry24.i, ptr %prev.i52.i, align 8
  %func.i = getelementptr inbounds %struct.mux_dev, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 2
  %37 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @do_rx, ptr %func.i, align 4
  %timer.i = getelementptr inbounds %struct.mux_dev, ptr %call7.i.i, i32 0, i32 4, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.15, ptr noundef nonnull @init_usb.__key.14) #7
  br i1 %tobool18.not, label %if.end20, label %init_usb.exit.err_free_usb_crit_edge

init_usb.exit.err_free_usb_crit_edge:             ; preds = %init_usb.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_usb

if.end20:                                         ; preds = %init_usb.exit
  %38 = ptrtoint ptr %call7.i.i66 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i, ptr %call7.i.i66, align 8
  %send_func = getelementptr inbounds %struct.tty_dev, ptr %call7.i.i66, i32 0, i32 1
  %39 = ptrtoint ptr %send_func to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @gdm_mux_send, ptr %send_func, align 4
  %recv_func = getelementptr inbounds %struct.tty_dev, ptr %call7.i.i66, i32 0, i32 2
  %40 = ptrtoint ptr %recv_func to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @gdm_mux_recv, ptr %recv_func, align 8
  %send_control = getelementptr inbounds %struct.tty_dev, ptr %call7.i.i66, i32 0, i32 3
  %41 = ptrtoint ptr %send_control to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @gdm_mux_send_control, ptr %send_control, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %call21 = tail call i32 @register_lte_tty_device(ptr noundef nonnull %call7.i.i66, ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %for.cond.preheader, label %err_unregister_tty

for.cond.preheader:                               ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %tty_dev27 = getelementptr inbounds %struct.mux_dev, ptr %call7.i.i, i32 0, i32 9
  %42 = ptrtoint ptr %tty_dev27 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call7.i.i66, ptr %tty_dev27, align 4
  %intf28 = getelementptr inbounds %struct.mux_dev, ptr %call7.i.i, i32 0, i32 5
  %43 = ptrtoint ptr %intf28 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %intf, ptr %intf28, align 4
  %usb_state = getelementptr inbounds %struct.mux_dev, ptr %call7.i.i, i32 0, i32 6
  %44 = ptrtoint ptr %usb_state to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %usb_state, align 8
  %call29 = tail call ptr @usb_get_dev(ptr noundef %add.ptr.i) #7
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %45 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call7.i.i66, ptr %driver_data.i.i, align 4
  br label %cleanup

err_unregister_tty:                               ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @unregister_lte_tty_device(ptr noundef nonnull %call7.i.i66) #7
  br label %err_free_usb

err_free_usb:                                     ; preds = %err_unregister_tty, %init_usb.exit.err_free_usb_crit_edge
  %ret.0 = phi i32 [ %ret.0.i, %init_usb.exit.err_free_usb_crit_edge ], [ %call21, %err_unregister_tty ]
  tail call fastcc void @release_usb(ptr noundef nonnull %call7.i.i)
  tail call void @kfree(ptr noundef nonnull %call7.i.i66) #7
  br label %err_free_mux

err_free_mux:                                     ; preds = %err_free_usb, %if.end11.err_free_mux_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_free_usb ], [ -12, %if.end11.err_free_mux_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %err_free_mux, %for.cond.preheader, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err_free_mux ], [ 0, %for.cond.preheader ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gdm_mux_disconnect(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call fastcc void @release_usb(ptr noundef %5)
  tail call void @unregister_lte_tty_device(ptr noundef %3) #7
  tail call void @kfree(ptr noundef %5) #7
  tail call void @kfree(ptr noundef %3) #7
  tail call void @usb_put_dev(ptr noundef %add.ptr.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gdm_mux_suspend(ptr nocapture noundef readonly %intf, [1 x i32] %pm_msg.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %work_rx = getelementptr inbounds %struct.mux_dev, ptr %3, i32 0, i32 4
  %call2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work_rx) #7
  %usb_state = getelementptr inbounds %struct.mux_dev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %usb_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usb_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %usb_dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 8
  %6 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.48) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %usb_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %usb_state, align 4
  %submit_list_lock = getelementptr inbounds %struct.mux_dev, ptr %3, i32 0, i32 3, i32 4
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %submit_list_lock) #7
  %rx_submit_list = getelementptr inbounds %struct.mux_dev, ptr %3, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %rx_submit_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_submit_list, align 4
  %cmp21.not63 = icmp eq ptr %10, %rx_submit_list
  br i1 %cmp21.not63, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn.in65 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %10, %if.end.for.body_crit_edge ]
  %flags.064 = phi i32 [ %call33, %for.body.for.body_crit_edge ], [ %call8, %if.end.for.body_crit_edge ]
  %11 = ptrtoint ptr %.pn.in65 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn.in65, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %submit_list_lock, i32 noundef %flags.064) #7
  %urb = getelementptr i8, ptr %.pn.in65, i32 16
  %12 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %urb, align 4
  tail call void @usb_kill_urb(ptr noundef %13) #7
  %call33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %submit_list_lock) #7
  %cmp21.not = icmp eq ptr %.pn, %rx_submit_list
  br i1 %cmp21.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call8, %if.end.for.end_crit_edge ], [ %call33, %for.body.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %submit_list_lock, i32 noundef %flags.0.lcssa) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gdm_mux_resume(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %usb_state = getelementptr inbounds %struct.mux_dev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %usb_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usb_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %usb_dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 8
  %6 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.50) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %usb_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %usb_state, align 4
  %rx_cb = getelementptr inbounds %struct.mux_dev, ptr %3, i32 0, i32 7
  %9 = ptrtoint ptr %rx_cb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_cb, align 4
  %call4 = tail call i32 @gdm_mux_recv(ptr noundef %3, ptr noundef %10)
  %11 = ptrtoint ptr %rx_cb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rx_cb, align 4
  %call4.1 = tail call i32 @gdm_mux_recv(ptr noundef %3, ptr noundef %12)
  %13 = ptrtoint ptr %rx_cb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_cb, align 4
  %call4.2 = tail call i32 @gdm_mux_recv(ptr noundef %3, ptr noundef %14)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gdm_mux_send(ptr noundef %priv_dev, ptr nocapture noundef readonly %data, i32 noundef %len, i32 noundef %tty_index, ptr noundef %cb, ptr noundef %cb_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_dev, align 4
  %usb_state = getelementptr inbounds %struct.mux_dev, ptr %priv_dev, i32 0, i32 6
  %2 = ptrtoint ptr %usb_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usb_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %entry.do.body5_crit_edge

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body5

if.then:                                          ; preds = %entry
  %intf = getelementptr inbounds %struct.mux_dev, ptr %priv_dev, i32 0, i32 5
  %4 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf, align 4
  %call = tail call i32 @usb_autopm_get_interface(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then2, label %if.then.do.body5_crit_edge

if.then.do.body5_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body5

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intf, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %7) #7
  br label %do.body5

do.body5:                                         ; preds = %if.then2, %if.then.do.body5_crit_edge, %entry.do.body5_crit_edge
  %write_lock = getelementptr inbounds %struct.mux_dev, ptr %priv_dev, i32 0, i32 8
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %write_lock) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 2848, i32 noundef 20) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.body5.do.end17_crit_edge, label %if.end.i

do.body5.do.end17_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

if.end.i:                                         ; preds = %do.body5
  %call1.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #7
  %9 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call1.i, ptr %call7.i.i.i, align 8
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 10240, i32 noundef 2592, i32 noundef 2) #12
  %buf.i = getelementptr inbounds %struct.mux_tx, ptr %call7.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call1.i.i.i, ptr %buf.i, align 4
  %tobool4.not.i = icmp eq ptr %call1.i, null
  %tobool6.not.i = icmp eq ptr %call1.i.i.i, null
  %or.cond.i = select i1 %tobool4.not.i, i1 true, i1 %tobool6.not.i
  br i1 %or.cond.i, label %if.then7.i, label %if.end21

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_free_urb(ptr noundef %call1.i) #7
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buf.i, align 4
  tail call void @kfree(ptr noundef %12) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %do.end17

do.end17:                                         ; preds = %if.then7.i, %do.body5.do.end17_crit_edge
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %write_lock, i32 noundef %call8) #7
  br label %cleanup

if.end21:                                         ; preds = %if.end.i
  %add11 = add i32 %len, 17
  %and = and i32 %add11, -4
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buf.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1514672805, ptr %14, align 4
  %16 = load i32, ptr @gdm_mux_send.seq_num, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr @gdm_mux_send.seq_num, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %seq_num = getelementptr inbounds %struct.mux_pkt_header, ptr %14, i32 0, i32 1
  %18 = ptrtoint ptr %seq_num to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %seq_num, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %len)
  %payload_size = getelementptr inbounds %struct.mux_pkt_header, ptr %14, i32 0, i32 2
  %20 = ptrtoint ptr %payload_size to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %payload_size, align 4
  %arrayidx = getelementptr [2 x i16], ptr @packet_type_for_tty_index, i32 0, i32 %tty_index
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx, align 2
  %23 = tail call i16 @llvm.bswap.i16(i16 %22)
  %packet_type = getelementptr inbounds %struct.mux_pkt_header, ptr %14, i32 0, i32 3
  %24 = ptrtoint ptr %packet_type to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %packet_type, align 4
  %25 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buf.i, align 4
  %add.ptr = getelementptr i8, ptr %26, i32 14
  %27 = call ptr @memcpy(ptr %add.ptr, ptr %data, i32 %len)
  %28 = load ptr, ptr %buf.i, align 4
  %add.ptr24 = getelementptr i8, ptr %28, i32 14
  %add.ptr25 = getelementptr i8, ptr %add.ptr24, i32 %len
  %sub = sub i32 -14, %len
  %sub26 = add i32 %sub, %and
  %29 = call ptr @memset(ptr %add.ptr25, i32 0, i32 %sub26)
  %len27 = getelementptr inbounds %struct.mux_tx, ptr %call7.i.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %len27 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and, ptr %len27, align 8
  %callback = getelementptr inbounds %struct.mux_tx, ptr %call7.i.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %cb, ptr %callback, align 4
  %cb_data28 = getelementptr inbounds %struct.mux_tx, ptr %call7.i.i.i, i32 0, i32 4
  %32 = ptrtoint ptr %cb_data28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %cb_data, ptr %cb_data28, align 8
  %33 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call7.i.i.i, align 8
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %1, align 8
  %shl.i = shl i32 %36, 8
  %or = or i32 %shl.i, -1073577984
  %37 = load ptr, ptr %buf.i, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %34, i32 0, i32 8
  %38 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %1, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %34, i32 0, i32 10
  %39 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %34, i32 0, i32 14
  %40 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %34, i32 0, i32 19
  %41 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %34, i32 0, i32 28
  %42 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @gdm_mux_send_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %34, i32 0, i32 27
  %43 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call7.i.i.i, ptr %context4.i, align 4
  %44 = load ptr, ptr %call7.i.i.i, align 8
  %call32 = tail call i32 @usb_submit_urb(ptr noundef %44, i32 noundef 2592) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %write_lock, i32 noundef %call8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool34.not = icmp eq i32 %call32, 0
  br i1 %tobool34.not, label %if.end21.if.end41_crit_edge, label %do.end38

if.end21.if.end41_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

do.end38:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %call32) #10
  br label %if.end41

if.end41:                                         ; preds = %do.end38, %if.end21.if.end41_crit_edge
  %call.i.i = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i.i = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15, i32 12, i32 22
  %45 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store volatile i64 %call.i.i, ptr %last_busy.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %do.end17
  %retval.0 = phi i32 [ %call32, %if.end41 ], [ -12, %do.end17 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gdm_mux_recv(ptr noundef %priv_dev, ptr noundef %cb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_dev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %free_list_lock.i = getelementptr inbounds %struct.mux_dev, ptr %priv_dev, i32 0, i32 3, i32 5
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %free_list_lock.i) #7
  %rx_free_list.i = getelementptr inbounds %struct.mux_dev, ptr %priv_dev, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %rx_free_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %rx_free_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %3, %rx_free_list.i
  br i1 %cmp.i.not.i, label %get_rx_struct.exit.thread, label %if.end.i

get_rx_struct.exit.thread:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %free_list_lock.i, i32 noundef %call2.i) #7
  br label %do.end8

if.end.i:                                         ; preds = %if.end
  %prev.i = getelementptr inbounds %struct.mux_dev, ptr %priv_dev, i32 0, i32 3, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.get_rx_struct.exit_crit_edge

if.end.i.get_rx_struct.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_rx_struct.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %get_rx_struct.exit

get_rx_struct.exit:                               ; preds = %if.end.i.i.i, %if.end.i.get_rx_struct.exit_crit_edge
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %free_list_lock.i, i32 noundef %call2.i) #7
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %get_rx_struct.exit.do.end8_crit_edge, label %if.end11

get_rx_struct.exit.do.end8_crit_edge:             ; preds = %get_rx_struct.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

do.end8:                                          ; preds = %get_rx_struct.exit.do.end8_crit_edge, %get_rx_struct.exit.thread
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #10
  br label %cleanup

if.end11:                                         ; preds = %get_rx_struct.exit
  %offset = getelementptr inbounds %struct.mux_rx, ptr %5, i32 0, i32 6
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %offset, align 4
  %mux_dev12 = getelementptr inbounds %struct.mux_rx, ptr %5, i32 0, i32 5
  %15 = ptrtoint ptr %mux_dev12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %priv_dev, ptr %mux_dev12, align 4
  %callback = getelementptr inbounds %struct.mux_rx, ptr %5, i32 0, i32 8
  %16 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %cb, ptr %callback, align 4
  %rx_cb = getelementptr inbounds %struct.mux_dev, ptr %priv_dev, i32 0, i32 7
  %17 = ptrtoint ptr %rx_cb to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %cb, ptr %rx_cb, align 4
  %urb = getelementptr inbounds %struct.mux_rx, ptr %5, i32 0, i32 3
  %18 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %urb, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %1, align 8
  %shl.i = shl i32 %21, 8
  %or14 = or i32 %shl.i, -1069350784
  %buf = getelementptr inbounds %struct.mux_rx, ptr %5, i32 0, i32 4
  %22 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buf, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 8
  %24 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %1, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 10
  %25 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or14, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 14
  %26 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 19
  %27 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 30720, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 28
  %28 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @gdm_mux_rcv_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 27
  %29 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %5, ptr %context4.i, align 4
  %submit_list_lock = getelementptr inbounds %struct.mux_dev, ptr %priv_dev, i32 0, i32 3, i32 4
  %call19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %submit_list_lock) #7
  %rx_submit_list = getelementptr inbounds %struct.mux_rx, ptr %5, i32 0, i32 1
  %rx_submit_list24 = getelementptr inbounds %struct.mux_dev, ptr %priv_dev, i32 0, i32 3, i32 1
  %prev.i83 = getelementptr inbounds %struct.mux_dev, ptr %priv_dev, i32 0, i32 3, i32 1, i32 1
  %30 = ptrtoint ptr %prev.i83 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i83, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %rx_submit_list, ptr noundef %31, ptr noundef %rx_submit_list24) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end11.list_add_tail.exit_crit_edge

if.end11.list_add_tail.exit_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %prev.i83 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %rx_submit_list, ptr %prev.i83, align 4
  %33 = ptrtoint ptr %rx_submit_list to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %rx_submit_list24, ptr %rx_submit_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.mux_rx, ptr %5, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev3.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %rx_submit_list, ptr %31, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end11.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %submit_list_lock, i32 noundef %call19) #7
  %36 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %urb, align 4
  %call27 = tail call i32 @usb_submit_urb(ptr noundef %37, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %list_add_tail.exit.if.end51_crit_edge, label %do.body31

list_add_tail.exit.if.end51_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

do.body31:                                        ; preds = %list_add_tail.exit
  %call39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %submit_list_lock) #7
  %call.i.i84 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %rx_submit_list) #7
  br i1 %call.i.i84, label %if.end.i.i86, label %do.body31.list_del.exit_crit_edge

do.body31.list_del.exit_crit_edge:                ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i86:                                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i85 = getelementptr inbounds %struct.mux_rx, ptr %5, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %prev.i.i85 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i85, align 4
  %40 = ptrtoint ptr %rx_submit_list to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rx_submit_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i86, %do.body31.list_del.exit_crit_edge
  %44 = ptrtoint ptr %rx_submit_list to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 256 to ptr), ptr %rx_submit_list, align 4
  %prev.i87 = getelementptr inbounds %struct.mux_rx, ptr %5, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %prev.i87 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i87, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %submit_list_lock, i32 noundef %call39) #7
  %call2.i89 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %free_list_lock.i) #7
  %46 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i, align 4
  %call.i.i.i92 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %5, ptr noundef %47, ptr noundef %rx_free_list.i) #7
  br i1 %call.i.i.i92, label %if.end.i.i.i93, label %list_del.exit.put_rx_struct.exit_crit_edge

list_del.exit.put_rx_struct.exit_crit_edge:       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_rx_struct.exit

if.end.i.i.i93:                                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %5, ptr %prev.i, align 4
  %49 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %rx_free_list.i, ptr %5, align 4
  %50 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev.i.i, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %5, ptr %47, align 4
  br label %put_rx_struct.exit

put_rx_struct.exit:                               ; preds = %if.end.i.i.i93, %list_del.exit.put_rx_struct.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %free_list_lock.i, i32 noundef %call2.i89) #7
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %call27) #10
  br label %if.end51

if.end51:                                         ; preds = %put_rx_struct.exit, %list_add_tail.exit.if.end51_crit_edge
  %call.i.i94 = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i.i = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15, i32 12, i32 22
  %52 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store volatile i64 %call.i.i94, ptr %last_busy.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %do.end8, %do.end
  %retval.0 = phi i32 [ %call27, %if.end51 ], [ -12, %do.end8 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gdm_mux_send_control(ptr nocapture noundef readonly %priv_dev, i32 noundef %request, i32 noundef %value, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_dev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %shl.i = shl i32 %3, 8
  %or = or i32 %shl.i, -2147483648
  %conv = trunc i32 %request to i8
  %conv2 = trunc i32 %value to i16
  %conv3 = trunc i32 %len to i16
  %call4 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or, i8 noundef zeroext %conv, i8 noundef zeroext 33, i16 noundef zeroext %conv2, i16 noundef zeroext 2, ptr noundef %buf, i16 noundef zeroext %conv3, i32 noundef 5000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %call4) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = tail call i32 @llvm.smin.i32(i32 %call4, i32 0)
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_lte_tty_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_lte_tty_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @release_usb(ptr noundef %mux_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rx1 = getelementptr inbounds %struct.mux_dev, ptr %mux_dev, i32 0, i32 3
  %work_rx = getelementptr inbounds %struct.mux_dev, ptr %mux_dev, i32 0, i32 4
  %call = tail call zeroext i1 @cancel_delayed_work(ptr noundef %work_rx) #7
  %submit_list_lock = getelementptr inbounds %struct.mux_dev, ptr %mux_dev, i32 0, i32 3, i32 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %submit_list_lock) #7
  %rx_submit_list = getelementptr inbounds %struct.mux_dev, ptr %mux_dev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %rx_submit_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_submit_list, align 4
  %cmp15.not164 = icmp eq ptr %1, %rx_submit_list
  br i1 %cmp15.not164, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in166 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %flags.0165 = phi i32 [ %call27, %for.body.for.body_crit_edge ], [ %call4, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %.pn.in166 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in166, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %submit_list_lock, i32 noundef %flags.0165) #7
  %urb = getelementptr i8, ptr %.pn.in166, i32 16
  %3 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %urb, align 4
  tail call void @usb_kill_urb(ptr noundef %4) #7
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %submit_list_lock) #7
  %cmp15.not = icmp eq ptr %.pn, %rx_submit_list
  br i1 %cmp15.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call4, %entry.for.end_crit_edge ], [ %call27, %for.body.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %submit_list_lock, i32 noundef %flags.0.lcssa) #7
  %free_list_lock = getelementptr inbounds %struct.mux_dev, ptr %mux_dev, i32 0, i32 3, i32 5
  %call46 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %free_list_lock) #7
  %rx_free_list = getelementptr inbounds %struct.mux_dev, ptr %mux_dev, i32 0, i32 3, i32 2
  %5 = ptrtoint ptr %rx_free_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx_free_list, align 4
  %cmp62.not167 = icmp eq ptr %6, %rx_free_list
  br i1 %cmp62.not167, label %for.end.for.end73_crit_edge, label %for.end.for.body65_crit_edge

for.end.for.body65_crit_edge:                     ; preds = %for.end
  br label %for.body65

for.end.for.end73_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end73

for.body65:                                       ; preds = %free_mux_rx.exit.for.body65_crit_edge, %for.end.for.body65_crit_edge
  %r.1168 = phi ptr [ %r_next.1, %free_mux_rx.exit.for.body65_crit_edge ], [ %6, %for.end.for.body65_crit_edge ]
  %7 = ptrtoint ptr %r.1168 to i32
  call void @__asan_load4_noabort(i32 %7)
  %r_next.1 = load ptr, ptr %r.1168, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %r.1168) #7
  br i1 %call.i.i, label %if.end.i.i, label %for.body65.list_del.exit_crit_edge

for.body65.list_del.exit_crit_edge:               ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %r.1168, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %r.1168 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %r.1168, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body65.list_del.exit_crit_edge
  %14 = ptrtoint ptr %r.1168 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %r.1168, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %r.1168, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %tobool.not.i = icmp eq ptr %r.1168, null
  br i1 %tobool.not.i, label %list_del.exit.free_mux_rx.exit_crit_edge, label %if.then.i

list_del.exit.free_mux_rx.exit_crit_edge:         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_mux_rx.exit

if.then.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  %urb.i = getelementptr inbounds %struct.mux_rx, ptr %r.1168, i32 0, i32 3
  %16 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %17) #7
  %buf.i = getelementptr inbounds %struct.mux_rx, ptr %r.1168, i32 0, i32 4
  %18 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buf.i, align 4
  tail call void @kfree(ptr noundef %19) #7
  tail call void @kfree(ptr noundef nonnull %r.1168) #7
  br label %free_mux_rx.exit

free_mux_rx.exit:                                 ; preds = %if.then.i, %list_del.exit.free_mux_rx.exit_crit_edge
  %cmp62.not = icmp eq ptr %r_next.1, %rx_free_list
  br i1 %cmp62.not, label %free_mux_rx.exit.for.end73_crit_edge, label %free_mux_rx.exit.for.body65_crit_edge

free_mux_rx.exit.for.body65_crit_edge:            ; preds = %free_mux_rx.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body65

free_mux_rx.exit.for.end73_crit_edge:             ; preds = %free_mux_rx.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end73

for.end73:                                        ; preds = %free_mux_rx.exit.for.end73_crit_edge, %for.end.for.end73_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %free_list_lock, i32 noundef %call46) #7
  %to_host_lock = getelementptr inbounds %struct.mux_dev, ptr %mux_dev, i32 0, i32 3, i32 3
  %call83 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %to_host_lock) #7
  %20 = ptrtoint ptr %rx1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rx1, align 4
  %cmp100.not171 = icmp eq ptr %21, %rx1
  br i1 %cmp100.not171, label %for.end73.for.end114_crit_edge, label %for.end73.for.body103_crit_edge

for.end73.for.body103_crit_edge:                  ; preds = %for.end73
  br label %for.body103

for.end73.for.end114_crit_edge:                   ; preds = %for.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end114

for.body103:                                      ; preds = %for.inc108.for.body103_crit_edge, %for.end73.for.body103_crit_edge
  %.pn150.in172 = phi ptr [ %.pn150174, %for.inc108.for.body103_crit_edge ], [ %21, %for.end73.for.body103_crit_edge ]
  %r.2173 = getelementptr i8, ptr %.pn150.in172, i32 -16
  %22 = ptrtoint ptr %.pn150.in172 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn150174 = load ptr, ptr %.pn150.in172, align 4
  %mux_dev104 = getelementptr i8, ptr %.pn150.in172, i32 16
  %23 = ptrtoint ptr %mux_dev104 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mux_dev104, align 4
  %cmp105 = icmp eq ptr %24, %mux_dev
  br i1 %cmp105, label %if.then, label %for.body103.for.inc108_crit_edge

for.body103.for.inc108_crit_edge:                 ; preds = %for.body103
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc108

if.then:                                          ; preds = %for.body103
  %call.i.i153 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn150.in172) #7
  br i1 %call.i.i153, label %if.end.i.i156, label %if.then.list_del.exit158_crit_edge

if.then.list_del.exit158_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit158

if.end.i.i156:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i154 = getelementptr inbounds %struct.list_head, ptr %.pn150.in172, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i154 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i154, align 4
  %27 = ptrtoint ptr %.pn150.in172 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %.pn150.in172, align 4
  %prev1.i.i.i155 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i155 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i155, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del.exit158

list_del.exit158:                                 ; preds = %if.end.i.i156, %if.then.list_del.exit158_crit_edge
  %31 = ptrtoint ptr %.pn150.in172 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn150.in172, align 4
  %prev.i157 = getelementptr inbounds %struct.list_head, ptr %.pn150.in172, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i157 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i157, align 4
  %tobool.not.i159 = icmp eq ptr %r.2173, null
  br i1 %tobool.not.i159, label %list_del.exit158.for.inc108_crit_edge, label %if.then.i162

list_del.exit158.for.inc108_crit_edge:            ; preds = %list_del.exit158
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc108

if.then.i162:                                     ; preds = %list_del.exit158
  call void @__sanitizer_cov_trace_pc() #9
  %urb.i160 = getelementptr i8, ptr %.pn150.in172, i32 8
  %33 = ptrtoint ptr %urb.i160 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %urb.i160, align 4
  tail call void @usb_free_urb(ptr noundef %34) #7
  %buf.i161 = getelementptr i8, ptr %.pn150.in172, i32 12
  %35 = ptrtoint ptr %buf.i161 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buf.i161, align 4
  tail call void @kfree(ptr noundef %36) #7
  tail call void @kfree(ptr noundef nonnull %r.2173) #7
  br label %for.inc108

for.inc108:                                       ; preds = %if.then.i162, %list_del.exit158.for.inc108_crit_edge, %for.body103.for.inc108_crit_edge
  %cmp100.not = icmp eq ptr %.pn150174, %rx1
  br i1 %cmp100.not, label %for.inc108.for.end114_crit_edge, label %for.inc108.for.body103_crit_edge

for.inc108.for.body103_crit_edge:                 ; preds = %for.inc108
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body103

for.inc108.for.end114_crit_edge:                  ; preds = %for.inc108
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end114

for.end114:                                       ; preds = %for.inc108.for.end114_crit_edge, %for.end73.for.end114_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %to_host_lock, i32 noundef %call83) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_rx(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rx1 = getelementptr i8, ptr %work, i32 -156
  %to_host_lock = getelementptr i8, ptr %work, i32 -132
  %call460 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %to_host_lock) #7
  %0 = ptrtoint ptr %rx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %rx1, align 4
  %cmp.i.not61 = icmp eq ptr %1, %rx1
  br i1 %cmp.i.not61, label %entry.if.then_crit_edge, label %if.end.lr.ph

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end.lr.ph:                                     ; preds = %entry
  %free_list_lock.i = getelementptr i8, ptr %work, i32 -44
  %rx_free_list.i = getelementptr i8, ptr %work, i32 -140
  %prev.i.i34 = getelementptr i8, ptr %work, i32 -136
  br label %if.end

if.then:                                          ; preds = %if.end24.if.then_crit_edge, %entry.if.then_crit_edge
  %call4.lcssa = phi i32 [ %call460, %entry.if.then_crit_edge ], [ %call4, %if.end24.if.then_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %to_host_lock, i32 noundef %call4.lcssa) #7
  ret void

if.end:                                           ; preds = %if.end24.if.end_crit_edge, %if.end.lr.ph
  %2 = phi ptr [ %1, %if.end.lr.ph ], [ %45, %if.end24.if.end_crit_edge ]
  %call462 = phi i32 [ %call460, %if.end.lr.ph ], [ %call4, %if.end24.if.end_crit_edge ]
  %add.ptr12 = getelementptr i8, ptr %2, i32 -16
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %to_host_lock, i32 noundef %call462) #7
  %mux_dev1.i = getelementptr i8, ptr %2, i32 16
  %11 = ptrtoint ptr %mux_dev1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mux_dev1.i, align 4
  %offset.i = getelementptr i8, ptr %2, i32 20
  %13 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset.i, align 4
  %len2.i = getelementptr i8, ptr %2, i32 24
  %15 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len2.i, align 4
  %buf.i = getelementptr i8, ptr %2, i32 12
  %callback.i = getelementptr i8, ptr %2, i32 28
  %tty_dev.i = getelementptr inbounds %struct.mux_dev, ptr %12, i32 0, i32 9
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end31.i.while.cond.i_crit_edge, %list_del.exit
  %packet_size_sum.0.i = phi i32 [ %14, %list_del.exit ], [ %add32.i, %if.end31.i.while.cond.i_crit_edge ]
  %17 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buf.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 %packet_size_sum.0.i
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i, align 4
  %payload_size4.i = getelementptr inbounds %struct.mux_pkt_header, ptr %add.ptr.i, i32 0, i32 2
  %21 = ptrtoint ptr %payload_size4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %payload_size4.i, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #7
  %packet_type5.i = getelementptr inbounds %struct.mux_pkt_header, ptr %add.ptr.i, i32 0, i32 3
  %24 = ptrtoint ptr %packet_type5.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %packet_type5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1514672805, i32 %20)
  %cmp.not.i = icmp eq i32 %20, 1514672805
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = tail call i32 @llvm.bswap.i32(i32 %20) #7
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %26) #10
  br label %if.else

if.end.i:                                         ; preds = %while.cond.i
  %add6.i = add i32 %23, 17
  %and.i = and i32 %add6.i, -4
  %sub.i = sub i32 %16, %packet_size_sum.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %and.i)
  %cmp7.i = icmp ult i32 %sub.i, %and.i
  br i1 %cmp7.i, label %do.end11.i, label %if.end14.i

do.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %27 = tail call i16 @llvm.bswap.i16(i16 %25) #7
  %conv.i33 = zext i16 %27 to i32
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %23, i32 noundef %16, i32 noundef %conv.i33) #10
  br label %if.else

if.end14.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4336, i16 %25)
  %switch.selectcmp.i.i = icmp eq i16 %25, 4336
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 1, i32 -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 4592, i16 %25)
  %switch.selectcmp8.i.i = icmp eq i16 %25, 4592
  %switch.select9.i.i = select i1 %switch.selectcmp8.i.i, i32 0, i32 %switch.select.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.select9.i.i)
  %cmp16.i = icmp slt i32 %switch.select9.i.i, 0
  br i1 %cmp16.i, label %do.end21.i, label %if.end24.i

do.end21.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %switch.select9.i.i) #10
  br label %if.else

if.end24.i:                                       ; preds = %if.end14.i
  %28 = ptrtoint ptr %callback.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %callback.i, align 4
  %data.i = getelementptr inbounds %struct.mux_pkt_header, ptr %add.ptr.i, i32 0, i32 4
  %30 = ptrtoint ptr %tty_dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tty_dev.i, align 4
  %call25.i = tail call i32 %29(ptr noundef %data.i, i32 noundef %23, i32 noundef %switch.select9.i.i, ptr noundef %31, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i)
  %cmp26.i = icmp eq i32 %call25.i, 1
  br i1 %cmp26.i, label %up_to_host.exit.thread37, label %if.end31.i

up_to_host.exit.thread37:                         ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %offset.i, align 4
  %add30.i = add i32 %33, %packet_size_sum.0.i
  store i32 %add30.i, ptr %offset.i, align 4
  br label %do.end21

if.end31.i:                                       ; preds = %if.end24.i
  %add32.i = add i32 %and.i, %packet_size_sum.0.i
  %sub33.i = sub i32 %16, %add32.i
  %cmp34.i = icmp ult i32 %sub33.i, 17
  br i1 %cmp34.i, label %up_to_host.exit, label %if.end31.i.while.cond.i_crit_edge

if.end31.i.while.cond.i_crit_edge:                ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

up_to_host.exit:                                  ; preds = %if.end31.i
  %34 = ptrtoint ptr %callback.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %callback.i, align 4
  %36 = ptrtoint ptr %tty_dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tty_dev.i, align 4
  %call39.i = tail call i32 %35(ptr noundef null, i32 noundef 0, i32 noundef %switch.select9.i.i, ptr noundef %37, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call39.i)
  %cmp16 = icmp eq i32 %call39.i, 1
  br i1 %cmp16, label %up_to_host.exit.do.end21_crit_edge, label %up_to_host.exit.if.else_crit_edge

up_to_host.exit.if.else_crit_edge:                ; preds = %up_to_host.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

up_to_host.exit.do.end21_crit_edge:               ; preds = %up_to_host.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end21

do.end21:                                         ; preds = %up_to_host.exit.do.end21_crit_edge, %up_to_host.exit.thread37
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #10
  br label %if.end24

if.else:                                          ; preds = %up_to_host.exit.if.else_crit_edge, %do.end21.i, %do.end11.i, %do.end.i
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %free_list_lock.i) #7
  %38 = ptrtoint ptr %prev.i.i34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i34, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %add.ptr12, ptr noundef %39, ptr noundef %rx_free_list.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else.put_rx_struct.exit_crit_edge

if.else.put_rx_struct.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_rx_struct.exit

if.end.i.i.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %prev.i.i34 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr12, ptr %prev.i.i34, align 4
  %41 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %rx_free_list.i, ptr %add.ptr12, align 4
  %prev3.i.i.i = getelementptr i8, ptr %2, i32 -12
  %42 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev3.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %add.ptr12, ptr %39, align 4
  br label %put_rx_struct.exit

put_rx_struct.exit:                               ; preds = %if.end.i.i.i, %if.else.put_rx_struct.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %free_list_lock.i, i32 noundef %call2.i) #7
  br label %if.end24

if.end24:                                         ; preds = %put_rx_struct.exit, %do.end21
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %to_host_lock) #7
  %44 = ptrtoint ptr %rx1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %rx1, align 4
  %cmp.i.not = icmp eq ptr %45, %rx1
  br i1 %cmp.i.not, label %if.end24.if.then_crit_edge, label %if.end24.if.end_crit_edge

if.end24.if.end_crit_edge:                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end24.if.then_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gdm_mux_send_complete(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -104, i32 %3)
  %cmp = icmp eq i32 %3, -104
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.31) #10
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.end.cleanup_crit_edge, label %do.end.cleanup.sink.split_crit_edge

do.end.cleanup.sink.split_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %callback = getelementptr inbounds %struct.mux_tx, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %callback, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %cb_data = getelementptr inbounds %struct.mux_tx, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %cb_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cb_data, align 4
  tail call void %7(ptr noundef %9) #7
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %tobool.not.i11 = icmp eq ptr %1, null
  br i1 %tobool.not.i11, label %if.end4.cleanup_crit_edge, label %if.end4.cleanup.sink.split_crit_edge

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end4.cleanup.sink.split_crit_edge, %do.end.cleanup.sink.split_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void @usb_free_urb(ptr noundef %11) #7
  %buf.i12 = getelementptr inbounds %struct.mux_tx, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %buf.i12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buf.i12, align 4
  tail call void @kfree(ptr noundef %13) #7
  tail call void @kfree(ptr noundef nonnull %1) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end4.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gdm_mux_rcv_complete(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %mux_dev1 = getelementptr inbounds %struct.mux_rx, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %mux_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mux_dev1, align 4
  %rx2 = getelementptr inbounds %struct.mux_dev, ptr %3, i32 0, i32 3
  %submit_list_lock.i = getelementptr inbounds %struct.mux_dev, ptr %3, i32 0, i32 3, i32 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %submit_list_lock.i) #7
  %rx_submit_list.i = getelementptr inbounds %struct.mux_dev, ptr %3, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %rx_submit_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_submit_list.i, align 4
  %cmp13.not33.i = icmp eq ptr %5, %rx_submit_list.i
  br i1 %cmp13.not33.i, label %entry.remove_rx_submit_list.exit_crit_edge, label %for.body.lr.ph.i

entry.remove_rx_submit_list.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %remove_rx_submit_list.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %rx_submit_list17.i = getelementptr inbounds %struct.mux_rx, ptr %1, i32 0, i32 1
  %prev.i.i.i = getelementptr inbounds %struct.mux_rx, ptr %1, i32 0, i32 1, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn.in34.i = phi ptr [ %5, %for.body.lr.ph.i ], [ %.pn35.i, %for.inc.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %.pn.in34.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn35.i = load ptr, ptr %.pn.in34.i, align 4
  %r_remove.0.i = getelementptr i8, ptr %.pn.in34.i, i32 -8
  %cmp15.i = icmp eq ptr %r_remove.0.i, %1
  br i1 %cmp15.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %rx_submit_list17.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
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
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %list_del.exit.i, %for.body.i.for.inc.i_crit_edge
  %cmp13.not.i = icmp eq ptr %.pn35.i, %rx_submit_list.i
  br i1 %cmp13.not.i, label %for.inc.i.remove_rx_submit_list.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.remove_rx_submit_list.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %remove_rx_submit_list.exit

remove_rx_submit_list.exit:                       ; preds = %for.inc.i.remove_rx_submit_list.exit_crit_edge, %entry.remove_rx_submit_list.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %submit_list_lock.i, i32 noundef %call2.i) #7
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %15 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %remove_rx_submit_list.exit
  %usb_state = getelementptr inbounds %struct.mux_dev, ptr %3, i32 0, i32 6
  %17 = ptrtoint ptr %usb_state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %usb_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp = icmp eq i32 %18, 0
  br i1 %cmp, label %do.end, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %dev4 = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef %16) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %free_list_lock.i = getelementptr inbounds %struct.mux_dev, ptr %3, i32 0, i32 3, i32 5
  %call2.i33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %free_list_lock.i) #7
  %rx_free_list.i = getelementptr inbounds %struct.mux_dev, ptr %3, i32 0, i32 3, i32 2
  %prev.i.i = getelementptr inbounds %struct.mux_dev, ptr %3, i32 0, i32 3, i32 2, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i34 = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %22, ptr noundef %rx_free_list.i) #7
  br i1 %call.i.i.i34, label %if.end.i.i.i35, label %if.end.put_rx_struct.exit_crit_edge

if.end.put_rx_struct.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_rx_struct.exit

if.end.i.i.i35:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %1, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %rx_free_list.i, ptr %1, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %1, ptr %22, align 4
  br label %put_rx_struct.exit

put_rx_struct.exit:                               ; preds = %if.end.i.i.i35, %if.end.put_rx_struct.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %free_list_lock.i, i32 noundef %call2.i33) #7
  br label %if.end18

if.else:                                          ; preds = %remove_rx_submit_list.exit
  %urb6 = getelementptr inbounds %struct.mux_rx, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %urb6 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %urb6, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %28, i32 0, i32 20
  %29 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %actual_length, align 4
  %len = getelementptr inbounds %struct.mux_rx, ptr %1, i32 0, i32 7
  %31 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %len, align 4
  %to_host_lock = getelementptr inbounds %struct.mux_dev, ptr %3, i32 0, i32 3, i32 3
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %to_host_lock) #7
  %to_host_list = getelementptr inbounds %struct.mux_rx, ptr %1, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.mux_dev, ptr %3, i32 0, i32 3, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %to_host_list, ptr noundef %33, ptr noundef %rx2) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.else.list_add_tail.exit_crit_edge

if.else.list_add_tail.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %to_host_list, ptr %prev.i, align 4
  %35 = ptrtoint ptr %to_host_list to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %rx2, ptr %to_host_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.mux_rx, ptr %1, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev3.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %to_host_list, ptr %33, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.else.list_add_tail.exit_crit_edge
  %work_rx = getelementptr inbounds %struct.mux_dev, ptr %3, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %38 = load ptr, ptr @system_wq, align 4
  %call.i.i36 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %38, ptr noundef %work_rx) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %to_host_lock, i32 noundef %call10) #7
  br label %if.end18

if.end18:                                         ; preds = %list_add_tail.exit, %put_rx_struct.exit
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_lte_tty_driver() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106}
!llvm.module.flags = !{!107, !108, !109, !110, !111, !112, !113, !114}
!llvm.ident = !{!115}

!0 = !{ptr @__UNIQUE_ID_description234, !1, !"__UNIQUE_ID_description234", i1 false, i1 false}
!1 = !{!"../drivers/staging/gdm724x/gdm_mux.c", i32 667, i32 1}
!2 = !{ptr @__UNIQUE_ID_license235, !3, !"__UNIQUE_ID_license235", i1 false, i1 false}
!3 = !{!"../drivers/staging/gdm724x/gdm_mux.c", i32 668, i32 1}
!4 = !{ptr @id_table, !5, !"id_table", i1 false, i1 false}
!5 = !{!"../drivers/staging/gdm724x/gdm_mux.c", i32 31, i32 35}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/gdm724x/gdm_mux.c", i32 655, i32 9}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/gdm724x/gdm_mux.c", i32 637, i32 10}
!10 = !{ptr @gdm_mux_driver, !11, !"gdm_mux_driver", i1 false, i1 false}
!11 = !{!"../drivers/staging/gdm724x/gdm_mux.c", i32 636, i32 26}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/gdm724x/gdm_mux.c", i32 509, i32 2}
!14 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @gdm_mux_probe._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @gdm_mux_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @init_usb.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/staging/gdm724x/gdm_mux.c", i32 470, i32 2}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @init_usb.__key.6, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/staging/gdm724x/gdm_mux.c", i32 474, i32 2}
!23 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @init_usb.__key.8, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/staging/gdm724x/gdm_mux.c", i32 475, i32 2}
!26 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @init_usb.__key.10, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/staging/gdm724x/gdm_mux.c", i32 476, i32 2}
!29 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @init_usb.__key.12, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/staging/gdm724x/gdm_mux.c", i32 488, i32 2}
!32 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @init_usb.__key.14, !31, !"__key", i1 false, i1 false}
!34 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/staging/gdm724x/gdm_mux.c", i32 227, i32 4}
!37 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @do_rx._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @do_rx._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/staging/gdm724x/gdm_mux.c", i32 161, i32 4}
!42 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @up_to_host._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @up_to_host._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/staging/gdm724x/gdm_mux.c", i32 168, i32 4}
!47 = !{ptr @up_to_host._entry.20, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @up_to_host._entry_ptr.22, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/staging/gdm724x/gdm_mux.c", i32 175, i32 4}
!51 = !{ptr @up_to_host._entry.23, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @up_to_host._entry_ptr.25, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @packet_type_for_tty_index, !54, !"packet_type_for_tty_index", i1 false, i1 false}
!54 = !{!"../drivers/staging/gdm724x/gdm_mux.c", i32 19, i32 12}
!55 = !{ptr @gdm_mux_send.seq_num, !56, !"seq_num", i1 false, i1 false}
!56 = !{!"../drivers/staging/gdm724x/gdm_mux.c", i32 349, i32 13}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/staging/gdm724x/gdm_mux.c", i32 366, i32 3}
!59 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @gdm_mux_send._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @gdm_mux_send._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/staging/gdm724x/gdm_mux.c", i32 398, i32 3}
!64 = !{ptr @gdm_mux_send._entry.28, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @gdm_mux_send._entry_ptr.30, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/staging/gdm724x/gdm_mux.c", i32 331, i32 3}
!68 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @gdm_mux_send_complete._entry, !67, !"_entry", i1 false, i1 false}
!72 = !{ptr @gdm_mux_send_complete._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/staging/gdm724x/gdm_mux.c", i32 282, i32 3}
!75 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @gdm_mux_recv._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @gdm_mux_recv._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/staging/gdm724x/gdm_mux.c", i32 288, i32 3}
!80 = !{ptr @gdm_mux_recv._entry.37, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @gdm_mux_recv._entry_ptr.39, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/staging/gdm724x/gdm_mux.c", i32 318, i32 3}
!84 = !{ptr @gdm_mux_recv._entry.40, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @gdm_mux_recv._entry_ptr.42, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/staging/gdm724x/gdm_mux.c", i32 258, i32 4}
!88 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @gdm_mux_rcv_complete._entry, !87, !"_entry", i1 false, i1 false}
!91 = !{ptr @gdm_mux_rcv_complete._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/staging/gdm724x/gdm_mux.c", i32 424, i32 3}
!94 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @gdm_mux_send_control._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @gdm_mux_send_control._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/staging/gdm724x/gdm_mux.c", i32 596, i32 3}
!99 = !{ptr @.str.49, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @gdm_mux_suspend._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @gdm_mux_suspend._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/staging/gdm724x/gdm_mux.c", i32 624, i32 3}
!104 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @gdm_mux_resume._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @gdm_mux_resume._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{i32 1, !"wchar_size", i32 2}
!108 = !{i32 1, !"min_enum_size", i32 4}
!109 = !{i32 8, !"branch-target-enforcement", i32 0}
!110 = !{i32 8, !"sign-return-address", i32 0}
!111 = !{i32 8, !"sign-return-address-all", i32 0}
!112 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!113 = !{i32 7, !"uwtable", i32 1}
!114 = !{i32 7, !"frame-pointer", i32 2}
!115 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
