; ModuleID = '/llk/IR_all_yes/drivers/net/can/usb/ucan.c_pt.bc'
source_filename = "../drivers/net/can/usb/ucan.c"
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
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.ucan_ctl_cmd_device_info = type <{ i32, i8, i8, i8, i8, i8, i8, i16, i32, i32, i16, i16, i16 }>
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.144, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.144 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ucan_priv = type { %struct.can_priv, ptr, ptr, ptr, %struct.spinlock, i8, i8, i8, i16, %struct.usb_anchor, %struct.usb_anchor, ptr, %struct.ucan_device_info, %struct.spinlock, i32, ptr }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.can_clock = type { i32 }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.ucan_device_info = type { %struct.can_bittiming_const, i8 }
%struct.can_bittiming_const = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ucan_ctl_cmd_set_bittiming = type { i32, i16, i16, i8, i8, i8, i8 }
%struct.ucan_urb_context = type { ptr, i8 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
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
%struct.canfd_frame = type { i32, i8, i8, i8, i8, [64 x i8] }
%struct.can_skb_priv = type { i32, i32, i32, [4 x i8], [0 x %struct.can_frame] }
%struct.can_frame = type { i32, %union.anon.148, i8, i8, i8, [8 x i8] }
%union.anon.148 = type { i8 }
%struct.ucan_message_out = type { i16, i8, i8, %union.anon.149 }
%union.anon.149 = type { %struct.ucan_can_msg }
%struct.ucan_can_msg = type { i32, %union.anon.147 }
%union.anon.147 = type { [8 x i8] }
%struct.ucan_message_in = type { i16, i8, i8, %union.anon.146 }
%union.anon.146 = type { %struct.ucan_can_msg }
%struct.ucan_tx_complete_entry_t = type { i8, i8 }

@__initcall__kmod_ucan__470_1600_ucan_driver_init6 = internal global ptr @ucan_driver_init, section ".initcall6.init", align 4
@ucan_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @ucan_probe, ptr @ucan_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ucan_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_ucan_driver_exit = internal global ptr @ucan_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file471 = internal constant [35 x i8] c"ucan.file=drivers/net/can/usb/ucan\00", section ".modinfo", align 1
@__UNIQUE_ID_license472 = internal constant [20 x i8] c"ucan.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author473 = internal constant [68 x i8] c"ucan.author=Martin Elshuber <martin.elshuber@theobroma-systems.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author474 = internal constant [78 x i8] c"ucan.author=Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description475 = internal constant [59 x i8] c"ucan.description=Driver for Theobroma Systems UCAN devices\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ucan\00", [27 x i8] zeroinitializer }, align 32
@ucan_table = internal global { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 1027, i16 8852, i16 16986, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 1027, i16 8852, i16 16987, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@ucan_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1331, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: probing device on interface #%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ucan_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/net/can/usb/ucan.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ucan_probe._entry_ptr = internal global ptr @ucan_probe._entry, section ".printk_index", align 4
@ucan_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1337, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: invalid EP count (%d)\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ucan_probe._entry_ptr.9 = internal global ptr @ucan_probe._entry.6, section ".printk_index", align 4
@ucan_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1370, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: invalid endpoint configuration\0A\00", [60 x i8] zeroinitializer }, align 32
@ucan_probe._entry_ptr.12 = internal global ptr @ucan_probe._entry.10, section ".printk_index", align 4
@ucan_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 1375, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: invalid in_ep MaxPacketSize\0A\00", [63 x i8] zeroinitializer }, align 32
@ucan_probe._entry_ptr.15 = internal global ptr @ucan_probe._entry.13, section ".printk_index", align 4
@ucan_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 1380, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: invalid out_ep MaxPacketSize\0A\00", [62 x i8] zeroinitializer }, align 32
@ucan_probe._entry_ptr.18 = internal global ptr @ucan_probe._entry.16, section ".printk_index", align 4
@ucan_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 1402, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: failed to allocate control pipe memory\0A\00", [52 x i8] zeroinitializer }, align 32
@ucan_probe._entry_ptr.21 = internal global ptr @ucan_probe._entry.19, section ".printk_index", align 4
@ucan_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 1428, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: could not read protocol version, ret=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@ucan_probe._entry_ptr.24 = internal global ptr @ucan_probe._entry.22, section ".printk_index", align 4
@ucan_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 1441, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: device protocol version %d is not supported\0A\00", [47 x i8] zeroinitializer }, align 32
@ucan_probe._entry_ptr.27 = internal global ptr @ucan_probe._entry.25, section ".printk_index", align 4
@ucan_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 1463, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: failed to retrieve device info\0A\00", [60 x i8] zeroinitializer }, align 32
@ucan_probe._entry_ptr.30 = internal global ptr @ucan_probe._entry.28, section ".printk_index", align 4
@ucan_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.2, ptr @.str.3, i32 1468, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: device reported invalid device info\0A\00", [55 x i8] zeroinitializer }, align 32
@ucan_probe._entry_ptr.33 = internal global ptr @ucan_probe._entry.31, section ".printk_index", align 4
@ucan_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.2, ptr @.str.3, i32 1474, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: device reported invalid tx-fifo size\0A\00", [54 x i8] zeroinitializer }, align 32
@ucan_probe._entry_ptr.36 = internal global ptr @ucan_probe._entry.34, section ".printk_index", align 4
@ucan_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.2, ptr @.str.3, i32 1490, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: cannot allocate candev\0A\00", [36 x i8] zeroinitializer }, align 32
@ucan_probe._entry_ptr.39 = internal global ptr @ucan_probe._entry.37, section ".printk_index", align 4
@ucan_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&up->context_lock\00", [46 x i8] zeroinitializer }, align 32
@ucan_probe.__key.41 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&up->echo_skb_lock\00", [45 x i8] zeroinitializer }, align 32
@ucan_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @ucan_open, ptr @ucan_close, ptr @ucan_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @can_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"registered device\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"firmware string: %s\0A\00", [43 x i8] zeroinitializer }, align 32
@ucan_probe._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.2, ptr @.str.3, i32 1566, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: probe failed; try to update the device firmware\0A\00", [43 x i8] zeroinitializer }, align 32
@ucan_probe._entry_ptr.48 = internal global ptr @ucan_probe._entry.46, section ".printk_index", align 4
@ucan_set_mode.__UNIQUE_ID_ddebug469 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.3, ptr @.str.50, i8 1, i8 62, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ucan_set_mode\00", [18 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"restarting device\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"could not start device, code: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"could not stop device, code: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"could not reset device, code: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Not enough memory to allocate tx contexts\0A\00", [53 x i8] zeroinitializer }, align 32
@ucan_read_bulk_callback.__UNIQUE_ID_ddebug468 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.3, ptr @.str.56, i8 0, i8 -76, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ucan_read_bulk_callback\00", [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"not resubmitting urb; status: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"invalid message (short; no hdr; l:%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"invalid message (short; no data; l:%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"raw data: \00", [21 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid message (type; t:%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed resubmitting read bulk urb: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid input message len: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"unexpected bits set (canid %x, mask %x)\00", [56 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"invalid tx complete length\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"invalid echo_index %d received\0A\00", [32 x i8] zeroinitializer }, align 32
@ucan_release_context.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.67 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"could not submit urb; code: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@ucan_start_xmit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.68 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"xmit err: failed to release context\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"xmit err: failed to submit urb %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"xmit drop: failed to release context\0A\00", [58 x i8] zeroinitializer }, align 32
@can_skb_headroom_valid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.71 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/can/skb.h\00", [40 x i8] zeroinitializer }, align 32
@ucan_alloc_context.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.72 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no memory left for URBs\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"no memory left for USB buffer\0A\00", [33 x i8] zeroinitializer }, align 32
@ucan_write_bulk_callback.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ucan_write_bulk_callback.__already_done.74 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.75 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"failed to transmit USB message to device: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"urb failed, failed to release context\0A\00", [57 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@init_usb_anchor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.77 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->wait\00", [18 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key.78 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.79 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->lock\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 12, i64 13]
@__sancov_gen_cov_switch_values.80 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 4294967188, i64 4294967225, i64 4294967234, i64 4294967264, i64 4294967294]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.82 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.83 = private unnamed_addr constant [12 x i8] c"ucan_driver\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1593, i32 26 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1600, i32 1 }
@___asan_gen_.89 = private unnamed_addr constant [11 x i8] c"ucan_table\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1583, i32 29 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1328, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1335, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1369, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1374, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1379, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1400, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1426, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1439, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1462, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1467, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1472, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1489, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1512, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1513, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant [16 x i8] c"ucan_netdev_ops\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1229, i32 36 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1553, i32 26 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1554, i32 26 }
@___asan_gen_.200 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1564, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1273, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1000, i32 7 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1027, i32 7 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1037, i32 7 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 337, i32 7 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 719, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 738, i32 9 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 751, i32 9 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 753, i32 19 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 754, i32 12 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 774, i32 9 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 800, i32 7 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 577, i32 27 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 601, i32 9 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 645, i32 26 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 656, i32 8 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 937, i32 8 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1153, i32 8 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1166, i32 9 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1183, i32 7 }
@___asan_gen_.273 = private unnamed_addr constant [27 x i8] c"../include/linux/can/skb.h\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 104, i32 6 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1060, i32 26 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1069, i32 26 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 842, i32 8 }
@___asan_gen_.285 = private constant [30 x i8] c"../drivers/net/can/usb/ucan.c\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 855, i32 8 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1367, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.296 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.297 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1368, i32 2 }
@llvm.compiler.used = appending global [93 x ptr] [ptr @__UNIQUE_ID_author473, ptr @__UNIQUE_ID_author474, ptr @__UNIQUE_ID_description475, ptr @__UNIQUE_ID_file471, ptr @__UNIQUE_ID_license472, ptr @__exitcall_ucan_driver_exit, ptr @__initcall__kmod_ucan__470_1600_ucan_driver_init6, ptr @ucan_driver_exit, ptr @ucan_probe._entry, ptr @ucan_probe._entry.10, ptr @ucan_probe._entry.13, ptr @ucan_probe._entry.16, ptr @ucan_probe._entry.19, ptr @ucan_probe._entry.22, ptr @ucan_probe._entry.25, ptr @ucan_probe._entry.28, ptr @ucan_probe._entry.31, ptr @ucan_probe._entry.34, ptr @ucan_probe._entry.37, ptr @ucan_probe._entry.46, ptr @ucan_probe._entry.6, ptr @ucan_probe._entry_ptr, ptr @ucan_probe._entry_ptr.12, ptr @ucan_probe._entry_ptr.15, ptr @ucan_probe._entry_ptr.18, ptr @ucan_probe._entry_ptr.21, ptr @ucan_probe._entry_ptr.24, ptr @ucan_probe._entry_ptr.27, ptr @ucan_probe._entry_ptr.30, ptr @ucan_probe._entry_ptr.33, ptr @ucan_probe._entry_ptr.36, ptr @ucan_probe._entry_ptr.39, ptr @ucan_probe._entry_ptr.48, ptr @ucan_probe._entry_ptr.9, ptr @ucan_driver, ptr @.str, ptr @ucan_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @ucan_probe.__key, ptr @.str.40, ptr @ucan_probe.__key.41, ptr @.str.42, ptr @ucan_netdev_ops, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @init_usb_anchor.__key, ptr @.str.77, ptr @init_usb_anchor.__key.78, ptr @.str.79], section "llvm.metadata"
@0 = internal global [72 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucan_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucan_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucan_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucan_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucan_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucan_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucan_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucan_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucan_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucan_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucan_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucan_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucan_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucan_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucan_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucan_probe.__key.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucan_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucan_probe._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ucan_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @ucan_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ucan_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_deregister(ptr noundef nonnull @ucan_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucan_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %firmware_str = alloca [129 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 129, ptr nonnull %firmware_str) #9
  %0 = call ptr @memset(ptr %firmware_str, i32 255, i32 129)
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %1 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %2, i32 -128
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %3 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cur_altsetting, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %entry
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bInterfaceNumber, align 2
  %conv = zext i8 %6 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef %conv) #12
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %4, i32 0, i32 4
  %7 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp.not = icmp eq i8 %8, 2
  br i1 %cmp.not, label %for.cond.preheader, label %do.end7

for.cond.preheader:                               ; preds = %do.end
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %4, i32 0, i32 3
  %9 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %endpoint, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bEndpointAddress, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp20.not = icmp sgt i8 %12, -1
  %bmAttributes37 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %10, i32 0, i32 3
  %13 = ptrtoint ptr %bmAttributes37 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bmAttributes37, align 1
  %15 = and i8 %14, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cmp40 = icmp eq i8 %15, 2
  br i1 %cmp20.not, label %land.lhs.true36, label %land.lhs.true

do.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv2 = zext i8 %8 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str, i32 noundef %conv2) #12
  br label %do.end208

land.lhs.true:                                    ; preds = %for.cond.preheader
  br i1 %cmp40, label %if.then26, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then26:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %and29 = and i8 %12, 15
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %10, i32 0, i32 4
  %16 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %wMaxPacketSize, align 1
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  br label %for.inc

land.lhs.true36:                                  ; preds = %for.cond.preheader
  br i1 %cmp40, label %if.then42, label %land.lhs.true36.for.inc_crit_edge

land.lhs.true36.for.inc_crit_edge:                ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then42:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #11
  %and45 = and i8 %12, 15
  %wMaxPacketSize47 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %10, i32 0, i32 4
  %19 = ptrtoint ptr %wMaxPacketSize47 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %wMaxPacketSize47, align 1
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  br label %for.inc

for.inc:                                          ; preds = %if.then42, %land.lhs.true36.for.inc_crit_edge, %if.then26, %land.lhs.true.for.inc_crit_edge
  %in_ep_size.1 = phi i16 [ %18, %if.then26 ], [ 0, %if.then42 ], [ 0, %land.lhs.true36.for.inc_crit_edge ], [ 0, %land.lhs.true.for.inc_crit_edge ]
  %out_ep_size.1 = phi i16 [ 0, %if.then26 ], [ %21, %if.then42 ], [ 0, %land.lhs.true36.for.inc_crit_edge ], [ 0, %land.lhs.true.for.inc_crit_edge ]
  %in_ep_addr.1 = phi i8 [ %and29, %if.then26 ], [ 0, %if.then42 ], [ 0, %land.lhs.true36.for.inc_crit_edge ], [ 0, %land.lhs.true.for.inc_crit_edge ]
  %out_ep_addr.1 = phi i8 [ 0, %if.then26 ], [ %and45, %if.then42 ], [ 0, %land.lhs.true36.for.inc_crit_edge ], [ 0, %land.lhs.true.for.inc_crit_edge ]
  %bEndpointAddress.1 = getelementptr %struct.usb_host_endpoint, ptr %10, i32 1, i32 0, i32 2
  %22 = ptrtoint ptr %bEndpointAddress.1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bEndpointAddress.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %23)
  %cmp20.not.1 = icmp sgt i8 %23, -1
  %bmAttributes37.1 = getelementptr %struct.usb_host_endpoint, ptr %10, i32 1, i32 0, i32 3
  %24 = ptrtoint ptr %bmAttributes37.1 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bmAttributes37.1, align 1
  %26 = and i8 %25, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %26)
  %cmp40.1 = icmp eq i8 %26, 2
  br i1 %cmp20.not.1, label %land.lhs.true36.1, label %land.lhs.true.1

land.lhs.true.1:                                  ; preds = %for.inc
  br i1 %cmp40.1, label %if.then26.1, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.then26.1:                                      ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #11
  %and29.1 = and i8 %23, 15
  %wMaxPacketSize.1 = getelementptr %struct.usb_host_endpoint, ptr %10, i32 1, i32 0, i32 4
  %27 = ptrtoint ptr %wMaxPacketSize.1 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %wMaxPacketSize.1, align 1
  %29 = tail call i16 @llvm.bswap.i16(i16 %28)
  br label %for.inc.1

land.lhs.true36.1:                                ; preds = %for.inc
  br i1 %cmp40.1, label %if.then42.1, label %land.lhs.true36.1.for.inc.1_crit_edge

land.lhs.true36.1.for.inc.1_crit_edge:            ; preds = %land.lhs.true36.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.then42.1:                                      ; preds = %land.lhs.true36.1
  call void @__sanitizer_cov_trace_pc() #11
  %and45.1 = and i8 %23, 15
  %wMaxPacketSize47.1 = getelementptr %struct.usb_host_endpoint, ptr %10, i32 1, i32 0, i32 4
  %30 = ptrtoint ptr %wMaxPacketSize47.1 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %wMaxPacketSize47.1, align 1
  %32 = tail call i16 @llvm.bswap.i16(i16 %31)
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then42.1, %land.lhs.true36.1.for.inc.1_crit_edge, %if.then26.1, %land.lhs.true.1.for.inc.1_crit_edge
  %in_ep_size.1.1 = phi i16 [ %29, %if.then26.1 ], [ %in_ep_size.1, %if.then42.1 ], [ %in_ep_size.1, %land.lhs.true36.1.for.inc.1_crit_edge ], [ %in_ep_size.1, %land.lhs.true.1.for.inc.1_crit_edge ]
  %out_ep_size.1.1 = phi i16 [ %out_ep_size.1, %if.then26.1 ], [ %32, %if.then42.1 ], [ %out_ep_size.1, %land.lhs.true36.1.for.inc.1_crit_edge ], [ %out_ep_size.1, %land.lhs.true.1.for.inc.1_crit_edge ]
  %in_ep_addr.1.1 = phi i8 [ %and29.1, %if.then26.1 ], [ %in_ep_addr.1, %if.then42.1 ], [ %in_ep_addr.1, %land.lhs.true36.1.for.inc.1_crit_edge ], [ %in_ep_addr.1, %land.lhs.true.1.for.inc.1_crit_edge ]
  %out_ep_addr.1.1 = phi i8 [ %out_ep_addr.1, %if.then26.1 ], [ %and45.1, %if.then42.1 ], [ %out_ep_addr.1, %land.lhs.true36.1.for.inc.1_crit_edge ], [ %out_ep_addr.1, %land.lhs.true.1.for.inc.1_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %in_ep_addr.1.1)
  %tobool50.not = icmp eq i8 %in_ep_addr.1.1, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %out_ep_addr.1.1)
  %tobool51.not = icmp eq i8 %out_ep_addr.1.1, 0
  %or.cond = select i1 %tobool50.not, i1 true, i1 %tobool51.not
  br i1 %or.cond, label %do.end55, label %if.end57

