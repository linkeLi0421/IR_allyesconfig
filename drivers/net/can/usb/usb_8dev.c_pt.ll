; ModuleID = '/llk/IR_all_yes/drivers/net/can/usb/usb_8dev.c_pt.bc'
source_filename = "../drivers/net/can/usb/usb_8dev.c"
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
%struct.can_bittiming_const = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_8dev_cmd_msg = type { i8, i8, i8, i8, i8, [10 x i8], i8 }
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
%struct.usb_8dev_priv = type { %struct.can_priv, ptr, ptr, %struct.atomic_t, %struct.usb_anchor, [20 x %struct.usb_8dev_tx_urb_context], %struct.usb_anchor, %struct.can_berr_counter, ptr, %struct.mutex, [20 x ptr], [20 x i32] }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.can_clock = type { i32 }
%struct.usb_8dev_tx_urb_context = type { ptr, i32 }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.can_berr_counter = type { i16, i16 }
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
%struct.can_frame = type { i32, %union.anon.145, i8, i8, i8, [8 x i8] }
%union.anon.145 = type { i8 }
%struct.usb_8dev_tx_msg = type <{ i8, i8, i32, i8, [8 x i8], i8 }>
%struct.usb_8dev_rx_msg = type <{ i8, i8, i8, i32, i8, [8 x i8], i32, i8 }>

@__initcall__kmod_usb_8dev__464_1017_usb_8dev_driver_init6 = internal global ptr @usb_8dev_driver_init, section ".initcall6.init", align 4
@usb_8dev_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @usb_8dev_probe, ptr @usb_8dev_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usb_8dev_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_usb_8dev_driver_exit = internal global ptr @usb_8dev_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author465 = internal constant [60 x i8] c"usb_8dev.author=Bernd Krumboeck <krumboeck@universalnet.at>\00", section ".modinfo", align 1
@__UNIQUE_ID_description466 = internal constant [65 x i8] c"usb_8dev.description=CAN driver for 8 devices USB2CAN interfaces\00", section ".modinfo", align 1
@__UNIQUE_ID_file467 = internal constant [43 x i8] c"usb_8dev.file=drivers/net/can/usb/usb_8dev\00", section ".modinfo", align 1
@__UNIQUE_ID_license468 = internal constant [24 x i8] c"usb_8dev.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usb_8dev\00", [23 x i8] zeroinitializer }, align 32
@usb_8dev_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1155, i16 4660, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"USB2CAN converter\00", [46 x i8] zeroinitializer }, align 32
@usb_8dev_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 913, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ignoring: not an USB2CAN converter\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"usb_8dev_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/net/can/usb/usb_8dev.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usb_8dev_probe._entry_ptr = internal global ptr @usb_8dev_probe._entry, section ".printk_index", align 4
@usb_8dev_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 919, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Couldn't alloc candev\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@usb_8dev_probe._entry_ptr.10 = internal global ptr @usb_8dev_probe._entry.7, section ".printk_index", align 4
@usb_8dev_bittiming_const = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"usb_8dev\00\00\00\00\00\00\00\00", i32 1, i32 16, i32 1, i32 8, i32 4, i32 1, i32 1024, i32 1 }, [48 x i8] zeroinitializer }, align 32
@usb_8dev_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @usb_8dev_open, ptr @usb_8dev_close, ptr @usb_8dev_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @can_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@usb_8dev_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&priv->usb_8dev_cmd_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"couldn't register CAN device: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"can't get firmware version\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"firmware: %d.%d, hardware: %d.%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"couldn't start device\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sending command message failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no command message answer\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"couldn't start device: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"No memory left for USB buffer\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"couldn't setup read URBs\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rx performance may be slow\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"couldn't submit control: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Rx URB aborted (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"format error\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed resubmitting read bulk urb: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"frame type %d unknown\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unknown status/error message (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"couldn't stop device\00", [43 x i8] zeroinitializer }, align 32
@__const.usb_8dev_cmd_close.outmsg = private unnamed_addr constant %struct.usb_8dev_cmd_msg { i8 0, i8 0, i8 3, i8 0, i8 0, [10 x i8] zeroinitializer, i8 0 }, align 1
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"couldn't find free context\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"failed tx_urb %d\0A\00", [46 x i8] zeroinitializer }, align 32
@can_skb_headroom_valid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/can/skb.h\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Tx URB aborted (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->wait\00", [18 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->lock\00", [18 x i8] zeroinitializer }, align 32
@__const.usb_8dev_cmd_version.outmsg = private unnamed_addr constant %struct.usb_8dev_cmd_msg { i8 0, i8 0, i8 12, i8 0, i8 0, [10 x i8] zeroinitializer, i8 0 }, align 1
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"device disconnected\0A\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 16, i64 12, i64 13]
@__sancov_gen_cov_switch_values.39 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967188, i64 4294967225, i64 4294967264, i64 4294967294]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.41 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.42 = internal global [13 x i64] [i64 11, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 32, i64 33, i64 35, i64 36, i64 37, i64 39]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@___asan_gen_.44 = private unnamed_addr constant [16 x i8] c"usb_8dev_driver\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1010, i32 26 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1017, i32 1 }
@___asan_gen_.50 = private unnamed_addr constant [15 x i8] c"usb_8dev_table\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 106, i32 35 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 912, i32 42 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 913, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 919, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [25 x i8] c"usb_8dev_bittiming_const\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 882, i32 41 }
@___asan_gen_.86 = private unnamed_addr constant [20 x i8] c"usb_8dev_netdev_ops\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 875, i32 36 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 959, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 964, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 970, i32 22 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 974, i32 5 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 322, i32 24 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 215, i32 22 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 223, i32 22 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 820, i32 23 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 742, i32 23 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 776, i32 23 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 782, i32 23 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 796, i32 22 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 519, i32 23 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 528, i32 29 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 550, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 486, i32 29 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 431, i32 8 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 859, i32 23 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 683, i32 22 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 698, i32 23 }
@___asan_gen_.153 = private unnamed_addr constant [27 x i8] c"../include/linux/can/skb.h\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 104, i32 6 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 579, i32 23 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 1367, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 1368, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.171 = private constant [34 x i8] c"../drivers/net/can/usb/usb_8dev.c\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1001, i32 29 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_author465, ptr @__UNIQUE_ID_description466, ptr @__UNIQUE_ID_file467, ptr @__UNIQUE_ID_license468, ptr @__exitcall_usb_8dev_driver_exit, ptr @__initcall__kmod_usb_8dev__464_1017_usb_8dev_driver_init6, ptr @usb_8dev_driver_exit, ptr @usb_8dev_probe._entry, ptr @usb_8dev_probe._entry.7, ptr @usb_8dev_probe._entry_ptr, ptr @usb_8dev_probe._entry_ptr.10, ptr @usb_8dev_driver, ptr @.str, ptr @usb_8dev_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @usb_8dev_bittiming_const, ptr @usb_8dev_netdev_ops, ptr @usb_8dev_probe.__key, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @init_usb_anchor.__key, ptr @.str.33, ptr @init_usb_anchor.__key.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_8dev_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_8dev_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_8dev_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_8dev_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_8dev_bittiming_const to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_8dev_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_8dev_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_8dev_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @usb_8dev_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usb_8dev_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_deregister(ptr noundef nonnull @usb_8dev_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_8dev_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %inmsg.i = alloca %struct.usb_8dev_cmd_msg, align 1
  %outmsg.i = alloca %struct.usb_8dev_cmd_msg, align 1
  %buf = alloca [18 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %buf) #9
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = call ptr @memset(ptr %buf, i32 255, i32 18)
  %1 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %2, i32 -128
  %iProduct = getelementptr i8, ptr %2, i32 943
  %3 = ptrtoint ptr %iProduct to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %iProduct, align 1
  %conv = zext i8 %4 to i32
  %call1 = call i32 @usb_string(ptr noundef %add.ptr.i, i32 noundef %conv, ptr noundef nonnull %buf, i32 noundef 18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(18) %buf, ptr noundef nonnull dereferenceable(18) @.str.1, i32 18) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %do.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.2) #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call5 = call ptr @alloc_candev_mqs(i32 noundef 968, i32 noundef 20, i32 noundef 1, i32 noundef 1) #9
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end10, label %if.end12

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev11 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.8) #13
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %add.ptr.i93 = getelementptr i8, ptr %call5, i32 2304
  %udev = getelementptr i8, ptr %call5, i32 2616
  %5 = ptrtoint ptr %udev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr.i, ptr %udev, align 4
  %netdev14 = getelementptr i8, ptr %call5, i32 2620
  %6 = ptrtoint ptr %netdev14 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5, ptr %netdev14, align 4
  %state = getelementptr i8, ptr %call5, i32 2472
  %7 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %state, align 4
  %clock = getelementptr i8, ptr %call5, i32 2440
  %8 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 32000000, ptr %clock, align 4
  %bittiming_const = getelementptr i8, ptr %call5, i32 2332
  %9 = ptrtoint ptr %bittiming_const to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @usb_8dev_bittiming_const, ptr %bittiming_const, align 4
  %do_set_mode = getelementptr i8, ptr %call5, i32 2596
  %10 = ptrtoint ptr %do_set_mode to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @usb_8dev_set_mode, ptr %do_set_mode, align 4
  %do_get_berr_counter = getelementptr i8, ptr %call5, i32 2608
  %11 = ptrtoint ptr %do_get_berr_counter to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @usb_8dev_get_berr_counter, ptr %do_get_berr_counter, align 4
  %ctrlmode_supported = getelementptr i8, ptr %call5, i32 2480
  %12 = ptrtoint ptr %ctrlmode_supported to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 267, ptr %ctrlmode_supported, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call5, i32 0, i32 16
  %13 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @usb_8dev_netdev_ops, ptr %netdev_ops, align 8
  %flags = getelementptr inbounds %struct.net_device, ptr %call5, i32 0, i32 14
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 8
  %or = or i32 %15, 262144
  store i32 %or, ptr %flags, align 8
  %rx_submitted = getelementptr i8, ptr %call5, i32 2900
  %16 = getelementptr i8, ptr %call5, i32 2908
  %17 = call ptr @memset(ptr %16, i32 0, i32 104)
  %18 = ptrtoint ptr %rx_submitted to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %rx_submitted, ptr %rx_submitted, align 4
  %prev.i.i = getelementptr i8, ptr %call5, i32 2904
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %rx_submitted, ptr %prev.i.i, align 4
  call void @__init_waitqueue_head(ptr noundef %16, ptr noundef nonnull @.str.33, ptr noundef nonnull @init_usb_anchor.__key) #9
  %lock.i = getelementptr i8, ptr %call5, i32 2960
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @init_usb_anchor.__key.34, i16 noundef signext 3) #9
  %tx_submitted = getelementptr i8, ptr %call5, i32 2628
  %20 = getelementptr i8, ptr %call5, i32 2636
  %21 = call ptr @memset(ptr %20, i32 0, i32 104)
  %22 = ptrtoint ptr %tx_submitted to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %tx_submitted, ptr %tx_submitted, align 4
  %prev.i.i94 = getelementptr i8, ptr %call5, i32 2632
  %23 = ptrtoint ptr %prev.i.i94 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %tx_submitted, ptr %prev.i.i94, align 4
  call void @__init_waitqueue_head(ptr noundef %20, ptr noundef nonnull @.str.33, ptr noundef nonnull @init_usb_anchor.__key) #9
  %lock.i96 = getelementptr i8, ptr %call5, i32 2688
  call void @__raw_spin_lock_init(ptr noundef %lock.i96, ptr noundef nonnull @.str.35, ptr noundef nonnull @init_usb_anchor.__key.34, i16 noundef signext 3) #9
  %active_tx_urbs = getelementptr i8, ptr %call5, i32 2624
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %active_tx_urbs, i32 noundef 4) #9
  %24 = ptrtoint ptr %active_tx_urbs to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 0, ptr %active_tx_urbs, align 4
  %echo_index = getelementptr i8, ptr %call5, i32 2744
  %25 = ptrtoint ptr %echo_index to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 20, ptr %echo_index, align 4
  %echo_index.1 = getelementptr i8, ptr %call5, i32 2752
  %26 = ptrtoint ptr %echo_index.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 20, ptr %echo_index.1, align 4
  %echo_index.2 = getelementptr i8, ptr %call5, i32 2760
  %27 = ptrtoint ptr %echo_index.2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 20, ptr %echo_index.2, align 4
  %echo_index.3 = getelementptr i8, ptr %call5, i32 2768
  %28 = ptrtoint ptr %echo_index.3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 20, ptr %echo_index.3, align 4
  %echo_index.4 = getelementptr i8, ptr %call5, i32 2776
  %29 = ptrtoint ptr %echo_index.4 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 20, ptr %echo_index.4, align 4
  %echo_index.5 = getelementptr i8, ptr %call5, i32 2784
  %30 = ptrtoint ptr %echo_index.5 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 20, ptr %echo_index.5, align 4
  %echo_index.6 = getelementptr i8, ptr %call5, i32 2792
  %31 = ptrtoint ptr %echo_index.6 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 20, ptr %echo_index.6, align 4
  %echo_index.7 = getelementptr i8, ptr %call5, i32 2800
  %32 = ptrtoint ptr %echo_index.7 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 20, ptr %echo_index.7, align 4
  %echo_index.8 = getelementptr i8, ptr %call5, i32 2808
  %33 = ptrtoint ptr %echo_index.8 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 20, ptr %echo_index.8, align 4
  %echo_index.9 = getelementptr i8, ptr %call5, i32 2816
  %34 = ptrtoint ptr %echo_index.9 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 20, ptr %echo_index.9, align 4
  %echo_index.10 = getelementptr i8, ptr %call5, i32 2824
  %35 = ptrtoint ptr %echo_index.10 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 20, ptr %echo_index.10, align 4
  %echo_index.11 = getelementptr i8, ptr %call5, i32 2832
  %36 = ptrtoint ptr %echo_index.11 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 20, ptr %echo_index.11, align 4
  %echo_index.12 = getelementptr i8, ptr %call5, i32 2840
  %37 = ptrtoint ptr %echo_index.12 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 20, ptr %echo_index.12, align 4
  %echo_index.13 = getelementptr i8, ptr %call5, i32 2848
  %38 = ptrtoint ptr %echo_index.13 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 20, ptr %echo_index.13, align 4
  %echo_index.14 = getelementptr i8, ptr %call5, i32 2856
  %39 = ptrtoint ptr %echo_index.14 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 20, ptr %echo_index.14, align 4
  %echo_index.15 = getelementptr i8, ptr %call5, i32 2864
  %40 = ptrtoint ptr %echo_index.15 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 20, ptr %echo_index.15, align 4
  %echo_index.16 = getelementptr i8, ptr %call5, i32 2872
  %41 = ptrtoint ptr %echo_index.16 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 20, ptr %echo_index.16, align 4
  %echo_index.17 = getelementptr i8, ptr %call5, i32 2880
  %42 = ptrtoint ptr %echo_index.17 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 20, ptr %echo_index.17, align 4
  %echo_index.18 = getelementptr i8, ptr %call5, i32 2888
  %43 = ptrtoint ptr %echo_index.18 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 20, ptr %echo_index.18, align 4
  %echo_index.19 = getelementptr i8, ptr %call5, i32 2896
  %44 = ptrtoint ptr %echo_index.19 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 20, ptr %echo_index.19, align 4
  %dev22 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev22, i32 noundef 16, i32 noundef 3520) #9
  %cmd_msg_buffer = getelementptr i8, ptr %call5, i32 3016
  %45 = ptrtoint ptr %cmd_msg_buffer to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i, ptr %cmd_msg_buffer, align 4
  %tobool25.not = icmp eq ptr %call.i, null
  br i1 %tobool25.not, label %if.end12.cleanup_candev_crit_edge, label %if.end27

