; ModuleID = '/llk/IR_all_yes/drivers/net/usb/ipheth.c_pt.bc'
source_filename = "../drivers/net/usb/ipheth.c"
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
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.ipheth_device = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, %struct.delayed_work, i8 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
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

@__initcall__kmod_ipheth__344_544_ipheth_driver_init6 = internal global ptr @ipheth_driver_init, section ".initcall6.init", align 4
@ipheth_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @ipheth_probe, ptr @ipheth_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ipheth_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 32 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_ipheth_driver_exit = internal global ptr @ipheth_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author345 = internal constant [46 x i8] c"ipheth.author=Diego Giagio <diego@giagio.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description346 = internal constant [52 x i8] c"ipheth.description=Apple iPhone USB Ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file347 = internal constant [35 x i8] c"ipheth.file=drivers/net/usb/ipheth\00", section ".modinfo", align 1
@__UNIQUE_ID_license348 = internal constant [28 x i8] c"ipheth.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ipheth\00", [25 x i8] zeroinitializer }, align 32
@ipheth_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 897, i16 1452, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 -3, i8 1, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ipheth_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @ipheth_open, ptr @ipheth_close, ptr @ipheth_tx, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ipheth_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"eth%d\00", [26 x i8] zeroinitializer }, align 32
@ipheth_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 457, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Unable to find alternate settings interface\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ipheth_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/net/usb/ipheth.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ipheth_probe._entry_ptr = internal global ptr @ipheth_probe._entry, section ".printk_index", align 4
@ipheth_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 470, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to find endpoints\0A\00", [38 x i8] zeroinitializer }, align 32
@ipheth_probe._entry_ptr.9 = internal global ptr @ipheth_probe._entry.7, section ".printk_index", align 4
@ipheth_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&(&dev->carrier_work)->work)\00", [49 x i8] zeroinitializer }, align 32
@ipheth_probe.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&(&dev->carrier_work)->timer\00", [35 x i8] zeroinitializer }, align 32
@ipheth_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 488, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error allocating urbs: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@ipheth_probe._entry_ptr.15 = internal global ptr @ipheth_probe._entry.13, section ".printk_index", align 4
@ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ipheth_ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@ipheth_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 499, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"error registering netdev: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@ipheth_probe._entry_ptr.18 = internal global ptr @ipheth_probe._entry.16, section ".printk_index", align 4
@ipheth_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 506, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Apple iPhone USB Ethernet device attached\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ipheth_probe._entry_ptr.22 = internal global ptr @ipheth_probe._entry.19, section ".printk_index", align 4
@ipheth_carrier_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 258, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: usb_control_msg: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ipheth_carrier_set\00", [45 x i8] zeroinitializer }, align 32
@ipheth_carrier_set._entry_ptr = internal global ptr @ipheth_carrier_set._entry, section ".printk_index", align 4
@ipheth_rx_submit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 328, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: usb_submit_urb: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ipheth_rx_submit\00", [47 x i8] zeroinitializer }, align 32
@ipheth_rx_submit._entry_ptr = internal global ptr @ipheth_rx_submit._entry, section ".printk_index", align 4
@ipheth_rcvbulk_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 186, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: urb status: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ipheth_rcvbulk_callback\00", [40 x i8] zeroinitializer }, align 32
@ipheth_rcvbulk_callback._entry_ptr = internal global ptr @ipheth_rcvbulk_callback._entry, section ".printk_index", align 4
@ipheth_rcvbulk_callback._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.4, i32 200, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: dev_alloc_skb: -ENOMEM\0A\00", [36 x i8] zeroinitializer }, align 32
@ipheth_rcvbulk_callback._entry_ptr.31 = internal global ptr @ipheth_rcvbulk_callback._entry.29, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: skb too large: %d bytes\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.ipheth_tx = private unnamed_addr constant [10 x i8] c"ipheth_tx\00", align 1
@ipheth_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @__func__.ipheth_tx, ptr @.str.4, i32 390, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ipheth_tx._entry_ptr = internal global ptr @ipheth_tx._entry, section ".printk_index", align 4
@ipheth_sndbulk_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.33, ptr @.str.4, i32 230, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ipheth_sndbulk_callback\00", [40 x i8] zeroinitializer }, align 32
@ipheth_sndbulk_callback._entry_ptr = internal global ptr @ipheth_sndbulk_callback._entry, section ".printk_index", align 4
@ipheth_tx_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.4, i32 407, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: TX timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ipheth_tx_timeout\00", [46 x i8] zeroinitializer }, align 32
@ipheth_tx_timeout._entry_ptr = internal global ptr @ipheth_tx_timeout._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ipheth_get_macaddr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.36, ptr @.str.4, i32 299, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ipheth_get_macaddr\00", [45 x i8] zeroinitializer }, align 32
@ipheth_get_macaddr._entry_ptr = internal global ptr @ipheth_get_macaddr._entry, section ".printk_index", align 4
@ipheth_get_macaddr._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.4, i32 303, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: usb_control_msg: short packet: %d bytes\0A\00", [51 x i8] zeroinitializer }, align 32
@ipheth_get_macaddr._entry_ptr.39 = internal global ptr @ipheth_get_macaddr._entry.37, section ".printk_index", align 4
@ipheth_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.4, i32 533, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Apple iPhone USB Ethernet now disconnected\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ipheth_disconnect\00", [46 x i8] zeroinitializer }, align 32
@ipheth_disconnect._entry_ptr = internal global ptr @ipheth_disconnect._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967225, i64 4294967294]
@__sancov_gen_cov_switch_values.42 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@___asan_gen_.43 = private unnamed_addr constant [14 x i8] c"ipheth_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 536, i32 26 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 544, i32 1 }
@___asan_gen_.49 = private unnamed_addr constant [13 x i8] c"ipheth_table\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 79, i32 35 }
@___asan_gen_.52 = private unnamed_addr constant [18 x i8] c"ipheth_netdev_ops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 422, i32 36 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 446, i32 24 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 457, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 470, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 484, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 488, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 418, i32 33 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 499, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 506, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 257, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 327, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 185, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 199, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 369, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 389, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 229, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 407, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 298, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 301, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.191 = private constant [28 x i8] c"../drivers/net/usb/ipheth.c\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 533, i32 2 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @__UNIQUE_ID_author345, ptr @__UNIQUE_ID_description346, ptr @__UNIQUE_ID_file347, ptr @__UNIQUE_ID_license348, ptr @__exitcall_ipheth_driver_exit, ptr @__initcall__kmod_ipheth__344_544_ipheth_driver_init6, ptr @ipheth_carrier_set._entry, ptr @ipheth_carrier_set._entry_ptr, ptr @ipheth_disconnect._entry, ptr @ipheth_disconnect._entry_ptr, ptr @ipheth_driver_exit, ptr @ipheth_get_macaddr._entry, ptr @ipheth_get_macaddr._entry.37, ptr @ipheth_get_macaddr._entry_ptr, ptr @ipheth_get_macaddr._entry_ptr.39, ptr @ipheth_probe._entry, ptr @ipheth_probe._entry.13, ptr @ipheth_probe._entry.16, ptr @ipheth_probe._entry.19, ptr @ipheth_probe._entry.7, ptr @ipheth_probe._entry_ptr, ptr @ipheth_probe._entry_ptr.15, ptr @ipheth_probe._entry_ptr.18, ptr @ipheth_probe._entry_ptr.22, ptr @ipheth_probe._entry_ptr.9, ptr @ipheth_rcvbulk_callback._entry, ptr @ipheth_rcvbulk_callback._entry.29, ptr @ipheth_rcvbulk_callback._entry_ptr, ptr @ipheth_rcvbulk_callback._entry_ptr.31, ptr @ipheth_rx_submit._entry, ptr @ipheth_rx_submit._entry_ptr, ptr @ipheth_sndbulk_callback._entry, ptr @ipheth_sndbulk_callback._entry_ptr, ptr @ipheth_tx._entry, ptr @ipheth_tx._entry_ptr, ptr @ipheth_tx_timeout._entry, ptr @ipheth_tx_timeout._entry_ptr, ptr @ipheth_driver, ptr @.str, ptr @ipheth_table, ptr @ipheth_netdev_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @ipheth_probe.__key, ptr @.str.10, ptr @ipheth_probe.__key.11, ptr @.str.12, ptr @.str.14, ptr @ops, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipheth_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipheth_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipheth_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipheth_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipheth_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipheth_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipheth_probe.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipheth_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipheth_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipheth_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipheth_carrier_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipheth_rx_submit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipheth_rcvbulk_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipheth_rcvbulk_callback._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipheth_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipheth_sndbulk_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipheth_tx_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipheth_get_macaddr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipheth_get_macaddr._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipheth_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ipheth_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @ipheth_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ipheth_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_deregister(ptr noundef nonnull @ipheth_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipheth_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %call2 = tail call ptr @alloc_etherdev_mqs(i32 noundef 140, i32 noundef 1, i32 noundef 1) #6
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 16
  %2 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ipheth_netdev_ops, ptr %netdev_ops, align 8
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 115
  %3 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 500, ptr %watchdog_timeo, align 4
  %call3 = tail call i32 @strscpy(ptr noundef nonnull %call2, ptr noundef nonnull @.str.1, i32 noundef 16) #6
  %add.ptr.i145 = getelementptr i8, ptr %call2, i32 2304
  %4 = ptrtoint ptr %add.ptr.i145 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr.i, ptr %add.ptr.i145, align 4
  %net = getelementptr i8, ptr %call2, i32 2312
  %5 = ptrtoint ptr %net to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2, ptr %net, align 4
  %intf6 = getelementptr i8, ptr %call2, i32 2308
  %6 = ptrtoint ptr %intf6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %intf, ptr %intf6, align 4
  %confirmed_pairing = getelementptr i8, ptr %call2, i32 2440
  %7 = ptrtoint ptr %confirmed_pairing to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %confirmed_pairing, align 4
  %call7 = tail call ptr @usb_altnum_to_altsetting(ptr noundef %intf, i32 noundef 1) #6
  %cmp = icmp eq ptr %call7, null
  br i1 %cmp, label %if.then8, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %call7, i32 0, i32 4
  %8 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp11155.not = icmp eq i8 %9, 0
  br i1 %cmp11155.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %call7, i32 0, i32 3
  %bulk_in = getelementptr i8, ptr %call2, i32 2336
  %bulk_out = getelementptr i8, ptr %call2, i32 2337
  br label %for.body

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev9 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.2) #9
  br label %err_endpoints

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0156 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %10 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %endpoint, align 4
  %arrayidx = getelementptr %struct.usb_host_endpoint, ptr %11, i32 %i.0156
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %12 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bmAttributes.i.i, align 1
  %14 = and i8 %13, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %cmp.i.not.i = icmp eq i8 %14, 2
  br i1 %cmp.i.not.i, label %usb_endpoint_is_bulk_in.exit, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