do.end55:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str) #12
  br label %do.end208

if.end57:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %in_ep_size.1.1)
  %cmp59 = icmp ult i16 %in_ep_size.1.1, 16
  br i1 %cmp59, label %do.end64, label %if.end66

do.end64:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str) #12
  br label %do.end208

if.end66:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %out_ep_size.1.1)
  %cmp68 = icmp ult i16 %out_ep_size.1.1, 16
  br i1 %cmp68, label %do.end73, label %if.end75

do.end73:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str) #12
  br label %do.end208

if.end75:                                         ; preds = %if.end66
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 128, i32 noundef 3520) #9
  %tobool78.not = icmp eq ptr %call.i, null
  br i1 %tobool78.not, label %do.end82, label %if.end84

do.end82:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str) #12
  br label %cleanup

if.end84:                                         ; preds = %if.end75
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %34, 8
  %or86 = or i32 %shl.i, -2147483520
  %35 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bInterfaceNumber, align 2
  %conv89 = zext i8 %36 to i16
  %call90 = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or86, i8 noundef zeroext 5, i8 noundef zeroext -63, i16 noundef zeroext 1, i16 noundef zeroext %conv89, ptr noundef nonnull %call.i, i16 noundef zeroext 128, i32 noundef 1000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call90)
  %cmp91.not = icmp eq i32 %call90, 4
  br i1 %cmp91.not, label %if.end102, label %do.end96

do.end96:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str, i32 noundef %call90) #12
  br label %do.end208

if.end102:                                        ; preds = %if.end84
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %call.i, align 1
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %cmp103 = icmp ugt i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %38)
  %cmp106.not = icmp eq i32 %38, 50331648
  %or.cond317 = select i1 %cmp103, i1 %cmp106.not, i1 false
  br i1 %or.cond317, label %if.end113, label %do.end111

do.end111:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str, i32 noundef %39) #12
  br label %do.end208

if.end113:                                        ; preds = %if.end102
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr.i, align 8
  %shl.i318 = shl i32 %41, 8
  %or116 = or i32 %shl.i318, -2147483520
  %42 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %bInterfaceNumber, align 2
  %conv119 = zext i8 %43 to i16
  %call120 = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or116, i8 noundef zeroext 5, i8 noundef zeroext -63, i16 noundef zeroext 0, i16 noundef zeroext %conv119, ptr noundef nonnull %call.i, i16 noundef zeroext 26, i32 noundef 1000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %cmp121 = icmp slt i32 %call120, 0
  br i1 %cmp121, label %do.end126, label %if.end128

do.end126:                                        ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str) #12
  br label %do.end208

if.end128:                                        ; preds = %if.end113
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %call120)
  %cmp129 = icmp ult i32 %call120, 26
  br i1 %cmp129, label %do.end134, label %if.end136

do.end134:                                        ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str) #12
  br label %do.end208

if.end136:                                        ; preds = %if.end128
  %tx_fifo = getelementptr inbounds %struct.ucan_ctl_cmd_device_info, ptr %call.i, i32 0, i32 1
  %44 = ptrtoint ptr %tx_fifo to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %tx_fifo, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp138 = icmp eq i8 %45, 0
  br i1 %cmp138, label %do.end143, label %if.end145

do.end143:                                        ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str) #12
  br label %do.end208

if.end145:                                        ; preds = %if.end136
  %conv137 = zext i8 %45 to i32
  %call148 = tail call ptr @alloc_candev_mqs(i32 noundef 708, i32 noundef %conv137, i32 noundef 1, i32 noundef 1) #9
  %tobool149.not = icmp eq ptr %call148, null
  br i1 %tobool149.not, label %do.end153, label %if.end155

do.end153:                                        ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str) #12
  br label %cleanup

if.end155:                                        ; preds = %if.end145
  %add.ptr.i319 = getelementptr i8, ptr %call148, i32 2304
  %udev157 = getelementptr i8, ptr %call148, i32 2616
  %46 = ptrtoint ptr %udev157 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %add.ptr.i, ptr %udev157, align 4
  %intf158 = getelementptr i8, ptr %call148, i32 2620
  %47 = ptrtoint ptr %intf158 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %intf, ptr %intf158, align 4
  %netdev159 = getelementptr i8, ptr %call148, i32 2624
  %48 = ptrtoint ptr %netdev159 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call148, ptr %netdev159, align 4
  %49 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %bInterfaceNumber, align 2
  %intf_index = getelementptr i8, ptr %call148, i32 2672
  %51 = ptrtoint ptr %intf_index to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %intf_index, align 4
  %in_ep_addr162 = getelementptr i8, ptr %call148, i32 2673
  %52 = ptrtoint ptr %in_ep_addr162 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %in_ep_addr.1.1, ptr %in_ep_addr162, align 1
  %out_ep_addr163 = getelementptr i8, ptr %call148, i32 2674
  %53 = ptrtoint ptr %out_ep_addr163 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %out_ep_addr.1.1, ptr %out_ep_addr163, align 2
  %in_ep_size164 = getelementptr i8, ptr %call148, i32 2676
  %54 = ptrtoint ptr %in_ep_size164 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %in_ep_size.1.1, ptr %in_ep_size164, align 4
  %ctl_msg_buffer165 = getelementptr i8, ptr %call148, i32 2904
  %55 = ptrtoint ptr %ctl_msg_buffer165 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.i, ptr %ctl_msg_buffer165, align 4
  %context_array = getelementptr i8, ptr %call148, i32 3008
  %56 = ptrtoint ptr %context_array to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %context_array, align 4
  %available_tx_urbs = getelementptr i8, ptr %call148, i32 3004
  %57 = ptrtoint ptr %available_tx_urbs to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %available_tx_urbs, align 4
  %state = getelementptr i8, ptr %call148, i32 2472
  %58 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 4, ptr %state, align 4
  %device_info = getelementptr i8, ptr %call148, i32 2908
  %bittiming_const167 = getelementptr i8, ptr %call148, i32 2332
  %59 = ptrtoint ptr %bittiming_const167 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %device_info, ptr %bittiming_const167, align 4
  %do_set_bittiming = getelementptr i8, ptr %call148, i32 2588
  %60 = ptrtoint ptr %do_set_bittiming to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @ucan_set_bittiming, ptr %do_set_bittiming, align 4
  %do_set_mode = getelementptr i8, ptr %call148, i32 2596
  %61 = ptrtoint ptr %do_set_mode to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @ucan_set_mode, ptr %do_set_mode, align 4
  %context_lock = getelementptr i8, ptr %call148, i32 2960
  tail call void @__raw_spin_lock_init(ptr noundef %context_lock, ptr noundef nonnull @.str.40, ptr noundef nonnull @ucan_probe.__key, i16 noundef signext 3) #9
  %echo_skb_lock = getelementptr i8, ptr %call148, i32 2628
  tail call void @__raw_spin_lock_init(ptr noundef %echo_skb_lock, ptr noundef nonnull @.str.42, ptr noundef nonnull @ucan_probe.__key.41, i16 noundef signext 3) #9
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call148, i32 0, i32 16
  %62 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @ucan_netdev_ops, ptr %netdev_ops, align 8
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %63 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %add.ptr.i319, ptr %driver_data.i.i, align 4
  %dev178 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %parent = getelementptr inbounds %struct.net_device, ptr %call148, i32 0, i32 133, i32 1
  %64 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %dev178, ptr %parent, align 8
  %65 = ptrtoint ptr %call.i to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %call.i, align 1
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #9
  %clock.i = getelementptr i8, ptr %call148, i32 2440
  %68 = ptrtoint ptr %clock.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %clock.i, align 4
  %69 = ptrtoint ptr %tx_fifo to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %tx_fifo, align 1
  %tx_fifo4.i = getelementptr i8, ptr %call148, i32 2956
  %71 = ptrtoint ptr %tx_fifo4.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %tx_fifo4.i, align 4
  %72 = call ptr @memcpy(ptr %device_info, ptr @.str, i32 5)
  %tseg1_min.i = getelementptr inbounds %struct.ucan_ctl_cmd_device_info, ptr %call.i, i32 0, i32 3
  %73 = ptrtoint ptr %tseg1_min.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %tseg1_min.i, align 1
  %conv.i = zext i8 %74 to i32
  %tseg1_min5.i = getelementptr i8, ptr %call148, i32 2924
  %75 = ptrtoint ptr %tseg1_min5.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %conv.i, ptr %tseg1_min5.i, align 4
  %tseg1_max.i = getelementptr inbounds %struct.ucan_ctl_cmd_device_info, ptr %call.i, i32 0, i32 4
  %76 = ptrtoint ptr %tseg1_max.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %tseg1_max.i, align 1
  %conv6.i = zext i8 %77 to i32
  %tseg1_max7.i = getelementptr i8, ptr %call148, i32 2928
  %78 = ptrtoint ptr %tseg1_max7.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %conv6.i, ptr %tseg1_max7.i, align 4
  %tseg2_min.i = getelementptr inbounds %struct.ucan_ctl_cmd_device_info, ptr %call.i, i32 0, i32 5
  %79 = ptrtoint ptr %tseg2_min.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %tseg2_min.i, align 1
  %conv8.i = zext i8 %80 to i32
  %tseg2_min9.i = getelementptr i8, ptr %call148, i32 2932
  %81 = ptrtoint ptr %tseg2_min9.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %conv8.i, ptr %tseg2_min9.i, align 4
  %tseg2_max.i = getelementptr inbounds %struct.ucan_ctl_cmd_device_info, ptr %call.i, i32 0, i32 6
  %82 = ptrtoint ptr %tseg2_max.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %tseg2_max.i, align 1
  %conv10.i = zext i8 %83 to i32
  %tseg2_max11.i = getelementptr i8, ptr %call148, i32 2936
  %84 = ptrtoint ptr %tseg2_max11.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %conv10.i, ptr %tseg2_max11.i, align 4
  %sjw_max.i = getelementptr inbounds %struct.ucan_ctl_cmd_device_info, ptr %call.i, i32 0, i32 2
  %85 = ptrtoint ptr %sjw_max.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %sjw_max.i, align 1
  %conv12.i = zext i8 %86 to i32
  %sjw_max13.i = getelementptr i8, ptr %call148, i32 2940
  %87 = ptrtoint ptr %sjw_max13.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %conv12.i, ptr %sjw_max13.i, align 4
  %brp_min.i = getelementptr inbounds %struct.ucan_ctl_cmd_device_info, ptr %call.i, i32 0, i32 8
  %88 = ptrtoint ptr %brp_min.i to i32
  call void @__asan_loadN_noabort(i32 %88, i32 4)
  %89 = load i32, ptr %brp_min.i, align 1
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #9
  %brp_min14.i = getelementptr i8, ptr %call148, i32 2944
  %91 = ptrtoint ptr %brp_min14.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %brp_min14.i, align 4
  %brp_max.i = getelementptr inbounds %struct.ucan_ctl_cmd_device_info, ptr %call.i, i32 0, i32 9
  %92 = ptrtoint ptr %brp_max.i to i32
  call void @__asan_loadN_noabort(i32 %92, i32 4)
  %93 = load i32, ptr %brp_max.i, align 1
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #9
  %brp_max15.i = getelementptr i8, ptr %call148, i32 2948
  %95 = ptrtoint ptr %brp_max15.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %brp_max15.i, align 4
  %brp_inc.i = getelementptr inbounds %struct.ucan_ctl_cmd_device_info, ptr %call.i, i32 0, i32 7
  %96 = ptrtoint ptr %brp_inc.i to i32
  call void @__asan_loadN_noabort(i32 %96, i32 2)
  %97 = load i16, ptr %brp_inc.i, align 1
  %98 = tail call i16 @llvm.bswap.i16(i16 %97) #9
  %conv16.i = zext i16 %98 to i32
  %brp_inc17.i = getelementptr i8, ptr %call148, i32 2952
  %99 = ptrtoint ptr %brp_inc17.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %conv16.i, ptr %brp_inc17.i, align 4
  %ctrlmodes18.i = getelementptr inbounds %struct.ucan_ctl_cmd_device_info, ptr %call.i, i32 0, i32 10
  %100 = ptrtoint ptr %ctrlmodes18.i to i32
  call void @__asan_loadN_noabort(i32 %100, i32 2)
  %101 = load i16, ptr %ctrlmodes18.i, align 1
  %102 = tail call i16 @llvm.bswap.i16(i16 %101) #9
  %ctrlmode_supported.i = getelementptr i8, ptr %call148, i32 2480
  %conv20.i = zext i16 %102 to i32
  %103 = and i32 %conv20.i, 7
  %104 = ptrtoint ptr %ctrlmode_supported.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %ctrlmode_supported.i, align 4
  %and40.i = and i32 %conv20.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  br i1 %tobool41.not.i, label %if.end155.if.end46.i_crit_edge, label %if.then42.i

if.end155.if.end46.i_crit_edge:                   ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

if.then42.i:                                      ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #11
  %105 = ptrtoint ptr %ctrlmode_supported.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %ctrlmode_supported.i, align 4
  %or45.i = or i32 %106, 8
  store i32 %or45.i, ptr %ctrlmode_supported.i, align 4
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then42.i, %if.end155.if.end46.i_crit_edge
  %and48.i = and i32 %conv20.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool49.not.i = icmp eq i32 %and48.i, 0
  br i1 %tobool49.not.i, label %if.end46.i.ucan_parse_device_info.exit_crit_edge, label %if.then50.i

if.end46.i.ucan_parse_device_info.exit_crit_edge: ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ucan_parse_device_info.exit

if.then50.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #11
  %107 = ptrtoint ptr %ctrlmode_supported.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %ctrlmode_supported.i, align 4
  %or53.i = or i32 %108, 16
  store i32 %or53.i, ptr %ctrlmode_supported.i, align 4
  br label %ucan_parse_device_info.exit

ucan_parse_device_info.exit:                      ; preds = %if.then50.i, %if.end46.i.ucan_parse_device_info.exit_crit_edge
  %109 = ptrtoint ptr %udev157 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %udev157, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %110, align 8
  %shl.i.i = shl i32 %112, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %113 = ptrtoint ptr %ctl_msg_buffer165 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ctl_msg_buffer165, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %110, i32 noundef %or2.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %114, i16 noundef zeroext 128, i32 noundef 1000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp181 = icmp sgt i32 %call3.i, 0
  br i1 %cmp181, label %if.then183, label %if.else188

if.then183:                                       ; preds = %ucan_parse_device_info.exit
  call void @__sanitizer_cov_trace_pc() #11
  %115 = ptrtoint ptr %ctl_msg_buffer165 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ctl_msg_buffer165, align 4
  %call186 = call ptr @strncpy(ptr noundef nonnull %firmware_str, ptr noundef %116, i32 noundef 128)
  %arrayidx187 = getelementptr inbounds [129 x i8], ptr %firmware_str, i32 0, i32 128
  %117 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 0, ptr %arrayidx187, align 8
  br label %if.end191

if.else188:                                       ; preds = %ucan_parse_device_info.exit
  call void @__sanitizer_cov_trace_pc() #11
  %118 = ptrtoint ptr %firmware_str to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 8461818871936413184, ptr %firmware_str, align 8
  br label %if.end191

if.end191:                                        ; preds = %if.else188, %if.then183
  %119 = ptrtoint ptr %udev157 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %udev157, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %120, align 8
  %shl.i.i321 = shl i32 %122, 8
  %or.i = or i32 %shl.i.i321, -2147483648
  %123 = ptrtoint ptr %intf_index to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %intf_index, align 4
  %conv.i322 = zext i8 %124 to i16
  %125 = ptrtoint ptr %ctl_msg_buffer165 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %ctl_msg_buffer165, align 4
  %call2.i = call i32 @usb_control_msg(ptr noundef %120, i32 noundef %or.i, i8 noundef zeroext 4, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext %conv.i322, ptr noundef %126, i16 noundef zeroext 0, i32 noundef 1000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp193 = icmp slt i32 %call2.i, 0
  br i1 %cmp193, label %if.end191.err_free_candev_crit_edge, label %if.end196

if.end191.err_free_candev_crit_edge:              ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_candev

if.end196:                                        ; preds = %if.end191
  %rx_urbs = getelementptr i8, ptr %call148, i32 2680
  call fastcc void @init_usb_anchor(ptr noundef %rx_urbs)
  %tx_urbs = getelementptr i8, ptr %call148, i32 2792
  call fastcc void @init_usb_anchor(ptr noundef %tx_urbs)
  %127 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 4, ptr %state, align 4
  %call199 = call i32 @register_candev(ptr noundef nonnull %call148) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call199)
  %tobool200.not = icmp eq i32 %call199, 0
  br i1 %tobool200.not, label %if.end202, label %if.end196.err_free_candev_crit_edge

if.end196.err_free_candev_crit_edge:              ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_candev

if.end202:                                        ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #11
  %128 = ptrtoint ptr %netdev159 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %netdev159, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %129, ptr noundef nonnull @.str.44) #12
  %130 = ptrtoint ptr %netdev159 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %netdev159, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %131, ptr noundef nonnull @.str.45, ptr noundef nonnull %firmware_str) #12
  br label %cleanup

err_free_candev:                                  ; preds = %if.end196.err_free_candev_crit_edge, %if.end191.err_free_candev_crit_edge
  %ret.0 = phi i32 [ %call2.i, %if.end191.err_free_candev_crit_edge ], [ %call199, %if.end196.err_free_candev_crit_edge ]
  call void @free_candev(ptr noundef nonnull %call148) #9
  br label %cleanup