if.end12.cleanup_candev_crit_edge:                ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup_candev

if.end27:                                         ; preds = %if.end12
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %46 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %add.ptr.i93, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %call5, i32 0, i32 133, i32 1
  %47 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %dev22, ptr %parent, align 8
  %usb_8dev_cmd_lock = getelementptr i8, ptr %call5, i32 3020
  call void @__mutex_init(ptr noundef %usb_8dev_cmd_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @usb_8dev_probe.__key) #9
  %call33 = call i32 @register_candev(ptr noundef nonnull %call5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.then35

if.then35:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call5, ptr noundef nonnull @.str.12, i32 noundef %call33) #13
  br label %cleanup_candev

if.end36:                                         ; preds = %if.end27
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %inmsg.i) #9
  %48 = call ptr @memset(ptr %inmsg.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %outmsg.i) #9
  %49 = call ptr @memcpy(ptr %outmsg.i, ptr @__const.usb_8dev_cmd_version.outmsg, i32 16)
  %call.i97 = call fastcc i32 @usb_8dev_send_cmd(ptr noundef %add.ptr.i93, ptr noundef nonnull %outmsg.i, ptr noundef nonnull %inmsg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %tobool.not.i = icmp eq i32 %call.i97, 0
  br i1 %tobool.not.i, label %if.else, label %if.then39

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %outmsg.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %inmsg.i) #9
  call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call5, ptr noundef nonnull @.str.13) #13
  %50 = ptrtoint ptr %netdev14 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %netdev14, align 4
  call void @unregister_netdev(ptr noundef %51) #9
  br label %cleanup_candev

if.else:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %52 = getelementptr inbounds %struct.usb_8dev_cmd_msg, ptr %inmsg.i, i32 0, i32 5
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %outmsg.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %inmsg.i) #9
  %shr = lshr i32 %54, 24
  %shr40 = lshr i32 %54, 16
  %and41 = and i32 %shr40, 255
  %shr42 = lshr i32 %54, 8
  %and43 = and i32 %shr42, 255
  %and44 = and i32 %54, 255
  call void (ptr, ptr, ...) @netdev_info(ptr noundef nonnull %call5, ptr noundef nonnull @.str.14, i32 noundef %shr, i32 noundef %and41, i32 noundef %and43, i32 noundef %and44) #13
  br label %cleanup

cleanup_candev:                                   ; preds = %if.then39, %if.then35, %if.end12.cleanup_candev_crit_edge
  %err.0 = phi i32 [ %call33, %if.then35 ], [ %call.i97, %if.then39 ], [ -12, %if.end12.cleanup_candev_crit_edge ]
  call void @free_candev(ptr noundef nonnull %call5) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup_candev, %if.else, %do.end10, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %err.0, %cleanup_candev ], [ 0, %if.else ], [ -12, %do.end10 ]
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_8dev_disconnect(ptr nocapture noundef %intf) #2 align 64 {
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
  %netdev = getelementptr inbounds %struct.usb_8dev_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.36) #13
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 4
  tail call void @unregister_netdev(ptr noundef %5) #9
  tail call fastcc void @unlink_all_urbs(ptr noundef nonnull %1)
  %6 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev, align 4
  tail call void @free_candev(ptr noundef %7) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_candev_mqs(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_8dev_set_mode(ptr noundef %netdev, i32 noundef %mode) #2 align 64 {
entry:
  %outmsg.i = alloca %struct.usb_8dev_cmd_msg, align 1
  %inmsg.i = alloca %struct.usb_8dev_cmd_msg, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cond = icmp eq i32 %mode, 1
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %outmsg.i) #9
  %0 = getelementptr inbounds %struct.usb_8dev_cmd_msg, ptr %outmsg.i, i32 0, i32 2
  %1 = getelementptr inbounds %struct.usb_8dev_cmd_msg, ptr %outmsg.i, i32 0, i32 3
  %2 = getelementptr inbounds %struct.usb_8dev_cmd_msg, ptr %outmsg.i, i32 0, i32 5
  %3 = getelementptr inbounds %struct.usb_8dev_cmd_msg, ptr %outmsg.i, i32 0, i32 5, i32 1
  %4 = getelementptr inbounds %struct.usb_8dev_cmd_msg, ptr %outmsg.i, i32 0, i32 5, i32 2
  %5 = getelementptr inbounds %struct.usb_8dev_cmd_msg, ptr %outmsg.i, i32 0, i32 5, i32 3
  %6 = getelementptr inbounds %struct.usb_8dev_cmd_msg, ptr %outmsg.i, i32 0, i32 5, i32 5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %inmsg.i) #9
  %ctrlmode2.i = getelementptr i8, ptr %netdev, i32 2476
  %7 = call ptr @memset(ptr %inmsg.i, i32 255, i32 16)
  %8 = ptrtoint ptr %ctrlmode2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ctrlmode2.i, align 4
  %10 = call ptr @memset(ptr %outmsg.i, i32 0, i32 16)
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %0, align 1
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 9, ptr %1, align 1
  %prop_seg.i = getelementptr i8, ptr %netdev, i32 2352
  %13 = ptrtoint ptr %prop_seg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %prop_seg.i, align 4
  %phase_seg1.i = getelementptr i8, ptr %netdev, i32 2356
  %15 = ptrtoint ptr %phase_seg1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %phase_seg1.i, align 4
  %add.i = add i32 %16, %14
  %conv.i = trunc i32 %add.i to i8
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv.i, ptr %2, align 1
  %phase_seg2.i = getelementptr i8, ptr %netdev, i32 2360
  %18 = ptrtoint ptr %phase_seg2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %phase_seg2.i, align 4
  %conv3.i = trunc i32 %19 to i8
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv3.i, ptr %3, align 1
  %sjw.i = getelementptr i8, ptr %netdev, i32 2364
  %21 = ptrtoint ptr %sjw.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sjw.i, align 4
  %conv6.i = trunc i32 %22 to i8
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv6.i, ptr %4, align 1
  %brp.i = getelementptr i8, ptr %netdev, i32 2368
  %24 = ptrtoint ptr %brp.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %brp.i, align 4
  %conv9.i = trunc i32 %25 to i16
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %conv9.i, ptr %5, align 1
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 8, i32 10
  %and12.i = lshr i32 %9, 1
  %27 = and i32 %and12.i, 5
  %28 = or i32 %spec.select.i, %27
  %29 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %28, ptr %6, align 1
  %call.i = call fastcc i32 @usb_8dev_send_cmd(ptr noundef %add.ptr.i, ptr noundef nonnull %outmsg.i, ptr noundef nonnull %inmsg.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %inmsg.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %outmsg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %if.then

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.15) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ %call.i, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @usb_8dev_get_berr_counter(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %bec) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bec1 = getelementptr i8, ptr %netdev, i32 3012
  %0 = ptrtoint ptr %bec1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %bec1, align 4
  %2 = ptrtoint ptr %bec to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %bec, align 2
  %rxerr = getelementptr i8, ptr %netdev, i32 3014
  %3 = ptrtoint ptr %rxerr to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %rxerr, align 2
  %rxerr4 = getelementptr inbounds %struct.can_berr_counter, ptr %bec, i32 0, i32 1
  %5 = ptrtoint ptr %rxerr4 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %rxerr4, align 2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usb_8dev_send_cmd(ptr noundef %priv, ptr nocapture noundef %out, ptr nocapture noundef %in) unnamed_addr #2 align 64 {