usb_endpoint_is_bulk_in.exit:                     ; preds = %for.body
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %15 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %tobool15.not = icmp sgt i8 %16, -1
  br i1 %tobool15.not, label %if.then19, label %if.then16

if.then16:                                        ; preds = %usb_endpoint_is_bulk_in.exit
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %bulk_in to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %bulk_in, align 4
  br label %for.inc

if.then19:                                        ; preds = %usb_endpoint_is_bulk_in.exit
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bEndpointAddress.i.i, align 1
  %20 = ptrtoint ptr %bulk_out to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %bulk_out, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then19, %if.then16, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0156, 1
  %21 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bNumEndpoints, align 4
  %conv = zext i8 %22 to i32
  %cmp11 = icmp ult i32 %inc, %conv
  br i1 %cmp11, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %bulk_in23 = getelementptr i8, ptr %call2, i32 2336
  %23 = ptrtoint ptr %bulk_in23 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bulk_in23, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool25.not = icmp eq i8 %24, 0
  br i1 %tobool25.not, label %for.end.if.then29_crit_edge, label %land.lhs.true

for.end.if.then29_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then29

land.lhs.true:                                    ; preds = %for.end
  %bulk_out26 = getelementptr i8, ptr %call2, i32 2337
  %25 = ptrtoint ptr %bulk_out26 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bulk_out26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool28.not = icmp eq i8 %26, 0
  br i1 %tobool28.not, label %land.lhs.true.if.then29_crit_edge, label %if.end34