do.end208:                                        ; preds = %do.end143, %do.end134, %do.end126, %do.end111, %do.end96, %do.end73, %do.end64, %do.end55, %do.end7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end208, %err_free_candev, %if.end202, %do.end153, %do.end82, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end208 ], [ %ret.0, %err_free_candev ], [ 0, %if.end202 ], [ -12, %do.end153 ], [ -12, %do.end82 ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 129, ptr nonnull %firmware_str) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ucan_disconnect(ptr nocapture noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %netdev = getelementptr inbounds %struct.ucan_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  tail call void @unregister_netdev(ptr noundef %3) #9
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 4
  tail call void @free_candev(ptr noundef %5) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_candev_mqs(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucan_set_bittiming(ptr nocapture noundef readonly %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctl_msg_buffer = getelementptr i8, ptr %netdev, i32 2904
  %0 = ptrtoint ptr %ctl_msg_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctl_msg_buffer, align 4
  %tq = getelementptr i8, ptr %netdev, i32 2348
  %2 = ptrtoint ptr %tq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tq, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %4, ptr %1, align 1
  %brp = getelementptr i8, ptr %netdev, i32 2368
  %6 = ptrtoint ptr %brp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %brp, align 4
  %conv = trunc i32 %7 to i16
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %brp4 = getelementptr inbounds %struct.ucan_ctl_cmd_set_bittiming, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %brp4 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 %8, ptr %brp4, align 1
  %sample_point = getelementptr i8, ptr %netdev, i32 2344
  %10 = ptrtoint ptr %sample_point to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sample_point, align 4
  %conv7 = trunc i32 %11 to i16
  %12 = tail call i16 @llvm.bswap.i16(i16 %conv7)
  %sample_point8 = getelementptr inbounds %struct.ucan_ctl_cmd_set_bittiming, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %sample_point8 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %12, ptr %sample_point8, align 1
  %prop_seg = getelementptr i8, ptr %netdev, i32 2352
  %14 = ptrtoint ptr %prop_seg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %prop_seg, align 4
  %conv11 = trunc i32 %15 to i8
  %prop_seg12 = getelementptr inbounds %struct.ucan_ctl_cmd_set_bittiming, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %prop_seg12 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv11, ptr %prop_seg12, align 1
  %phase_seg1 = getelementptr i8, ptr %netdev, i32 2356
  %17 = ptrtoint ptr %phase_seg1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %phase_seg1, align 4
  %conv15 = trunc i32 %18 to i8
  %phase_seg116 = getelementptr inbounds %struct.ucan_ctl_cmd_set_bittiming, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %phase_seg116 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv15, ptr %phase_seg116, align 1
  %phase_seg2 = getelementptr i8, ptr %netdev, i32 2360
  %20 = ptrtoint ptr %phase_seg2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %phase_seg2, align 4
  %conv19 = trunc i32 %21 to i8
  %phase_seg220 = getelementptr inbounds %struct.ucan_ctl_cmd_set_bittiming, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %phase_seg220 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv19, ptr %phase_seg220, align 1
  %sjw = getelementptr i8, ptr %netdev, i32 2364
  %23 = ptrtoint ptr %sjw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sjw, align 4
  %conv23 = trunc i32 %24 to i8
  %sjw24 = getelementptr inbounds %struct.ucan_ctl_cmd_set_bittiming, ptr %1, i32 0, i32 6
  %25 = ptrtoint ptr %sjw24 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv23, ptr %sjw24, align 1
  %udev.i = getelementptr i8, ptr %netdev, i32 2616
  %26 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %udev.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 8
  %shl.i.i = shl i32 %29, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %intf_index.i = getelementptr i8, ptr %netdev, i32 2672
  %30 = ptrtoint ptr %intf_index.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %intf_index.i, align 4
  %conv.i = zext i8 %31 to i16
  %32 = ptrtoint ptr %ctl_msg_buffer to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctl_msg_buffer, align 4
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %27, i32 noundef %or.i, i8 noundef zeroext 7, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext %conv.i, ptr noundef %33, i16 noundef zeroext 12, i32 noundef 1000) #9
  %34 = tail call i32 @llvm.smin.i32(i32 %call2.i, i32 0)
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucan_set_mode(ptr noundef %netdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cond = icmp eq i32 %mode, 1
  br i1 %cond, label %do.body1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body1:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ucan_set_mode.__UNIQUE_ID_ddebug469, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ucan_set_mode, %do.end8)) #9
          to label %if.then [label %do.end8], !srcloc !168

if.then:                                          ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  %netdev6 = getelementptr i8, ptr %netdev, i32 2624
  %0 = ptrtoint ptr %netdev6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev6, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ucan_set_mode.__UNIQUE_ID_ddebug469, ptr noundef %1, ptr noundef nonnull @.str.50) #9
  br label %do.end8

do.end8:                                          ; preds = %if.then, %do.body1
  %udev.i = getelementptr i8, ptr %netdev, i32 2616
  %2 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %5, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %intf_index.i = getelementptr i8, ptr %netdev, i32 2672
  %6 = ptrtoint ptr %intf_index.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %intf_index.i, align 4
  %conv.i = zext i8 %7 to i16
  %ctl_msg_buffer.i = getelementptr i8, ptr %netdev, i32 2904
  %8 = ptrtoint ptr %ctl_msg_buffer.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctl_msg_buffer.i, align 4
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext %conv.i, ptr noundef %9, i16 noundef zeroext 0, i32 noundef 1000) #9
  %state = getelementptr i8, ptr %netdev, i32 2472
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %state, align 4
  %context_lock = getelementptr i8, ptr %netdev, i32 2960
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %context_lock) #9
  %available_tx_urbs = getelementptr i8, ptr %netdev, i32 3004
  %11 = ptrtoint ptr %available_tx_urbs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %available_tx_urbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp19.not = icmp eq i32 %12, 0
  br i1 %cmp19.not, label %do.end8.if.end23_crit_edge, label %if.then21

do.end8.if.end23_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then21:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  %netdev22 = getelementptr i8, ptr %netdev, i32 2624
  %13 = ptrtoint ptr %netdev22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev22, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 103
  %15 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %16) #9
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %do.end8.if.end23_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %context_lock, i32 noundef %call14) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2.i, %if.end23 ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_usb_anchor(ptr noundef %anchor) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = getelementptr inbounds i8, ptr %anchor, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 104)
  %2 = ptrtoint ptr %anchor to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %anchor, ptr %anchor, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %anchor, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %anchor, ptr %prev.i, align 4
  %wait = getelementptr inbounds %struct.usb_anchor, ptr %anchor, i32 0, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.77, ptr noundef nonnull @init_usb_anchor.__key) #9
  %lock = getelementptr inbounds %struct.usb_anchor, ptr %anchor, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.79, ptr noundef nonnull @init_usb_anchor.__key.78, i16 noundef signext 3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucan_open(ptr noundef %netdev) #2 align 64 {
entry:
  %urbs = alloca [8 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %urbs) #9
  %0 = getelementptr inbounds [8 x ptr], ptr %urbs, i32 0, i32 1
  %1 = getelementptr inbounds [8 x ptr], ptr %urbs, i32 0, i32 2
  %2 = getelementptr inbounds [8 x ptr], ptr %urbs, i32 0, i32 3
  %3 = getelementptr inbounds [8 x ptr], ptr %urbs, i32 0, i32 4
  %4 = getelementptr inbounds [8 x ptr], ptr %urbs, i32 0, i32 5
  %5 = getelementptr inbounds [8 x ptr], ptr %urbs, i32 0, i32 6
  %6 = getelementptr inbounds [8 x ptr], ptr %urbs, i32 0, i32 7
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %context_array.i.i = getelementptr i8, ptr %netdev, i32 3008
  %7 = ptrtoint ptr %context_array.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %context_array.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %entry.ucan_release_context_array.exit.i_crit_edge, label %if.end.i.i

entry.ucan_release_context_array.exit.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ucan_release_context_array.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %available_tx_urbs.i.i = getelementptr i8, ptr %netdev, i32 3004
  %9 = ptrtoint ptr %available_tx_urbs.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %available_tx_urbs.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %8) #9
  %10 = ptrtoint ptr %context_array.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %context_array.i.i, align 4
  br label %ucan_release_context_array.exit.i

ucan_release_context_array.exit.i:                ; preds = %if.end.i.i, %entry.ucan_release_context_array.exit.i_crit_edge
  %tx_fifo.i = getelementptr i8, ptr %netdev, i32 2956
  %11 = ptrtoint ptr %tx_fifo.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tx_fifo.i, align 4
  %conv.i = zext i8 %12 to i32
  %13 = shl nuw nsw i32 %conv.i, 3
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %13, i32 noundef 3520) #13
  %14 = ptrtoint ptr %context_array.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call8.i.i.i, ptr %context_array.i.i, align 4
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %ucan_alloc_context_array.exit, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %ucan_release_context_array.exit.i
  %15 = ptrtoint ptr %tx_fifo.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tx_fifo.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp29.not.i = icmp eq i8 %16, 0
  br i1 %cmp29.not.i, label %for.cond.preheader.i.if.end_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end_crit_edge:            ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.030.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %17 = ptrtoint ptr %context_array.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %context_array.i.i, align 4
  %allocated.i = getelementptr %struct.ucan_urb_context, ptr %18, i32 %i.030.i, i32 1
  %19 = ptrtoint ptr %allocated.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %allocated.i, align 4
  %20 = load ptr, ptr %context_array.i.i, align 4
  %arrayidx8.i = getelementptr %struct.ucan_urb_context, ptr %20, i32 %i.030.i
  %21 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr.i, ptr %arrayidx8.i, align 4
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %22 = ptrtoint ptr %tx_fifo.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %tx_fifo.i, align 4
  %conv4.i = zext i8 %23 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv4.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %if.end.loopexit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

ucan_alloc_context_array.exit:                    ; preds = %ucan_release_context_array.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %netdev.i = getelementptr i8, ptr %netdev, i32 2624
  %24 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %netdev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %25, ptr noundef nonnull @.str.54) #12
  br label %cleanup

if.end.loopexit:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv4.i.le = zext i8 %23 to i32
  br label %if.end

if.end:                                           ; preds = %if.end.loopexit, %for.cond.preheader.i.if.end_crit_edge
  %.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.if.end_crit_edge ], [ %conv4.i.le, %if.end.loopexit ]
  %available_tx_urbs.i = getelementptr i8, ptr %netdev, i32 3004
  %26 = ptrtoint ptr %available_tx_urbs.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.lcssa.i, ptr %available_tx_urbs.i, align 4
  %27 = call ptr @memset(ptr %urbs, i32 0, i32 32)
  %udev.i = getelementptr i8, ptr %netdev, i32 2616
  %in_ep_size.i = getelementptr i8, ptr %netdev, i32 2676
  %in_ep_addr.i = getelementptr i8, ptr %netdev, i32 2673
  %rx_urbs.i = getelementptr i8, ptr %netdev, i32 2680
  br label %for.body.i107

for.body.i107:                                    ; preds = %for.inc.i.for.body.i107_crit_edge, %if.end
  %i.050.i = phi i32 [ 0, %if.end ], [ %inc.i109, %for.inc.i.for.body.i107_crit_edge ]
  %call.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #9
  %arrayidx.i = getelementptr ptr, ptr %urbs, i32 %i.050.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %arrayidx.i, align 4
  %tobool.not.i106 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i106, label %for.body.i107.for.body.i.i.preheader_crit_edge, label %if.end.i

for.body.i107.for.body.i.i.preheader_crit_edge:   ; preds = %for.body.i107
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.preheader

if.end.i:                                         ; preds = %for.body.i107
  %29 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %udev.i, align 4
  %31 = ptrtoint ptr %in_ep_size.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %in_ep_size.i, align 4
  %conv.i108 = zext i16 %32 to i32
  %transfer_dma.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 15
  %call3.i = tail call ptr @usb_alloc_coherent(ptr noundef %30, i32 noundef %conv.i108, i32 noundef 3264, ptr noundef %transfer_dma.i) #9
  %tobool4.not.i = icmp eq ptr %call3.i, null
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i, align 4
  br i1 %tobool4.not.i, label %if.then5.i, label %for.inc.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_free_urb(ptr noundef %34) #9
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %arrayidx.i, align 4
  br label %for.body.i.i.preheader

for.body.i.i.preheader:                           ; preds = %if.then5.i, %for.body.i107.for.body.i.i.preheader_crit_edge
  br label %for.body.i.i

for.inc.i:                                        ; preds = %if.end.i
  %36 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %udev.i, align 4
  %38 = ptrtoint ptr %in_ep_addr.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %in_ep_addr.i, align 1
  %conv12.i = zext i8 %39 to i32
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %37, align 8
  %shl.i.i = shl i32 %41, 8
  %shl1.i.i = shl nuw nsw i32 %conv12.i, 15
  %or.i.i = or i32 %shl.i.i, %shl1.i.i
  %or14.i = or i32 %or.i.i, -1073741696
  %42 = ptrtoint ptr %in_ep_size.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %in_ep_size.i, align 4
  %conv16.i = zext i16 %43 to i32
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %34, i32 0, i32 8
  %44 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %37, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %34, i32 0, i32 10
  %45 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or14.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %34, i32 0, i32 14
  %46 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call3.i, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %34, i32 0, i32 19
  %47 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv16.i, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %34, i32 0, i32 28
  %48 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @ucan_read_bulk_callback, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %34, i32 0, i32 27
  %49 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %add.ptr.i, ptr %context4.i.i, align 4
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %51, i32 0, i32 13
  %52 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %transfer_flags.i, align 4
  %or18.i = or i32 %53, 4
  store i32 %or18.i, ptr %transfer_flags.i, align 4
  tail call void @usb_anchor_urb(ptr noundef %51, ptr noundef %rx_urbs.i) #9
  %inc.i109 = add nuw nsw i32 %i.050.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i109, 8
  br i1 %exitcond.not.i, label %if.end5, label %for.inc.i.for.body.i107_crit_edge

for.inc.i.for.body.i107_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i107

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.i.i.preheader
  %i.017.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.i.preheader ]
  %arrayidx.i.i = getelementptr ptr, ptr %urbs, i32 %i.017.i.i
  %54 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i110 = icmp eq ptr %55, null
  br i1 %tobool.not.i.i110, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_unanchor_urb(ptr noundef nonnull %55) #9
  %56 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %udev.i, align 4
  %58 = ptrtoint ptr %in_ep_size.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %in_ep_size.i, align 4
  %conv.i.i = zext i16 %59 to i32
  %60 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i.i, align 4
  %transfer_buffer.i.i = getelementptr inbounds %struct.urb, ptr %61, i32 0, i32 14
  %62 = ptrtoint ptr %transfer_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %transfer_buffer.i.i, align 4
  %transfer_dma.i.i = getelementptr inbounds %struct.urb, ptr %61, i32 0, i32 15
  %64 = ptrtoint ptr %transfer_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %transfer_dma.i.i, align 4
  tail call void @usb_free_coherent(ptr noundef %57, i32 noundef %conv.i.i, ptr noundef %63, i32 noundef %65) #9
  tail call void @usb_free_urb(ptr noundef %61) #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.017.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 8
  br i1 %exitcond.not.i.i, label %for.inc.i.i.err_contexts_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.err_contexts_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_contexts

if.end5:                                          ; preds = %for.inc.i
  %ctrlmode6 = getelementptr i8, ptr %netdev, i32 2476
  %66 = ptrtoint ptr %ctrlmode6 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ctrlmode6, align 4
  %68 = trunc i32 %67 to i16
  %69 = shl i16 %68, 8
  %70 = and i16 %69, 3840
  %71 = or i16 %70, 4096
  %ctl_msg_buffer = getelementptr i8, ptr %netdev, i32 2904
  %72 = ptrtoint ptr %ctl_msg_buffer to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ctl_msg_buffer, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_storeN_noabort(i32 %74, i32 2)
  store i16 %71, ptr %73, align 1
  %75 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %udev.i, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 8
  %shl.i.i113 = shl i32 %78, 8
  %or.i = or i32 %shl.i.i113, -2147483648
  %intf_index.i = getelementptr i8, ptr %netdev, i32 2672
  %79 = ptrtoint ptr %intf_index.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %intf_index.i, align 4
  %conv.i114 = zext i8 %80 to i16
  %81 = load ptr, ptr %ctl_msg_buffer, align 4
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %76, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext %conv.i114, ptr noundef %81, i16 noundef zeroext 2, i32 noundef 1000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %netdev44 = getelementptr i8, ptr %netdev, i32 2624
  %82 = ptrtoint ptr %netdev44 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %netdev44, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %83, ptr noundef nonnull @.str.51, i32 noundef %call2.i) #12
  br label %err_reset

if.end45:                                         ; preds = %if.end5
  %call46 = tail call i32 @open_candev(ptr noundef %netdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end45.err_stop_crit_edge

if.end45.err_stop_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_stop

if.end49:                                         ; preds = %if.end45
  %84 = ptrtoint ptr %urbs to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %urbs, align 4
  %call.i115 = tail call i32 @usb_submit_urb(ptr noundef %85, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115)
  %tobool.not.i116 = icmp eq i32 %call.i115, 0
  br i1 %tobool.not.i116, label %if.end.i132, label %if.end49.if.then.i118_crit_edge

if.end49.if.then.i118_crit_edge:                  ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i118

if.then.i118:                                     ; preds = %if.end.6.i.if.then.i118_crit_edge, %if.end.5.i.if.then.i118_crit_edge, %if.end.4.i.if.then.i118_crit_edge, %if.end.3.i.if.then.i118_crit_edge, %if.end.2.i.if.then.i118_crit_edge, %if.end.1.i.if.then.i118_crit_edge, %if.end.i132.if.then.i118_crit_edge, %if.end49.if.then.i118_crit_edge
  %call.lcssa.i = phi i32 [ %call.i115, %if.end49.if.then.i118_crit_edge ], [ %call.1.i, %if.end.i132.if.then.i118_crit_edge ], [ %call.2.i, %if.end.1.i.if.then.i118_crit_edge ], [ %call.3.i, %if.end.2.i.if.then.i118_crit_edge ], [ %call.4.i, %if.end.3.i.if.then.i118_crit_edge ], [ %call.5.i, %if.end.4.i.if.then.i118_crit_edge ], [ %call.6.i, %if.end.5.i.if.then.i118_crit_edge ], [ %call.7.i, %if.end.6.i.if.then.i118_crit_edge ]
  %netdev.i117 = getelementptr i8, ptr %netdev, i32 2624
  %86 = ptrtoint ptr %netdev.i117 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %netdev.i117, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %87, ptr noundef nonnull @.str.67, i32 noundef %call.lcssa.i) #12
  br label %for.body.i.i122