entry:
  %actual_length.i = alloca i32, align 4
  %num_bytes_read = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_bytes_read) #9
  %0 = ptrtoint ptr %num_bytes_read to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num_bytes_read, align 4, !annotation !97
  %netdev1 = getelementptr inbounds %struct.usb_8dev_priv, ptr %priv, i32 0, i32 2
  %1 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %netdev1, align 4
  %3 = ptrtoint ptr %out to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 17, ptr %out, align 1
  %end = getelementptr inbounds %struct.usb_8dev_cmd_msg, ptr %out, i32 0, i32 6
  %4 = ptrtoint ptr %end to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 34, ptr %end, align 1
  %usb_8dev_cmd_lock = getelementptr inbounds %struct.usb_8dev_priv, ptr %priv, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %usb_8dev_cmd_lock, i32 noundef 0) #9
  %cmd_msg_buffer = getelementptr inbounds %struct.usb_8dev_priv, ptr %priv, i32 0, i32 8
  %5 = ptrtoint ptr %cmd_msg_buffer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cmd_msg_buffer, align 4
  %7 = call ptr @memcpy(ptr %6, ptr %out, i32 16)
  %8 = load ptr, ptr %cmd_msg_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length.i) #9
  %9 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %actual_length.i, align 4, !annotation !97
  %udev.i = getelementptr inbounds %struct.usb_8dev_priv, ptr %priv, i32 0, i32 1
  %10 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %udev.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i.i = shl i32 %13, 8
  %or.i = or i32 %shl.i.i, -1073610752
  %call2.i = call i32 @usb_bulk_msg(ptr noundef %11, i32 noundef %or.i, ptr noundef %8, i32 noundef 16, ptr noundef nonnull %actual_length.i, i32 noundef 1000) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %2, ptr noundef nonnull @.str.16) #13
  br label %failed

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %cmd_msg_buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cmd_msg_buffer, align 4
  %16 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %udev.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %shl.i.i43 = shl i32 %19, 8
  %or2.i = or i32 %shl.i.i43, -1073643392
  %call3.i = call i32 @usb_bulk_msg(ptr noundef %17, i32 noundef %or2.i, ptr noundef %15, i32 noundef 16, ptr noundef nonnull %num_bytes_read, i32 noundef 1000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp5 = icmp slt i32 %call3.i, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %2, ptr noundef nonnull @.str.17) #13
  br label %failed

if.end7:                                          ; preds = %if.end
  %20 = ptrtoint ptr %cmd_msg_buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cmd_msg_buffer, align 4
  %22 = call ptr @memcpy(ptr %in, ptr %21, i32 16)
  %23 = ptrtoint ptr %in to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %in, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %24)
  %cmp10.not = icmp eq i8 %24, 17
  br i1 %cmp10.not, label %lor.lhs.false, label %if.end7.if.then23_crit_edge

if.end7.if.then23_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

lor.lhs.false:                                    ; preds = %if.end7
  %end12 = getelementptr inbounds %struct.usb_8dev_cmd_msg, ptr %in, i32 0, i32 6
  %25 = ptrtoint ptr %end12 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %end12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %26)
  %cmp14.not = icmp eq i8 %26, 34
  br i1 %cmp14.not, label %lor.lhs.false16, label %lor.lhs.false.if.then23_crit_edge

lor.lhs.false.if.then23_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %27 = ptrtoint ptr %num_bytes_read to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_bytes_read, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %28)
  %cmp17.not = icmp eq i32 %28, 16
  br i1 %cmp17.not, label %lor.lhs.false19, label %lor.lhs.false16.if.then23_crit_edge

lor.lhs.false16.if.then23_crit_edge:              ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

lor.lhs.false19:                                  ; preds = %lor.lhs.false16
  %opt1 = getelementptr inbounds %struct.usb_8dev_cmd_msg, ptr %in, i32 0, i32 3
  %29 = ptrtoint ptr %opt1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %opt1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp21.not = icmp eq i8 %30, 0
  br i1 %cmp21.not, label %lor.lhs.false19.failed_crit_edge, label %lor.lhs.false19.if.then23_crit_edge

lor.lhs.false19.if.then23_crit_edge:              ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

lor.lhs.false19.failed_crit_edge:                 ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed

if.then23:                                        ; preds = %lor.lhs.false19.if.then23_crit_edge, %lor.lhs.false16.if.then23_crit_edge, %lor.lhs.false.if.then23_crit_edge, %if.end7.if.then23_crit_edge
  br label %failed

failed:                                           ; preds = %if.then23, %lor.lhs.false19.failed_crit_edge, %if.then6, %if.then
  %err.0 = phi i32 [ %call2.i, %if.then ], [ %call3.i, %if.then6 ], [ -71, %if.then23 ], [ %call3.i, %lor.lhs.false19.failed_crit_edge ]
  call void @mutex_unlock(ptr noundef %usb_8dev_cmd_lock) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_bytes_read) #9
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_8dev_open(ptr noundef %netdev) #2 align 64 {
entry:
  %outmsg.i.i = alloca %struct.usb_8dev_cmd_msg, align 1
  %inmsg.i.i = alloca %struct.usb_8dev_cmd_msg, align 1
  %buf_dma.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %call1 = tail call i32 @open_candev(ptr noundef %netdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %netdev1.i = getelementptr i8, ptr %netdev, i32 2620
  %0 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1.i, align 4
  %udev.i = getelementptr i8, ptr %netdev, i32 2616
  %rx_submitted.i = getelementptr i8, ptr %netdev, i32 2900
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end
  %i.087.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf_dma.i) #9
  %2 = ptrtoint ptr %buf_dma.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %buf_dma.i, align 4, !annotation !97
  %call.i = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.i.for.end.i_crit_edge, label %if.end.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end.i:                                         ; preds = %for.body.i
  %3 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %udev.i, align 4
  %call2.i = call ptr @usb_alloc_coherent(ptr noundef %4, i32 noundef 64, i32 noundef 3264, ptr noundef nonnull %buf_dma.i) #9
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.19) #13
  br label %for.end.sink.split.i

if.end5.i:                                        ; preds = %if.end.i
  %5 = ptrtoint ptr %buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %buf_dma.i, align 4
  %transfer_dma.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 15
  %7 = ptrtoint ptr %transfer_dma.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %transfer_dma.i, align 4
  %8 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udev.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i.i = shl i32 %11, 8
  %or9.i = or i32 %shl.i.i, -1073708928
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 8
  %12 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 10
  %13 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or9.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 14
  %14 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call2.i, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 19
  %15 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 64, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 28
  %16 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @usb_8dev_read_bulk_callback, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 27
  %17 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr.i, ptr %context4.i.i, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 13
  %18 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %transfer_flags.i, align 4
  %or10.i = or i32 %19, 4
  store i32 %or10.i, ptr %transfer_flags.i, align 4
  call void @usb_anchor_urb(ptr noundef nonnull %call.i, ptr noundef %rx_submitted.i) #9
  %call11.i = call i32 @usb_submit_urb(ptr noundef nonnull %call.i, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %for.inc.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %transfer_dma.i.le = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 15
  call void @usb_unanchor_urb(ptr noundef nonnull %call.i) #9
  %20 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %udev.i, align 4
  %22 = ptrtoint ptr %transfer_dma.i.le to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %transfer_dma.i.le, align 4
  call void @usb_free_coherent(ptr noundef %21, i32 noundef 64, ptr noundef nonnull %call2.i, i32 noundef %23) #9
  br label %for.end.sink.split.i

for.inc.i:                                        ; preds = %if.end5.i
  %arrayidx.i = getelementptr %struct.usb_8dev_priv, ptr %add.ptr.i, i32 0, i32 10, i32 %i.087.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call2.i, ptr %arrayidx.i, align 4
  %25 = ptrtoint ptr %buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buf_dma.i, align 4
  %arrayidx17.i = getelementptr %struct.usb_8dev_priv, ptr %add.ptr.i, i32 0, i32 11, i32 %i.087.i
  %27 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx17.i, align 4
  call void @usb_free_urb(ptr noundef nonnull %call.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf_dma.i) #9
  %inc.i = add nuw nsw i32 %i.087.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20
  br i1 %exitcond.not.i, label %for.inc.i.if.end25.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.if.end25.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i

for.end.sink.split.i:                             ; preds = %if.then13.i, %if.then4.i
  %err.1.ph.ph.i = phi i32 [ %call11.i, %if.then13.i ], [ -12, %if.then4.i ]
  call void @usb_free_urb(ptr noundef nonnull %call.i) #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.sink.split.i, %for.body.i.for.end.i_crit_edge
  %err.1.ph.i = phi i32 [ %err.1.ph.ph.i, %for.end.sink.split.i ], [ -12, %for.body.i.for.end.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf_dma.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.087.i)
  %cmp20.i = icmp eq i32 %i.087.i, 0
  br i1 %cmp20.i, label %if.then21.i, label %if.then24.i

if.then21.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %1, ptr noundef nonnull @.str.20) #13
  br label %usb_8dev_start.exit

if.then24.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %1, ptr noundef nonnull @.str.21) #13
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then24.i, %for.inc.i.if.end25.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %outmsg.i.i) #9
  %28 = getelementptr inbounds %struct.usb_8dev_cmd_msg, ptr %outmsg.i.i, i32 0, i32 2
  %29 = getelementptr inbounds %struct.usb_8dev_cmd_msg, ptr %outmsg.i.i, i32 0, i32 3
  %30 = getelementptr inbounds %struct.usb_8dev_cmd_msg, ptr %outmsg.i.i, i32 0, i32 5
  %31 = getelementptr inbounds %struct.usb_8dev_cmd_msg, ptr %outmsg.i.i, i32 0, i32 5, i32 1
  %32 = getelementptr inbounds %struct.usb_8dev_cmd_msg, ptr %outmsg.i.i, i32 0, i32 5, i32 2
  %33 = getelementptr inbounds %struct.usb_8dev_cmd_msg, ptr %outmsg.i.i, i32 0, i32 5, i32 3
  %34 = getelementptr inbounds %struct.usb_8dev_cmd_msg, ptr %outmsg.i.i, i32 0, i32 5, i32 5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %inmsg.i.i) #9
  %ctrlmode2.i.i = getelementptr i8, ptr %netdev, i32 2476
  %35 = call ptr @memset(ptr %inmsg.i.i, i32 255, i32 16)
  %36 = ptrtoint ptr %ctrlmode2.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ctrlmode2.i.i, align 4
  %38 = call ptr @memset(ptr %outmsg.i.i, i32 0, i32 16)
  %39 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 2, ptr %28, align 1
  %40 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 9, ptr %29, align 1
  %prop_seg.i.i = getelementptr i8, ptr %netdev, i32 2352
  %41 = ptrtoint ptr %prop_seg.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %prop_seg.i.i, align 4
  %phase_seg1.i.i = getelementptr i8, ptr %netdev, i32 2356
  %43 = ptrtoint ptr %phase_seg1.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %phase_seg1.i.i, align 4
  %add.i.i = add i32 %44, %42
  %conv.i.i = trunc i32 %add.i.i to i8
  %45 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv.i.i, ptr %30, align 1
  %phase_seg2.i.i = getelementptr i8, ptr %netdev, i32 2360
  %46 = ptrtoint ptr %phase_seg2.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %phase_seg2.i.i, align 4
  %conv3.i.i = trunc i32 %47 to i8
  %48 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv3.i.i, ptr %31, align 1
  %sjw.i.i = getelementptr i8, ptr %netdev, i32 2364
  %49 = ptrtoint ptr %sjw.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sjw.i.i, align 4
  %conv6.i.i = trunc i32 %50 to i8
  %51 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv6.i.i, ptr %32, align 1
  %brp.i.i = getelementptr i8, ptr %netdev, i32 2368
  %52 = ptrtoint ptr %brp.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %brp.i.i, align 4
  %conv9.i.i = trunc i32 %53 to i16
  %54 = ptrtoint ptr %33 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 2)
  store i16 %conv9.i.i, ptr %33, align 1
  %and.i.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 8, i32 10
  %and12.i.i = lshr i32 %37, 1
  %55 = and i32 %and12.i.i, 5
  %56 = or i32 %spec.select.i.i, %55
  %57 = ptrtoint ptr %34 to i32
  call void @__asan_storeN_noabort(i32 %57, i32 4)
  store i32 %56, ptr %34, align 1
  %call.i.i = call fastcc i32 @usb_8dev_send_cmd(ptr noundef %add.ptr.i, ptr noundef nonnull %outmsg.i.i, ptr noundef nonnull %inmsg.i.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %inmsg.i.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %outmsg.i.i) #9
  %58 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i.i, label %if.end25.i.if.end33.i_crit_edge [
    i32 0, label %usb_8dev_start.exit.thread
    i32 -19, label %if.then31.i
  ]