land.lhs.true.if.then29_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then29

if.then29:                                        ; preds = %land.lhs.true.if.then29_crit_edge, %for.end.if.then29_crit_edge
  %dev33 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33, ptr noundef nonnull @.str.8) #9
  br label %err_endpoints

if.end34:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3264, i32 noundef 64) #10
  %ctrl_buf = getelementptr i8, ptr %call2, i32 2332
  %28 = ptrtoint ptr %ctrl_buf to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i, ptr %ctrl_buf, align 4
  %cmp37 = icmp eq ptr %call7.i, null
  br i1 %cmp37, label %if.end34.err_alloc_ctrl_buf_crit_edge, label %if.end40

if.end34.err_alloc_ctrl_buf_crit_edge:            ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_alloc_ctrl_buf

if.end40:                                         ; preds = %if.end34
  %29 = ptrtoint ptr %add.ptr.i145 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr.i145, align 4
  %31 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %net, align 4
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %30, align 8
  %shl.i.i = shl i32 %34, 8
  %or4.i = or i32 %shl.i.i, -2147483520
  %call5.i = tail call i32 @usb_control_msg(ptr noundef %30, i32 noundef %or4.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 2, ptr noundef nonnull %call7.i, i16 noundef zeroext 64, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %intf6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %intf6, align 4
  %dev6.i = getelementptr inbounds %struct.usb_interface, ptr %36, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.36, i32 noundef %call5.i) #9
  br label %err_alloc_ctrl_buf

if.else.i:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call5.i)
  %cmp7.i = icmp ult i32 %call5.i, 6
  br i1 %cmp7.i, label %do.end11.i, label %do.body46

do.end11.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %intf6 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %intf6, align 4
  %dev13.i = getelementptr inbounds %struct.usb_interface, ptr %38, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36, i32 noundef %call5.i) #9
  br label %err_alloc_ctrl_buf

do.body46:                                        ; preds = %if.else.i
  %39 = ptrtoint ptr %ctrl_buf to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ctrl_buf, align 4
  tail call void @dev_addr_mod(ptr noundef %32, i32 noundef 0, ptr noundef %40, i32 noundef 6) #6
  %carrier_work = getelementptr i8, ptr %call2, i32 2340
  tail call void @__init_work(ptr noundef %carrier_work, i32 noundef 0) #6
  %41 = ptrtoint ptr %carrier_work to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -64, ptr %carrier_work, align 4
  %lockdep_map = getelementptr i8, ptr %call2, i32 2356
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.10, ptr noundef nonnull @ipheth_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry53 = getelementptr i8, ptr %call2, i32 2344
  %42 = ptrtoint ptr %entry53 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %entry53, ptr %entry53, align 4
  %prev.i = getelementptr i8, ptr %call2, i32 2348
  %43 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %entry53, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call2, i32 2352
  %44 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @ipheth_carrier_check_work, ptr %func, align 4
  %timer = getelementptr i8, ptr %call2, i32 2384
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.12, ptr noundef nonnull @ipheth_probe.__key.11) #6
  %call64 = tail call fastcc i32 @ipheth_alloc_urbs(ptr noundef %add.ptr.i145)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end71, label %do.end69

do.end69:                                         ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #8
  %dev70 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev70, ptr noundef nonnull @.str.14, i32 noundef %call64) #9
  br label %err_alloc_ctrl_buf