for.body.i.i122:                                  ; preds = %for.inc.i.i129.for.body.i.i122_crit_edge, %if.then.i118
  %i.017.i.i119 = phi i32 [ 0, %if.then.i118 ], [ %inc.i.i127, %for.inc.i.i129.for.body.i.i122_crit_edge ]
  %arrayidx.i.i120 = getelementptr ptr, ptr %urbs, i32 %i.017.i.i119
  %88 = ptrtoint ptr %arrayidx.i.i120 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx.i.i120, align 4
  %tobool.not.i.i121 = icmp eq ptr %89, null
  br i1 %tobool.not.i.i121, label %for.body.i.i122.for.inc.i.i129_crit_edge, label %if.then.i.i126

for.body.i.i122.for.inc.i.i129_crit_edge:         ; preds = %for.body.i.i122
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i129

if.then.i.i126:                                   ; preds = %for.body.i.i122
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_unanchor_urb(ptr noundef nonnull %89) #9
  %90 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %udev.i, align 4
  %92 = ptrtoint ptr %in_ep_size.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %in_ep_size.i, align 4
  %conv.i.i123 = zext i16 %93 to i32
  %94 = ptrtoint ptr %arrayidx.i.i120 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx.i.i120, align 4
  %transfer_buffer.i.i124 = getelementptr inbounds %struct.urb, ptr %95, i32 0, i32 14
  %96 = ptrtoint ptr %transfer_buffer.i.i124 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %transfer_buffer.i.i124, align 4
  %transfer_dma.i.i125 = getelementptr inbounds %struct.urb, ptr %95, i32 0, i32 15
  %98 = ptrtoint ptr %transfer_dma.i.i125 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %transfer_dma.i.i125, align 4
  tail call void @usb_free_coherent(ptr noundef %91, i32 noundef %conv.i.i123, ptr noundef %97, i32 noundef %99) #9
  tail call void @usb_free_urb(ptr noundef %95) #9
  br label %for.inc.i.i129

for.inc.i.i129:                                   ; preds = %if.then.i.i126, %for.body.i.i122.for.inc.i.i129_crit_edge
  %inc.i.i127 = add nuw nsw i32 %i.017.i.i119, 1
  %exitcond.not.i.i128 = icmp eq i32 %inc.i.i127, 8
  br i1 %exitcond.not.i.i128, label %ucan_submit_rx_urbs.exit, label %for.inc.i.i129.for.body.i.i122_crit_edge

for.inc.i.i129.for.body.i.i122_crit_edge:         ; preds = %for.inc.i.i129
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i122

if.end.i132:                                      ; preds = %if.end49
  %100 = ptrtoint ptr %urbs to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %urbs, align 4
  tail call void @usb_free_urb(ptr noundef %101) #9
  %102 = ptrtoint ptr %urbs to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %urbs, align 4
  %103 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %0, align 4
  %call.1.i = tail call i32 @usb_submit_urb(ptr noundef %104, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %if.end.1.i, label %if.end.i132.if.then.i118_crit_edge

if.end.i132.if.then.i118_crit_edge:               ; preds = %if.end.i132
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i118

if.end.1.i:                                       ; preds = %if.end.i132
  %105 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %0, align 4
  tail call void @usb_free_urb(ptr noundef %106) #9
  %107 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr null, ptr %0, align 4
  %108 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %1, align 4
  %call.2.i = tail call i32 @usb_submit_urb(ptr noundef %109, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %if.end.2.i, label %if.end.1.i.if.then.i118_crit_edge

if.end.1.i.if.then.i118_crit_edge:                ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i118

if.end.2.i:                                       ; preds = %if.end.1.i
  %110 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %1, align 4
  tail call void @usb_free_urb(ptr noundef %111) #9
  %112 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr null, ptr %1, align 4
  %113 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %2, align 4
  %call.3.i = tail call i32 @usb_submit_urb(ptr noundef %114, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool.not.3.i, label %if.end.3.i, label %if.end.2.i.if.then.i118_crit_edge

if.end.2.i.if.then.i118_crit_edge:                ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i118

if.end.3.i:                                       ; preds = %if.end.2.i
  %115 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %2, align 4
  tail call void @usb_free_urb(ptr noundef %116) #9
  %117 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %2, align 4
  %118 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %3, align 4
  %call.4.i = tail call i32 @usb_submit_urb(ptr noundef %119, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i)
  %tobool.not.4.i = icmp eq i32 %call.4.i, 0
  br i1 %tobool.not.4.i, label %if.end.4.i, label %if.end.3.i.if.then.i118_crit_edge

if.end.3.i.if.then.i118_crit_edge:                ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i118

if.end.4.i:                                       ; preds = %if.end.3.i
  %120 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %3, align 4
  tail call void @usb_free_urb(ptr noundef %121) #9
  %122 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr null, ptr %3, align 4
  %123 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %4, align 4
  %call.5.i = tail call i32 @usb_submit_urb(ptr noundef %124, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i)
  %tobool.not.5.i = icmp eq i32 %call.5.i, 0
  br i1 %tobool.not.5.i, label %if.end.5.i, label %if.end.4.i.if.then.i118_crit_edge

if.end.4.i.if.then.i118_crit_edge:                ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i118

if.end.5.i:                                       ; preds = %if.end.4.i
  %125 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %4, align 4
  tail call void @usb_free_urb(ptr noundef %126) #9
  %127 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr null, ptr %4, align 4
  %128 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %5, align 4
  %call.6.i = tail call i32 @usb_submit_urb(ptr noundef %129, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6.i)
  %tobool.not.6.i = icmp eq i32 %call.6.i, 0
  br i1 %tobool.not.6.i, label %if.end.6.i, label %if.end.5.i.if.then.i118_crit_edge

if.end.5.i.if.then.i118_crit_edge:                ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i118

if.end.6.i:                                       ; preds = %if.end.5.i
  %130 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %5, align 4
  tail call void @usb_free_urb(ptr noundef %131) #9
  %132 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr null, ptr %5, align 4
  %133 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %6, align 4
  %call.7.i = tail call i32 @usb_submit_urb(ptr noundef %134, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7.i)
  %tobool.not.7.i = icmp eq i32 %call.7.i, 0
  br i1 %tobool.not.7.i, label %ucan_submit_rx_urbs.exit.thread, label %if.end.6.i.if.then.i118_crit_edge

if.end.6.i.if.then.i118_crit_edge:                ; preds = %if.end.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i118

ucan_submit_rx_urbs.exit.thread:                  ; preds = %if.end.6.i
  call void @__sanitizer_cov_trace_pc() #11
  %135 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %6, align 4
  tail call void @usb_free_urb(ptr noundef %136) #9
  br label %if.end54

ucan_submit_rx_urbs.exit:                         ; preds = %for.inc.i.i129
  %137 = call ptr @memset(ptr %urbs, i32 0, i32 32)
  tail call void @usb_kill_anchored_urbs(ptr noundef %rx_urbs.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.lcssa.i)
  %tobool52.not = icmp eq i32 %call.lcssa.i, 0
  br i1 %tobool52.not, label %ucan_submit_rx_urbs.exit.if.end54_crit_edge, label %ucan_submit_rx_urbs.exit.err_stop_crit_edge

ucan_submit_rx_urbs.exit.err_stop_crit_edge:      ; preds = %ucan_submit_rx_urbs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_stop

ucan_submit_rx_urbs.exit.if.end54_crit_edge:      ; preds = %ucan_submit_rx_urbs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.end54:                                         ; preds = %ucan_submit_rx_urbs.exit.if.end54_crit_edge, %ucan_submit_rx_urbs.exit.thread
  %state = getelementptr i8, ptr %netdev, i32 2472
  %138 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 0, ptr %state, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %139 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %140, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  br label %cleanup

err_stop:                                         ; preds = %ucan_submit_rx_urbs.exit.err_stop_crit_edge, %if.end45.err_stop_crit_edge
  %ret.0 = phi i32 [ %call46, %if.end45.err_stop_crit_edge ], [ %call.lcssa.i, %ucan_submit_rx_urbs.exit.err_stop_crit_edge ]
  %141 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %udev.i, align 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %142, align 8
  %shl.i.i135 = shl i32 %144, 8
  %or.i136 = or i32 %shl.i.i135, -2147483648
  %145 = ptrtoint ptr %intf_index.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %intf_index.i, align 4
  %conv.i138 = zext i8 %146 to i16
  %147 = ptrtoint ptr %ctl_msg_buffer to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %ctl_msg_buffer, align 4
  %call2.i140 = tail call i32 @usb_control_msg(ptr noundef %142, i32 noundef %or.i136, i8 noundef zeroext 1, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext %conv.i138, ptr noundef %148, i16 noundef zeroext 0, i32 noundef 1000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i140)
  %cmp57 = icmp slt i32 %call2.i140, 0
  br i1 %cmp57, label %if.then59, label %err_stop.err_reset_crit_edge

err_stop.err_reset_crit_edge:                     ; preds = %err_stop
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_reset

if.then59:                                        ; preds = %err_stop
  call void @__sanitizer_cov_trace_pc() #11
  %netdev60 = getelementptr i8, ptr %netdev, i32 2624
  %149 = ptrtoint ptr %netdev60 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %netdev60, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %150, ptr noundef nonnull @.str.52, i32 noundef %call2.i140) #12
  br label %err_reset

err_reset:                                        ; preds = %if.then59, %err_stop.err_reset_crit_edge, %if.then43
  %ret.1 = phi i32 [ %call2.i, %if.then43 ], [ %ret.0, %if.then59 ], [ %ret.0, %err_stop.err_reset_crit_edge ]
  %151 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %udev.i, align 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %152, align 8
  %shl.i.i142 = shl i32 %154, 8
  %or.i143 = or i32 %shl.i.i142, -2147483648
  %155 = ptrtoint ptr %intf_index.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %intf_index.i, align 4
  %conv.i145 = zext i8 %156 to i16
  %157 = ptrtoint ptr %ctl_msg_buffer to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %ctl_msg_buffer, align 4
  %call2.i147 = tail call i32 @usb_control_msg(ptr noundef %152, i32 noundef %or.i143, i8 noundef zeroext 4, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext %conv.i145, ptr noundef %158, i16 noundef zeroext 0, i32 noundef 1000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i147)
  %cmp63 = icmp slt i32 %call2.i147, 0
  br i1 %cmp63, label %if.then65, label %err_reset.for.body.i152.preheader_crit_edge

err_reset.for.body.i152.preheader_crit_edge:      ; preds = %err_reset
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i152.preheader

if.then65:                                        ; preds = %err_reset
  call void @__sanitizer_cov_trace_pc() #11
  %netdev66 = getelementptr i8, ptr %netdev, i32 2624
  %159 = ptrtoint ptr %netdev66 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %netdev66, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %160, ptr noundef nonnull @.str.53, i32 noundef %call2.i147) #12
  br label %for.body.i152.preheader

for.body.i152.preheader:                          ; preds = %if.then65, %err_reset.for.body.i152.preheader_crit_edge
  br label %for.body.i152

for.body.i152:                                    ; preds = %for.inc.i158.for.body.i152_crit_edge, %for.body.i152.preheader
  %i.017.i = phi i32 [ %inc.i156, %for.inc.i158.for.body.i152_crit_edge ], [ 0, %for.body.i152.preheader ]
  %arrayidx.i150 = getelementptr ptr, ptr %urbs, i32 %i.017.i
  %161 = ptrtoint ptr %arrayidx.i150 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %arrayidx.i150, align 4
  %tobool.not.i151 = icmp eq ptr %162, null
  br i1 %tobool.not.i151, label %for.body.i152.for.inc.i158_crit_edge, label %if.then.i155

for.body.i152.for.inc.i158_crit_edge:             ; preds = %for.body.i152
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i158

if.then.i155:                                     ; preds = %for.body.i152
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_unanchor_urb(ptr noundef nonnull %162) #9
  %163 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %udev.i, align 4
  %165 = ptrtoint ptr %in_ep_size.i to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %in_ep_size.i, align 4
  %conv.i153 = zext i16 %166 to i32
  %167 = ptrtoint ptr %arrayidx.i150 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %arrayidx.i150, align 4
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %168, i32 0, i32 14
  %169 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %transfer_buffer.i, align 4
  %transfer_dma.i154 = getelementptr inbounds %struct.urb, ptr %168, i32 0, i32 15
  %171 = ptrtoint ptr %transfer_dma.i154 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %transfer_dma.i154, align 4
  tail call void @usb_free_coherent(ptr noundef %164, i32 noundef %conv.i153, ptr noundef %170, i32 noundef %172) #9
  tail call void @usb_free_urb(ptr noundef %168) #9
  br label %for.inc.i158

for.inc.i158:                                     ; preds = %if.then.i155, %for.body.i152.for.inc.i158_crit_edge
  %inc.i156 = add nuw nsw i32 %i.017.i, 1
  %exitcond.not.i157 = icmp eq i32 %inc.i156, 8
  br i1 %exitcond.not.i157, label %for.inc.i158.err_contexts_crit_edge, label %for.inc.i158.for.body.i152_crit_edge

for.inc.i158.for.body.i152_crit_edge:             ; preds = %for.inc.i158
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i152

for.inc.i158.err_contexts_crit_edge:              ; preds = %for.inc.i158
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_contexts

err_contexts:                                     ; preds = %for.inc.i158.err_contexts_crit_edge, %for.inc.i.i.err_contexts_crit_edge
  %ret.2 = phi i32 [ -12, %for.inc.i.i.err_contexts_crit_edge ], [ %ret.1, %for.inc.i158.err_contexts_crit_edge ]
  %173 = ptrtoint ptr %context_array.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %context_array.i.i, align 4
  %tobool.not.i160 = icmp eq ptr %174, null
  br i1 %tobool.not.i160, label %err_contexts.cleanup_crit_edge, label %if.end.i162

err_contexts.cleanup_crit_edge:                   ; preds = %err_contexts
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i162:                                      ; preds = %err_contexts
  call void @__sanitizer_cov_trace_pc() #11
  %175 = ptrtoint ptr %available_tx_urbs.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 0, ptr %available_tx_urbs.i, align 4
  tail call void @kfree(ptr noundef nonnull %174) #9
  %176 = ptrtoint ptr %context_array.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr null, ptr %context_array.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i162, %err_contexts.cleanup_crit_edge, %if.end54, %ucan_alloc_context_array.exit
  %retval.0 = phi i32 [ 0, %if.end54 ], [ -12, %ucan_alloc_context_array.exit ], [ %ret.2, %err_contexts.cleanup_crit_edge ], [ %ret.2, %if.end.i162 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %urbs) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucan_close(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr i8, ptr %netdev, i32 2472
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4, ptr %state, align 4
  %tx_urbs = getelementptr i8, ptr %netdev, i32 2792
  tail call void @usb_kill_anchored_urbs(ptr noundef %tx_urbs) #9
  %rx_urbs = getelementptr i8, ptr %netdev, i32 2680
  tail call void @usb_kill_anchored_urbs(ptr noundef %rx_urbs) #9
  %udev.i = getelementptr i8, ptr %netdev, i32 2616
  %1 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %udev.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %shl.i.i = shl i32 %4, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %intf_index.i = getelementptr i8, ptr %netdev, i32 2672
  %5 = ptrtoint ptr %intf_index.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %intf_index.i, align 4
  %conv.i = zext i8 %6 to i16
  %ctl_msg_buffer.i = getelementptr i8, ptr %netdev, i32 2904
  %7 = ptrtoint ptr %ctl_msg_buffer.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctl_msg_buffer.i, align 4
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %2, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext %conv.i, ptr noundef %8, i16 noundef zeroext 0, i32 noundef 1000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %netdev2 = getelementptr i8, ptr %netdev, i32 2624
  %9 = ptrtoint ptr %netdev2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev2, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str.52, i32 noundef %call2.i) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %udev.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i.i22 = shl i32 %14, 8
  %or.i23 = or i32 %shl.i.i22, -2147483648
  %15 = ptrtoint ptr %intf_index.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %intf_index.i, align 4
  %conv.i25 = zext i8 %16 to i16
  %17 = ptrtoint ptr %ctl_msg_buffer.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctl_msg_buffer.i, align 4
  %call2.i27 = tail call i32 @usb_control_msg(ptr noundef %12, i32 noundef %or.i23, i8 noundef zeroext 4, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext %conv.i25, ptr noundef %18, i16 noundef zeroext 0, i32 noundef 1000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i27)
  %cmp4 = icmp slt i32 %call2.i27, 0
  br i1 %cmp4, label %if.then5, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %netdev6 = getelementptr i8, ptr %netdev, i32 2624
  %19 = ptrtoint ptr %netdev6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %netdev6, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %20, ptr noundef nonnull @.str.53, i32 noundef %call2.i27) #12
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %21 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %22, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  %context_array.i = getelementptr i8, ptr %netdev, i32 3008
  %23 = ptrtoint ptr %context_array.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %context_array.i, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.end7.ucan_release_context_array.exit_crit_edge, label %if.end.i