if.end25.i.if.end33.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

usb_8dev_start.exit.thread:                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  %state.i = getelementptr i8, ptr %netdev, i32 2472
  %59 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %state.i, align 4
  br label %if.end8

if.then31.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %netdev1.i, align 4
  call void @netif_device_detach(ptr noundef %61) #9
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then31.i, %if.end25.i.if.end33.i_crit_edge
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef %call.i.i) #13
  br label %usb_8dev_start.exit

usb_8dev_start.exit:                              ; preds = %if.end33.i, %if.then21.i
  %retval.0.i = phi i32 [ %err.1.ph.i, %if.then21.i ], [ %call.i.i, %if.end33.i ]
  %62 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %retval.0.i, label %usb_8dev_start.exit.if.end7_crit_edge [
    i32 0, label %usb_8dev_start.exit.if.end8_crit_edge
    i32 -19, label %if.then5
  ]

usb_8dev_start.exit.if.end8_crit_edge:            ; preds = %usb_8dev_start.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

usb_8dev_start.exit.if.end7_crit_edge:            ; preds = %usb_8dev_start.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then5:                                         ; preds = %usb_8dev_start.exit
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %netdev1.i, align 4
  call void @netif_device_detach(ptr noundef %64) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %usb_8dev_start.exit.if.end7_crit_edge
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.18, i32 noundef %retval.0.i) #13
  call void @close_candev(ptr noundef %netdev) #9
  br label %cleanup

if.end8:                                          ; preds = %usb_8dev_start.exit.if.end8_crit_edge, %usb_8dev_start.exit.thread
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %65 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %66, i32 0, i32 13
  call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %if.end7 ], [ 0, %if.end8 ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_8dev_close(ptr noundef %netdev) #2 align 64 {
entry:
  %inmsg.i = alloca %struct.usb_8dev_cmd_msg, align 1
  %outmsg.i = alloca %struct.usb_8dev_cmd_msg, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %inmsg.i) #9
  %0 = call ptr @memset(ptr %inmsg.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %outmsg.i) #9
  %1 = call ptr @memcpy(ptr %outmsg.i, ptr @__const.usb_8dev_cmd_close.outmsg, i32 16)
  %call.i = call fastcc i32 @usb_8dev_send_cmd(ptr noundef %add.ptr.i, ptr noundef nonnull %outmsg.i, ptr noundef nonnull %inmsg.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %outmsg.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %inmsg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.28) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %state = getelementptr i8, ptr %netdev, i32 2472
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %state, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %3 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %4, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  tail call fastcc void @unlink_all_urbs(ptr noundef %add.ptr.i)
  tail call void @close_candev(ptr noundef %netdev) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_8dev_start_xmit(ptr noundef %skb, ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %2 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %protocol.i, align 8
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.38)
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
  br i1 %cmp2.not.i, label %lor.rhs.i, label %if.then.i.can_dropped_invalid_skb.exit_crit_edge, !prof !98

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
  br i1 %cmp6.i, label %lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs.i.if.end34.i_crit_edge, !prof !99

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
  br i1 %cmp16.not.i, label %lor.rhs18.i, label %if.then14.i.can_dropped_invalid_skb.exit_crit_edge, !prof !98

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
  br i1 %cmp21.i, label %lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs18.i.if.end34.i_crit_edge, !prof !99

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
  br i1 %.b70.i.i, label %land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge, label %if.then.i.i, !prof !98

land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %can_dropped_invalid_skb.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @can_skb_headroom_valid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 104, i32 noundef 9, ptr noundef null) #9
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
  %call3 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.nomem_crit_edge, label %if.end5

if.end.nomem_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %nomem

if.end5:                                          ; preds = %if.end
  %udev = getelementptr i8, ptr %netdev, i32 2616
  %36 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %udev, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %call3, i32 0, i32 15
  %call6 = tail call ptr @usb_alloc_coherent(ptr noundef %37, i32 noundef 16, i32 noundef 2592, ptr noundef %transfer_dma) #9
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.19) #13
  br label %nomembuf

if.end9:                                          ; preds = %if.end5
  %38 = getelementptr inbounds i8, ptr %call6, i32 2
  %39 = call ptr @memset(ptr %38, i32 0, i32 14)
  %40 = ptrtoint ptr %call6 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 85, ptr %call6, align 1
  %flags = getelementptr inbounds %struct.usb_8dev_tx_msg, ptr %call6, i32 0, i32 1
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %flags, align 1
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %1, align 8
  %and = lshr i32 %43, 29
  %44 = trunc i32 %and to i8
  %45 = and i8 %44, 2
  store i8 %45, ptr %flags, align 1
  %46 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %46)
  %tobool17.not = icmp sgt i32 %46, -1
  br i1 %tobool17.not, label %if.end9.if.end23_crit_edge, label %if.then18

if.end9.if.end23_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then18:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %47 = or i8 %45, 1
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %flags, align 1
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.end9.if.end23_crit_edge
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %1, align 8
  %and25 = and i32 %50, 536870911
  %id = getelementptr inbounds %struct.usb_8dev_tx_msg, ptr %call6, i32 0, i32 2
  %51 = ptrtoint ptr %id to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 %and25, ptr %id, align 1
  %ctrlmode = getelementptr i8, ptr %netdev, i32 2476
  %52 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ctrlmode, align 4
  %and.i = and i32 %53, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end23.if.end.i_crit_edge, label %land.lhs.true.i

if.end23.if.end.i_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end23
  %54 = getelementptr inbounds %struct.can_frame, ptr %1, i32 0, i32 1
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %54, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %56)
  %cmp.i = icmp eq i8 %56, 8
  br i1 %cmp.i, label %land.lhs.true2.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %len8_dlc.i = getelementptr inbounds %struct.can_frame, ptr %1, i32 0, i32 4
  %57 = ptrtoint ptr %len8_dlc.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %len8_dlc.i, align 1
  %59 = add i8 %58, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %59)
  %60 = icmp ult i8 %59, 7
  br i1 %60, label %land.lhs.true2.i.can_get_cc_dlc.exit_crit_edge, label %land.lhs.true2.i.if.end.i_crit_edge

land.lhs.true2.i.if.end.i_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true2.i.can_get_cc_dlc.exit_crit_edge:   ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %can_get_cc_dlc.exit

if.end.i:                                         ; preds = %land.lhs.true2.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %if.end23.if.end.i_crit_edge
  %61 = getelementptr inbounds %struct.can_frame, ptr %1, i32 0, i32 1
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %61, align 4
  br label %can_get_cc_dlc.exit

can_get_cc_dlc.exit:                              ; preds = %if.end.i, %land.lhs.true2.i.can_get_cc_dlc.exit_crit_edge
  %retval.0.i152 = phi i8 [ %63, %if.end.i ], [ %58, %land.lhs.true2.i.can_get_cc_dlc.exit_crit_edge ]
  %dlc = getelementptr inbounds %struct.usb_8dev_tx_msg, ptr %call6, i32 0, i32 3
  %64 = ptrtoint ptr %dlc to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %retval.0.i152, ptr %dlc, align 1
  %data27 = getelementptr inbounds %struct.usb_8dev_tx_msg, ptr %call6, i32 0, i32 4
  %data28 = getelementptr inbounds %struct.can_frame, ptr %1, i32 0, i32 5
  %65 = getelementptr inbounds %struct.can_frame, ptr %1, i32 0, i32 1
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %65, align 4
  %conv30 = zext i8 %67 to i32
  %68 = call ptr @memcpy(ptr %data27, ptr %data28, i32 %conv30)
  %end = getelementptr inbounds %struct.usb_8dev_tx_msg, ptr %call6, i32 0, i32 5
  %69 = ptrtoint ptr %end to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 -86, ptr %end, align 1
  %echo_index = getelementptr i8, ptr %netdev, i32 2744
  %70 = ptrtoint ptr %echo_index to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %echo_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %71)
  %cmp32 = icmp eq i32 %71, 20
  br i1 %cmp32, label %can_get_cc_dlc.exit.for.end_crit_edge, label %for.inc

can_get_cc_dlc.exit.for.end_crit_edge:            ; preds = %can_get_cc_dlc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc:                                          ; preds = %can_get_cc_dlc.exit
  %echo_index.1 = getelementptr i8, ptr %netdev, i32 2752
  %72 = ptrtoint ptr %echo_index.1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %echo_index.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %73)
  %cmp32.1 = icmp eq i32 %73, 20
  br i1 %cmp32.1, label %for.inc.for.end_crit_edge, label %for.inc.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  %echo_index.2 = getelementptr i8, ptr %netdev, i32 2760
  %74 = ptrtoint ptr %echo_index.2 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %echo_index.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %75)
  %cmp32.2 = icmp eq i32 %75, 20
  br i1 %cmp32.2, label %for.inc.1.for.end_crit_edge, label %for.inc.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  %echo_index.3 = getelementptr i8, ptr %netdev, i32 2768
  %76 = ptrtoint ptr %echo_index.3 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %echo_index.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %77)
  %cmp32.3 = icmp eq i32 %77, 20
  br i1 %cmp32.3, label %for.inc.2.for.end_crit_edge, label %for.inc.3

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.3:                                        ; preds = %for.inc.2
  %echo_index.4 = getelementptr i8, ptr %netdev, i32 2776
  %78 = ptrtoint ptr %echo_index.4 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %echo_index.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %79)
  %cmp32.4 = icmp eq i32 %79, 20
  br i1 %cmp32.4, label %for.inc.3.for.end_crit_edge, label %for.inc.4

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.4:                                        ; preds = %for.inc.3
  %echo_index.5 = getelementptr i8, ptr %netdev, i32 2784
  %80 = ptrtoint ptr %echo_index.5 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %echo_index.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %81)
  %cmp32.5 = icmp eq i32 %81, 20
  br i1 %cmp32.5, label %for.inc.4.for.end_crit_edge, label %for.inc.5

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.5:                                        ; preds = %for.inc.4
  %echo_index.6 = getelementptr i8, ptr %netdev, i32 2792
  %82 = ptrtoint ptr %echo_index.6 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %echo_index.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %83)
  %cmp32.6 = icmp eq i32 %83, 20
  br i1 %cmp32.6, label %for.inc.5.for.end_crit_edge, label %for.inc.6

for.inc.5.for.end_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.6:                                        ; preds = %for.inc.5
  %echo_index.7 = getelementptr i8, ptr %netdev, i32 2800
  %84 = ptrtoint ptr %echo_index.7 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %echo_index.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %85)
  %cmp32.7 = icmp eq i32 %85, 20
  br i1 %cmp32.7, label %for.inc.6.for.end_crit_edge, label %for.inc.7

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.7:                                        ; preds = %for.inc.6
  %echo_index.8 = getelementptr i8, ptr %netdev, i32 2808
  %86 = ptrtoint ptr %echo_index.8 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %echo_index.8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %87)
  %cmp32.8 = icmp eq i32 %87, 20
  br i1 %cmp32.8, label %for.inc.7.for.end_crit_edge, label %for.inc.8