if.end71:                                         ; preds = %do.body46
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %45 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %add.ptr.i145, ptr %driver_data.i.i, align 4
  %dev72 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %parent = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 133, i32 1
  %46 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %dev72, ptr %parent, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 44
  %47 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @ops, ptr %ethtool_ops, align 16
  %call74 = tail call i32 @register_netdev(ptr noundef nonnull %call2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end81, label %do.end79

do.end79:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev72, ptr noundef nonnull @.str.17, i32 noundef %call74) #9
  tail call fastcc void @ipheth_free_urbs(ptr noundef %add.ptr.i145)
  br label %err_alloc_ctrl_buf

if.end81:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @netif_carrier_off(ptr noundef nonnull %call2) #6
  tail call void @netif_tx_stop_all_queues(ptr noundef nonnull %call2) #6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev72, ptr noundef nonnull @.str.20) #9
  br label %cleanup

err_alloc_ctrl_buf:                               ; preds = %do.end79, %do.end69, %do.end11.i, %do.end.i, %if.end34.err_alloc_ctrl_buf_crit_edge
  %retval1.0 = phi i32 [ %call64, %do.end69 ], [ -5, %do.end79 ], [ -12, %if.end34.err_alloc_ctrl_buf_crit_edge ], [ -22, %do.end11.i ], [ %call5.i, %do.end.i ]
  %48 = ptrtoint ptr %ctrl_buf to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ctrl_buf, align 4
  tail call void @kfree(ptr noundef %49) #6
  br label %err_endpoints

err_endpoints:                                    ; preds = %err_alloc_ctrl_buf, %if.then29, %if.then8
  %retval1.1 = phi i32 [ -19, %if.then8 ], [ %retval1.0, %err_alloc_ctrl_buf ], [ -19, %if.then29 ]
  tail call void @free_netdev(ptr noundef nonnull %call2) #6
  br label %cleanup

cleanup:                                          ; preds = %err_endpoints, %if.end81, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.1, %err_endpoints ], [ 0, %if.end81 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipheth_disconnect(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %net = getelementptr inbounds %struct.ipheth_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  tail call void @unregister_netdev(ptr noundef %3) #6
  %tx_urb.i = getelementptr inbounds %struct.ipheth_device, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %tx_urb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %5) #6
  %rx_urb.i = getelementptr inbounds %struct.ipheth_device, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %rx_urb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %7) #6
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %rx_buf.i = getelementptr inbounds %struct.ipheth_device, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_buf.i, align 4
  %12 = ptrtoint ptr %rx_urb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_urb.i, align 4
  %transfer_dma.i = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %transfer_dma.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %transfer_dma.i, align 4
  tail call void @usb_free_coherent(ptr noundef %9, i32 noundef 1516, ptr noundef %11, i32 noundef %15) #6
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %tx_buf.i = getelementptr inbounds %struct.ipheth_device, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx_buf.i, align 4
  %20 = ptrtoint ptr %tx_urb.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx_urb.i, align 4
  %transfer_dma2.i = getelementptr inbounds %struct.urb, ptr %21, i32 0, i32 15
  %22 = ptrtoint ptr %transfer_dma2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %transfer_dma2.i, align 4
  tail call void @usb_free_coherent(ptr noundef %17, i32 noundef 1514, ptr noundef %19, i32 noundef %23) #6
  %24 = ptrtoint ptr %rx_urb.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rx_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %25) #6
  %26 = ptrtoint ptr %tx_urb.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tx_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %27) #6
  %ctrl_buf = getelementptr inbounds %struct.ipheth_device, ptr %1, i32 0, i32 7
  %28 = ptrtoint ptr %ctrl_buf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctrl_buf, align 4
  tail call void @kfree(ptr noundef %29) #6
  %30 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %net, align 4
  tail call void @free_netdev(ptr noundef %31) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %32 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %driver_data.i.i, align 4
  %dev2 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.40) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_altnum_to_altsetting(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipheth_carrier_check_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -36
  %call = tail call fastcc i32 @ipheth_carrier_set(ptr noundef %add.ptr)
  %call1 = tail call i32 @round_jiffies_relative(i32 noundef 100) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %work, i32 noundef %call1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ipheth_alloc_urbs(ptr nocapture noundef %iphone) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #6
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #6
  %cmp2 = icmp eq ptr %call1, null
  br i1 %cmp2, label %if.end.free_tx_urb_crit_edge, label %if.end4

if.end.free_tx_urb_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_tx_urb

if.end4:                                          ; preds = %if.end
  %0 = ptrtoint ptr %iphone to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iphone, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 15
  %call5 = tail call ptr @usb_alloc_coherent(ptr noundef %1, i32 noundef 1514, i32 noundef 3264, ptr noundef %transfer_dma) #6
  %cmp6 = icmp eq ptr %call5, null
  br i1 %cmp6, label %if.end4.free_rx_urb_crit_edge, label %if.end8

if.end4.free_rx_urb_crit_edge:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_rx_urb

if.end8:                                          ; preds = %if.end4
  %2 = ptrtoint ptr %iphone to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iphone, align 4
  %transfer_dma10 = getelementptr inbounds %struct.urb, ptr %call1, i32 0, i32 15
  %call11 = tail call ptr @usb_alloc_coherent(ptr noundef %3, i32 noundef 1516, i32 noundef 3264, ptr noundef %transfer_dma10) #6
  %cmp12 = icmp eq ptr %call11, null
  br i1 %cmp12, label %free_tx_buf, label %if.end14

if.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %tx_urb15 = getelementptr inbounds %struct.ipheth_device, ptr %iphone, i32 0, i32 3
  %4 = ptrtoint ptr %tx_urb15 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %tx_urb15, align 4
  %rx_urb16 = getelementptr inbounds %struct.ipheth_device, ptr %iphone, i32 0, i32 4
  %5 = ptrtoint ptr %rx_urb16 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1, ptr %rx_urb16, align 4
  %tx_buf17 = getelementptr inbounds %struct.ipheth_device, ptr %iphone, i32 0, i32 5
  %6 = ptrtoint ptr %tx_buf17 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5, ptr %tx_buf17, align 4
  %rx_buf18 = getelementptr inbounds %struct.ipheth_device, ptr %iphone, i32 0, i32 6
  %7 = ptrtoint ptr %rx_buf18 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call11, ptr %rx_buf18, align 4
  br label %cleanup

free_tx_buf:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %iphone to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iphone, align 4
  %10 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %transfer_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %9, i32 noundef 1514, ptr noundef nonnull %call5, i32 noundef %11) #6
  br label %free_rx_urb