if.end7.ucan_release_context_array.exit_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %ucan_release_context_array.exit

if.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %available_tx_urbs.i = getelementptr i8, ptr %netdev, i32 3004
  %25 = ptrtoint ptr %available_tx_urbs.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %available_tx_urbs.i, align 4
  tail call void @kfree(ptr noundef nonnull %24) #9
  %26 = ptrtoint ptr %context_array.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %context_array.i, align 4
  br label %ucan_release_context_array.exit

ucan_release_context_array.exit:                  ; preds = %if.end.i, %if.end7.ucan_release_context_array.exit_crit_edge
  %netdev8 = getelementptr i8, ptr %netdev, i32 2624
  %27 = ptrtoint ptr %netdev8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %netdev8, align 4
  tail call void @close_candev(ptr noundef %28) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucan_start_xmit(ptr noundef %skb, ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %2 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %protocol.i, align 8
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %entry.can_dropped_invalid_skb.exit_crit_edge [
    i16 12, label %if.then.i
    i16 13, label %if.then14.i
  ]

entry.can_dropped_invalid_skb.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %can_dropped_invalid_skb.exit

if.then.i:                                        ; preds = %entry
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %6)
  %cmp2.not.i = icmp eq i32 %6, 16
  br i1 %cmp2.not.i, label %lor.rhs.i, label %if.then.i.can_dropped_invalid_skb.exit_crit_edge, !prof !169

if.then.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %can_dropped_invalid_skb.exit

lor.rhs.i:                                        ; preds = %if.then.i
  %len4.i = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %len4.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %len4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %8)
  %cmp6.i = icmp ugt i8 %8, 8
  br i1 %cmp6.i, label %lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs.i.if.end34.i_crit_edge, !prof !170

lor.rhs.i.if.end34.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %can_dropped_invalid_skb.exit

if.then14.i:                                      ; preds = %entry
  %len15.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len15.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %10)
  %cmp16.not.i = icmp eq i32 %10, 72
  br i1 %cmp16.not.i, label %lor.rhs18.i, label %if.then14.i.can_dropped_invalid_skb.exit_crit_edge, !prof !169

if.then14.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %can_dropped_invalid_skb.exit

lor.rhs18.i:                                      ; preds = %if.then14.i
  %len19.i = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %len19.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %len19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %12)
  %cmp21.i = icmp ugt i8 %12, 64
  br i1 %cmp21.i, label %lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs18.i.if.end34.i_crit_edge, !prof !170

lor.rhs18.i.if.end34.i_crit_edge:                 ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %can_dropped_invalid_skb.exit

if.end34.i:                                       ; preds = %lor.rhs18.i.if.end34.i_crit_edge, %lor.rhs.i.if.end34.i_crit_edge
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %13 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp ult i32 %sub.ptr.sub.i.i.i, 16
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end37.i.i

land.rhs.i.i:                                     ; preds = %if.end34.i
  %.b70.i.i = load i1, ptr @can_skb_headroom_valid.__already_done, align 1
  br i1 %.b70.i.i, label %land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge, label %if.then.i.i, !prof !169

land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %can_dropped_invalid_skb.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @can_skb_headroom_valid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 104, i32 noundef 9, ptr noundef null) #9
  br label %can_dropped_invalid_skb.exit

if.end37.i.i:                                     ; preds = %if.end34.i
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %15 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %16 = and i16 %bf.load.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp38.i.i = icmp eq i16 %16, 0
  br i1 %cmp38.i.i, label %if.then40.i.i, label %if.end37.i.i.if.end_crit_edge

if.end37.i.i.if.end_crit_edge:                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then40.i.i:                                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %ifindex.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 17
  %17 = ptrtoint ptr %ifindex.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ifindex.i.i, align 4
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %14, align 8
  %20 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i.i.i, align 8
  %skbcnt.i.i = getelementptr inbounds %struct.can_skb_priv, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %skbcnt.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %skbcnt.i.i, align 4
  %23 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load45.i.i = load i16, ptr %ip_summed.i.i, align 8
  %bf.clear46.i.i = and i16 %bf.load45.i.i, -1537
  %bf.set.i.i = or i16 %bf.clear46.i.i, 512
  store i16 %bf.set.i.i, ptr %ip_summed.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 14
  %24 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %25, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool47.not.i.i = icmp eq i32 %and.i.i, 0
  %bf.clear54.i.i = and i16 %bf.set.i.i, 7167
  %bf.set51.i.i = or i16 %bf.clear54.i.i, -24576
  %storemerge.i.i = select i1 %tobool47.not.i.i, i16 %bf.clear54.i.i, i16 %bf.set51.i.i
  %26 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %storemerge.i.i, ptr %ip_summed.i.i, align 8
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %29 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i76.i.i = ptrtoint ptr %28 to i32
  %sub.ptr.rhs.cast.i77.i.i = ptrtoint ptr %30 to i32
  %sub.ptr.sub.i78.i.i = sub i32 %sub.ptr.lhs.cast.i76.i.i, %sub.ptr.rhs.cast.i77.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i78.i.i to i16
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %31 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i.i.i, ptr %mac_header.i.i.i, align 2
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %32 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i.i.i, ptr %network_header.i.i.i, align 4
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %33 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i.i.i, ptr %transport_header.i.i.i, align 2
  br label %if.end

can_dropped_invalid_skb.exit:                     ; preds = %if.then.i.i, %land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge, %lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge, %if.then14.i.can_dropped_invalid_skb.exit_crit_edge, %lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge, %if.then.i.can_dropped_invalid_skb.exit_crit_edge, %entry.can_dropped_invalid_skb.exit_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 7
  %34 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_dropped.i, align 4
  %inc.i = add i32 %35, 1
  store i32 %inc.i, ptr %tx_dropped.i, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then40.i.i, %if.end37.i.i.if.end_crit_edge
  %context_array.i = getelementptr i8, ptr %netdev, i32 3008
  %36 = ptrtoint ptr %context_array.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %context_array.i, align 4
  %tobool.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i, label %land.rhs.i, label %do.body41.i

land.rhs.i:                                       ; preds = %if.end
  %.b82.i = load i1, ptr @ucan_alloc_context.__already_done, align 1
  br i1 %.b82.i, label %land.rhs.i.land.rhs_crit_edge, label %if.then.i150, !prof !169

land.rhs.i.land.rhs_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

if.then.i150:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ucan_alloc_context.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 358, i32 noundef 9, ptr noundef null) #9
  br label %land.rhs

do.body41.i:                                      ; preds = %if.end
  %context_lock.i = getelementptr i8, ptr %netdev, i32 2960
  %call43.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %context_lock.i) #9
  %tx_fifo.i = getelementptr i8, ptr %netdev, i32 2956
  %38 = ptrtoint ptr %tx_fifo.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %tx_fifo.i, align 4
  %conv48.i = zext i8 %39 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp4984.not.i = icmp eq i8 %39, 0
  br i1 %cmp4984.not.i, label %do.body41.i.ucan_alloc_context.exit_crit_edge, label %for.body.lr.ph.i

do.body41.i.ucan_alloc_context.exit_crit_edge:    ; preds = %do.body41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ucan_alloc_context.exit

for.body.lr.ph.i:                                 ; preds = %do.body41.i
  %40 = ptrtoint ptr %context_array.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %context_array.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.085.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i151, %for.inc.i.for.body.i_crit_edge ]
  %allocated.i = getelementptr %struct.ucan_urb_context, ptr %41, i32 %i.085.i, i32 1
  %42 = ptrtoint ptr %allocated.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %allocated.i, align 4, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool52.not.i = icmp eq i8 %43, 0
  br i1 %tobool52.not.i, label %if.then53.i, label %for.inc.i

if.then53.i:                                      ; preds = %for.body.i
  %arrayidx.le.i = getelementptr %struct.ucan_urb_context, ptr %41, i32 %i.085.i
  %44 = ptrtoint ptr %allocated.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %allocated.i, align 4
  %available_tx_urbs.i = getelementptr i8, ptr %netdev, i32 3004
  %45 = ptrtoint ptr %available_tx_urbs.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %available_tx_urbs.i, align 4
  %dec.i = add i32 %46, -1
  store i32 %dec.i, ptr %available_tx_urbs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool60.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool60.not.i, label %if.then61.i, label %if.then53.i.ucan_alloc_context.exit_crit_edge

if.then53.i.ucan_alloc_context.exit_crit_edge:    ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ucan_alloc_context.exit

if.then61.i:                                      ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #11
  %netdev.i = getelementptr i8, ptr %netdev, i32 2624
  %47 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %netdev.i, align 4
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 103
  %49 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %50, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #9
  br label %ucan_alloc_context.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i151 = add nuw nsw i32 %i.085.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i151, %conv48.i
  br i1 %exitcond.not.i, label %for.inc.i.ucan_alloc_context.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.ucan_alloc_context.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ucan_alloc_context.exit

ucan_alloc_context.exit:                          ; preds = %for.inc.i.ucan_alloc_context.exit_crit_edge, %if.then61.i, %if.then53.i.ucan_alloc_context.exit_crit_edge, %do.body41.i.ucan_alloc_context.exit_crit_edge
  %ret.0.i = phi ptr [ %arrayidx.le.i, %if.then53.i.ucan_alloc_context.exit_crit_edge ], [ %arrayidx.le.i, %if.then61.i ], [ null, %do.body41.i.ucan_alloc_context.exit_crit_edge ], [ null, %for.inc.i.ucan_alloc_context.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %context_lock.i, i32 noundef %call43.i) #9
  %51 = ptrtoint ptr %context_array.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %context_array.i, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %ret.0.i to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %52 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %53 = lshr exact i32 %sub.ptr.sub, 3
  %conv = trunc i32 %53 to i8
  %tobool.not = icmp eq ptr %ret.0.i, null
  br i1 %tobool.not, label %ucan_alloc_context.exit.land.rhs_crit_edge, label %if.end44

ucan_alloc_context.exit.land.rhs_crit_edge:       ; preds = %ucan_alloc_context.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

land.rhs:                                         ; preds = %ucan_alloc_context.exit.land.rhs_crit_edge, %if.then.i150, %land.rhs.i.land.rhs_crit_edge
  %.b148 = load i1, ptr @ucan_start_xmit.__already_done, align 1
  br i1 %.b148, label %land.rhs.cleanup_crit_edge, label %if.then12, !prof !169

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then12:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ucan_start_xmit.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1129, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end44:                                         ; preds = %ucan_alloc_context.exit
  %call.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #9
  %tobool.not.i153 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i153, label %if.then.i155, label %if.end.i

if.then.i155:                                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %netdev.i154 = getelementptr i8, ptr %netdev, i32 2624
  %54 = ptrtoint ptr %netdev.i154 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %netdev.i154, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %55, ptr noundef nonnull @.str.72) #12
  br label %drop

if.end.i:                                         ; preds = %if.end44
  %udev.i = getelementptr i8, ptr %netdev, i32 2616
  %56 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %udev.i, align 4
  %transfer_dma.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 15
  %call1.i = tail call ptr @usb_alloc_coherent(ptr noundef %57, i32 noundef 16, i32 noundef 2592, ptr noundef %transfer_dma.i) #9
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %netdev4.i = getelementptr i8, ptr %netdev, i32 2624
  %58 = ptrtoint ptr %netdev4.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %netdev4.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %59, ptr noundef nonnull @.str.73) #12
  tail call void @usb_free_urb(ptr noundef nonnull %call.i) #9
  br label %drop

if.end5.i:                                        ; preds = %if.end.i
  %type.i = getelementptr inbounds %struct.ucan_message_out, ptr %call1.i, i32 0, i32 1
  %60 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 2, ptr %type.i, align 2
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %1, align 8
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #9
  %msg.i = getelementptr inbounds %struct.ucan_message_out, ptr %call1.i, i32 0, i32 3
  %64 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %msg.i, align 4
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %1, align 8
  %and.i = and i32 %66, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  %67 = getelementptr inbounds %struct.can_frame, ptr %1, i32 0, i32 1
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %67, align 4
  br i1 %tobool7.not.i, label %if.else.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %70 = getelementptr inbounds %struct.ucan_message_out, ptr %call1.i, i32 0, i32 3, i32 0, i32 1
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %69, ptr %70, align 4
  br label %do.body50

if.else.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i8 %69 to i32
  %add.i = add nuw nsw i32 %conv.i, 8
  %72 = getelementptr inbounds %struct.ucan_message_out, ptr %call1.i, i32 0, i32 3, i32 0, i32 1
  %data.i156 = getelementptr inbounds %struct.can_frame, ptr %1, i32 0, i32 5
  %73 = call ptr @memcpy(ptr %72, ptr %data.i156, i32 %conv.i)
  br label %do.body50

do.body50:                                        ; preds = %if.else.i, %if.then8.i
  %mlen.0.i = phi i32 [ 9, %if.then8.i ], [ %add.i, %if.else.i ]
  %conv14.i = trunc i32 %mlen.0.i to i16
  %74 = tail call i16 @llvm.bswap.i16(i16 %conv14.i) #9
  %75 = ptrtoint ptr %call1.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %call1.i, align 4
  %subtype.i = getelementptr inbounds %struct.ucan_message_out, ptr %call1.i, i32 0, i32 2
  %76 = ptrtoint ptr %subtype.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv, ptr %subtype.i, align 1
  %77 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %udev.i, align 4
  %out_ep_addr.i = getelementptr i8, ptr %netdev, i32 2674
  %79 = ptrtoint ptr %out_ep_addr.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %out_ep_addr.i, align 2
  %conv17.i = zext i8 %80 to i32
  %81 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %78, align 8
  %shl.i.i = shl i32 %82, 8
  %shl1.i.i = shl nuw nsw i32 %conv17.i, 15
  %or.i.i = or i32 %shl.i.i, %shl1.i.i
  %or.i = or i32 %or.i.i, -1073741824
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 8
  %83 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %78, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 10
  %84 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %or.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 14
  %85 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call1.i, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 19
  %86 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %mlen.0.i, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 28
  %87 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @ucan_write_bulk_callback, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 27
  %88 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %ret.0.i, ptr %context4.i.i, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 13
  %89 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %transfer_flags.i, align 4
  %or19.i = or i32 %90, 4
  store i32 %or19.i, ptr %transfer_flags.i, align 4
  %echo_skb_lock = getelementptr i8, ptr %netdev, i32 2628
  %call54 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %echo_skb_lock) #9
  %netdev59 = getelementptr i8, ptr %netdev, i32 2624
  %91 = ptrtoint ptr %netdev59 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %netdev59, align 4
  %conv60 = and i32 %53, 255
  %call61 = tail call i32 @can_put_echo_skb(ptr noundef %skb, ptr noundef %92, i32 noundef %conv60, i32 noundef 0) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %echo_skb_lock, i32 noundef %call54) #9
  %tx_urbs = getelementptr i8, ptr %netdev, i32 2792
  tail call void @usb_anchor_urb(ptr noundef nonnull %call.i, ptr noundef %tx_urbs) #9
  %call63 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call.i, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end94, label %if.then65

if.then65:                                        ; preds = %do.body50
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call.i) #9
  %93 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %udev.i, align 4
  %95 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %transfer_buffer3.i.i, align 4
  %97 = ptrtoint ptr %transfer_dma.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %transfer_dma.i, align 4
  tail call void @usb_free_coherent(ptr noundef %94, i32 noundef 16, ptr noundef %96, i32 noundef %98) #9
  tail call void @usb_free_urb(ptr noundef nonnull %call.i) #9
  %99 = ptrtoint ptr %context_array.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %context_array.i, align 4
  %tobool.not.i161 = icmp eq ptr %100, null
  br i1 %tobool.not.i161, label %land.rhs.i162, label %do.body41.i167

land.rhs.i162:                                    ; preds = %if.then65
  %.b67.i = load i1, ptr @ucan_release_context.__already_done, align 1
  br i1 %.b67.i, label %land.rhs.i162.if.then67_crit_edge, label %if.then.i163, !prof !169

land.rhs.i162.if.then67_crit_edge:                ; preds = %land.rhs.i162
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then67

if.then.i163:                                     ; preds = %land.rhs.i162
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ucan_release_context.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 389, i32 noundef 9, ptr noundef null) #9
  br label %if.then67

do.body41.i167:                                   ; preds = %if.then65
  %call43.i165 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %context_lock.i) #9
  %allocated.i166 = getelementptr inbounds %struct.ucan_urb_context, ptr %ret.0.i, i32 0, i32 1
  %101 = ptrtoint ptr %allocated.i166 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %allocated.i166, align 4, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool48.not.i = icmp eq i8 %102, 0
  br i1 %tobool48.not.i, label %ucan_release_context.exit, label %if.then49.i

if.then49.i:                                      ; preds = %do.body41.i167
  %103 = ptrtoint ptr %allocated.i166 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %allocated.i166, align 4
  %available_tx_urbs.i168 = getelementptr i8, ptr %netdev, i32 3004
  %104 = ptrtoint ptr %available_tx_urbs.i168 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %available_tx_urbs.i168, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool51.not.i = icmp eq i32 %105, 0
  br i1 %tobool51.not.i, label %if.then52.i, label %if.then49.i.ucan_release_context.exit.thread207_crit_edge

if.then49.i.ucan_release_context.exit.thread207_crit_edge: ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ucan_release_context.exit.thread207

if.then52.i:                                      ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #11
  %106 = ptrtoint ptr %netdev59 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %netdev59, align 4
  %_tx.i.i.i170 = getelementptr inbounds %struct.net_device, ptr %107, i32 0, i32 103
  %108 = ptrtoint ptr %_tx.i.i.i170 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %_tx.i.i.i170, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %109) #9
  br label %ucan_release_context.exit.thread207

ucan_release_context.exit.thread207:              ; preds = %if.then52.i, %if.then49.i.ucan_release_context.exit.thread207_crit_edge
  %110 = ptrtoint ptr %available_tx_urbs.i168 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %available_tx_urbs.i168, align 4
  %inc.i171 = add i32 %111, 1
  store i32 %inc.i171, ptr %available_tx_urbs.i168, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %context_lock.i, i32 noundef %call43.i165) #9
  br label %do.body71