for.inc.7.for.end_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.8:                                        ; preds = %for.inc.7
  %echo_index.9 = getelementptr i8, ptr %netdev, i32 2816
  %88 = ptrtoint ptr %echo_index.9 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %echo_index.9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %89)
  %cmp32.9 = icmp eq i32 %89, 20
  br i1 %cmp32.9, label %for.inc.8.for.end_crit_edge, label %for.inc.9

for.inc.8.for.end_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.9:                                        ; preds = %for.inc.8
  %echo_index.10 = getelementptr i8, ptr %netdev, i32 2824
  %90 = ptrtoint ptr %echo_index.10 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %echo_index.10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %91)
  %cmp32.10 = icmp eq i32 %91, 20
  br i1 %cmp32.10, label %for.inc.9.for.end_crit_edge, label %for.inc.10

for.inc.9.for.end_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.10:                                       ; preds = %for.inc.9
  %echo_index.11 = getelementptr i8, ptr %netdev, i32 2832
  %92 = ptrtoint ptr %echo_index.11 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %echo_index.11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %93)
  %cmp32.11 = icmp eq i32 %93, 20
  br i1 %cmp32.11, label %for.inc.10.for.end_crit_edge, label %for.inc.11

for.inc.10.for.end_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.11:                                       ; preds = %for.inc.10
  %echo_index.12 = getelementptr i8, ptr %netdev, i32 2840
  %94 = ptrtoint ptr %echo_index.12 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %echo_index.12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %95)
  %cmp32.12 = icmp eq i32 %95, 20
  br i1 %cmp32.12, label %for.inc.11.for.end_crit_edge, label %for.inc.12

for.inc.11.for.end_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.12:                                       ; preds = %for.inc.11
  %echo_index.13 = getelementptr i8, ptr %netdev, i32 2848
  %96 = ptrtoint ptr %echo_index.13 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %echo_index.13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %97)
  %cmp32.13 = icmp eq i32 %97, 20
  br i1 %cmp32.13, label %for.inc.12.for.end_crit_edge, label %for.inc.13

for.inc.12.for.end_crit_edge:                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.13:                                       ; preds = %for.inc.12
  %echo_index.14 = getelementptr i8, ptr %netdev, i32 2856
  %98 = ptrtoint ptr %echo_index.14 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %echo_index.14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %99)
  %cmp32.14 = icmp eq i32 %99, 20
  br i1 %cmp32.14, label %for.inc.13.for.end_crit_edge, label %for.inc.14

for.inc.13.for.end_crit_edge:                     ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.14:                                       ; preds = %for.inc.13
  %echo_index.15 = getelementptr i8, ptr %netdev, i32 2864
  %100 = ptrtoint ptr %echo_index.15 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %echo_index.15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %101)
  %cmp32.15 = icmp eq i32 %101, 20
  br i1 %cmp32.15, label %for.inc.14.for.end_crit_edge, label %for.inc.15

for.inc.14.for.end_crit_edge:                     ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.15:                                       ; preds = %for.inc.14
  %echo_index.16 = getelementptr i8, ptr %netdev, i32 2872
  %102 = ptrtoint ptr %echo_index.16 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %echo_index.16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %103)
  %cmp32.16 = icmp eq i32 %103, 20
  br i1 %cmp32.16, label %for.inc.15.for.end_crit_edge, label %for.inc.16

for.inc.15.for.end_crit_edge:                     ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.16:                                       ; preds = %for.inc.15
  %echo_index.17 = getelementptr i8, ptr %netdev, i32 2880
  %104 = ptrtoint ptr %echo_index.17 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %echo_index.17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %105)
  %cmp32.17 = icmp eq i32 %105, 20
  br i1 %cmp32.17, label %for.inc.16.for.end_crit_edge, label %for.inc.17

for.inc.16.for.end_crit_edge:                     ; preds = %for.inc.16
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.17:                                       ; preds = %for.inc.16
  %echo_index.18 = getelementptr i8, ptr %netdev, i32 2888
  %106 = ptrtoint ptr %echo_index.18 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %echo_index.18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %107)
  %cmp32.18 = icmp eq i32 %107, 20
  br i1 %cmp32.18, label %for.inc.17.for.end_crit_edge, label %for.inc.18

for.inc.17.for.end_crit_edge:                     ; preds = %for.inc.17
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.18:                                       ; preds = %for.inc.17
  %echo_index.19 = getelementptr i8, ptr %netdev, i32 2896
  %108 = ptrtoint ptr %echo_index.19 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %echo_index.19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %109)
  %cmp32.19 = icmp eq i32 %109, 20
  br i1 %cmp32.19, label %for.inc.18.for.end_crit_edge, label %for.inc.18.nofreecontext_crit_edge

for.inc.18.nofreecontext_crit_edge:               ; preds = %for.inc.18
  call void @__sanitizer_cov_trace_pc() #11
  br label %nofreecontext

for.inc.18.for.end_crit_edge:                     ; preds = %for.inc.18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.18.for.end_crit_edge, %for.inc.17.for.end_crit_edge, %for.inc.16.for.end_crit_edge, %for.inc.15.for.end_crit_edge, %for.inc.14.for.end_crit_edge, %for.inc.13.for.end_crit_edge, %for.inc.12.for.end_crit_edge, %for.inc.11.for.end_crit_edge, %for.inc.10.for.end_crit_edge, %for.inc.9.for.end_crit_edge, %for.inc.8.for.end_crit_edge, %for.inc.7.for.end_crit_edge, %for.inc.6.for.end_crit_edge, %for.inc.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %can_get_cc_dlc.exit.for.end_crit_edge
  %i.0157.lcssa = phi i32 [ 0, %can_get_cc_dlc.exit.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ 2, %for.inc.1.for.end_crit_edge ], [ 3, %for.inc.2.for.end_crit_edge ], [ 4, %for.inc.3.for.end_crit_edge ], [ 5, %for.inc.4.for.end_crit_edge ], [ 6, %for.inc.5.for.end_crit_edge ], [ 7, %for.inc.6.for.end_crit_edge ], [ 8, %for.inc.7.for.end_crit_edge ], [ 9, %for.inc.8.for.end_crit_edge ], [ 10, %for.inc.9.for.end_crit_edge ], [ 11, %for.inc.10.for.end_crit_edge ], [ 12, %for.inc.11.for.end_crit_edge ], [ 13, %for.inc.12.for.end_crit_edge ], [ 14, %for.inc.13.for.end_crit_edge ], [ 15, %for.inc.14.for.end_crit_edge ], [ 16, %for.inc.15.for.end_crit_edge ], [ 17, %for.inc.16.for.end_crit_edge ], [ 18, %for.inc.17.for.end_crit_edge ], [ 19, %for.inc.18.for.end_crit_edge ]
  %arrayidx = getelementptr %struct.usb_8dev_priv, ptr %add.ptr.i, i32 0, i32 5, i32 %i.0157.lcssa
  %tobool38.not = icmp eq ptr %arrayidx, null
  br i1 %tobool38.not, label %for.end.nofreecontext_crit_edge, label %if.end40

for.end.nofreecontext_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %nofreecontext

if.end40:                                         ; preds = %for.end
  %110 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %add.ptr.i, ptr %arrayidx, align 4
  %echo_index42 = getelementptr inbounds %struct.usb_8dev_tx_urb_context, ptr %arrayidx, i32 0, i32 1
  %111 = ptrtoint ptr %echo_index42 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %i.0157.lcssa, ptr %echo_index42, align 4
  %112 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %udev, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %113, align 8
  %shl.i = shl i32 %115, 8
  %or46 = or i32 %shl.i, -1073676288
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call3, i32 0, i32 8
  %116 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %113, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call3, i32 0, i32 10
  %117 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %or46, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call3, i32 0, i32 14
  %118 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call6, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call3, i32 0, i32 19
  %119 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 16, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call3, i32 0, i32 28
  %120 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @usb_8dev_write_bulk_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call3, i32 0, i32 27
  %121 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %arrayidx, ptr %context4.i, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call3, i32 0, i32 13
  %122 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %transfer_flags, align 4
  %or47 = or i32 %123, 4
  store i32 %or47, ptr %transfer_flags, align 4
  %tx_submitted = getelementptr i8, ptr %netdev, i32 2628
  tail call void @usb_anchor_urb(ptr noundef nonnull %call3, ptr noundef %tx_submitted) #9
  %124 = ptrtoint ptr %echo_index42 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %echo_index42, align 4
  %call49 = tail call i32 @can_put_echo_skb(ptr noundef %skb, ptr noundef %netdev, i32 noundef %125, i32 noundef 0) #9
  %active_tx_urbs = getelementptr i8, ptr %netdev, i32 2624
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_tx_urbs, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %active_tx_urbs, i32 1, i32 3, i32 1) #9
  %126 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_tx_urbs, ptr %active_tx_urbs, i32 1, ptr elementtype(i32) %active_tx_urbs) #9, !srcloc !100
  %call50 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call3, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.else, label %failed, !prof !98

if.else:                                          ; preds = %if.end40
  %call.i.i150 = tail call zeroext i1 @__kasan_check_read(ptr noundef %active_tx_urbs, i32 noundef 4) #9
  %127 = ptrtoint ptr %active_tx_urbs to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %active_tx_urbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %128)
  %cmp57 = icmp sgt i32 %128, 19
  br i1 %cmp57, label %if.then59, label %if.else.if.end61_crit_edge

if.else.if.end61_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then59:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %129 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %130, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.else.if.end61_crit_edge
  tail call void @usb_free_urb(ptr noundef nonnull %call3) #9
  br label %cleanup

nofreecontext:                                    ; preds = %for.end.nofreecontext_crit_edge, %for.inc.18.nofreecontext_crit_edge
  %131 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %udev, align 4
  %133 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %transfer_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %132, i32 noundef 16, ptr noundef nonnull %call6, i32 noundef %134) #9
  tail call void @usb_free_urb(ptr noundef nonnull %call3) #9
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.29) #13
  br label %cleanup

failed:                                           ; preds = %if.end40
  %135 = ptrtoint ptr %echo_index42 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %echo_index42, align 4
  tail call void @can_free_echo_skb(ptr noundef %netdev, i32 noundef %136, ptr noundef null) #9
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call3) #9
  %137 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %udev, align 4
  %139 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %transfer_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %138, i32 noundef 16, ptr noundef nonnull %call6, i32 noundef %140) #9
  %call.i.i151 = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_tx_urbs, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %active_tx_urbs, i32 1, i32 3, i32 1) #9
  %141 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_tx_urbs, ptr %active_tx_urbs, i32 1, ptr elementtype(i32) %active_tx_urbs) #9, !srcloc !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call50)
  %cmp68 = icmp eq i32 %call50, -19
  br i1 %cmp68, label %if.then70, label %if.else71

if.then70:                                        ; preds = %failed
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @netif_device_detach(ptr noundef %netdev) #9
  br label %nomembuf

if.else71:                                        ; preds = %failed
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.30, i32 noundef %call50) #13
  br label %nomembuf

nomembuf:                                         ; preds = %if.else71, %if.then70, %if.then8
  tail call void @usb_free_urb(ptr noundef nonnull %call3) #9
  br label %nomem

nomem:                                            ; preds = %nomembuf, %if.end.nomem_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #9
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 7
  %142 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %tx_dropped, align 4
  %inc73 = add i32 %143, 1
  store i32 %inc73, ptr %tx_dropped, align 4
  br label %cleanup