free_rx_urb:                                      ; preds = %free_tx_buf, %if.end4.free_rx_urb_crit_edge
  tail call void @usb_free_urb(ptr noundef nonnull %call1) #6
  br label %free_tx_urb

free_tx_urb:                                      ; preds = %free_rx_urb, %if.end.free_tx_urb_crit_edge
  tail call void @usb_free_urb(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %free_tx_urb, %if.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %free_tx_urb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ipheth_free_urbs(ptr nocapture noundef readonly %iphone) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iphone to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iphone, align 4
  %rx_buf = getelementptr inbounds %struct.ipheth_device, ptr %iphone, i32 0, i32 6
  %2 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_buf, align 4
  %rx_urb = getelementptr inbounds %struct.ipheth_device, ptr %iphone, i32 0, i32 4
  %4 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_urb, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %transfer_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %1, i32 noundef 1516, ptr noundef %3, i32 noundef %7) #6
  %8 = ptrtoint ptr %iphone to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iphone, align 4
  %tx_buf = getelementptr inbounds %struct.ipheth_device, ptr %iphone, i32 0, i32 5
  %10 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_buf, align 4
  %tx_urb = getelementptr inbounds %struct.ipheth_device, ptr %iphone, i32 0, i32 3
  %12 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx_urb, align 4
  %transfer_dma2 = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %transfer_dma2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %transfer_dma2, align 4
  tail call void @usb_free_coherent(ptr noundef %9, i32 noundef 1514, ptr noundef %11, i32 noundef %15) #6
  %16 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_urb, align 4
  tail call void @usb_free_urb(ptr noundef %17) #6
  %18 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx_urb, align 4
  tail call void @usb_free_urb(ptr noundef %19) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipheth_open(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %call3 = tail call i32 @usb_set_interface(ptr noundef %1, i32 noundef 2, i32 noundef 1) #6
  %call4 = tail call fastcc i32 @ipheth_carrier_set(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %rx_urb.i = getelementptr i8, ptr %net, i32 2320
  %4 = ptrtoint ptr %rx_urb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_urb.i, align 4
  %bulk_in.i = getelementptr i8, ptr %net, i32 2336
  %6 = ptrtoint ptr %bulk_in.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bulk_in.i, align 4
  %conv.i = zext i8 %7 to i32
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %9, 8
  %shl1.i.i = shl nuw nsw i32 %conv.i, 15
  %or.i.i = or i32 %shl1.i.i, %shl.i.i
  %or3.i = or i32 %or.i.i, -1073741696
  %rx_buf.i = getelementptr i8, ptr %net, i32 2328
  %10 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_buf.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 8
  %12 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %3, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 10
  %13 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or3.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 14
  %14 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 19
  %15 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1516, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 28
  %16 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ipheth_rcvbulk_callback, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 27
  %17 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr.i, ptr %context4.i.i, align 4
  %18 = load ptr, ptr %rx_urb.i, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %18, i32 0, i32 13
  %19 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %transfer_flags.i, align 4
  %or5.i = or i32 %20, 4
  store i32 %or5.i, ptr %transfer_flags.i, align 4
  %21 = load ptr, ptr %rx_urb.i, align 4
  %call7.i = tail call i32 @usb_submit_urb(ptr noundef %21, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i, label %if.end8, label %ipheth_rx_submit.exit

ipheth_rx_submit.exit:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %intf.i = getelementptr i8, ptr %net, i32 2308
  %22 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %intf.i, align 4
  %dev8.i = getelementptr inbounds %struct.usb_interface, ptr %23, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef %call7.i) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %carrier_work = getelementptr i8, ptr %net, i32 2340
  %call9 = tail call i32 @round_jiffies_relative(i32 noundef 100) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %24 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %24, ptr noundef %carrier_work, i32 noundef %call9) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %ipheth_rx_submit.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ %call4, %entry.cleanup_crit_edge ], [ %call7.i, %ipheth_rx_submit.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipheth_close(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %carrier_work = getelementptr i8, ptr %net, i32 2340
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %carrier_work) #6
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipheth_tx(ptr noundef %skb, ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1514, i32 %3)
  %cmp = icmp ugt i32 %3, 1514
  br i1 %cmp, label %do.end, label %if.end20

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 369, i32 noundef 9, ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.ipheth_tx, i32 noundef %3) #6
  %net19 = getelementptr i8, ptr %net, i32 2312
  %4 = ptrtoint ptr %net19 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net19, align 4
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 7
  %6 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %tx_dropped, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #6
  br label %cleanup