ucan_release_context.exit:                        ; preds = %do.body41.i167
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %context_lock.i, i32 noundef %call43.i165) #9
  br label %if.then67

if.then67:                                        ; preds = %ucan_release_context.exit, %if.then.i163, %land.rhs.i162.if.then67_crit_edge
  %112 = ptrtoint ptr %netdev59 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %netdev59, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %113, ptr noundef nonnull @.str.68) #12
  br label %do.body71

do.body71:                                        ; preds = %if.then67, %ucan_release_context.exit.thread207
  %call79 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %echo_skb_lock) #9
  %114 = ptrtoint ptr %netdev59 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %netdev59, align 4
  tail call void @can_free_echo_skb(ptr noundef %115, i32 noundef %conv60, ptr noundef null) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %echo_skb_lock, i32 noundef %call79) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call63)
  %cmp87 = icmp eq i32 %call63, -19
  %116 = ptrtoint ptr %netdev59 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %netdev59, align 4
  br i1 %cmp87, label %if.then89, label %if.else

if.then89:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @netif_device_detach(ptr noundef %117) #9
  br label %cleanup

if.else:                                          ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %117, ptr noundef nonnull @.str.69, i32 noundef %call63) #12
  %118 = ptrtoint ptr %netdev59 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %netdev59, align 4
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %119, i32 0, i32 36, i32 7
  %120 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %121, 1
  store i32 %inc, ptr %tx_dropped, align 4
  br label %cleanup

if.end94:                                         ; preds = %do.body50
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %122 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %124 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %123, i32 0, i32 12
  %125 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %126, i32 %124)
  %cmp.not.i.i = icmp eq i32 %126, %124
  br i1 %cmp.not.i.i, label %if.end94.netif_trans_update.exit_crit_edge, label %do.body5.i.i

if.end94.netif_trans_update.exit_crit_edge:       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  %127 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store volatile i32 %124, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %if.end94.netif_trans_update.exit_crit_edge
  tail call void @usb_free_urb(ptr noundef nonnull %call.i) #9
  br label %cleanup

drop:                                             ; preds = %if.then3.i, %if.then.i155
  %128 = ptrtoint ptr %context_array.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %context_array.i, align 4
  %tobool.not.i174 = icmp eq ptr %129, null
  br i1 %tobool.not.i174, label %land.rhs.i176, label %do.body41.i182

land.rhs.i176:                                    ; preds = %drop
  %.b67.i175 = load i1, ptr @ucan_release_context.__already_done, align 1
  br i1 %.b67.i175, label %land.rhs.i176.if.then96_crit_edge, label %if.then.i177, !prof !169

land.rhs.i176.if.then96_crit_edge:                ; preds = %land.rhs.i176
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then96

if.then.i177:                                     ; preds = %land.rhs.i176
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ucan_release_context.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 389, i32 noundef 9, ptr noundef null) #9
  br label %if.then96

do.body41.i182:                                   ; preds = %drop
  %call43.i179 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %context_lock.i) #9
  %allocated.i180 = getelementptr inbounds %struct.ucan_urb_context, ptr %ret.0.i, i32 0, i32 1
  %130 = ptrtoint ptr %allocated.i180 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %allocated.i180, align 4, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool48.not.i181 = icmp eq i8 %131, 0
  br i1 %tobool48.not.i181, label %ucan_release_context.exit193, label %if.then49.i185

if.then49.i185:                                   ; preds = %do.body41.i182
  %132 = ptrtoint ptr %allocated.i180 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 0, ptr %allocated.i180, align 4
  %available_tx_urbs.i183 = getelementptr i8, ptr %netdev, i32 3004
  %133 = ptrtoint ptr %available_tx_urbs.i183 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %available_tx_urbs.i183, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool51.not.i184 = icmp eq i32 %134, 0
  br i1 %tobool51.not.i184, label %if.then52.i188, label %if.then49.i185.ucan_release_context.exit193.thread209_crit_edge

if.then49.i185.ucan_release_context.exit193.thread209_crit_edge: ; preds = %if.then49.i185
  call void @__sanitizer_cov_trace_pc() #11
  br label %ucan_release_context.exit193.thread209

if.then52.i188:                                   ; preds = %if.then49.i185
  call void @__sanitizer_cov_trace_pc() #11
  %netdev.i186 = getelementptr i8, ptr %netdev, i32 2624
  %135 = ptrtoint ptr %netdev.i186 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %netdev.i186, align 4
  %_tx.i.i.i187 = getelementptr inbounds %struct.net_device, ptr %136, i32 0, i32 103
  %137 = ptrtoint ptr %_tx.i.i.i187 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %_tx.i.i.i187, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %138) #9
  br label %ucan_release_context.exit193.thread209

ucan_release_context.exit193.thread209:           ; preds = %if.then52.i188, %if.then49.i185.ucan_release_context.exit193.thread209_crit_edge
  %139 = ptrtoint ptr %available_tx_urbs.i183 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %available_tx_urbs.i183, align 4
  %inc.i189 = add i32 %140, 1
  store i32 %inc.i189, ptr %available_tx_urbs.i183, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %context_lock.i, i32 noundef %call43.i179) #9
  br label %if.end98

ucan_release_context.exit193:                     ; preds = %do.body41.i182
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %context_lock.i, i32 noundef %call43.i179) #9
  br label %if.then96

if.then96:                                        ; preds = %ucan_release_context.exit193, %if.then.i177, %land.rhs.i176.if.then96_crit_edge
  %netdev97 = getelementptr i8, ptr %netdev, i32 2624
  %141 = ptrtoint ptr %netdev97 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %netdev97, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %142, ptr noundef nonnull @.str.70) #12
  br label %if.end98

if.end98:                                         ; preds = %if.then96, %ucan_release_context.exit193.thread209
  tail call void @consume_skb(ptr noundef %skb) #9
  %netdev99 = getelementptr i8, ptr %netdev, i32 2624
  %143 = ptrtoint ptr %netdev99 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %netdev99, align 4
  %tx_dropped101 = getelementptr inbounds %struct.net_device, ptr %144, i32 0, i32 36, i32 7
  %145 = ptrtoint ptr %tx_dropped101 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %tx_dropped101, align 4
  %inc102 = add i32 %146, 1
  store i32 %inc102, ptr %tx_dropped101, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end98, %netif_trans_update.exit, %if.else, %if.then89, %if.then12, %land.rhs.cleanup_crit_edge, %can_dropped_invalid_skb.exit
  %retval.0 = phi i32 [ 0, %netif_trans_update.exit ], [ 0, %if.end98 ], [ 0, %can_dropped_invalid_skb.exit ], [ 16, %if.then12 ], [ 0, %if.else ], [ 0, %if.then89 ], [ 16, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_change_mtu(ptr noundef, i32 noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @open_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ucan_read_bulk_callback(ptr noundef %urb) #2 align 64 {
entry:
  %cf.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %netdev1 = getelementptr inbounds %struct.ucan_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev1, align 4
  %context_array = getelementptr inbounds %struct.ucan_priv, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %context_array to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context_array, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !170

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 697, i32 noundef 9, ptr noundef null) #9
  %udev = getelementptr inbounds %struct.ucan_priv, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev, align 4
  %in_ep_size = getelementptr inbounds %struct.ucan_priv, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %in_ep_size to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %in_ep_size, align 4
  %conv = zext i16 %9 to i32
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %10 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %transfer_buffer, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 15
  %12 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %transfer_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %7, i32 noundef %conv, ptr noundef %11, i32 noundef %13) #9
  br label %cleanup108

if.end24:                                         ; preds = %entry
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %14 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %status, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %15, label %if.end24.resubmit_crit_edge [
    i32 0, label %sw.epilog
    i32 -2, label %if.end24.sw.bb_crit_edge
    i32 -32, label %if.end24.sw.bb_crit_edge204
    i32 -71, label %if.end24.sw.bb_crit_edge205
    i32 -108, label %if.end24.sw.bb_crit_edge206
    i32 -62, label %if.end24.sw.bb_crit_edge207
  ]

if.end24.sw.bb_crit_edge207:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end24.sw.bb_crit_edge206:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end24.sw.bb_crit_edge205:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end24.sw.bb_crit_edge204:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end24.sw.bb_crit_edge:                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end24.resubmit_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %resubmit

sw.bb:                                            ; preds = %if.end24.sw.bb_crit_edge, %if.end24.sw.bb_crit_edge204, %if.end24.sw.bb_crit_edge205, %if.end24.sw.bb_crit_edge206, %if.end24.sw.bb_crit_edge207
  %udev25 = getelementptr inbounds %struct.ucan_priv, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %udev25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %udev25, align 4
  %in_ep_size26 = getelementptr inbounds %struct.ucan_priv, ptr %1, i32 0, i32 8
  %19 = ptrtoint ptr %in_ep_size26 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %in_ep_size26, align 4
  %conv27 = zext i16 %20 to i32
  %transfer_buffer28 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %21 = ptrtoint ptr %transfer_buffer28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %transfer_buffer28, align 4
  %transfer_dma29 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 15
  %23 = ptrtoint ptr %transfer_dma29 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %transfer_dma29, align 4
  tail call void @usb_free_coherent(ptr noundef %18, i32 noundef %conv27, ptr noundef %22, i32 noundef %24) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ucan_read_bulk_callback.__UNIQUE_ID_ddebug468, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ucan_read_bulk_callback, %cleanup108)) #9
          to label %if.then42 [label %cleanup108], !srcloc !168

if.then42:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %netdev1, align 4
  %27 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ucan_read_bulk_callback.__UNIQUE_ID_ddebug468, ptr noundef %26, ptr noundef nonnull @.str.56, i32 noundef %28) #9
  br label %cleanup108

sw.epilog:                                        ; preds = %if.end24
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %29 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %state.i, align 4
  %31 = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.i.not = icmp eq i32 %31, 0
  br i1 %tobool.i.not, label %sw.epilog.cleanup108_crit_edge, label %while.cond.preheader

sw.epilog.cleanup108_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup108

while.cond.preheader:                             ; preds = %sw.epilog
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %32 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp192.not = icmp eq i32 %33, 0
  br i1 %cmp192.not, label %while.cond.preheader.resubmit_crit_edge, label %while.body.lr.ph

while.cond.preheader.resubmit_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %resubmit

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %transfer_buffer61 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %tx_fifo.i = getelementptr inbounds %struct.ucan_priv, ptr %1, i32 0, i32 12, i32 1
  %context_lock.i.i = getelementptr inbounds %struct.ucan_priv, ptr %1, i32 0, i32 13
  %available_tx_urbs.i.i = getelementptr inbounds %struct.ucan_priv, ptr %1, i32 0, i32 14
  %echo_skb_lock.i = getelementptr inbounds %struct.ucan_priv, ptr %1, i32 0, i32 4
  %state.i.i = getelementptr inbounds %struct.can_priv, ptr %1, i32 0, i32 21
  %can_stats2.i.i = getelementptr inbounds %struct.can_priv, ptr %1, i32 0, i32 1
  %arbitration_lost.i.i = getelementptr inbounds %struct.can_priv, ptr %1, i32 0, i32 1, i32 4
  %error_warning.i.i = getelementptr inbounds %struct.can_priv, ptr %1, i32 0, i32 1, i32 1
  %error_passive.i.i = getelementptr inbounds %struct.can_priv, ptr %1, i32 0, i32 1, i32 2
  %bus_off.i.i = getelementptr inbounds %struct.can_priv, ptr %1, i32 0, i32 1, i32 3
  %ctrlmode.i = getelementptr inbounds %struct.can_priv, ptr %1, i32 0, i32 22
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %34 = phi i32 [ %33, %while.body.lr.ph ], [ %168, %cleanup.while.body_crit_edge ]
  %pos.0193 = phi i32 [ 0, %while.body.lr.ph ], [ %add83, %cleanup.while.body_crit_edge ]
  %sub = sub i32 %34, %pos.0193
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub)
  %cmp55 = icmp ult i32 %sub, 4
  br i1 %cmp55, label %if.then57, label %if.end60

if.then57:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %netdev1, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %36, ptr noundef nonnull @.str.57, i32 noundef %34) #12
  br label %resubmit

if.end60:                                         ; preds = %while.body
  %37 = ptrtoint ptr %transfer_buffer61 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %transfer_buffer61, align 4
  %add.ptr = getelementptr i8, ptr %38, i32 %pos.0193
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %add.ptr, align 4
  %41 = call i16 @llvm.bswap.i16(i16 %40)
  %conv63 = zext i16 %41 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv63)
  %cmp66 = icmp ult i32 %sub, %conv63
  br i1 %cmp66, label %if.then68, label %if.end73

if.then68:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %netdev1, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %43, ptr noundef nonnull @.str.58, i32 noundef %34) #12
  %44 = ptrtoint ptr %transfer_buffer61 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %transfer_buffer61, align 4
  %46 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %actual_length, align 4
  call void @print_hex_dump(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, i32 noundef 1, i32 noundef 16, i32 noundef 1, ptr noundef %45, i32 noundef %47, i1 noundef zeroext true) #9
  br label %resubmit

if.end73:                                         ; preds = %if.end60
  %type = getelementptr inbounds %struct.ucan_message_in, ptr %add.ptr, i32 0, i32 1
  %48 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %type, align 2
  %50 = zext i8 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.81)
  switch i8 %49, label %sw.default77 [
    i8 2, label %sw.bb75
    i8 1, label %sw.bb76
  ]

sw.bb75:                                          ; preds = %if.end73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i) #9
  %51 = ptrtoint ptr %cf.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i, align 4, !annotation !172
  %52 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %netdev1, align 4
  %stats1.i = getelementptr inbounds %struct.net_device, ptr %53, i32 0, i32 36
  %54 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %add.ptr, align 4
  %56 = call i16 @llvm.bswap.i16(i16 %55) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %56)
  %cmp.i = icmp ult i16 %56, 8
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i16 %56 to i32
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %53, ptr noundef nonnull @.str.63, i32 noundef %conv.i) #12
  br label %ucan_rx_can_msg.exit

if.end.i:                                         ; preds = %sw.bb75
  %msg.i = getelementptr inbounds %struct.ucan_message_in, ptr %add.ptr, i32 0, i32 3
  %57 = ptrtoint ptr %msg.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %msg.i, align 4
  %59 = call i32 @llvm.bswap.i32(i32 %58) #9
  %and.i = and i32 %59, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  %60 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %state.i.i, align 4
  %and.i.i = and i32 %59, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then5.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then5.i.if.end.i.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %arbitration_lost.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arbitration_lost.i.i, align 4
  %inc.i.i = add i32 %63, 1
  store i32 %inc.i.i, ptr %arbitration_lost.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then5.i.if.end.i.i_crit_edge
  %and3.i.i = and i32 %59, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.end7.i.i_crit_edge, label %if.then5.i.i

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %can_stats2.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %can_stats2.i.i, align 4
  %inc6.i.i = add i32 %65, 1
  store i32 %inc6.i.i, ptr %can_stats2.i.i, align 4
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then5.i.i, %if.end.i.i.if.end7.i.i_crit_edge
  %and8.i.i = and i32 %59, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end7.i.i.if.end12.i.i_crit_edge, label %if.then10.i.i

if.end7.i.i.if.end12.i.i_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i.i

if.then10.i.i:                                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %tx_errors.i.i = getelementptr inbounds %struct.net_device, ptr %53, i32 0, i32 36, i32 5
  %66 = ptrtoint ptr %tx_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tx_errors.i.i, align 4
  %inc11.i.i = add i32 %67, 1
  store i32 %inc11.i.i, ptr %tx_errors.i.i, align 4
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.then10.i.i, %if.end7.i.i.if.end12.i.i_crit_edge
  %and13.i.i = and i32 %59, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i)
  %tobool14.not.i.i = icmp eq i32 %and13.i.i, 0
  %spec.select.i.i = select i1 %tobool14.not.i.i, i32 %61, i32 3
  %and17.i.i = and i32 %59, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i.i)
  %tobool18.not.i.i = icmp eq i32 %and17.i.i, 0
  br i1 %tobool18.not.i.i, label %if.end12.i.i.if.end40.i.i_crit_edge, label %if.then19.i.i

if.end12.i.i.if.end40.i.i_crit_edge:              ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i.i

if.then19.i.i:                                    ; preds = %if.end12.i.i
  %arrayidx.i.i = getelementptr %struct.ucan_message_in, ptr %add.ptr, i32 0, i32 3, i32 0, i32 1, i32 0, i32 1
  %68 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %69 to i32
  %and20.i.i = and i32 %conv.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i.i)
  %tobool21.not.i.i = icmp eq i32 %and20.i.i, 0
  br i1 %tobool21.not.i.i, label %if.then19.i.i.if.end24.i.i_crit_edge, label %if.then22.i.i

if.then19.i.i.if.end24.i.i_crit_edge:             ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i.i

if.then22.i.i:                                    ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %rx_over_errors.i.i = getelementptr inbounds %struct.net_device, ptr %53, i32 0, i32 36, i32 11
  %70 = ptrtoint ptr %rx_over_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rx_over_errors.i.i, align 4
  %inc23.i.i = add i32 %71, 1
  store i32 %inc23.i.i, ptr %rx_over_errors.i.i, align 4
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.then22.i.i, %if.then19.i.i.if.end24.i.i_crit_edge
  %and26.i.i = and i32 %conv.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i.i)
  %tobool27.not.i.i = icmp eq i32 %and26.i.i, 0
  %spec.select105.i.i = select i1 %tobool27.not.i.i, i32 %spec.select.i.i, i32 0
  %and31.i.i = and i32 %conv.i.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i.i)
  %tobool32.not.i.i = icmp eq i32 %and31.i.i, 0
  %new_state.2.i.i = select i1 %tobool32.not.i.i, i32 %spec.select105.i.i, i32 1
  %and36.i.i = and i32 %conv.i.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i.i)
  %tobool37.not.i.i = icmp eq i32 %and36.i.i, 0
  %new_state.3.i.i = select i1 %tobool37.not.i.i, i32 %new_state.2.i.i, i32 2
  br label %if.end40.i.i