cleanup:                                          ; preds = %nomem, %nofreecontext, %if.end61, %can_dropped_invalid_skb.exit
  %retval.0 = phi i32 [ 0, %nomem ], [ 0, %if.end61 ], [ 16, %nofreecontext ], [ 0, %can_dropped_invalid_skb.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_change_mtu(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @open_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @close_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_8dev_read_bulk_callback(ptr noundef %urb) #2 align 64 {
entry:
  %cf.i.i = alloca ptr, align 4
  %cf.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %netdev1 = getelementptr inbounds %struct.usb_8dev_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev1, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.not, label %entry.cleanup19_crit_edge, label %if.end

entry.cleanup19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup19

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %8, label %sw.default [
    i32 0, label %while.cond.preheader
    i32 -2, label %if.end.cleanup19_crit_edge
    i32 -32, label %if.end.cleanup19_crit_edge52
    i32 -71, label %if.end.cleanup19_crit_edge53
    i32 -108, label %if.end.cleanup19_crit_edge54
  ]

if.end.cleanup19_crit_edge54:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup19

if.end.cleanup19_crit_edge53:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup19

if.end.cleanup19_crit_edge52:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup19

if.end.cleanup19_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup19

while.cond.preheader:                             ; preds = %if.end
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %10 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp50.not = icmp eq i32 %11, 0
  br i1 %cmp50.not, label %while.cond.preheader.resubmit_urb_crit_edge, label %while.body.lr.ph

while.cond.preheader.resubmit_urb_crit_edge:      ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %resubmit_urb

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %ctrlmode.i = getelementptr inbounds %struct.can_priv, ptr %1, i32 0, i32 22
  %state14.i.i = getelementptr inbounds %struct.can_priv, ptr %1, i32 0, i32 21
  %bus_off.i.i = getelementptr inbounds %struct.can_priv, ptr %1, i32 0, i32 1, i32 3
  %can_stats27.i.i = getelementptr inbounds %struct.can_priv, ptr %1, i32 0, i32 1
  %error_passive.i.i = getelementptr inbounds %struct.can_priv, ptr %1, i32 0, i32 1, i32 2
  %error_warning.i.i = getelementptr inbounds %struct.can_priv, ptr %1, i32 0, i32 1, i32 1
  %bec.i.i = getelementptr inbounds %struct.usb_8dev_priv, ptr %1, i32 0, i32 7
  %rxerr118.i.i = getelementptr inbounds %struct.usb_8dev_priv, ptr %1, i32 0, i32 7, i32 1
  br label %while.body

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.23, i32 noundef %8) #13
  br label %resubmit_urb

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %12 = phi i32 [ %11, %while.body.lr.ph ], [ %160, %cleanup.while.body_crit_edge ]
  %pos.051 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  %add = add i32 %pos.051, 21
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %12)
  %cmp4 = icmp ugt i32 %add, %12
  br i1 %cmp4, label %cleanup.thread, label %if.end7

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev1, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull @.str.24) #13
  br label %resubmit_urb

if.end7:                                          ; preds = %while.body
  %15 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %transfer_buffer, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 %pos.051
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i) #9
  %17 = ptrtoint ptr %cf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i, align 4, !annotation !97
  %18 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %netdev1, align 4
  %stats1.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 36
  %type.i = getelementptr inbounds %struct.usb_8dev_rx_msg, ptr %add.ptr, i32 0, i32 1
  %20 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %type.i, align 1
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %21, label %if.end7.if.else37.i_crit_edge [
    i8 3, label %land.lhs.true.i
    i8 0, label %if.then10.i
  ]

if.end7.if.else37.i_crit_edge:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else37.i

land.lhs.true.i:                                  ; preds = %if.end7
  %flags.i = getelementptr inbounds %struct.usb_8dev_rx_msg, ptr %add.ptr, i32 0, i32 2
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %flags.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %24)
  %cmp4.i = icmp eq i8 %24, 4
  br i1 %cmp4.i, label %if.then.i, label %land.lhs.true.i.if.else37.i_crit_edge

land.lhs.true.i.if.else37.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else37.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i.i) #9
  %25 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i.i, align 4, !annotation !97
  %data.i.i = getelementptr inbounds %struct.usb_8dev_rx_msg, ptr %add.ptr, i32 0, i32 5
  %26 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %data.i.i, align 1
  %arrayidx3.i.i = getelementptr %struct.usb_8dev_rx_msg, ptr %add.ptr, i32 0, i32 5, i32 1
  %28 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx3.i.i, align 1
  %30 = and i8 %29, 127
  %arrayidx6.i.i = getelementptr %struct.usb_8dev_rx_msg, ptr %add.ptr, i32 0, i32 5, i32 2
  %31 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx6.i.i, align 1
  %call.i.i = call ptr @alloc_can_err_skb(ptr noundef %19, ptr noundef nonnull %cf.i.i) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.usb_8dev_rx_err_msg.exit.i_crit_edge, label %if.end.i.i

if.then.i.usb_8dev_rx_err_msg.exit.i_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %usb_8dev_rx_err_msg.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  %conv8.i.i = zext i8 %27 to i32
  %33 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.41)
  switch i8 %27, label %sw.default.i.i [
    i8 0, label %sw.bb.i.i
    i8 4, label %sw.bb12.i.i
    i8 1, label %if.end.i.i.sw.bb19.i.i_crit_edge
    i8 2, label %if.end.i.i.sw.bb19.i.i_crit_edge55
    i8 3, label %if.end.i.i.sw.bb19.i.i_crit_edge56
  ]

if.end.i.i.sw.bb19.i.i_crit_edge56:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb19.i.i

if.end.i.i.sw.bb19.i.i_crit_edge55:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb19.i.i

if.end.i.i.sw.bb19.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb19.i.i

sw.bb.i.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %state14.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %state14.i.i, align 4
  %35 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cf.i.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 8
  %or.i.i = or i32 %38, 8
  store i32 %or.i.i, ptr %36, align 8
  %39 = load ptr, ptr %cf.i.i, align 4
  %arrayidx11.i.i = getelementptr %struct.can_frame, ptr %39, i32 0, i32 5, i32 2
  %40 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 64, ptr %arrayidx11.i.i, align 2
  br label %if.end109.i.i

sw.bb12.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %state14.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 3, ptr %state14.i.i, align 4
  %42 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cf.i.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 8
  %or16.i.i = or i32 %45, 64
  store i32 %or16.i.i, ptr %43, align 8
  %46 = ptrtoint ptr %bus_off.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bus_off.i.i, align 4
  %inc.i.i = add i32 %47, 1
  store i32 %inc.i.i, ptr %bus_off.i.i, align 4
  %48 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %netdev1, align 4
  call void @can_bus_off(ptr noundef %49) #9
  br label %if.end109.i.i

sw.bb19.i.i:                                      ; preds = %if.end.i.i.sw.bb19.i.i_crit_edge, %if.end.i.i.sw.bb19.i.i_crit_edge55, %if.end.i.i.sw.bb19.i.i_crit_edge56
  %50 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cf.i.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 8
  %or21.i.i = or i32 %53, 4
  store i32 %or21.i.i, ptr %51, align 8
  br label %sw.epilog.i.i

sw.default.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %state14.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %state14.i.i, align 4
  %55 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cf.i.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 8
  %or25.i.i = or i32 %58, 136
  store i32 %or25.i.i, ptr %56, align 8
  %59 = ptrtoint ptr %can_stats27.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %can_stats27.i.i, align 4
  %inc28.i.i = add i32 %60, 1
  store i32 %inc28.i.i, ptr %can_stats27.i.i, align 4
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.default.i.i, %sw.bb19.i.i
  %61 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.42)
  switch i8 %27, label %sw.default91.i.i [
    i8 0, label %sw.epilog.i.i.if.end109.i.i_crit_edge
    i8 4, label %sw.epilog.i.i.if.end109.i.i_crit_edge57
    i8 35, label %sw.bb31.i.i
    i8 39, label %sw.bb34.i.i
    i8 36, label %sw.bb37.i.i
    i8 37, label %sw.bb43.i.i
    i8 33, label %sw.bb49.i.i
    i8 32, label %sw.bb55.i.i
    i8 1, label %sw.bb61.i.i
    i8 2, label %sw.bb65.i.i
    i8 3, label %sw.bb77.i.i
  ]

sw.epilog.i.i.if.end109.i.i_crit_edge57:          ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109.i.i

sw.epilog.i.i.if.end109.i.i_crit_edge:            ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109.i.i

sw.bb31.i.i:                                      ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cf.i.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 8
  %or33.i.i = or i32 %65, 32
  store i32 %or33.i.i, ptr %63, align 8
  br label %if.end104.thread.i.i

sw.bb34.i.i:                                      ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cf.i.i, align 4
  %arrayidx36.i.i = getelementptr %struct.can_frame, ptr %67, i32 0, i32 5, i32 3
  %68 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 8, ptr %arrayidx36.i.i, align 1
  br label %if.then106.i.i

sw.bb37.i.i:                                      ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cf.i.i, align 4
  %arrayidx39.i.i = getelementptr %struct.can_frame, ptr %70, i32 0, i32 5, i32 2
  %71 = ptrtoint ptr %arrayidx39.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx39.i.i, align 2
  %73 = or i8 %72, 8
  store i8 %73, ptr %arrayidx39.i.i, align 2
  br label %if.end104.thread.i.i

sw.bb43.i.i:                                      ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cf.i.i, align 4
  %arrayidx45.i.i = getelementptr %struct.can_frame, ptr %75, i32 0, i32 5, i32 2
  %76 = ptrtoint ptr %arrayidx45.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx45.i.i, align 2
  %78 = or i8 %77, 16
  store i8 %78, ptr %arrayidx45.i.i, align 2
  br label %if.end104.thread.i.i

sw.bb49.i.i:                                      ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %79 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cf.i.i, align 4
  %arrayidx51.i.i = getelementptr %struct.can_frame, ptr %80, i32 0, i32 5, i32 2
  %81 = ptrtoint ptr %arrayidx51.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx51.i.i, align 2
  %83 = or i8 %82, 2
  store i8 %83, ptr %arrayidx51.i.i, align 2
  br label %if.then106.i.i

sw.bb55.i.i:                                      ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %84 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cf.i.i, align 4
  %arrayidx57.i.i = getelementptr %struct.can_frame, ptr %85, i32 0, i32 5, i32 2
  %86 = ptrtoint ptr %arrayidx57.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx57.i.i, align 2
  %88 = or i8 %87, 4
  store i8 %88, ptr %arrayidx57.i.i, align 2
  br label %if.then106.i.i

sw.bb61.i.i:                                      ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %89 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cf.i.i, align 4
  %arrayidx63.i.i = getelementptr %struct.can_frame, ptr %90, i32 0, i32 5, i32 1
  %91 = ptrtoint ptr %arrayidx63.i.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %arrayidx63.i.i, align 1
  %rx_over_errors.i.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 36, i32 11
  %92 = ptrtoint ptr %rx_over_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %rx_over_errors.i.i, align 4
  %inc64.i.i = add i32 %93, 1
  store i32 %inc64.i.i, ptr %rx_over_errors.i.i, align 4
  br label %if.then106.i.i

sw.bb65.i.i:                                      ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %94 = ptrtoint ptr %state14.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 1, ptr %state14.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %30)
  %cmp.i.i = icmp ugt i8 %32, %30
  %conv71.i.i = select i1 %cmp.i.i, i8 8, i8 4
  %95 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cf.i.i, align 4
  %arrayidx73.i.i = getelementptr %struct.can_frame, ptr %96, i32 0, i32 5, i32 1
  %97 = ptrtoint ptr %arrayidx73.i.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv71.i.i, ptr %arrayidx73.i.i, align 1
  %98 = ptrtoint ptr %error_warning.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %error_warning.i.i, align 4
  %inc76.i.i = add i32 %99, 1
  store i32 %inc76.i.i, ptr %error_warning.i.i, align 4
  br label %if.end109.i.i