if.end20:                                         ; preds = %entry
  %tx_buf = getelementptr i8, ptr %net, i32 2324
  %8 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_buf, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %12 = call ptr @memcpy(ptr %9, ptr %11, i32 %3)
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1514, i32 %14)
  %cmp23 = icmp ult i32 %14, 1514
  br i1 %cmp23, label %if.then24, label %if.end20.if.end28_crit_edge

if.end20.if.end28_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx_buf, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 %14
  %sub = sub nuw nsw i32 1514, %14
  %17 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub)
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.end20.if.end28_crit_edge
  %tx_urb = getelementptr i8, ptr %net, i32 2316
  %18 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx_urb, align 4
  %bulk_out = getelementptr i8, ptr %net, i32 2337
  %20 = ptrtoint ptr %bulk_out to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bulk_out, align 1
  %conv = zext i8 %21 to i32
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %1, align 8
  %shl.i = shl i32 %23, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i, -1073741824
  %24 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx_buf, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 8
  %26 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %1, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 10
  %27 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 14
  %28 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 19
  %29 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1514, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 28
  %30 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @ipheth_sndbulk_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 27
  %31 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr.i, ptr %context4.i, align 4
  %32 = load ptr, ptr %tx_urb, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %32, i32 0, i32 13
  %33 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %transfer_flags, align 4
  %or32 = or i32 %34, 4
  store i32 %or32, ptr %transfer_flags, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 103
  %35 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %36, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  %37 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tx_urb, align 4
  %call34 = tail call i32 @usb_submit_urb(ptr noundef %38, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.else, label %do.end39

do.end39:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %intf = getelementptr i8, ptr %net, i32 2308
  %39 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %intf, align 4
  %dev40 = getelementptr inbounds %struct.usb_interface, ptr %40, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.ipheth_tx, i32 noundef %call34) #9
  %net41 = getelementptr i8, ptr %net, i32 2312
  %41 = ptrtoint ptr %net41 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %net41, align 4
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 36, i32 5
  %43 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tx_errors, align 4
  %inc43 = add i32 %44, 1
  store i32 %inc43, ptr %tx_errors, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #6
  %45 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %46) #6
  br label %cleanup

if.else:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %net44 = getelementptr i8, ptr %net, i32 2312
  %47 = ptrtoint ptr %net44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %net44, align 4
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 36, i32 1
  %49 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tx_packets, align 4
  %inc46 = add i32 %50, 1
  store i32 %inc46, ptr %tx_packets, align 4
  %51 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %len, align 4
  %53 = load ptr, ptr %net44, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %53, i32 0, i32 36, i32 3
  %54 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %55, %52
  store i32 %add, ptr %tx_bytes, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end39, %do.end
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipheth_tx_timeout(ptr nocapture noundef readonly %net, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %intf = getelementptr i8, ptr %net, i32 2308
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 4
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35) #9
  %net2 = getelementptr i8, ptr %net, i32 2312
  %2 = ptrtoint ptr %net2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net2, align 4
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 5
  %4 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %tx_errors, align 4
  %tx_urb = getelementptr i8, ptr %net, i32 2316
  %6 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_urb, align 4
  %call3 = tail call i32 @usb_unlink_urb(ptr noundef %7) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ipheth_carrier_set(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %confirmed_pairing = getelementptr inbounds %struct.ipheth_device, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %confirmed_pairing to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %confirmed_pairing, align 4, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i = shl i32 %5, 8
  %or3 = or i32 %shl.i, -2147483520
  %ctrl_buf = getelementptr inbounds %struct.ipheth_device, ptr %dev, i32 0, i32 7
  %6 = ptrtoint ptr %ctrl_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctrl_buf, align 4
  %call4 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or3, i8 noundef zeroext 69, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 2, ptr noundef %7, i16 noundef zeroext 64, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %intf = getelementptr inbounds %struct.ipheth_device, ptr %dev, i32 0, i32 1
  %8 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %intf, align 4
  %dev6 = getelementptr inbounds %struct.usb_interface, ptr %9, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef %call4) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %10 = ptrtoint ptr %ctrl_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctrl_buf, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %13)
  %cmp9 = icmp eq i8 %13, 4
  %net = getelementptr inbounds %struct.ipheth_device, ptr %dev, i32 0, i32 2
  %14 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net, align 4
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end7
  tail call void @netif_carrier_on(ptr noundef %15) #6
  %tx_urb = getelementptr inbounds %struct.ipheth_device, ptr %dev, i32 0, i32 3
  %16 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_urb, align 4
  %status = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %19)
  %cmp12.not = icmp eq i32 %19, -115
  br i1 %cmp12.not, label %if.then11.cleanup_crit_edge, label %if.then14

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 103
  %22 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %23) #6
  br label %cleanup

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @netif_carrier_off(ptr noundef %15) #6
  %24 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net, align 4
  %_tx.i.i33 = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 103
  %26 = ptrtoint ptr %_tx.i.i33 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %_tx.i.i33, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %27, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then14, %if.then11.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then11.cleanup_crit_edge ], [ 0, %if.then14 ], [ 0, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_relative(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipheth_rcvbulk_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end [
    i32 -2, label %if.end.cleanup_crit_edge
    i32 -104, label %if.end.cleanup_crit_edge55
    i32 -108, label %if.end.cleanup_crit_edge56
    i32 -71, label %if.end.cleanup_crit_edge57
    i32 0, label %sw.epilog
  ]

if.end.cleanup_crit_edge57:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.cleanup_crit_edge56:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.cleanup_crit_edge55:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %intf = getelementptr inbounds %struct.ipheth_device, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %intf, align 4
  %dev2 = getelementptr inbounds %struct.usb_interface, ptr %6, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %3) #9
  br label %cleanup

sw.epilog:                                        ; preds = %if.end
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %7 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp3 = icmp ult i32 %8, 3
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %net = getelementptr inbounds %struct.ipheth_device, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net, align 4
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 36, i32 10
  %11 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_length_errors, align 8
  %inc = add i32 %12, 1
  store i32 %inc, ptr %rx_length_errors, align 8
  br label %cleanup

if.end5:                                          ; preds = %sw.epilog
  %sub = add i32 %8, -2
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %13 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %transfer_buffer, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %sub, i32 noundef 2592) #6
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %do.end10, label %if.end16