if.end40.i.i:                                     ; preds = %if.end24.i.i, %if.end12.i.i.if.end40.i.i_crit_edge
  %new_state.4.i.i = phi i32 [ %new_state.3.i.i, %if.end24.i.i ], [ %spec.select.i.i, %if.end12.i.i.if.end40.i.i_crit_edge ]
  %and41.i.i = and i32 %59, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i.i)
  %tobool42.not.i.i = icmp eq i32 %and41.i.i, 0
  br i1 %tobool42.not.i.i, label %if.end40.i.i.if.end54.i.i_crit_edge, label %if.then43.i.i

if.end40.i.i.if.end54.i.i_crit_edge:              ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54.i.i

if.then43.i.i:                                    ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx45.i.i = getelementptr %struct.ucan_message_in, ptr %add.ptr, i32 0, i32 3, i32 0, i32 1, i32 0, i32 2
  %72 = ptrtoint ptr %arrayidx45.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx45.i.i, align 2
  %tx_errors50.i.i = getelementptr inbounds %struct.net_device, ptr %53, i32 0, i32 36, i32 5
  %rx_errors.i.i = getelementptr inbounds %struct.net_device, ptr %53, i32 0, i32 36, i32 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool48.not107.i.i = icmp slt i8 %73, 0
  %tx_errors50.sink106.i.i = select i1 %tobool48.not107.i.i, ptr %tx_errors50.i.i, ptr %rx_errors.i.i
  %74 = ptrtoint ptr %tx_errors50.sink106.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tx_errors50.sink106.i.i, align 4
  %inc51.i.i = add i32 %75, 1
  store i32 %inc51.i.i, ptr %tx_errors50.sink106.i.i, align 4
  br label %if.end54.i.i

if.end54.i.i:                                     ; preds = %if.then43.i.i, %if.end40.i.i.if.end54.i.i_crit_edge
  %76 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %new_state.4.i.i)
  %cmp.i.i = icmp eq i32 %77, %new_state.4.i.i
  br i1 %cmp.i.i, label %ucan_handle_error_frame.exit.i, label %if.end59.i.i

if.end59.i.i:                                     ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %new_state.4.i.i)
  %cmp62.i.i = icmp ugt i32 %77, %new_state.4.i.i
  %78 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %new_state.4.i.i, ptr %state.i.i, align 4
  br i1 %cmp62.i.i, label %if.end59.i.i.if.end23.i_crit_edge, label %if.end67.i.i

if.end59.i.i.if.end23.i_crit_edge:                ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

if.end67.i.i:                                     ; preds = %if.end59.i.i
  %79 = zext i32 %new_state.4.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %new_state.4.i.i, label %if.end67.i.i.if.end23.i_crit_edge [
    i32 3, label %sw.bb.i.i
    i32 2, label %sw.bb72.i.i
    i32 1, label %sw.bb74.i.i
  ]

if.end67.i.i.if.end23.i_crit_edge:                ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

sw.bb.i.i:                                        ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %bus_off.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %bus_off.i.i, align 4
  %inc70.i.i = add i32 %81, 1
  store i32 %inc70.i.i, ptr %bus_off.i.i, align 4
  %82 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %netdev1, align 4
  call void @can_bus_off(ptr noundef %83) #9
  br label %if.end23.i

sw.bb72.i.i:                                      ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %84 = ptrtoint ptr %error_passive.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %error_passive.i.i, align 4
  %inc73.i.i = add i32 %85, 1
  store i32 %inc73.i.i, ptr %error_passive.i.i, align 4
  br label %if.end23.i

sw.bb74.i.i:                                      ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %86 = ptrtoint ptr %error_warning.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %error_warning.i.i, align 4
  %inc75.i.i = add i32 %87, 1
  store i32 %inc75.i.i, ptr %error_warning.i.i, align 4
  br label %if.end23.i

ucan_handle_error_frame.exit.i:                   ; preds = %if.end54.i.i
  %88 = ptrtoint ptr %ctrlmode.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %ctrlmode.i, align 4
  %and6.i = and i32 %89, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.not.i, label %ucan_handle_error_frame.exit.i.ucan_rx_can_msg.exit_crit_edge, label %ucan_handle_error_frame.exit.i.if.end23.i_crit_edge

ucan_handle_error_frame.exit.i.if.end23.i_crit_edge: ; preds = %ucan_handle_error_frame.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

ucan_handle_error_frame.exit.i.ucan_rx_can_msg.exit_crit_edge: ; preds = %ucan_handle_error_frame.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ucan_rx_can_msg.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %59)
  %tobool12.not.i = icmp sgt i32 %59, -1
  %..i = select i1 %tobool12.not.i, i32 1073743871, i32 -536870913
  %neg.i = xor i32 %..i, -1
  %and17.i = and i32 %59, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.else.i.if.end21.i_crit_edge, label %if.then19.i

if.else.i.if.end21.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

if.then19.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %53, ptr noundef nonnull @.str.64, i32 noundef %59, i32 noundef %..i) #12
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then19.i, %if.else.i.if.end21.i_crit_edge
  %and22.i = and i32 %..i, %59
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end21.i, %ucan_handle_error_frame.exit.i.if.end23.i_crit_edge, %sw.bb74.i.i, %sw.bb72.i.i, %sw.bb.i.i, %if.end67.i.i.if.end23.i_crit_edge, %if.end59.i.i.if.end23.i_crit_edge
  %canid.0.i = phi i32 [ %and22.i, %if.end21.i ], [ %59, %ucan_handle_error_frame.exit.i.if.end23.i_crit_edge ], [ %59, %if.end59.i.i.if.end23.i_crit_edge ], [ %59, %if.end67.i.i.if.end23.i_crit_edge ], [ %59, %sw.bb.i.i ], [ %59, %sw.bb72.i.i ], [ %59, %sw.bb74.i.i ]
  %90 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %netdev1, align 4
  %call25.i = call ptr @alloc_can_skb(ptr noundef %91, ptr noundef nonnull %cf.i) #9
  %tobool26.not.i = icmp eq ptr %call25.i, null
  br i1 %tobool26.not.i, label %if.end23.i.ucan_rx_can_msg.exit_crit_edge, label %if.end28.i

if.end23.i.ucan_rx_can_msg.exit_crit_edge:        ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ucan_rx_can_msg.exit

if.end28.i:                                       ; preds = %if.end23.i
  %92 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cf.i, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %canid.0.i, ptr %93, align 8
  %95 = ptrtoint ptr %msg.i to i32
  call void @__asan_loadN_noabort(i32 %95, i32 4)
  %96 = load i32, ptr %msg.i, align 1
  %97 = and i32 %96, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool.not.i85.i = icmp eq i32 %97, 0
  br i1 %tobool.not.i85.i, label %if.else.i.i, label %if.then.i86.i

if.then.i86.i:                                    ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  %98 = getelementptr inbounds %struct.ucan_message_in, ptr %add.ptr, i32 0, i32 3, i32 0, i32 1
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %98, align 1
  %101 = call i8 @llvm.umin.i8(i8 %100, i8 8) #9
  br label %ucan_can_cc_dlc2len.exit.i

if.else.i.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  %102 = add i16 %56, 248
  %103 = and i16 %102, 248
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %103)
  %cmp11.i.i = icmp eq i16 %103, 0
  %phi.cast.i.i = trunc i16 %102 to i8
  %cond18.i.i = select i1 %cmp11.i.i, i8 %phi.cast.i.i, i8 8
  br label %ucan_can_cc_dlc2len.exit.i

ucan_can_cc_dlc2len.exit.i:                       ; preds = %if.else.i.i, %if.then.i86.i
  %retval.0.i.i = phi i8 [ %101, %if.then.i86.i ], [ %cond18.i.i, %if.else.i.i ]
  %104 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cf.i, align 4
  %106 = getelementptr inbounds %struct.can_frame, ptr %105, i32 0, i32 1
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %retval.0.i.i, ptr %106, align 4
  %108 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %105, align 8
  %110 = and i32 %109, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %110)
  %111 = icmp eq i32 %110, 1073741824
  br i1 %111, label %ucan_can_cc_dlc2len.exit.i.if.end42.i_crit_edge, label %if.then38.i

ucan_can_cc_dlc2len.exit.i.if.end42.i_crit_edge:  ; preds = %ucan_can_cc_dlc2len.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

if.then38.i:                                      ; preds = %ucan_can_cc_dlc2len.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %data.i = getelementptr inbounds %struct.can_frame, ptr %105, i32 0, i32 5
  %112 = getelementptr inbounds %struct.ucan_message_in, ptr %add.ptr, i32 0, i32 3, i32 0, i32 1
  %conv41.i = zext i8 %retval.0.i.i to i32
  %113 = call ptr @memcpy(ptr %data.i, ptr %112, i32 %conv41.i)
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %ucan_can_cc_dlc2len.exit.i.if.end42.i_crit_edge
  %114 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %105, align 8
  %and44.i = and i32 %115, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  br i1 %tobool45.not.i, label %if.then46.i, label %if.end42.i.if.end53.i_crit_edge

if.end42.i.if.end53.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53.i

if.then46.i:                                      ; preds = %if.end42.i
  %116 = ptrtoint ptr %stats1.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %stats1.i, align 4
  %inc.i = add i32 %117, 1
  store i32 %inc.i, ptr %stats1.i, align 4
  %118 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %105, align 8
  %and48.i = and i32 %119, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool49.not.i = icmp eq i32 %and48.i, 0
  br i1 %tobool49.not.i, label %if.then50.i, label %if.then46.i.if.end53.i_crit_edge

if.then46.i.if.end53.i_crit_edge:                 ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53.i

if.then50.i:                                      ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #11
  %120 = ptrtoint ptr %106 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %106, align 4
  %conv51.i = zext i8 %121 to i32
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %53, i32 0, i32 36, i32 2
  %122 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %rx_bytes.i, align 4
  %add.i = add i32 %123, %conv51.i
  store i32 %add.i, ptr %rx_bytes.i, align 4
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then50.i, %if.then46.i.if.end53.i_crit_edge, %if.end42.i.if.end53.i_crit_edge
  %call54.i = call i32 @netif_rx(ptr noundef nonnull %call25.i) #9
  br label %ucan_rx_can_msg.exit

ucan_rx_can_msg.exit:                             ; preds = %if.end53.i, %if.end23.i.ucan_rx_can_msg.exit_crit_edge, %ucan_handle_error_frame.exit.i.ucan_rx_can_msg.exit_crit_edge, %if.then.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i) #9
  br label %cleanup

sw.bb76:                                          ; preds = %if.end73
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %41)
  %cmp.i171 = icmp ugt i16 %41, 3
  %rem.i = and i32 %conv63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp4.not.i = icmp eq i32 %rem.i, 0
  %or.cond.i = select i1 %cmp.i171, i1 %cmp4.not.i, i1 false
  br i1 %or.cond.i, label %if.end.i174, label %if.then.i173

if.then.i173:                                     ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #11
  %124 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %netdev1, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %125, ptr noundef nonnull @.str.65) #12
  br label %cleanup

if.end.i174:                                      ; preds = %sw.bb76
  %sub.i = add nuw nsw i32 %conv63, 131068
  %div83.i = lshr i32 %sub.i, 1
  %conv9.i = and i32 %div83.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv9.i)
  %cmp1086.not.i = icmp eq i32 %conv9.i, 0
  br i1 %cmp1086.not.i, label %if.end.i174.cleanup_crit_edge, label %for.body.lr.ph.i

if.end.i174.cleanup_crit_edge:                    ; preds = %if.end.i174
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end.i174
  %msg.i175 = getelementptr inbounds %struct.ucan_message_in, ptr %add.ptr, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [0 x %struct.ucan_tx_complete_entry_t], ptr %msg.i175, i32 0, i32 %indvars.iv.i
  %126 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx.i, align 2
  %conv13.i = zext i8 %127 to i32
  %128 = ptrtoint ptr %tx_fifo.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %tx_fifo.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %127, i8 %129)
  %cmp15.not.i = icmp ult i8 %127, %129
  br i1 %cmp15.not.i, label %if.end21.i178, label %if.then17.i

if.then17.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %130 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %netdev1, align 4
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %131, i32 0, i32 36, i32 5
  %132 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %tx_errors.i, align 4
  %inc.i176 = add i32 %133, 1
  store i32 %inc.i176, ptr %tx_errors.i, align 4
  %134 = load ptr, ptr %netdev1, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %134, ptr noundef nonnull @.str.66, i32 noundef %conv13.i) #12
  br label %for.inc.i

if.end21.i178:                                    ; preds = %for.body.i
  %135 = ptrtoint ptr %context_array to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %context_array, align 4
  %tobool.not.i.i177 = icmp eq ptr %136, null
  br i1 %tobool.not.i.i177, label %land.rhs.i.i, label %do.body41.i.i

land.rhs.i.i:                                     ; preds = %if.end21.i178
  %.b67.i.i = load i1, ptr @ucan_release_context.__already_done, align 1
  br i1 %.b67.i.i, label %land.rhs.i.i.for.inc.i_crit_edge, label %if.then.i.i179, !prof !169

land.rhs.i.i.for.inc.i_crit_edge:                 ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i.i179:                                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ucan_release_context.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 389, i32 noundef 9, ptr noundef null) #9
  br label %for.inc.i

do.body41.i.i:                                    ; preds = %if.end21.i178
  %call43.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %context_lock.i.i) #9
  %allocated.i.i = getelementptr %struct.ucan_urb_context, ptr %136, i32 %conv13.i, i32 1
  %137 = ptrtoint ptr %allocated.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %allocated.i.i, align 4, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %tobool48.not.i.i = icmp eq i8 %138, 0
  br i1 %tobool48.not.i.i, label %ucan_release_context.exit.i, label %if.then49.i.i

if.then49.i.i:                                    ; preds = %do.body41.i.i
  %139 = ptrtoint ptr %allocated.i.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 0, ptr %allocated.i.i, align 4
  %140 = ptrtoint ptr %available_tx_urbs.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %available_tx_urbs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool51.not.i.i = icmp eq i32 %141, 0
  br i1 %tobool51.not.i.i, label %if.then52.i.i, label %if.then49.i.i.do.body26.i_crit_edge

if.then49.i.i.do.body26.i_crit_edge:              ; preds = %if.then49.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body26.i

if.then52.i.i:                                    ; preds = %if.then49.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %142 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %netdev1, align 4
  %_tx.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %143, i32 0, i32 103
  %144 = ptrtoint ptr %_tx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %_tx.i.i.i.i, align 128
  call void @netif_tx_wake_queue(ptr noundef %145) #9
  br label %do.body26.i

ucan_release_context.exit.i:                      ; preds = %do.body41.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %context_lock.i.i, i32 noundef %call43.i.i) #9
  br label %for.inc.i

do.body26.i:                                      ; preds = %if.then52.i.i, %if.then49.i.i.do.body26.i_crit_edge
  %146 = ptrtoint ptr %available_tx_urbs.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %available_tx_urbs.i.i, align 4
  %inc.i.i180 = add i32 %147, 1
  store i32 %inc.i.i180, ptr %available_tx_urbs.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %context_lock.i.i, i32 noundef %call43.i.i) #9
  %call30.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %echo_skb_lock.i) #9
  %flags36.i = getelementptr [0 x %struct.ucan_tx_complete_entry_t], ptr %msg.i175, i32 0, i32 %indvars.iv.i, i32 1
  %148 = ptrtoint ptr %flags36.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %flags36.i, align 1
  %150 = and i8 %149, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool.not.i181 = icmp eq i8 %150, 0
  %151 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %netdev1, align 4
  br i1 %tobool.not.i181, label %if.else.i184, label %if.then38.i183

if.then38.i183:                                   ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #11
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %152, i32 0, i32 36, i32 1
  %153 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %tx_packets.i, align 4
  %inc41.i = add i32 %154, 1
  store i32 %inc41.i, ptr %tx_packets.i, align 4
  %155 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %netdev1, align 4
  %call44.i = call i32 @can_get_echo_skb(ptr noundef %156, i32 noundef %conv13.i, ptr noundef null) #9
  %157 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %netdev1, align 4
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %158, i32 0, i32 36, i32 3
  %159 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %tx_bytes.i, align 4
  %add.i182 = add i32 %160, %call44.i
  store i32 %add.i182, ptr %tx_bytes.i, align 4
  br label %if.end52.i

if.else.i184:                                     ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #11
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %152, i32 0, i32 36, i32 7
  %161 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %tx_dropped.i, align 4
  %inc49.i = add i32 %162, 1
  store i32 %inc49.i, ptr %tx_dropped.i, align 4
  %163 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %netdev1, align 4
  call void @can_free_echo_skb(ptr noundef %164, i32 noundef %conv13.i, ptr noundef null) #9
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.else.i184, %if.then38.i183
  call void @_raw_spin_unlock_irqrestore(ptr noundef %echo_skb_lock.i, i32 noundef %call30.i) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end52.i, %ucan_release_context.exit.i, %if.then.i.i179, %land.rhs.i.i.for.inc.i_crit_edge, %if.then17.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %conv9.i
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.default77:                                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  %conv74 = zext i8 %49 to i32
  %165 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %netdev1, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %166, ptr noundef nonnull @.str.61, i32 noundef %conv74) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.default77, %for.inc.i.cleanup_crit_edge, %if.end.i174.cleanup_crit_edge, %if.then.i173, %ucan_rx_can_msg.exit
  %add = add i32 %pos.0193, -1
  %sub82 = add i32 %add, %conv63
  %or = or i32 %sub82, 3
  %add83 = add i32 %or, 1
  %167 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %actual_length, align 4
  %cmp = icmp ugt i32 %168, %add83
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.resubmit_crit_edge