sw.bb77.i.i:                                      ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %100 = ptrtoint ptr %state14.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 2, ptr %state14.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %30)
  %cmp82.i.i = icmp ugt i8 %32, %30
  %conv85.i.i = select i1 %cmp82.i.i, i8 32, i8 16
  %101 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cf.i.i, align 4
  %arrayidx87.i.i = getelementptr %struct.can_frame, ptr %102, i32 0, i32 5, i32 1
  %103 = ptrtoint ptr %arrayidx87.i.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv85.i.i, ptr %arrayidx87.i.i, align 1
  %104 = ptrtoint ptr %error_passive.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %error_passive.i.i, align 4
  %inc90.i.i = add i32 %105, 1
  store i32 %inc90.i.i, ptr %error_passive.i.i, align 4
  br label %if.end109.i.i

sw.default91.i.i:                                 ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %106 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %netdev1, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %107, ptr noundef nonnull @.str.27, i32 noundef %conv8.i.i) #13
  br label %if.end109.i.i

if.end104.thread.i.i:                             ; preds = %sw.bb43.i.i, %sw.bb37.i.i, %sw.bb31.i.i
  %108 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %cf.i.i, align 4
  %arrayidx98.i.i = getelementptr %struct.can_frame, ptr %109, i32 0, i32 5, i32 2
  %110 = ptrtoint ptr %arrayidx98.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx98.i.i, align 2
  %112 = or i8 %111, -128
  store i8 %112, ptr %arrayidx98.i.i, align 2
  %tx_errors102.i.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 36, i32 5
  %113 = ptrtoint ptr %tx_errors102.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %tx_errors102.i.i, align 4
  %inc103.i.i = add i32 %114, 1
  store i32 %inc103.i.i, ptr %tx_errors102.i.i, align 4
  br label %if.end109.i.i

if.then106.i.i:                                   ; preds = %sw.bb61.i.i, %sw.bb55.i.i, %sw.bb49.i.i, %sw.bb34.i.i
  %rx_errors107.i.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 36, i32 4
  %115 = ptrtoint ptr %rx_errors107.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %rx_errors107.i.i, align 4
  %inc108.i.i = add i32 %116, 1
  store i32 %inc108.i.i, ptr %rx_errors107.i.i, align 4
  br label %if.end109.i.i

if.end109.i.i:                                    ; preds = %if.then106.i.i, %if.end104.thread.i.i, %sw.default91.i.i, %sw.bb77.i.i, %sw.bb65.i.i, %sw.epilog.i.i.if.end109.i.i_crit_edge, %sw.epilog.i.i.if.end109.i.i_crit_edge57, %sw.bb12.i.i, %sw.bb.i.i
  %117 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %cf.i.i, align 4
  %arrayidx111.i.i = getelementptr %struct.can_frame, ptr %118, i32 0, i32 5, i32 6
  %119 = ptrtoint ptr %arrayidx111.i.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %32, ptr %arrayidx111.i.i, align 2
  %120 = load ptr, ptr %cf.i.i, align 4
  %arrayidx113.i.i = getelementptr %struct.can_frame, ptr %120, i32 0, i32 5, i32 7
  %121 = ptrtoint ptr %arrayidx113.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %30, ptr %arrayidx113.i.i, align 1
  %conv114.i.i = zext i8 %32 to i16
  %122 = ptrtoint ptr %bec.i.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %conv114.i.i, ptr %bec.i.i, align 4
  %conv116.i.i = zext i8 %30 to i16
  %123 = ptrtoint ptr %rxerr118.i.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %conv116.i.i, ptr %rxerr118.i.i, align 2
  %call119.i.i = call i32 @netif_rx(ptr noundef nonnull %call.i.i) #9
  br label %usb_8dev_rx_err_msg.exit.i

usb_8dev_rx_err_msg.exit.i:                       ; preds = %if.end109.i.i, %if.then.i.usb_8dev_rx_err_msg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i.i) #9
  br label %cleanup

if.then10.i:                                      ; preds = %if.end7
  %call.i = call ptr @alloc_can_skb(ptr noundef %19, ptr noundef nonnull %cf.i) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then10.i.cleanup_crit_edge, label %if.end.i

if.then10.i.cleanup_crit_edge:                    ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then10.i
  %id.i = getelementptr inbounds %struct.usb_8dev_rx_msg, ptr %add.ptr, i32 0, i32 3
  %124 = ptrtoint ptr %id.i to i32
  call void @__asan_loadN_noabort(i32 %124, i32 4)
  %125 = load i32, ptr %id.i, align 1
  %126 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %cf.i, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %125, ptr %127, align 8
  %129 = load ptr, ptr %cf.i, align 4
  %dlc.i = getelementptr inbounds %struct.usb_8dev_rx_msg, ptr %add.ptr, i32 0, i32 4
  %130 = ptrtoint ptr %dlc.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %dlc.i, align 1
  %132 = and i8 %131, 15
  %133 = ptrtoint ptr %ctrlmode.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %ctrlmode.i, align 4
  %and.i.i = and i32 %134, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i61.i = icmp ne i32 %and.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %132)
  %cmp.i62.i = icmp ugt i8 %132, 8
  %or.cond.i.i = and i1 %cmp.i62.i, %tobool.not.i61.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %if.end.i.can_frame_set_cc_len.exit.i_crit_edge

if.end.i.can_frame_set_cc_len.exit.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %can_frame_set_cc_len.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %len8_dlc.i.i = getelementptr inbounds %struct.can_frame, ptr %129, i32 0, i32 4
  %135 = ptrtoint ptr %len8_dlc.i.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %132, ptr %len8_dlc.i.i, align 1
  br label %can_frame_set_cc_len.exit.i

can_frame_set_cc_len.exit.i:                      ; preds = %if.then.i.i, %if.end.i.can_frame_set_cc_len.exit.i_crit_edge
  %136 = call i8 @llvm.umin.i8(i8 %132, i8 8) #9
  %137 = getelementptr inbounds %struct.can_frame, ptr %129, i32 0, i32 1
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %136, ptr %137, align 4
  %flags15.i = getelementptr inbounds %struct.usb_8dev_rx_msg, ptr %add.ptr, i32 0, i32 2
  %139 = ptrtoint ptr %flags15.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %flags15.i, align 1
  %141 = and i8 %140, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool18.not.i = icmp eq i8 %141, 0
  br i1 %tobool18.not.i, label %can_frame_set_cc_len.exit.i.if.end21.i_crit_edge, label %if.then19.i

can_frame_set_cc_len.exit.i.if.end21.i_crit_edge: ; preds = %can_frame_set_cc_len.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

if.then19.i:                                      ; preds = %can_frame_set_cc_len.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %142 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %129, align 8
  %or.i = or i32 %143, -2147483648
  store i32 %or.i, ptr %129, align 8
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then19.i, %can_frame_set_cc_len.exit.i.if.end21.i_crit_edge
  %144 = ptrtoint ptr %flags15.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %flags15.i, align 1
  %146 = and i8 %145, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool25.not.i = icmp eq i8 %146, 0
  %147 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %cf.i, align 4
  br i1 %tobool25.not.i, label %if.else29.i, label %if.then26.i

if.then26.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %148, align 8
  %or28.i = or i32 %150, 1073741824
  store i32 %or28.i, ptr %148, align 8
  br label %if.end34.i

if.else29.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  %data.i = getelementptr inbounds %struct.can_frame, ptr %148, i32 0, i32 5
  %data30.i = getelementptr inbounds %struct.usb_8dev_rx_msg, ptr %add.ptr, i32 0, i32 5
  %151 = getelementptr inbounds %struct.can_frame, ptr %148, i32 0, i32 1
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %151, align 4
  %conv32.i = zext i8 %153 to i32
  %154 = call ptr @memcpy(ptr %data.i, ptr %data30.i, i32 %conv32.i)
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 36, i32 2
  %155 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %rx_bytes.i, align 4
  %add.i = add i32 %156, %conv32.i
  store i32 %add.i, ptr %rx_bytes.i, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.else29.i, %if.then26.i
  %157 = ptrtoint ptr %stats1.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %stats1.i, align 4
  %inc.i = add i32 %158, 1
  store i32 %inc.i, ptr %stats1.i, align 4
  %call35.i = call i32 @netif_rx(ptr noundef nonnull %call.i) #9
  br label %cleanup

if.else37.i:                                      ; preds = %land.lhs.true.i.if.else37.i_crit_edge, %if.end7.if.else37.i_crit_edge
  %conv7.i = zext i8 %21 to i32
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %19, ptr noundef nonnull @.str.26, i32 noundef %conv7.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else37.i, %if.end34.i, %if.then10.i.cleanup_crit_edge, %usb_8dev_rx_err_msg.exit.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i) #9
  %159 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %actual_length, align 4
  %cmp = icmp ult i32 %add, %160
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.resubmit_urb_crit_edge

cleanup.resubmit_urb_crit_edge:                   ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %resubmit_urb

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

resubmit_urb:                                     ; preds = %cleanup.resubmit_urb_crit_edge, %cleanup.thread, %sw.default, %while.cond.preheader.resubmit_urb_crit_edge
  %udev = getelementptr inbounds %struct.usb_8dev_priv, ptr %1, i32 0, i32 1
  %161 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %udev, align 4
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %162, align 8
  %shl.i = shl i32 %164, 8
  %or11 = or i32 %shl.i, -1073708928
  %dev1.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %165 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %162, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %166 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %or11, ptr %pipe2.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %167 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 64, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 28
  %168 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr @usb_8dev_read_bulk_callback, ptr %complete.i, align 4
  %169 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %1, ptr %context, align 4
  %call13 = call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #9
  %170 = zext i32 %call13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %170, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %call13, label %if.then16 [
    i32 -19, label %if.then15
    i32 0, label %resubmit_urb.cleanup19_crit_edge
  ]

resubmit_urb.cleanup19_crit_edge:                 ; preds = %resubmit_urb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup19

if.then15:                                        ; preds = %resubmit_urb
  call void @__sanitizer_cov_trace_pc() #11
  call void @netif_device_detach(ptr noundef %3) #9
  br label %cleanup19

if.then16:                                        ; preds = %resubmit_urb
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.25, i32 noundef %call13) #13
  br label %cleanup19