do.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %intf11 = getelementptr inbounds %struct.ipheth_device, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %intf11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %intf11, align 4
  %dev12 = getelementptr inbounds %struct.usb_interface, ptr %16, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28) #9
  %net13 = getelementptr inbounds %struct.ipheth_device, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %net13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net13, align 4
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 36, i32 6
  %19 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_dropped, align 8
  %inc15 = add i32 %20, 1
  store i32 %inc15, ptr %rx_dropped, align 8
  br label %cleanup

if.end16:                                         ; preds = %if.end5
  %add.ptr = getelementptr i8, ptr %14, i32 2
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %sub) #6
  %21 = call ptr @memcpy(ptr %call.i, ptr %add.ptr, i32 %sub)
  %net18 = getelementptr inbounds %struct.ipheth_device, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %net18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net18, align 4
  %24 = getelementptr inbounds %struct.anon.44, ptr %call.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %23, ptr %24, align 8
  %26 = load ptr, ptr %net18, align 4
  %call20 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i.i, ptr noundef %26) #6
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 18
  %27 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %call20, ptr %protocol, align 8
  %28 = ptrtoint ptr %net18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %net18, align 4
  %stats22 = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 36
  %30 = ptrtoint ptr %stats22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %stats22, align 8
  %inc23 = add i32 %31, 1
  store i32 %inc23, ptr %stats22, align 8
  %32 = load ptr, ptr %net18, align 4
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 36, i32 2
  %33 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_bytes, align 8
  %add = add i32 %34, %sub
  store i32 %add, ptr %rx_bytes, align 8
  %confirmed_pairing = getelementptr inbounds %struct.ipheth_device, ptr %1, i32 0, i32 11
  %35 = ptrtoint ptr %confirmed_pairing to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %confirmed_pairing, align 4
  %call26 = tail call i32 @netif_rx(ptr noundef nonnull %call.i.i) #6
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %rx_urb.i = getelementptr inbounds %struct.ipheth_device, ptr %1, i32 0, i32 4
  %38 = ptrtoint ptr %rx_urb.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rx_urb.i, align 4
  %bulk_in.i = getelementptr inbounds %struct.ipheth_device, ptr %1, i32 0, i32 8
  %40 = ptrtoint ptr %bulk_in.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %bulk_in.i, align 4
  %conv.i = zext i8 %41 to i32
  %42 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %37, align 8
  %shl.i.i = shl i32 %43, 8
  %shl1.i.i = shl nuw nsw i32 %conv.i, 15
  %or.i.i = or i32 %shl.i.i, %shl1.i.i
  %or3.i = or i32 %or.i.i, -1073741696
  %rx_buf.i = getelementptr inbounds %struct.ipheth_device, ptr %1, i32 0, i32 6
  %44 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rx_buf.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %39, i32 0, i32 8
  %46 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %37, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %39, i32 0, i32 10
  %47 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or3.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %39, i32 0, i32 14
  %48 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %39, i32 0, i32 19
  %49 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1516, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %39, i32 0, i32 28
  %50 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @ipheth_rcvbulk_callback, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %39, i32 0, i32 27
  %51 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %1, ptr %context4.i.i, align 4
  %52 = load ptr, ptr %rx_urb.i, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %52, i32 0, i32 13
  %53 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %transfer_flags.i, align 4
  %or5.i = or i32 %54, 4
  store i32 %or5.i, ptr %transfer_flags.i, align 4
  %55 = load ptr, ptr %rx_urb.i, align 4
  %call7.i = tail call i32 @usb_submit_urb(ptr noundef %55, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i, label %if.end16.cleanup_crit_edge, label %do.end.i

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %intf.i = getelementptr inbounds %struct.ipheth_device, ptr %1, i32 0, i32 1
  %56 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %intf.i, align 4
  %dev8.i = getelementptr inbounds %struct.usb_interface, ptr %57, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.end16.cleanup_crit_edge, %do.end10, %if.then4, %do.end, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge55, %if.end.cleanup_crit_edge56, %if.end.cleanup_crit_edge57, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipheth_sndbulk_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %0 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status1, align 4
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %1, label %do.end [
    i32 0, label %if.then12
    i32 -108, label %if.end.if.else_crit_edge
    i32 -104, label %if.end.if.else_crit_edge25
    i32 -2, label %if.end.if.else_crit_edge26
  ]

if.end.if.else_crit_edge26:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.end.if.else_crit_edge25:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %intf = getelementptr inbounds %struct.ipheth_device, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %intf, align 4
  %dev9 = getelementptr inbounds %struct.usb_interface, ptr %6, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.33, i32 noundef %1) #9
  br label %if.else

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %net = getelementptr inbounds %struct.ipheth_device, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 103
  %9 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %10) #6
  br label %cleanup