cleanup.resubmit_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %resubmit

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

resubmit:                                         ; preds = %cleanup.resubmit_crit_edge, %if.then68, %if.then57, %while.cond.preheader.resubmit_crit_edge, %if.end24.resubmit_crit_edge
  %udev84 = getelementptr inbounds %struct.ucan_priv, ptr %1, i32 0, i32 1
  %169 = ptrtoint ptr %udev84 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %udev84, align 4
  %in_ep_addr = getelementptr inbounds %struct.ucan_priv, ptr %1, i32 0, i32 6
  %171 = ptrtoint ptr %in_ep_addr to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %in_ep_addr, align 1
  %conv86 = zext i8 %172 to i32
  %173 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %170, align 8
  %shl.i = shl i32 %174, 8
  %shl1.i = shl nuw nsw i32 %conv86, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or89 = or i32 %or.i, -1073741696
  %in_ep_size91 = getelementptr inbounds %struct.ucan_priv, ptr %1, i32 0, i32 8
  %175 = ptrtoint ptr %in_ep_size91 to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %in_ep_size91, align 4
  %conv92 = zext i16 %176 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %177 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %170, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %178 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %or89, ptr %pipe2.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %179 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %conv92, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 28
  %180 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr @ucan_read_bulk_callback, ptr %complete.i, align 4
  %181 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %1, ptr %context, align 4
  %rx_urbs = getelementptr inbounds %struct.ucan_priv, ptr %1, i32 0, i32 9
  call void @usb_anchor_urb(ptr noundef %urb, ptr noundef %rx_urbs) #9
  %call93 = call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp94 = icmp slt i32 %call93, 0
  br i1 %cmp94, label %if.then96, label %resubmit.cleanup108_crit_edge

resubmit.cleanup108_crit_edge:                    ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup108

if.then96:                                        ; preds = %resubmit
  %transfer_buffer90 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %182 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %netdev1, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %183, ptr noundef nonnull @.str.62, i32 noundef %call93) #12
  call void @usb_unanchor_urb(ptr noundef %urb) #9
  %184 = ptrtoint ptr %udev84 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %udev84, align 4
  %186 = ptrtoint ptr %in_ep_size91 to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %in_ep_size91, align 4
  %conv100 = zext i16 %187 to i32
  %188 = ptrtoint ptr %transfer_buffer90 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %transfer_buffer90, align 4
  %transfer_dma102 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 15
  %190 = ptrtoint ptr %transfer_dma102 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %transfer_dma102, align 4
  call void @usb_free_coherent(ptr noundef %185, i32 noundef %conv100, ptr noundef %189, i32 noundef %191) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call93)
  %cmp103 = icmp eq i32 %call93, -19
  br i1 %cmp103, label %if.then105, label %if.then96.cleanup108_crit_edge

if.then96.cleanup108_crit_edge:                   ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup108

if.then105:                                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #11
  call void @netif_device_detach(ptr noundef %3) #9
  br label %cleanup108

cleanup108:                                       ; preds = %if.then105, %if.then96.cleanup108_crit_edge, %resubmit.cleanup108_crit_edge, %sw.epilog.cleanup108_crit_edge, %if.then42, %sw.bb, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_anchor_urb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_unanchor_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_bus_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ucan_release_context(ptr noundef %up, ptr nocapture noundef %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context_array = getelementptr inbounds %struct.ucan_priv, ptr %up, i32 0, i32 15
  %0 = ptrtoint ptr %context_array to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context_array, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.rhs, label %do.body41

land.rhs:                                         ; preds = %entry
  %.b67 = load i1, ptr @ucan_release_context.__already_done, align 1
  br i1 %.b67, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !169

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ucan_release_context.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 389, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

do.body41:                                        ; preds = %entry
  %context_lock = getelementptr inbounds %struct.ucan_priv, ptr %up, i32 0, i32 13
  %call43 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %context_lock) #9
  %allocated = getelementptr inbounds %struct.ucan_urb_context, ptr %ctx, i32 0, i32 1
  %2 = ptrtoint ptr %allocated to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %allocated, align 4, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool48.not = icmp eq i8 %3, 0
  br i1 %tobool48.not, label %do.body41.if.end55_crit_edge, label %if.then49

do.body41.if.end55_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then49:                                        ; preds = %do.body41
  %4 = ptrtoint ptr %allocated to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %allocated, align 4
  %available_tx_urbs = getelementptr inbounds %struct.ucan_priv, ptr %up, i32 0, i32 14
  %5 = ptrtoint ptr %available_tx_urbs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %available_tx_urbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool51.not = icmp eq i32 %6, 0
  br i1 %tobool51.not, label %if.then52, label %if.then49.if.end53_crit_edge

if.then49.if.end53_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then52:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  %netdev = getelementptr inbounds %struct.ucan_priv, ptr %up, i32 0, i32 3
  %7 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 103
  %9 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %10) #9
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.then49.if.end53_crit_edge
  %11 = ptrtoint ptr %available_tx_urbs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %available_tx_urbs, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %available_tx_urbs, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.end53, %do.body41.if.end55_crit_edge
  %13 = xor i1 %tobool48.not, true
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %context_lock, i32 noundef %call43) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i1 [ %13, %if.end55 ], [ false, %if.then ], [ false, %land.rhs.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_get_echo_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_free_echo_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_anchored_urbs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @close_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_put_echo_skb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ucan_write_bulk_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.rhs, label %if.end40

land.rhs:                                         ; preds = %entry
  %.b149 = load i1, ptr @ucan_write_bulk_callback.__already_done, align 1
  br i1 %.b149, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !169

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ucan_write_bulk_callback.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 822, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end40:                                         ; preds = %entry
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %4 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %transfer_buffer, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 15
  %6 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %transfer_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %3, i32 noundef 16, ptr noundef %5, i32 noundef %7) #9
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %tobool43.not = icmp eq ptr %9, null
  br i1 %tobool43.not, label %land.rhs52, label %if.end100

land.rhs52:                                       ; preds = %if.end40
  %.b147148 = load i1, ptr @ucan_write_bulk_callback.__already_done.74, align 1
  br i1 %.b147148, label %land.rhs52.cleanup_crit_edge, label %if.then63, !prof !169

land.rhs52.cleanup_crit_edge:                     ; preds = %land.rhs52
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then63:                                        ; preds = %land.rhs52
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ucan_write_bulk_callback.__already_done.74, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 832, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end100:                                        ; preds = %if.end40
  %netdev = getelementptr inbounds %struct.ucan_priv, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state.i, align 4
  %14 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not = icmp eq i32 %14, 0
  br i1 %tobool.i.not, label %if.end100.cleanup_crit_edge, label %if.end102

if.end100.cleanup_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end102:                                        ; preds = %if.end100
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %15 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool103.not = icmp eq i32 %16, 0
  br i1 %tobool103.not, label %if.end102.cleanup_crit_edge, label %if.then104

if.end102.cleanup_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then104:                                       ; preds = %if.end102
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %11, ptr noundef nonnull @.str.75, i32 noundef %16) #12
  %echo_skb_lock = getelementptr inbounds %struct.ucan_priv, ptr %9, i32 0, i32 4
  %call111 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %echo_skb_lock) #9
  %17 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netdev, align 4
  %context_array = getelementptr inbounds %struct.ucan_priv, ptr %9, i32 0, i32 15
  %19 = ptrtoint ptr %context_array to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %context_array, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %20 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 3
  tail call void @can_free_echo_skb(ptr noundef %18, i32 noundef %sub.ptr.div, ptr noundef null) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %echo_skb_lock, i32 noundef %call111) #9
  %21 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %netdev, align 4
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 36, i32 7
  %23 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %24, 1
  store i32 %inc, ptr %tx_dropped, align 4
  %call119 = tail call fastcc zeroext i1 @ucan_release_context(ptr noundef nonnull %9, ptr noundef nonnull %1)
  br i1 %call119, label %if.then104.cleanup_crit_edge, label %if.then120

if.then104.cleanup_crit_edge:                     ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then120:                                       ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %26, ptr noundef nonnull @.str.76) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then120, %if.then104.cleanup_crit_edge, %if.end102.cleanup_crit_edge, %if.end100.cleanup_crit_edge, %if.then63, %land.rhs52.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !73, !74, !76, !78, !80, !82, !83, !84, !86, !87, !88, !90, !92, !94, !96, !98, !100, !101, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !137, !139, !141, !143, !145, !147, !149, !151, !153, !154, !156, !157}
!llvm.module.flags = !{!159, !160, !161, !162, !163, !164, !165, !166}
!llvm.ident = !{!167}

!0 = !{ptr @__initcall__kmod_ucan__470_1600_ucan_driver_init6, !1, !"__initcall__kmod_ucan__470_1600_ucan_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/can/usb/ucan.c", i32 1600, i32 1}
!2 = !{ptr @__exitcall_ucan_driver_exit, !1, !"__exitcall_ucan_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file471, !4, !"__UNIQUE_ID_file471", i1 false, i1 false}
!4 = !{!"../drivers/net/can/usb/ucan.c", i32 1602, i32 1}
!5 = !{ptr @__UNIQUE_ID_license472, !4, !"__UNIQUE_ID_license472", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author473, !7, !"__UNIQUE_ID_author473", i1 false, i1 false}
!7 = !{!"../drivers/net/can/usb/ucan.c", i32 1603, i32 1}
!8 = !{ptr @__UNIQUE_ID_author474, !9, !"__UNIQUE_ID_author474", i1 false, i1 false}
!9 = !{!"../drivers/net/can/usb/ucan.c", i32 1604, i32 1}
!10 = !{ptr @__UNIQUE_ID_description475, !11, !"__UNIQUE_ID_description475", i1 false, i1 false}
!11 = !{!"../drivers/net/can/usb/ucan.c", i32 1605, i32 1}
!12 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @ucan_driver, !14, !"ucan_driver", i1 false, i1 false}
!14 = !{!"../drivers/net/can/usb/ucan.c", i32 1593, i32 26}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/can/usb/ucan.c", i32 1328, i32 2}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ucan_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @ucan_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/can/usb/ucan.c", i32 1335, i32 3}
!25 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ucan_probe._entry.6, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @ucan_probe._entry_ptr.9, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/can/usb/ucan.c", i32 1369, i32 3}
!30 = !{ptr @ucan_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @ucan_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/can/usb/ucan.c", i32 1374, i32 3}
!34 = !{ptr @ucan_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @ucan_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/can/usb/ucan.c", i32 1379, i32 3}
!38 = !{ptr @ucan_probe._entry.16, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @ucan_probe._entry_ptr.18, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/can/usb/ucan.c", i32 1400, i32 3}
!42 = !{ptr @ucan_probe._entry.19, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @ucan_probe._entry_ptr.21, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/can/usb/ucan.c", i32 1426, i32 3}
!46 = !{ptr @ucan_probe._entry.22, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @ucan_probe._entry_ptr.24, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/can/usb/ucan.c", i32 1439, i32 3}
!50 = !{ptr @ucan_probe._entry.25, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @ucan_probe._entry_ptr.27, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/can/usb/ucan.c", i32 1462, i32 3}
!54 = !{ptr @ucan_probe._entry.28, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @ucan_probe._entry_ptr.30, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/can/usb/ucan.c", i32 1467, i32 3}
!58 = !{ptr @ucan_probe._entry.31, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @ucan_probe._entry_ptr.33, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.35, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/can/usb/ucan.c", i32 1472, i32 3}
!62 = !{ptr @ucan_probe._entry.34, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @ucan_probe._entry_ptr.36, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.38, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/can/usb/ucan.c", i32 1489, i32 3}
!66 = !{ptr @ucan_probe._entry.37, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @ucan_probe._entry_ptr.39, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @ucan_probe.__key, !69, !"__key", i1 false, i1 false}
!69 = !{!"../drivers/net/can/usb/ucan.c", i32 1512, i32 2}
!70 = !{ptr @.str.40, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @ucan_probe.__key.41, !72, !"__key", i1 false, i1 false}
!72 = !{!"../drivers/net/can/usb/ucan.c", i32 1513, i32 2}
!73 = !{ptr @.str.42, !72, !"<string literal>", i1 false, i1 false}
!74 = distinct !{null, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/can/usb/ucan.c", i32 1534, i32 24}
!76 = !{ptr @.str.44, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/can/usb/ucan.c", i32 1553, i32 26}
!78 = !{ptr @.str.45, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/can/usb/ucan.c", i32 1554, i32 26}
!80 = !{ptr @.str.47, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/can/usb/ucan.c", i32 1564, i32 2}
!82 = !{ptr @ucan_probe._entry.46, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @ucan_probe._entry_ptr.48, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.49, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/can/usb/ucan.c", i32 1273, i32 3}
!86 = !{ptr @.str.50, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @ucan_set_mode.__UNIQUE_ID_ddebug469, !85, !"__UNIQUE_ID_ddebug469", i1 false, i1 false}
!88 = !{ptr @ucan_netdev_ops, !89, !"ucan_netdev_ops", i1 false, i1 false}
!89 = !{!"../drivers/net/can/usb/ucan.c", i32 1229, i32 36}
!90 = !{ptr @.str.51, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/can/usb/ucan.c", i32 1000, i32 7}
!92 = !{ptr @.str.52, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/can/usb/ucan.c", i32 1027, i32 7}
!94 = !{ptr @.str.53, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/can/usb/ucan.c", i32 1037, i32 7}
!96 = !{ptr @.str.54, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/can/usb/ucan.c", i32 337, i32 7}
!98 = !{ptr @.str.55, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/can/usb/ucan.c", i32 719, i32 3}
!100 = !{ptr @.str.56, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @ucan_read_bulk_callback.__UNIQUE_ID_ddebug468, !99, !"__UNIQUE_ID_ddebug468", i1 false, i1 false}
!102 = !{ptr @.str.57, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/can/usb/ucan.c", i32 738, i32 9}
!104 = !{ptr @.str.58, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/can/usb/ucan.c", i32 751, i32 9}
!106 = !{ptr @.str.59, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/can/usb/ucan.c", i32 753, i32 19}
!108 = !{ptr @.str.60, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/can/usb/ucan.c", i32 754, i32 12}
!110 = !{ptr @.str.61, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/can/usb/ucan.c", i32 774, i32 9}
!112 = !{ptr @.str.62, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/can/usb/ucan.c", i32 800, i32 7}
!114 = !{ptr @.str.63, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/can/usb/ucan.c", i32 577, i32 27}
!116 = !{ptr @.str.64, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/can/usb/ucan.c", i32 601, i32 9}
!118 = !{ptr @.str.65, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/can/usb/ucan.c", i32 645, i32 26}
!120 = !{ptr @.str.66, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/can/usb/ucan.c", i32 656, i32 8}
!122 = distinct !{null, !123, !"__already_done", i1 false, i1 false}
!123 = !{!"../drivers/net/can/usb/ucan.c", i32 389, i32 6}
!124 = !{ptr @.str.67, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/can/usb/ucan.c", i32 937, i32 8}
!126 = distinct !{null, !127, !"__already_done", i1 false, i1 false}
!127 = !{!"../drivers/net/can/usb/ucan.c", i32 1129, i32 6}
!128 = !{ptr @.str.68, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/can/usb/ucan.c", i32 1153, i32 8}
!130 = !{ptr @.str.69, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/can/usb/ucan.c", i32 1166, i32 9}
!132 = !{ptr @.str.70, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/can/usb/ucan.c", i32 1183, i32 7}
!134 = distinct !{null, !135, !"__already_done", i1 false, i1 false}
!135 = !{!"../include/linux/can/skb.h", i32 104, i32 6}
!136 = !{ptr @.str.71, !135, !"<string literal>", i1 false, i1 false}
!137 = distinct !{null, !138, !"__already_done", i1 false, i1 false}
!138 = !{!"../drivers/net/can/usb/ucan.c", i32 358, i32 6}
!139 = !{ptr @.str.72, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/can/usb/ucan.c", i32 1060, i32 26}
!141 = !{ptr @.str.73, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/can/usb/ucan.c", i32 1069, i32 26}
!143 = distinct !{null, !144, !"__already_done", i1 false, i1 false}
!144 = !{!"../drivers/net/can/usb/ucan.c", i32 822, i32 6}
!145 = distinct !{null, !146, !"__already_done", i1 false, i1 false}
!146 = !{!"../drivers/net/can/usb/ucan.c", i32 832, i32 6}
!147 = !{ptr @.str.75, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/can/usb/ucan.c", i32 842, i32 8}
!149 = !{ptr @.str.76, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/can/usb/ucan.c", i32 855, i32 8}
!151 = !{ptr @init_usb_anchor.__key, !152, !"__key", i1 false, i1 false}
!152 = !{!"../include/linux/usb.h", i32 1367, i32 2}
!153 = !{ptr @.str.77, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @init_usb_anchor.__key.78, !155, !"__key", i1 false, i1 false}
!155 = !{!"../include/linux/usb.h", i32 1368, i32 2}
!156 = !{ptr @.str.79, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @ucan_table, !158, !"ucan_table", i1 false, i1 false}
!158 = !{!"../drivers/net/can/usb/ucan.c", i32 1583, i32 29}
!159 = !{i32 1, !"wchar_size", i32 2}
!160 = !{i32 1, !"min_enum_size", i32 4}
!161 = !{i32 8, !"branch-target-enforcement", i32 0}
!162 = !{i32 8, !"sign-return-address", i32 0}
!163 = !{i32 8, !"sign-return-address-all", i32 0}
!164 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!165 = !{i32 7, !"uwtable", i32 1}
!166 = !{i32 7, !"frame-pointer", i32 2}
!167 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!168 = !{i64 2148776132, i64 2148776137, i64 2148776150, i64 2148776194, i64 2148776228, i64 2148776249}
!169 = !{!"branch_weights", i32 2000, i32 1}
!170 = !{!"branch_weights", i32 1, i32 2000}
!171 = !{i8 0, i8 2}
!172 = !{!"auto-init"}