cleanup19:                                        ; preds = %if.then16, %if.then15, %resubmit_urb.cleanup19_crit_edge, %if.end.cleanup19_crit_edge, %if.end.cleanup19_crit_edge52, %if.end.cleanup19_crit_edge53, %if.end.cleanup19_crit_edge54, %entry.cleanup19_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_anchor_urb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_unanchor_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_err_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_bus_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @unlink_all_urbs(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_submitted = getelementptr inbounds %struct.usb_8dev_priv, ptr %priv, i32 0, i32 6
  tail call void @usb_kill_anchored_urbs(ptr noundef %rx_submitted) #9
  %udev = getelementptr inbounds %struct.usb_8dev_priv, ptr %priv, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.021 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev, align 4
  %arrayidx = getelementptr %struct.usb_8dev_priv, ptr %priv, i32 0, i32 10, i32 %i.021
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr %struct.usb_8dev_priv, ptr %priv, i32 0, i32 11, i32 %i.021
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1, align 4
  tail call void @usb_free_coherent(ptr noundef %1, i32 noundef 64, ptr noundef %3, i32 noundef %5) #9
  %inc = add nuw nsw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %tx_submitted = getelementptr inbounds %struct.usb_8dev_priv, ptr %priv, i32 0, i32 4
  tail call void @usb_kill_anchored_urbs(ptr noundef %tx_submitted) #9
  %active_tx_urbs = getelementptr inbounds %struct.usb_8dev_priv, ptr %priv, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_tx_urbs, i32 noundef 4) #9
  %6 = ptrtoint ptr %active_tx_urbs to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %active_tx_urbs, align 4
  %echo_index = getelementptr %struct.usb_8dev_priv, ptr %priv, i32 0, i32 5, i32 0, i32 1
  %7 = ptrtoint ptr %echo_index to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 20, ptr %echo_index, align 4
  %echo_index.1 = getelementptr %struct.usb_8dev_priv, ptr %priv, i32 0, i32 5, i32 1, i32 1
  %8 = ptrtoint ptr %echo_index.1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 20, ptr %echo_index.1, align 4
  %echo_index.2 = getelementptr %struct.usb_8dev_priv, ptr %priv, i32 0, i32 5, i32 2, i32 1
  %9 = ptrtoint ptr %echo_index.2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 20, ptr %echo_index.2, align 4
  %echo_index.3 = getelementptr %struct.usb_8dev_priv, ptr %priv, i32 0, i32 5, i32 3, i32 1
  %10 = ptrtoint ptr %echo_index.3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 20, ptr %echo_index.3, align 4
  %echo_index.4 = getelementptr %struct.usb_8dev_priv, ptr %priv, i32 0, i32 5, i32 4, i32 1
  %11 = ptrtoint ptr %echo_index.4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 20, ptr %echo_index.4, align 4
  %echo_index.5 = getelementptr %struct.usb_8dev_priv, ptr %priv, i32 0, i32 5, i32 5, i32 1
  %12 = ptrtoint ptr %echo_index.5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 20, ptr %echo_index.5, align 4
  %echo_index.6 = getelementptr %struct.usb_8dev_priv, ptr %priv, i32 0, i32 5, i32 6, i32 1
  %13 = ptrtoint ptr %echo_index.6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 20, ptr %echo_index.6, align 4
  %echo_index.7 = getelementptr %struct.usb_8dev_priv, ptr %priv, i32 0, i32 5, i32 7, i32 1
  %14 = ptrtoint ptr %echo_index.7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 20, ptr %echo_index.7, align 4
  %echo_index.8 = getelementptr %struct.usb_8dev_priv, ptr %priv, i32 0, i32 5, i32 8, i32 1
  %15 = ptrtoint ptr %echo_index.8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 20, ptr %echo_index.8, align 4
  %echo_index.9 = getelementptr %struct.usb_8dev_priv, ptr %priv, i32 0, i32 5, i32 9, i32 1
  %16 = ptrtoint ptr %echo_index.9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 20, ptr %echo_index.9, align 4
  %echo_index.10 = getelementptr %struct.usb_8dev_priv, ptr %priv, i32 0, i32 5, i32 10, i32 1
  %17 = ptrtoint ptr %echo_index.10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 20, ptr %echo_index.10, align 4
  %echo_index.11 = getelementptr %struct.usb_8dev_priv, ptr %priv, i32 0, i32 5, i32 11, i32 1
  %18 = ptrtoint ptr %echo_index.11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 20, ptr %echo_index.11, align 4
  %echo_index.12 = getelementptr %struct.usb_8dev_priv, ptr %priv, i32 0, i32 5, i32 12, i32 1
  %19 = ptrtoint ptr %echo_index.12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 20, ptr %echo_index.12, align 4
  %echo_index.13 = getelementptr %struct.usb_8dev_priv, ptr %priv, i32 0, i32 5, i32 13, i32 1
  %20 = ptrtoint ptr %echo_index.13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 20, ptr %echo_index.13, align 4
  %echo_index.14 = getelementptr %struct.usb_8dev_priv, ptr %priv, i32 0, i32 5, i32 14, i32 1
  %21 = ptrtoint ptr %echo_index.14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 20, ptr %echo_index.14, align 4
  %echo_index.15 = getelementptr %struct.usb_8dev_priv, ptr %priv, i32 0, i32 5, i32 15, i32 1
  %22 = ptrtoint ptr %echo_index.15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 20, ptr %echo_index.15, align 4
  %echo_index.16 = getelementptr %struct.usb_8dev_priv, ptr %priv, i32 0, i32 5, i32 16, i32 1
  %23 = ptrtoint ptr %echo_index.16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 20, ptr %echo_index.16, align 4
  %echo_index.17 = getelementptr %struct.usb_8dev_priv, ptr %priv, i32 0, i32 5, i32 17, i32 1
  %24 = ptrtoint ptr %echo_index.17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 20, ptr %echo_index.17, align 4
  %echo_index.18 = getelementptr %struct.usb_8dev_priv, ptr %priv, i32 0, i32 5, i32 18, i32 1
  %25 = ptrtoint ptr %echo_index.18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 20, ptr %echo_index.18, align 4
  %echo_index.19 = getelementptr %struct.usb_8dev_priv, ptr %priv, i32 0, i32 5, i32 19, i32 1
  %26 = ptrtoint ptr %echo_index.19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 20, ptr %echo_index.19, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_anchored_urbs(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_8dev_write_bulk_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !99

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/can/usb/usb_8dev.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 564, 0\0A.popsection", ""() #9, !srcloc !102
  unreachable

do.end10:                                         ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %netdev12 = getelementptr inbounds %struct.usb_8dev_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %netdev12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev12, align 4
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %8 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %transfer_buffer_length, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %10 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %transfer_buffer, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 15
  %12 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %transfer_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %7, i32 noundef %9, ptr noundef %11, i32 noundef %13) #9
  %active_tx_urbs = getelementptr inbounds %struct.usb_8dev_priv, ptr %3, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_tx_urbs, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %active_tx_urbs, i32 1, i32 3, i32 1) #9
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_tx_urbs, ptr %active_tx_urbs, i32 1, ptr elementtype(i32) %active_tx_urbs) #9, !srcloc !101
  %state.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state.i, align 4
  %17 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i.not = icmp eq i32 %17, 0
  br i1 %tobool.i.not, label %do.end10.cleanup_crit_edge, label %if.end14

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %do.end10
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %18 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool15.not = icmp eq i32 %19, 0
  br i1 %tobool15.not, label %if.end14.if.end18_crit_edge, label %if.then16

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %5, ptr noundef nonnull @.str.32, i32 noundef %19) #13
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end14.if.end18_crit_edge
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 1
  %20 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %tx_packets, align 4
  %echo_index = getelementptr inbounds %struct.usb_8dev_tx_urb_context, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %echo_index to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %echo_index, align 4
  %call19 = tail call i32 @can_get_echo_skb(ptr noundef %5, i32 noundef %23, ptr noundef null) #9
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 3
  %24 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %25, %call19
  store i32 %add, ptr %tx_bytes, align 4
  %26 = ptrtoint ptr %echo_index to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 20, ptr %echo_index, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 103
  %27 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %28) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end10.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_put_echo_skb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_free_echo_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_get_echo_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #8

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !28, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !76, !78, !80, !81, !83, !84, !86}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @__initcall__kmod_usb_8dev__464_1017_usb_8dev_driver_init6, !1, !"__initcall__kmod_usb_8dev__464_1017_usb_8dev_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/can/usb/usb_8dev.c", i32 1017, i32 1}
!2 = !{ptr @__exitcall_usb_8dev_driver_exit, !1, !"__exitcall_usb_8dev_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author465, !4, !"__UNIQUE_ID_author465", i1 false, i1 false}
!4 = !{!"../drivers/net/can/usb/usb_8dev.c", i32 1019, i32 1}
!5 = !{ptr @__UNIQUE_ID_description466, !6, !"__UNIQUE_ID_description466", i1 false, i1 false}
!6 = !{!"../drivers/net/can/usb/usb_8dev.c", i32 1020, i32 1}
!7 = !{ptr @__UNIQUE_ID_file467, !8, !"__UNIQUE_ID_file467", i1 false, i1 false}
!8 = !{!"../drivers/net/can/usb/usb_8dev.c", i32 1021, i32 1}
!9 = !{ptr @__UNIQUE_ID_license468, !8, !"__UNIQUE_ID_license468", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @usb_8dev_driver, !12, !"usb_8dev_driver", i1 false, i1 false}
!12 = !{!"../drivers/net/can/usb/usb_8dev.c", i32 1010, i32 26}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/can/usb/usb_8dev.c", i32 912, i32 42}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/can/usb/usb_8dev.c", i32 913, i32 3}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @usb_8dev_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @usb_8dev_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/can/usb/usb_8dev.c", i32 919, i32 3}
!25 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @usb_8dev_probe._entry.7, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @usb_8dev_probe._entry_ptr.10, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @usb_8dev_probe.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/net/can/usb/usb_8dev.c", i32 959, i32 2}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/can/usb/usb_8dev.c", i32 964, i32 4}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/can/usb/usb_8dev.c", i32 970, i32 22}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/can/usb/usb_8dev.c", i32 974, i32 5}
!37 = !{ptr @usb_8dev_bittiming_const, !38, !"usb_8dev_bittiming_const", i1 false, i1 false}
!38 = !{!"../drivers/net/can/usb/usb_8dev.c", i32 882, i32 41}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/can/usb/usb_8dev.c", i32 322, i32 24}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/can/usb/usb_8dev.c", i32 215, i32 22}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/can/usb/usb_8dev.c", i32 223, i32 22}
!45 = !{ptr @usb_8dev_netdev_ops, !46, !"usb_8dev_netdev_ops", i1 false, i1 false}
!46 = !{!"../drivers/net/can/usb/usb_8dev.c", i32 875, i32 36}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/can/usb/usb_8dev.c", i32 820, i32 23}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/can/usb/usb_8dev.c", i32 742, i32 23}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/can/usb/usb_8dev.c", i32 776, i32 23}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/can/usb/usb_8dev.c", i32 782, i32 23}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/can/usb/usb_8dev.c", i32 796, i32 22}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/can/usb/usb_8dev.c", i32 519, i32 23}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/can/usb/usb_8dev.c", i32 528, i32 29}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/can/usb/usb_8dev.c", i32 550, i32 4}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/can/usb/usb_8dev.c", i32 486, i32 29}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/can/usb/usb_8dev.c", i32 431, i32 8}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/can/usb/usb_8dev.c", i32 859, i32 23}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/can/usb/usb_8dev.c", i32 683, i32 22}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/can/usb/usb_8dev.c", i32 698, i32 23}
!73 = distinct !{null, !74, !"__already_done", i1 false, i1 false}
!74 = !{!"../include/linux/can/skb.h", i32 104, i32 6}
!75 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/can/usb/usb_8dev.c", i32 579, i32 23}
!78 = !{ptr @init_usb_anchor.__key, !79, !"__key", i1 false, i1 false}
!79 = !{!"../include/linux/usb.h", i32 1367, i32 2}
!80 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @init_usb_anchor.__key.34, !82, !"__key", i1 false, i1 false}
!82 = !{!"../include/linux/usb.h", i32 1368, i32 2}
!83 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/can/usb/usb_8dev.c", i32 1001, i32 29}
!86 = !{ptr @usb_8dev_table, !87, !"usb_8dev_table", i1 false, i1 false}
!87 = !{!"../drivers/net/can/usb/usb_8dev.c", i32 106, i32 35}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{!"auto-init"}
!98 = !{!"branch_weights", i32 2000, i32 1}
!99 = !{!"branch_weights", i32 1, i32 2000}
!100 = !{i64 2148473961, i64 2148473987, i64 2148474016, i64 2148474050, i64 2148474081, i64 2148474104}
!101 = !{i64 2148476426, i64 2148476452, i64 2148476481, i64 2148476515, i64 2148476546, i64 2148476569}
!102 = !{i64 2157102089, i64 2157102584, i64 2157102126, i64 2157102182, i64 2157102216, i64 2157102240, i64 2157102281, i64 2157102302, i64 2157102330, i64 2157102364}