if.else:                                          ; preds = %do.end, %if.end.if.else_crit_edge, %if.end.if.else_crit_edge25, %if.end.if.else_crit_edge26
  %carrier_work = getelementptr inbounds %struct.ipheth_device, ptr %3, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %11 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %carrier_work, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then12, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_unlink_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ipheth_ethtool_op_get_link(ptr nocapture noundef readonly %net) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %net1 = getelementptr i8, ptr %net, i32 2312
  %0 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net1, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %4 = lshr i32 %3, 2
  %.lobit = and i32 %4, 1
  %5 = xor i32 %.lobit, 1
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !93, !94, !95, !96}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @__initcall__kmod_ipheth__344_544_ipheth_driver_init6, !1, !"__initcall__kmod_ipheth__344_544_ipheth_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/usb/ipheth.c", i32 544, i32 1}
!2 = !{ptr @__exitcall_ipheth_driver_exit, !1, !"__exitcall_ipheth_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author345, !4, !"__UNIQUE_ID_author345", i1 false, i1 false}
!4 = !{!"../drivers/net/usb/ipheth.c", i32 546, i32 1}
!5 = !{ptr @__UNIQUE_ID_description346, !6, !"__UNIQUE_ID_description346", i1 false, i1 false}
!6 = !{!"../drivers/net/usb/ipheth.c", i32 547, i32 1}
!7 = !{ptr @__UNIQUE_ID_file347, !8, !"__UNIQUE_ID_file347", i1 false, i1 false}
!8 = !{!"../drivers/net/usb/ipheth.c", i32 548, i32 1}
!9 = !{ptr @__UNIQUE_ID_license348, !8, !"__UNIQUE_ID_license348", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ipheth_driver, !12, !"ipheth_driver", i1 false, i1 false}
!12 = !{!"../drivers/net/usb/ipheth.c", i32 536, i32 26}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/usb/ipheth.c", i32 446, i32 24}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/usb/ipheth.c", i32 457, i32 3}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ipheth_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @ipheth_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/usb/ipheth.c", i32 470, i32 3}
!25 = !{ptr @ipheth_probe._entry.7, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @ipheth_probe._entry_ptr.9, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @ipheth_probe.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/net/usb/ipheth.c", i32 484, i32 2}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @ipheth_probe.__key.11, !28, !"__key", i1 false, i1 false}
!31 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/usb/ipheth.c", i32 488, i32 3}
!34 = !{ptr @ipheth_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @ipheth_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/usb/ipheth.c", i32 499, i32 3}
!38 = !{ptr @ipheth_probe._entry.16, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @ipheth_probe._entry_ptr.18, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/usb/ipheth.c", i32 506, i32 2}
!42 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ipheth_probe._entry.19, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @ipheth_probe._entry_ptr.22, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @ipheth_netdev_ops, !46, !"ipheth_netdev_ops", i1 false, i1 false}
!46 = !{!"../drivers/net/usb/ipheth.c", i32 422, i32 36}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/usb/ipheth.c", i32 257, i32 3}
!49 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @ipheth_carrier_set._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @ipheth_carrier_set._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/usb/ipheth.c", i32 327, i32 3}
!54 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ipheth_rx_submit._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @ipheth_rx_submit._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/usb/ipheth.c", i32 185, i32 3}
!59 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @ipheth_rcvbulk_callback._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @ipheth_rcvbulk_callback._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/usb/ipheth.c", i32 199, i32 3}
!64 = !{ptr @ipheth_rcvbulk_callback._entry.29, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @ipheth_rcvbulk_callback._entry_ptr.31, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/usb/ipheth.c", i32 369, i32 3}
!68 = !{ptr @__func__.ipheth_tx, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @ipheth_tx._entry, !70, !"_entry", i1 false, i1 false}
!70 = !{!"../drivers/net/usb/ipheth.c", i32 389, i32 3}
!71 = !{ptr @ipheth_tx._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/usb/ipheth.c", i32 229, i32 3}
!74 = !{ptr @ipheth_sndbulk_callback._entry, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @ipheth_sndbulk_callback._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/usb/ipheth.c", i32 407, i32 2}
!78 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @ipheth_tx_timeout._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @ipheth_tx_timeout._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/usb/ipheth.c", i32 298, i32 3}
!83 = !{ptr @ipheth_get_macaddr._entry, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @ipheth_get_macaddr._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/usb/ipheth.c", i32 301, i32 3}
!87 = !{ptr @ipheth_get_macaddr._entry.37, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @ipheth_get_macaddr._entry_ptr.39, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @ops, !90, !"ops", i1 false, i1 false}
!90 = !{!"../drivers/net/usb/ipheth.c", i32 418, i32 33}
!91 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/usb/ipheth.c", i32 533, i32 2}
!93 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @ipheth_disconnect._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @ipheth_disconnect._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @ipheth_table, !97, !"ipheth_table", i1 false, i1 false}
!97 = !{!"../drivers/net/usb/ipheth.c", i32 79, i32 35}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{i8 0, i8 2}
