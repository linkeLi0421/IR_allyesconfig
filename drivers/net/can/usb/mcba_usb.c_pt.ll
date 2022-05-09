; ModuleID = '/llk/IR_all_yes/drivers/net/can/usb/mcba_usb.c_pt.bc'
source_filename = "../drivers/net/can/usb/mcba_usb.c"
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
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mcba_usb_msg_termination = type { i8, i8, [17 x i8] }
%struct.mcba_usb_msg_change_bitrate = type <{ i8, i16, [16 x i8] }>
%struct.mcba_usb_msg_can = type <{ i8, i16, i16, i8, [8 x i8], [4 x i8], i8 }>
%struct.mcba_usb_msg_fw_ver = type { i8, i8, [17 x i8] }
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
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.mcba_priv = type { %struct.can_priv, [20 x ptr], [20 x %struct.mcba_usb_ctx], ptr, ptr, %struct.usb_anchor, %struct.usb_anchor, %struct.can_berr_counter, i8, i8, i8, %struct.atomic_t, [20 x ptr], [20 x i32] }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.can_clock = type { i32 }
%struct.mcba_usb_ctx = type { ptr, i32, i8 }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.can_berr_counter = type { i16, i16 }
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
%struct.mcba_usb_msg_ka_can = type <{ i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, [4 x i8] }>
%struct.mcba_usb_msg_ka_usb = type { i8, i8, i8, i8, [15 x i8] }

@__initcall__kmod_mcba_usb__466_902_mcba_usb_driver_init6 = internal global ptr @mcba_usb_driver_init, section ".initcall6.init", align 4
@mcba_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @mcba_usb_probe, ptr @mcba_usb_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mcba_usb_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_mcba_usb_driver_exit = internal global ptr @mcba_usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author467 = internal constant [70 x i8] c"mcba_usb.author=Remigiusz Ko\C5\82\C5\82\C4\85taj <remigiusz.kollataj@mobica.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description468 = internal constant [74 x i8] c"mcba_usb.description=SocketCAN driver for Microchip CAN BUS Analyzer Tool\00", section ".modinfo", align 1
@__UNIQUE_ID_file469 = internal constant [43 x i8] c"mcba_usb.file=drivers/net/can/usb/mcba_usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license470 = internal constant [24 x i8] c"mcba_usb.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mcba_usb\00", [23 x i8] zeroinitializer }, align 32
@mcba_usb_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1240, i16 2608, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@mcba_usb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 813, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Couldn't alloc candev\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mcba_usb_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/net/can/usb/mcba_usb.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mcba_usb_probe._entry_ptr = internal global ptr @mcba_usb_probe._entry, section ".printk_index", align 4
@mcba_termination = internal constant { [2 x i16], [28 x i8] } { [2 x i16] [i16 0, i16 120], [28 x i8] zeroinitializer }, align 32
@mcba_bitrate = internal constant { [18 x i32], [56 x i8] } { [18 x i32] [i32 20000, i32 33333, i32 50000, i32 80000, i32 83333, i32 100000, i32 125000, i32 150000, i32 175000, i32 200000, i32 225000, i32 250000, i32 275000, i32 300000, i32 500000, i32 625000, i32 800000, i32 1000000], [56 x i8] zeroinitializer }, align 32
@mcba_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @mcba_usb_open, ptr @mcba_usb_close, ptr @mcba_usb_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"couldn't register CAN device: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"couldn't start device: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@mcba_usb_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 868, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Microchip CAN BUS Analyzer connected\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mcba_usb_probe._entry_ptr.11 = internal global ptr @mcba_usb_probe._entry.8, section ".printk_index", align 4
@init_usb_anchor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->wait\00", [18 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->lock\00", [18 x i8] zeroinitializer }, align 32
@__const.mcba_set_termination.usb_msg = private unnamed_addr constant %struct.mcba_usb_msg_termination { i8 -88, i8 0, [17 x i8] zeroinitializer }, align 1
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Lack of free ctx. Sending (%d) cmd aborted\00", [53 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to send cmd (%d)\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"failed tx_urb %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Tx URB aborted (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@__const.mcba_usb_xmit_change_bitrate.usb_msg = private unnamed_addr constant %struct.mcba_usb_msg_change_bitrate <{ i8 -95, i16 0, [16 x i8] zeroinitializer }>, align 1
@__const.mcba_usb_start_xmit.usb_msg = private unnamed_addr constant %struct.mcba_usb_msg_can <{ i8 -93, i16 0, i16 0, i8 0, [8 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 0 }>, align 1
@can_skb_headroom_valid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/can/skb.h\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"No memory left for USB buffer\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"couldn't setup read URBs\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rx performance may be slow\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Rx URB aborted (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"format error\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed resubmitting read bulk urb: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unsupported msg (0x%X)\00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"PIC CAN version %u.%u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Wrong bitrate reported by the device (%u). Expected %u\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"PIC USB version %u.%u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"device disconnected\0A\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 16, i64 12, i64 13]
@__sancov_gen_cov_switch_values.32 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967188, i64 4294967225, i64 4294967264, i64 4294967294]
@__sancov_gen_cov_switch_values.33 = internal global [7 x i64] [i64 5, i64 8, i64 226, i64 227, i64 245, i64 247, i64 255]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 16, i64 33, i64 83]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@___asan_gen_.36 = private unnamed_addr constant [16 x i8] c"mcba_usb_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 895, i32 26 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 902, i32 1 }
@___asan_gen_.42 = private unnamed_addr constant [15 x i8] c"mcba_usb_table\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 148, i32 35 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 813, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"mcba_termination\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 155, i32 18 }
@___asan_gen_.66 = private unnamed_addr constant [13 x i8] c"mcba_bitrate\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 158, i32 18 }
@___asan_gen_.69 = private unnamed_addr constant [16 x i8] c"mcba_netdev_ops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 766, i32 36 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 850, i32 22 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 863, i32 23 }
@___asan_gen_.78 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 868, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1367, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1368, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 383, i32 7 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 391, i32 28 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 298, i32 29 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 242, i32 23 }
@___asan_gen_.112 = private unnamed_addr constant [27 x i8] c"../include/linux/can/skb.h\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 104, i32 6 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 647, i32 23 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 680, i32 23 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 686, i32 23 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 589, i32 23 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 598, i32 29 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 620, i32 22 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 556, i32 29 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 494, i32 29 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 508, i32 8 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 468, i32 29 }
@___asan_gen_.144 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.145 = private constant [34 x i8] c"../drivers/net/can/usb/mcba_usb.c\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 888, i32 28 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_author467, ptr @__UNIQUE_ID_description468, ptr @__UNIQUE_ID_file469, ptr @__UNIQUE_ID_license470, ptr @__exitcall_mcba_usb_driver_exit, ptr @__initcall__kmod_mcba_usb__466_902_mcba_usb_driver_init6, ptr @mcba_usb_driver_exit, ptr @mcba_usb_probe._entry, ptr @mcba_usb_probe._entry.8, ptr @mcba_usb_probe._entry_ptr, ptr @mcba_usb_probe._entry_ptr.11, ptr @mcba_usb_driver, ptr @.str, ptr @mcba_usb_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @mcba_termination, ptr @mcba_bitrate, ptr @mcba_netdev_ops, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @init_usb_anchor.__key, ptr @.str.12, ptr @init_usb_anchor.__key.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcba_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcba_usb_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcba_usb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcba_termination to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcba_bitrate to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcba_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcba_usb_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mcba_usb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @mcba_usb_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mcba_usb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_deregister(ptr noundef nonnull @mcba_usb_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcba_usb_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %usb_msg.i60.i = alloca %struct.mcba_usb_msg_fw_ver, align 1
  %usb_msg.i.i = alloca %struct.mcba_usb_msg_fw_ver, align 1
  %buf_dma.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %call1 = tail call ptr @alloc_candev_mqs(i32 noundef 1036, i32 noundef 20, i32 noundef 1, i32 noundef 1) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %add.ptr.i71 = getelementptr i8, ptr %call1, i32 2304
  %udev = getelementptr i8, ptr %call1, i32 2936
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr.i, ptr %udev, align 4
  %netdev3 = getelementptr i8, ptr %call1, i32 2940
  %3 = ptrtoint ptr %netdev3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1, ptr %netdev3, align 4
  %usb_ka_first_pass = getelementptr i8, ptr %call1, i32 3172
  %4 = ptrtoint ptr %usb_ka_first_pass to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %usb_ka_first_pass, align 4
  %can_ka_first_pass = getelementptr i8, ptr %call1, i32 3173
  %5 = ptrtoint ptr %can_ka_first_pass to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %can_ka_first_pass, align 1
  %can_speed_check = getelementptr i8, ptr %call1, i32 3174
  %6 = ptrtoint ptr %can_speed_check to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %can_speed_check, align 2
  %rx_submitted = getelementptr i8, ptr %call1, i32 3056
  %7 = getelementptr i8, ptr %call1, i32 3064
  %8 = call ptr @memset(ptr %7, i32 0, i32 104)
  %9 = ptrtoint ptr %rx_submitted to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %rx_submitted, ptr %rx_submitted, align 4
  %prev.i.i = getelementptr i8, ptr %call1, i32 3060
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %rx_submitted, ptr %prev.i.i, align 4
  tail call void @__init_waitqueue_head(ptr noundef %7, ptr noundef nonnull @.str.12, ptr noundef nonnull @init_usb_anchor.__key) #10
  %lock.i = getelementptr i8, ptr %call1, i32 3116
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @init_usb_anchor.__key.13, i16 noundef signext 3) #10
  %tx_submitted = getelementptr i8, ptr %call1, i32 2944
  %11 = getelementptr i8, ptr %call1, i32 2952
  %12 = call ptr @memset(ptr %11, i32 0, i32 104)
  %13 = ptrtoint ptr %tx_submitted to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %tx_submitted, ptr %tx_submitted, align 4
  %prev.i.i72 = getelementptr i8, ptr %call1, i32 2948
  %14 = ptrtoint ptr %prev.i.i72 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %tx_submitted, ptr %prev.i.i72, align 4
  tail call void @__init_waitqueue_head(ptr noundef %11, ptr noundef nonnull @.str.12, ptr noundef nonnull @init_usb_anchor.__key) #10
  %lock.i74 = getelementptr i8, ptr %call1, i32 3004
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i74, ptr noundef nonnull @.str.14, ptr noundef nonnull @init_usb_anchor.__key.13, i16 noundef signext 3) #10
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr.i71, ptr %driver_data.i.i, align 4
  %state = getelementptr i8, ptr %call1, i32 2472
  %16 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4, ptr %state, align 4
  %termination_const = getelementptr i8, ptr %call1, i32 2448
  %17 = ptrtoint ptr %termination_const to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @mcba_termination, ptr %termination_const, align 4
  %termination_const_cnt = getelementptr i8, ptr %call1, i32 2444
  %18 = ptrtoint ptr %termination_const_cnt to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %termination_const_cnt, align 4
  %bitrate_const = getelementptr i8, ptr %call1, i32 2424
  %19 = ptrtoint ptr %bitrate_const to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @mcba_bitrate, ptr %bitrate_const, align 4
  %bitrate_const_cnt = getelementptr i8, ptr %call1, i32 2420
  %20 = ptrtoint ptr %bitrate_const_cnt to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 18, ptr %bitrate_const_cnt, align 4
  %do_set_termination = getelementptr i8, ptr %call1, i32 2600
  %21 = ptrtoint ptr %do_set_termination to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @mcba_set_termination, ptr %do_set_termination, align 4
  %do_set_mode = getelementptr i8, ptr %call1, i32 2596
  %22 = ptrtoint ptr %do_set_mode to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @mcba_net_set_mode, ptr %do_set_mode, align 4
  %do_get_berr_counter = getelementptr i8, ptr %call1, i32 2608
  %23 = ptrtoint ptr %do_get_berr_counter to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @mcba_net_get_berr_counter, ptr %do_get_berr_counter, align 4
  %do_set_bittiming = getelementptr i8, ptr %call1, i32 2588
  %24 = ptrtoint ptr %do_set_bittiming to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @mcba_net_set_bittiming, ptr %do_set_bittiming, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 16
  %25 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @mcba_netdev_ops, ptr %netdev_ops, align 8
  %flags = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 14
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 8
  %or = or i32 %27, 262144
  store i32 %or, ptr %flags, align 8
  %dev12 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %parent = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 133, i32 1
  %28 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %dev12, ptr %parent, align 8
  %call14 = tail call i32 @register_candev(ptr noundef nonnull %call1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call1, ptr noundef nonnull @.str.6, i32 noundef %call14) #13
  br label %cleanup_free_candev

if.end17:                                         ; preds = %if.end
  %29 = ptrtoint ptr %netdev3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %netdev3, align 4
  %arrayidx.i.i = getelementptr i8, ptr %call1, i32 2696
  %ndx.i.i = getelementptr i8, ptr %call1, i32 2700
  %31 = ptrtoint ptr %ndx.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 20, ptr %ndx.i.i, align 4
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr.i71, ptr %arrayidx.i.i, align 4
  %arrayidx.1.i.i = getelementptr i8, ptr %call1, i32 2708
  %ndx.1.i.i = getelementptr i8, ptr %call1, i32 2712
  %33 = ptrtoint ptr %ndx.1.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 20, ptr %ndx.1.i.i, align 4
  %34 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr.i71, ptr %arrayidx.1.i.i, align 4
  %arrayidx.2.i.i = getelementptr i8, ptr %call1, i32 2720
  %ndx.2.i.i = getelementptr i8, ptr %call1, i32 2724
  %35 = ptrtoint ptr %ndx.2.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 20, ptr %ndx.2.i.i, align 4
  %36 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr.i71, ptr %arrayidx.2.i.i, align 4
  %arrayidx.3.i.i = getelementptr i8, ptr %call1, i32 2732
  %ndx.3.i.i = getelementptr i8, ptr %call1, i32 2736
  %37 = ptrtoint ptr %ndx.3.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 20, ptr %ndx.3.i.i, align 4
  %38 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr.i71, ptr %arrayidx.3.i.i, align 4
  %arrayidx.4.i.i = getelementptr i8, ptr %call1, i32 2744
  %ndx.4.i.i = getelementptr i8, ptr %call1, i32 2748
  %39 = ptrtoint ptr %ndx.4.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 20, ptr %ndx.4.i.i, align 4
  %40 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr.i71, ptr %arrayidx.4.i.i, align 4
  %arrayidx.5.i.i = getelementptr i8, ptr %call1, i32 2756
  %ndx.5.i.i = getelementptr i8, ptr %call1, i32 2760
  %41 = ptrtoint ptr %ndx.5.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 20, ptr %ndx.5.i.i, align 4
  %42 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr.i71, ptr %arrayidx.5.i.i, align 4
  %arrayidx.6.i.i = getelementptr i8, ptr %call1, i32 2768
  %ndx.6.i.i = getelementptr i8, ptr %call1, i32 2772
  %43 = ptrtoint ptr %ndx.6.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 20, ptr %ndx.6.i.i, align 4
  %44 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr.i71, ptr %arrayidx.6.i.i, align 4
  %arrayidx.7.i.i = getelementptr i8, ptr %call1, i32 2780
  %ndx.7.i.i = getelementptr i8, ptr %call1, i32 2784
  %45 = ptrtoint ptr %ndx.7.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 20, ptr %ndx.7.i.i, align 4
  %46 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %add.ptr.i71, ptr %arrayidx.7.i.i, align 4
  %arrayidx.8.i.i = getelementptr i8, ptr %call1, i32 2792
  %ndx.8.i.i = getelementptr i8, ptr %call1, i32 2796
  %47 = ptrtoint ptr %ndx.8.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 20, ptr %ndx.8.i.i, align 4
  %48 = ptrtoint ptr %arrayidx.8.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %add.ptr.i71, ptr %arrayidx.8.i.i, align 4
  %arrayidx.9.i.i = getelementptr i8, ptr %call1, i32 2804
  %ndx.9.i.i = getelementptr i8, ptr %call1, i32 2808
  %49 = ptrtoint ptr %ndx.9.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 20, ptr %ndx.9.i.i, align 4
  %50 = ptrtoint ptr %arrayidx.9.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %add.ptr.i71, ptr %arrayidx.9.i.i, align 4
  %arrayidx.10.i.i = getelementptr i8, ptr %call1, i32 2816
  %ndx.10.i.i = getelementptr i8, ptr %call1, i32 2820
  %51 = ptrtoint ptr %ndx.10.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 20, ptr %ndx.10.i.i, align 4
  %52 = ptrtoint ptr %arrayidx.10.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %add.ptr.i71, ptr %arrayidx.10.i.i, align 4
  %arrayidx.11.i.i = getelementptr i8, ptr %call1, i32 2828
  %ndx.11.i.i = getelementptr i8, ptr %call1, i32 2832
  %53 = ptrtoint ptr %ndx.11.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 20, ptr %ndx.11.i.i, align 4
  %54 = ptrtoint ptr %arrayidx.11.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %add.ptr.i71, ptr %arrayidx.11.i.i, align 4
  %arrayidx.12.i.i = getelementptr i8, ptr %call1, i32 2840
  %ndx.12.i.i = getelementptr i8, ptr %call1, i32 2844
  %55 = ptrtoint ptr %ndx.12.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 20, ptr %ndx.12.i.i, align 4
  %56 = ptrtoint ptr %arrayidx.12.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %add.ptr.i71, ptr %arrayidx.12.i.i, align 4
  %arrayidx.13.i.i = getelementptr i8, ptr %call1, i32 2852
  %ndx.13.i.i = getelementptr i8, ptr %call1, i32 2856
  %57 = ptrtoint ptr %ndx.13.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 20, ptr %ndx.13.i.i, align 4
  %58 = ptrtoint ptr %arrayidx.13.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %add.ptr.i71, ptr %arrayidx.13.i.i, align 4
  %arrayidx.14.i.i = getelementptr i8, ptr %call1, i32 2864
  %ndx.14.i.i = getelementptr i8, ptr %call1, i32 2868
  %59 = ptrtoint ptr %ndx.14.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 20, ptr %ndx.14.i.i, align 4
  %60 = ptrtoint ptr %arrayidx.14.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %add.ptr.i71, ptr %arrayidx.14.i.i, align 4
  %arrayidx.15.i.i = getelementptr i8, ptr %call1, i32 2876
  %ndx.15.i.i = getelementptr i8, ptr %call1, i32 2880
  %61 = ptrtoint ptr %ndx.15.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 20, ptr %ndx.15.i.i, align 4
  %62 = ptrtoint ptr %arrayidx.15.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %add.ptr.i71, ptr %arrayidx.15.i.i, align 4
  %arrayidx.16.i.i = getelementptr i8, ptr %call1, i32 2888
  %ndx.16.i.i = getelementptr i8, ptr %call1, i32 2892
  %63 = ptrtoint ptr %ndx.16.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 20, ptr %ndx.16.i.i, align 4
  %64 = ptrtoint ptr %arrayidx.16.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %add.ptr.i71, ptr %arrayidx.16.i.i, align 4
  %arrayidx.17.i.i = getelementptr i8, ptr %call1, i32 2900
  %ndx.17.i.i = getelementptr i8, ptr %call1, i32 2904
  %65 = ptrtoint ptr %ndx.17.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 20, ptr %ndx.17.i.i, align 4
  %66 = ptrtoint ptr %arrayidx.17.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %add.ptr.i71, ptr %arrayidx.17.i.i, align 4
  %arrayidx.18.i.i = getelementptr i8, ptr %call1, i32 2912
  %ndx.18.i.i = getelementptr i8, ptr %call1, i32 2916
  %67 = ptrtoint ptr %ndx.18.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 20, ptr %ndx.18.i.i, align 4
  %68 = ptrtoint ptr %arrayidx.18.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %add.ptr.i71, ptr %arrayidx.18.i.i, align 4
  %arrayidx.19.i.i = getelementptr i8, ptr %call1, i32 2924
  %ndx.19.i.i = getelementptr i8, ptr %call1, i32 2928
  %69 = ptrtoint ptr %ndx.19.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 20, ptr %ndx.19.i.i, align 4
  %70 = ptrtoint ptr %arrayidx.19.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %add.ptr.i71, ptr %arrayidx.19.i.i, align 4
  %free_ctx_cnt.i.i = getelementptr i8, ptr %call1, i32 3176
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %free_ctx_cnt.i.i, i32 noundef 4) #10
  %71 = ptrtoint ptr %free_ctx_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile i32 20, ptr %free_ctx_cnt.i.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end17
  %i.092.i = phi i32 [ 0, %if.end17 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf_dma.i) #10
  %72 = ptrtoint ptr %buf_dma.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -1, ptr %buf_dma.i, align 4, !annotation !86
  %call.i = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.i.for.end.i_crit_edge, label %if.end.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.end.i:                                         ; preds = %for.body.i
  %73 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %udev, align 4
  %call2.i = call ptr @usb_alloc_coherent(ptr noundef %74, i32 noundef 64, i32 noundef 3264, ptr noundef nonnull %buf_dma.i) #10
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %30, ptr noundef nonnull @.str.20) #13
  br label %for.end.sink.split.i

if.end5.i:                                        ; preds = %if.end.i
  %75 = ptrtoint ptr %buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %buf_dma.i, align 4
  %transfer_dma.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 15
  %77 = ptrtoint ptr %transfer_dma.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %transfer_dma.i, align 4
  %78 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %udev, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 8
  %shl.i.i = shl i32 %81, 8
  %or9.i = or i32 %shl.i.i, -1073708928
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 8
  %82 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %79, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 10
  %83 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %or9.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 14
  %84 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call2.i, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 19
  %85 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 64, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 28
  %86 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @mcba_usb_read_bulk_callback, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 27
  %87 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %add.ptr.i71, ptr %context4.i.i, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 13
  %88 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %transfer_flags.i, align 4
  %or10.i = or i32 %89, 4
  store i32 %or10.i, ptr %transfer_flags.i, align 4
  call void @usb_anchor_urb(ptr noundef nonnull %call.i, ptr noundef %rx_submitted) #10
  %call11.i = call i32 @usb_submit_urb(ptr noundef nonnull %call.i, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %for.inc.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @usb_unanchor_urb(ptr noundef nonnull %call.i) #10
  %90 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %udev, align 4
  %92 = ptrtoint ptr %buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %buf_dma.i, align 4
  call void @usb_free_coherent(ptr noundef %91, i32 noundef 64, ptr noundef nonnull %call2.i, i32 noundef %93) #10
  br label %for.end.sink.split.i

for.inc.i:                                        ; preds = %if.end5.i
  %arrayidx.i = getelementptr %struct.mcba_priv, ptr %add.ptr.i71, i32 0, i32 12, i32 %i.092.i
  %94 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call2.i, ptr %arrayidx.i, align 4
  %95 = ptrtoint ptr %buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %buf_dma.i, align 4
  %arrayidx16.i = getelementptr %struct.mcba_priv, ptr %add.ptr.i71, i32 0, i32 13, i32 %i.092.i
  %97 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %arrayidx16.i, align 4
  call void @usb_free_urb(ptr noundef nonnull %call.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf_dma.i) #10
  %inc.i = add nuw nsw i32 %i.092.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20
  br i1 %exitcond.not.i, label %for.inc.i.if.end24.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.if.end24.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

for.end.sink.split.i:                             ; preds = %if.then13.i, %if.then4.i
  %err.1.ph.ph.i = phi i32 [ %call11.i, %if.then13.i ], [ -12, %if.then4.i ]
  call void @usb_free_urb(ptr noundef nonnull %call.i) #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.sink.split.i, %for.body.i.for.end.i_crit_edge
  %err.1.ph.i = phi i32 [ %err.1.ph.ph.i, %for.end.sink.split.i ], [ -12, %for.body.i.for.end.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf_dma.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.092.i)
  %cmp19.i = icmp eq i32 %i.092.i, 0
  br i1 %cmp19.i, label %if.then20.i, label %if.then23.i

if.then20.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %30, ptr noundef nonnull @.str.21) #13
  br label %mcba_usb_start.exit

if.then23.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %30, ptr noundef nonnull @.str.22) #13
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then23.i, %for.inc.i.if.end24.i_crit_edge
  %err.27779.i = phi i32 [ %err.1.ph.i, %if.then23.i ], [ 0, %for.inc.i.if.end24.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 19, ptr nonnull %usb_msg.i.i) #10
  %98 = getelementptr inbounds %struct.mcba_usb_msg_fw_ver, ptr %usb_msg.i.i, i32 0, i32 1
  %99 = getelementptr inbounds i8, ptr %usb_msg.i.i, i32 2
  %100 = call ptr @memset(ptr %99, i32 0, i32 17)
  %101 = ptrtoint ptr %usb_msg.i.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 -87, ptr %usb_msg.i.i, align 1
  %102 = ptrtoint ptr %98 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 1, ptr %98, align 1
  %call.i.i.i = call fastcc ptr @mcba_usb_get_free_ctx(ptr noundef %add.ptr.i71, ptr noundef null) #10
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end24.i.cleanup.sink.split.i.i.i_crit_edge, label %if.end.i.i.i

if.end24.i.cleanup.sink.split.i.i.i_crit_edge:    ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i.i.i

if.end.i.i.i:                                     ; preds = %if.end24.i
  %call1.i.i.i = call fastcc i32 @mcba_usb_xmit(ptr noundef %add.ptr.i71, ptr noundef nonnull %usb_msg.i.i, ptr noundef nonnull %call.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.mcba_usb_xmit_read_fw_ver.exit.i_crit_edge, label %if.end.i.i.i.cleanup.sink.split.i.i.i_crit_edge

if.end.i.i.i.cleanup.sink.split.i.i.i_crit_edge:  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i.i.i

if.end.i.i.i.mcba_usb_xmit_read_fw_ver.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mcba_usb_xmit_read_fw_ver.exit.i

cleanup.sink.split.i.i.i:                         ; preds = %if.end.i.i.i.cleanup.sink.split.i.i.i_crit_edge, %if.end24.i.cleanup.sink.split.i.i.i_crit_edge
  %.str.16.sink.i.i.i = phi ptr [ @.str.15, %if.end24.i.cleanup.sink.split.i.i.i_crit_edge ], [ @.str.16, %if.end.i.i.i.cleanup.sink.split.i.i.i_crit_edge ]
  %103 = ptrtoint ptr %netdev3 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %netdev3, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %104, ptr noundef nonnull %.str.16.sink.i.i.i, i32 noundef 169) #13
  br label %mcba_usb_xmit_read_fw_ver.exit.i

mcba_usb_xmit_read_fw_ver.exit.i:                 ; preds = %cleanup.sink.split.i.i.i, %if.end.i.i.i.mcba_usb_xmit_read_fw_ver.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 19, ptr nonnull %usb_msg.i.i) #10
  call void @llvm.lifetime.start.p0(i64 19, ptr nonnull %usb_msg.i60.i) #10
  %105 = getelementptr inbounds %struct.mcba_usb_msg_fw_ver, ptr %usb_msg.i60.i, i32 0, i32 1
  %106 = getelementptr inbounds i8, ptr %usb_msg.i60.i, i32 2
  %107 = call ptr @memset(ptr %106, i32 0, i32 17)
  %108 = ptrtoint ptr %usb_msg.i60.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 -87, ptr %usb_msg.i60.i, align 1
  %109 = ptrtoint ptr %105 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 2, ptr %105, align 1
  %call.i.i61.i = call fastcc ptr @mcba_usb_get_free_ctx(ptr noundef %add.ptr.i71, ptr noundef null) #10
  %tobool.not.i.i62.i = icmp eq ptr %call.i.i61.i, null
  br i1 %tobool.not.i.i62.i, label %mcba_usb_xmit_read_fw_ver.exit.i.cleanup.sink.split.i.i69.i_crit_edge, label %if.end.i.i65.i

mcba_usb_xmit_read_fw_ver.exit.i.cleanup.sink.split.i.i69.i_crit_edge: ; preds = %mcba_usb_xmit_read_fw_ver.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i.i69.i

if.end.i.i65.i:                                   ; preds = %mcba_usb_xmit_read_fw_ver.exit.i
  %call1.i.i63.i = call fastcc i32 @mcba_usb_xmit(ptr noundef %add.ptr.i71, ptr noundef nonnull %usb_msg.i60.i, ptr noundef nonnull %call.i.i61.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i63.i)
  %tobool2.not.i.i64.i = icmp eq i32 %call1.i.i63.i, 0
  br i1 %tobool2.not.i.i64.i, label %if.end.i.i65.i.mcba_usb_xmit_read_fw_ver.exit70.i_crit_edge, label %if.end.i.i65.i.cleanup.sink.split.i.i69.i_crit_edge

if.end.i.i65.i.cleanup.sink.split.i.i69.i_crit_edge: ; preds = %if.end.i.i65.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i.i69.i

if.end.i.i65.i.mcba_usb_xmit_read_fw_ver.exit70.i_crit_edge: ; preds = %if.end.i.i65.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mcba_usb_xmit_read_fw_ver.exit70.i

cleanup.sink.split.i.i69.i:                       ; preds = %if.end.i.i65.i.cleanup.sink.split.i.i69.i_crit_edge, %mcba_usb_xmit_read_fw_ver.exit.i.cleanup.sink.split.i.i69.i_crit_edge
  %.str.16.sink.i.i66.i = phi ptr [ @.str.15, %mcba_usb_xmit_read_fw_ver.exit.i.cleanup.sink.split.i.i69.i_crit_edge ], [ @.str.16, %if.end.i.i65.i.cleanup.sink.split.i.i69.i_crit_edge ]
  %110 = ptrtoint ptr %netdev3 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %netdev3, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %111, ptr noundef nonnull %.str.16.sink.i.i66.i, i32 noundef 169) #13
  br label %mcba_usb_xmit_read_fw_ver.exit70.i

mcba_usb_xmit_read_fw_ver.exit70.i:               ; preds = %cleanup.sink.split.i.i69.i, %if.end.i.i65.i.mcba_usb_xmit_read_fw_ver.exit70.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 19, ptr nonnull %usb_msg.i60.i) #10
  br label %mcba_usb_start.exit

mcba_usb_start.exit:                              ; preds = %mcba_usb_xmit_read_fw_ver.exit70.i, %if.then20.i
  %err.276.i = phi i32 [ %err.27779.i, %mcba_usb_xmit_read_fw_ver.exit70.i ], [ %err.1.ph.i, %if.then20.i ]
  %112 = zext i32 %err.276.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values)
  switch i32 %err.276.i, label %mcba_usb_start.exit.if.end23_crit_edge [
    i32 0, label %do.end27
    i32 -19, label %if.then21
  ]

mcba_usb_start.exit.if.end23_crit_edge:           ; preds = %mcba_usb_start.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then21:                                        ; preds = %mcba_usb_start.exit
  call void @__sanitizer_cov_trace_pc() #12
  %113 = ptrtoint ptr %netdev3 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %netdev3, align 4
  call void @netif_device_detach(ptr noundef %114) #10
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %mcba_usb_start.exit.if.end23_crit_edge
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %call1, ptr noundef nonnull @.str.7, i32 noundef %err.276.i) #13
  %115 = ptrtoint ptr %netdev3 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %netdev3, align 4
  call void @unregister_candev(ptr noundef %116) #10
  br label %cleanup_free_candev

do.end27:                                         ; preds = %mcba_usb_start.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev12, ptr noundef nonnull @.str.9) #13
  br label %cleanup

cleanup_free_candev:                              ; preds = %if.end23, %if.then16
  %err.0 = phi i32 [ %call14, %if.then16 ], [ %err.276.i, %if.end23 ]
  call void @free_candev(ptr noundef nonnull %call1) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup_free_candev, %do.end27, %do.end
  %retval.0 = phi i32 [ %err.0, %cleanup_free_candev ], [ 0, %do.end27 ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcba_usb_disconnect(ptr nocapture noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  %netdev = getelementptr inbounds %struct.mcba_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.30) #13
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 4
  tail call void @unregister_candev(ptr noundef %5) #10
  %rx_submitted.i = getelementptr inbounds %struct.mcba_priv, ptr %1, i32 0, i32 6
  tail call void @usb_kill_anchored_urbs(ptr noundef %rx_submitted.i) #10
  %udev.i = getelementptr inbounds %struct.mcba_priv, ptr %1, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.09.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev.i, align 4
  %arrayidx.i = getelementptr %struct.mcba_priv, ptr %1, i32 0, i32 12, i32 %i.09.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr %struct.mcba_priv, ptr %1, i32 0, i32 13, i32 %i.09.i
  %10 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx1.i, align 4
  tail call void @usb_free_coherent(ptr noundef %7, i32 noundef 64, ptr noundef %9, i32 noundef %11) #10
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20
  br i1 %exitcond.not.i, label %mcba_urb_unlink.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

mcba_urb_unlink.exit:                             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %tx_submitted.i = getelementptr inbounds %struct.mcba_priv, ptr %1, i32 0, i32 5
  tail call void @usb_kill_anchored_urbs(ptr noundef %tx_submitted.i) #10
  %12 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev, align 4
  tail call void @free_candev(ptr noundef %13) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_candev_mqs(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcba_set_termination(ptr noundef %netdev, i16 noundef zeroext %term) #2 align 64 {
entry:
  %usb_msg = alloca %struct.mcba_usb_msg_termination, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 19, ptr nonnull %usb_msg) #10
  %0 = call ptr @memcpy(ptr %usb_msg, ptr @__const.mcba_set_termination.usb_msg, i32 19)
  call void @__sanitizer_cov_trace_const_cmp2(i16 120, i16 %term)
  %cmp = icmp eq i16 %term, 120
  %spec.select = zext i1 %cmp to i8
  %1 = getelementptr inbounds %struct.mcba_usb_msg_termination, ptr %usb_msg, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %spec.select, ptr %1, align 1
  %call.i = tail call fastcc ptr @mcba_usb_get_free_ctx(ptr noundef %add.ptr.i, ptr noundef null) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup.sink.split.i_crit_edge, label %if.end.i

entry.cleanup.sink.split.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %entry
  %call1.i = call fastcc i32 @mcba_usb_xmit(ptr noundef %add.ptr.i, ptr noundef nonnull %usb_msg, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.mcba_usb_xmit_cmd.exit_crit_edge, label %if.end.i.cleanup.sink.split.i_crit_edge

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.end.i.mcba_usb_xmit_cmd.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mcba_usb_xmit_cmd.exit

cleanup.sink.split.i:                             ; preds = %if.end.i.cleanup.sink.split.i_crit_edge, %entry.cleanup.sink.split.i_crit_edge
  %.str.16.sink.i = phi ptr [ @.str.15, %entry.cleanup.sink.split.i_crit_edge ], [ @.str.16, %if.end.i.cleanup.sink.split.i_crit_edge ]
  %netdev4.i = getelementptr i8, ptr %netdev, i32 2940
  %3 = ptrtoint ptr %netdev4.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %netdev4.i, align 4
  %5 = ptrtoint ptr %usb_msg to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %usb_msg, align 1
  %conv6.i = zext i8 %6 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull %.str.16.sink.i, i32 noundef %conv6.i) #13
  br label %mcba_usb_xmit_cmd.exit

mcba_usb_xmit_cmd.exit:                           ; preds = %cleanup.sink.split.i, %if.end.i.mcba_usb_xmit_cmd.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 19, ptr nonnull %usb_msg) #10
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mcba_net_set_mode(ptr nocapture noundef readnone %netdev, i32 noundef %mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mcba_net_get_berr_counter(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %bec) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bec1 = getelementptr i8, ptr %netdev, i32 3168
  %0 = ptrtoint ptr %bec1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %bec1, align 4
  %2 = ptrtoint ptr %bec to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %bec, align 2
  %rxerr = getelementptr i8, ptr %netdev, i32 3170
  %3 = ptrtoint ptr %rxerr to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %rxerr, align 2
  %rxerr4 = getelementptr inbounds %struct.can_berr_counter, ptr %bec, i32 0, i32 1
  %5 = ptrtoint ptr %rxerr4 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %rxerr4, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcba_net_set_bittiming(ptr noundef %netdev) #2 align 64 {
entry:
  %usb_msg.i = alloca %struct.mcba_usb_msg_change_bitrate, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %bittiming = getelementptr i8, ptr %netdev, i32 2340
  %0 = ptrtoint ptr %bittiming to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bittiming, align 4
  %div = udiv i32 %1, 1000
  %conv = trunc i32 %div to i16
  call void @llvm.lifetime.start.p0(i64 19, ptr nonnull %usb_msg.i) #10
  %2 = call ptr @memcpy(ptr %usb_msg.i, ptr @__const.mcba_usb_xmit_change_bitrate.usb_msg, i32 19)
  %bitrate1.i = getelementptr inbounds %struct.mcba_usb_msg_change_bitrate, ptr %usb_msg.i, i32 0, i32 1
  %3 = ptrtoint ptr %bitrate1.i to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 %conv, ptr %bitrate1.i, align 1
  %call.i.i = tail call fastcc ptr @mcba_usb_get_free_ctx(ptr noundef %add.ptr.i, ptr noundef null) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.cleanup.sink.split.i.i_crit_edge, label %if.end.i.i

entry.cleanup.sink.split.i.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i.i

if.end.i.i:                                       ; preds = %entry
  %call1.i.i = call fastcc i32 @mcba_usb_xmit(ptr noundef %add.ptr.i, ptr noundef nonnull %usb_msg.i, ptr noundef nonnull %call.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.mcba_usb_xmit_change_bitrate.exit_crit_edge, label %if.end.i.i.cleanup.sink.split.i.i_crit_edge

if.end.i.i.cleanup.sink.split.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i.i

if.end.i.i.mcba_usb_xmit_change_bitrate.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mcba_usb_xmit_change_bitrate.exit

cleanup.sink.split.i.i:                           ; preds = %if.end.i.i.cleanup.sink.split.i.i_crit_edge, %entry.cleanup.sink.split.i.i_crit_edge
  %.str.16.sink.i.i = phi ptr [ @.str.15, %entry.cleanup.sink.split.i.i_crit_edge ], [ @.str.16, %if.end.i.i.cleanup.sink.split.i.i_crit_edge ]
  %netdev4.i.i = getelementptr i8, ptr %netdev, i32 2940
  %4 = ptrtoint ptr %netdev4.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev4.i.i, align 4
  %6 = ptrtoint ptr %usb_msg.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %usb_msg.i, align 1
  %conv6.i.i = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull %.str.16.sink.i.i, i32 noundef %conv6.i.i) #13
  br label %mcba_usb_xmit_change_bitrate.exit

mcba_usb_xmit_change_bitrate.exit:                ; preds = %cleanup.sink.split.i.i, %if.end.i.i.mcba_usb_xmit_change_bitrate.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 19, ptr nonnull %usb_msg.i) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mcba_usb_get_free_ctx(ptr noundef %priv, ptr noundef readnone %cf) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %ndx = getelementptr %struct.mcba_priv, ptr %priv, i32 0, i32 2, i32 0, i32 1
  %0 = ptrtoint ptr %ndx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ndx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %1)
  %cmp1 = icmp eq i32 %1, 20
  br i1 %cmp1, label %entry.if.then_crit_edge, label %for.inc

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %for.inc.18.if.then_crit_edge, %for.inc.17.if.then_crit_edge, %for.inc.16.if.then_crit_edge, %for.inc.15.if.then_crit_edge, %for.inc.14.if.then_crit_edge, %for.inc.13.if.then_crit_edge, %for.inc.12.if.then_crit_edge, %for.inc.11.if.then_crit_edge, %for.inc.10.if.then_crit_edge, %for.inc.9.if.then_crit_edge, %for.inc.8.if.then_crit_edge, %for.inc.7.if.then_crit_edge, %for.inc.6.if.then_crit_edge, %for.inc.5.if.then_crit_edge, %for.inc.4.if.then_crit_edge, %for.inc.3.if.then_crit_edge, %for.inc.2.if.then_crit_edge, %for.inc.1.if.then_crit_edge, %for.inc.if.then_crit_edge, %entry.if.then_crit_edge
  %i.025.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %for.inc.if.then_crit_edge ], [ 2, %for.inc.1.if.then_crit_edge ], [ 3, %for.inc.2.if.then_crit_edge ], [ 4, %for.inc.3.if.then_crit_edge ], [ 5, %for.inc.4.if.then_crit_edge ], [ 6, %for.inc.5.if.then_crit_edge ], [ 7, %for.inc.6.if.then_crit_edge ], [ 8, %for.inc.7.if.then_crit_edge ], [ 9, %for.inc.8.if.then_crit_edge ], [ 10, %for.inc.9.if.then_crit_edge ], [ 11, %for.inc.10.if.then_crit_edge ], [ 12, %for.inc.11.if.then_crit_edge ], [ 13, %for.inc.12.if.then_crit_edge ], [ 14, %for.inc.13.if.then_crit_edge ], [ 15, %for.inc.14.if.then_crit_edge ], [ 16, %for.inc.15.if.then_crit_edge ], [ 17, %for.inc.16.if.then_crit_edge ], [ 18, %for.inc.17.if.then_crit_edge ], [ 19, %for.inc.18.if.then_crit_edge ]
  %ndx.lcssa = phi ptr [ %ndx, %entry.if.then_crit_edge ], [ %ndx.1, %for.inc.if.then_crit_edge ], [ %ndx.2, %for.inc.1.if.then_crit_edge ], [ %ndx.3, %for.inc.2.if.then_crit_edge ], [ %ndx.4, %for.inc.3.if.then_crit_edge ], [ %ndx.5, %for.inc.4.if.then_crit_edge ], [ %ndx.6, %for.inc.5.if.then_crit_edge ], [ %ndx.7, %for.inc.6.if.then_crit_edge ], [ %ndx.8, %for.inc.7.if.then_crit_edge ], [ %ndx.9, %for.inc.8.if.then_crit_edge ], [ %ndx.10, %for.inc.9.if.then_crit_edge ], [ %ndx.11, %for.inc.10.if.then_crit_edge ], [ %ndx.12, %for.inc.11.if.then_crit_edge ], [ %ndx.13, %for.inc.12.if.then_crit_edge ], [ %ndx.14, %for.inc.13.if.then_crit_edge ], [ %ndx.15, %for.inc.14.if.then_crit_edge ], [ %ndx.16, %for.inc.15.if.then_crit_edge ], [ %ndx.17, %for.inc.16.if.then_crit_edge ], [ %ndx.18, %for.inc.17.if.then_crit_edge ], [ %ndx.19, %for.inc.18.if.then_crit_edge ]
  %arrayidx.le = getelementptr %struct.mcba_priv, ptr %priv, i32 0, i32 2, i32 %i.025.lcssa
  %2 = ptrtoint ptr %ndx.lcssa to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %i.025.lcssa, ptr %ndx.lcssa, align 4
  %tobool.not = icmp ne ptr %cf, null
  %spec.select = zext i1 %tobool.not to i8
  %3 = getelementptr %struct.mcba_priv, ptr %priv, i32 0, i32 2, i32 %i.025.lcssa, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %spec.select, ptr %3, align 4
  %free_ctx_cnt = getelementptr inbounds %struct.mcba_priv, ptr %priv, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %free_ctx_cnt, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %free_ctx_cnt, i32 1, i32 3, i32 1) #10
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %free_ctx_cnt, ptr %free_ctx_cnt, i32 1, ptr elementtype(i32) %free_ctx_cnt) #10, !srcloc !87
  br label %for.end

for.inc:                                          ; preds = %entry
  %ndx.1 = getelementptr %struct.mcba_priv, ptr %priv, i32 0, i32 2, i32 1, i32 1
  %6 = ptrtoint ptr %ndx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ndx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %7)
  %cmp1.1 = icmp eq i32 %7, 20
  br i1 %cmp1.1, label %for.inc.if.then_crit_edge, label %for.inc.1

for.inc.if.then_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.inc.1:                                        ; preds = %for.inc
  %ndx.2 = getelementptr %struct.mcba_priv, ptr %priv, i32 0, i32 2, i32 2, i32 1
  %8 = ptrtoint ptr %ndx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ndx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %9)
  %cmp1.2 = icmp eq i32 %9, 20
  br i1 %cmp1.2, label %for.inc.1.if.then_crit_edge, label %for.inc.2

for.inc.1.if.then_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.inc.2:                                        ; preds = %for.inc.1
  %ndx.3 = getelementptr %struct.mcba_priv, ptr %priv, i32 0, i32 2, i32 3, i32 1
  %10 = ptrtoint ptr %ndx.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ndx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %11)
  %cmp1.3 = icmp eq i32 %11, 20
  br i1 %cmp1.3, label %for.inc.2.if.then_crit_edge, label %for.inc.3

for.inc.2.if.then_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.inc.3:                                        ; preds = %for.inc.2
  %ndx.4 = getelementptr %struct.mcba_priv, ptr %priv, i32 0, i32 2, i32 4, i32 1
  %12 = ptrtoint ptr %ndx.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ndx.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %13)
  %cmp1.4 = icmp eq i32 %13, 20
  br i1 %cmp1.4, label %for.inc.3.if.then_crit_edge, label %for.inc.4

for.inc.3.if.then_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.inc.4:                                        ; preds = %for.inc.3
  %ndx.5 = getelementptr %struct.mcba_priv, ptr %priv, i32 0, i32 2, i32 5, i32 1
  %14 = ptrtoint ptr %ndx.5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ndx.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %15)
  %cmp1.5 = icmp eq i32 %15, 20
  br i1 %cmp1.5, label %for.inc.4.if.then_crit_edge, label %for.inc.5

for.inc.4.if.then_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.inc.5:                                        ; preds = %for.inc.4
  %ndx.6 = getelementptr %struct.mcba_priv, ptr %priv, i32 0, i32 2, i32 6, i32 1
  %16 = ptrtoint ptr %ndx.6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ndx.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %17)
  %cmp1.6 = icmp eq i32 %17, 20
  br i1 %cmp1.6, label %for.inc.5.if.then_crit_edge, label %for.inc.6

for.inc.5.if.then_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.inc.6:                                        ; preds = %for.inc.5
  %ndx.7 = getelementptr %struct.mcba_priv, ptr %priv, i32 0, i32 2, i32 7, i32 1
  %18 = ptrtoint ptr %ndx.7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ndx.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %19)
  %cmp1.7 = icmp eq i32 %19, 20
  br i1 %cmp1.7, label %for.inc.6.if.then_crit_edge, label %for.inc.7

for.inc.6.if.then_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.inc.7:                                        ; preds = %for.inc.6
  %ndx.8 = getelementptr %struct.mcba_priv, ptr %priv, i32 0, i32 2, i32 8, i32 1
  %20 = ptrtoint ptr %ndx.8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ndx.8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %21)
  %cmp1.8 = icmp eq i32 %21, 20
  br i1 %cmp1.8, label %for.inc.7.if.then_crit_edge, label %for.inc.8

for.inc.7.if.then_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.inc.8:                                        ; preds = %for.inc.7
  %ndx.9 = getelementptr %struct.mcba_priv, ptr %priv, i32 0, i32 2, i32 9, i32 1
  %22 = ptrtoint ptr %ndx.9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ndx.9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %23)
  %cmp1.9 = icmp eq i32 %23, 20
  br i1 %cmp1.9, label %for.inc.8.if.then_crit_edge, label %for.inc.9

for.inc.8.if.then_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.inc.9:                                        ; preds = %for.inc.8
  %ndx.10 = getelementptr %struct.mcba_priv, ptr %priv, i32 0, i32 2, i32 10, i32 1
  %24 = ptrtoint ptr %ndx.10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ndx.10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %25)
  %cmp1.10 = icmp eq i32 %25, 20
  br i1 %cmp1.10, label %for.inc.9.if.then_crit_edge, label %for.inc.10

for.inc.9.if.then_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.inc.10:                                       ; preds = %for.inc.9
  %ndx.11 = getelementptr %struct.mcba_priv, ptr %priv, i32 0, i32 2, i32 11, i32 1
  %26 = ptrtoint ptr %ndx.11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ndx.11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %27)
  %cmp1.11 = icmp eq i32 %27, 20
  br i1 %cmp1.11, label %for.inc.10.if.then_crit_edge, label %for.inc.11

for.inc.10.if.then_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.inc.11:                                       ; preds = %for.inc.10
  %ndx.12 = getelementptr %struct.mcba_priv, ptr %priv, i32 0, i32 2, i32 12, i32 1
  %28 = ptrtoint ptr %ndx.12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ndx.12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %29)
  %cmp1.12 = icmp eq i32 %29, 20
  br i1 %cmp1.12, label %for.inc.11.if.then_crit_edge, label %for.inc.12

for.inc.11.if.then_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.inc.12:                                       ; preds = %for.inc.11
  %ndx.13 = getelementptr %struct.mcba_priv, ptr %priv, i32 0, i32 2, i32 13, i32 1
  %30 = ptrtoint ptr %ndx.13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ndx.13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %31)
  %cmp1.13 = icmp eq i32 %31, 20
  br i1 %cmp1.13, label %for.inc.12.if.then_crit_edge, label %for.inc.13

for.inc.12.if.then_crit_edge:                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.inc.13:                                       ; preds = %for.inc.12
  %ndx.14 = getelementptr %struct.mcba_priv, ptr %priv, i32 0, i32 2, i32 14, i32 1
  %32 = ptrtoint ptr %ndx.14 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ndx.14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %33)
  %cmp1.14 = icmp eq i32 %33, 20
  br i1 %cmp1.14, label %for.inc.13.if.then_crit_edge, label %for.inc.14

for.inc.13.if.then_crit_edge:                     ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.inc.14:                                       ; preds = %for.inc.13
  %ndx.15 = getelementptr %struct.mcba_priv, ptr %priv, i32 0, i32 2, i32 15, i32 1
  %34 = ptrtoint ptr %ndx.15 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ndx.15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %35)
  %cmp1.15 = icmp eq i32 %35, 20
  br i1 %cmp1.15, label %for.inc.14.if.then_crit_edge, label %for.inc.15

for.inc.14.if.then_crit_edge:                     ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.inc.15:                                       ; preds = %for.inc.14
  %ndx.16 = getelementptr %struct.mcba_priv, ptr %priv, i32 0, i32 2, i32 16, i32 1
  %36 = ptrtoint ptr %ndx.16 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ndx.16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %37)
  %cmp1.16 = icmp eq i32 %37, 20
  br i1 %cmp1.16, label %for.inc.15.if.then_crit_edge, label %for.inc.16

for.inc.15.if.then_crit_edge:                     ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.inc.16:                                       ; preds = %for.inc.15
  %ndx.17 = getelementptr %struct.mcba_priv, ptr %priv, i32 0, i32 2, i32 17, i32 1
  %38 = ptrtoint ptr %ndx.17 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ndx.17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %39)
  %cmp1.17 = icmp eq i32 %39, 20
  br i1 %cmp1.17, label %for.inc.16.if.then_crit_edge, label %for.inc.17

for.inc.16.if.then_crit_edge:                     ; preds = %for.inc.16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.inc.17:                                       ; preds = %for.inc.16
  %ndx.18 = getelementptr %struct.mcba_priv, ptr %priv, i32 0, i32 2, i32 18, i32 1
  %40 = ptrtoint ptr %ndx.18 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ndx.18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %41)
  %cmp1.18 = icmp eq i32 %41, 20
  br i1 %cmp1.18, label %for.inc.17.if.then_crit_edge, label %for.inc.18

for.inc.17.if.then_crit_edge:                     ; preds = %for.inc.17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.inc.18:                                       ; preds = %for.inc.17
  %ndx.19 = getelementptr %struct.mcba_priv, ptr %priv, i32 0, i32 2, i32 19, i32 1
  %42 = ptrtoint ptr %ndx.19 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ndx.19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %43)
  %cmp1.19 = icmp eq i32 %43, 20
  br i1 %cmp1.19, label %for.inc.18.if.then_crit_edge, label %for.inc.18.for.end_crit_edge

for.inc.18.for.end_crit_edge:                     ; preds = %for.inc.18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.18.if.then_crit_edge:                     ; preds = %for.inc.18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.end:                                          ; preds = %for.inc.18.for.end_crit_edge, %if.then
  %ctx.0 = phi ptr [ %arrayidx.le, %if.then ], [ null, %for.inc.18.for.end_crit_edge ]
  %free_ctx_cnt8 = getelementptr inbounds %struct.mcba_priv, ptr %priv, i32 0, i32 11
  %call.i.i23 = tail call zeroext i1 @__kasan_check_read(ptr noundef %free_ctx_cnt8, i32 noundef 4) #10
  %44 = ptrtoint ptr %free_ctx_cnt8 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %free_ctx_cnt8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool9.not = icmp eq i32 %45, 0
  br i1 %tobool9.not, label %if.then10, label %for.end.if.end11_crit_edge

for.end.if.end11_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then10:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %netdev = getelementptr inbounds %struct.mcba_priv, ptr %priv, i32 0, i32 4
  %46 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %netdev, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %47, i32 0, i32 103
  %48 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %49, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %for.end.if.end11_crit_edge
  ret ptr %ctx.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mcba_usb_xmit(ptr noundef %priv, ptr nocapture noundef readonly %usb_msg, ptr noundef %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %udev = getelementptr inbounds %struct.mcba_priv, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 15
  %call1 = tail call ptr @usb_alloc_coherent(ptr noundef %1, i32 noundef 19, i32 noundef 2592, ptr noundef %transfer_dma) #10
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end4

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  %2 = call ptr @memcpy(ptr %call1, ptr %usb_msg, i32 19)
  %3 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %udev, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i = shl i32 %6, 8
  %or = or i32 %shl.i, -1073709056
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 8
  %7 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 10
  %8 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 14
  %9 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call1, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 19
  %10 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 19, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 28
  %11 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @mcba_usb_write_bulk_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 27
  %12 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %ctx, ptr %context4.i, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 13
  %13 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %transfer_flags, align 4
  %or8 = or i32 %14, 4
  store i32 %or8, ptr %transfer_flags, align 4
  %tx_submitted = getelementptr inbounds %struct.mcba_priv, ptr %priv, i32 0, i32 5
  tail call void @usb_anchor_urb(ptr noundef nonnull %call, ptr noundef %tx_submitted) #10
  %call9 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end4.cleanup.sink.split_crit_edge, label %failed, !prof !88

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

failed:                                           ; preds = %if.end4
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call) #10
  %15 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %udev, align 4
  %17 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %transfer_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %16, i32 noundef 19, ptr noundef nonnull %call1, i32 noundef %18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call9)
  %cmp = icmp eq i32 %call9, -19
  %netdev = getelementptr inbounds %struct.mcba_priv, ptr %priv, i32 0, i32 4
  %19 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %netdev, align 4
  br i1 %cmp, label %if.then17, label %if.else

if.then17:                                        ; preds = %failed
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @netif_device_detach(ptr noundef %20) #10
  br label %cleanup.sink.split

if.else:                                          ; preds = %failed
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %20, ptr noundef nonnull @.str.17, i32 noundef %call9) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %if.then17, %if.end4.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end4.cleanup.sink.split_crit_edge ], [ -19, %if.then17 ], [ %call9, %if.else ], [ -12, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @usb_free_urb(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcba_usb_write_bulk_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !89

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 222, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %netdev21 = getelementptr inbounds %struct.mcba_priv, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %netdev21 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev21, align 4
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
  tail call void @usb_free_coherent(ptr noundef %7, i32 noundef %9, ptr noundef %11, i32 noundef %13) #10
  %can = getelementptr inbounds %struct.mcba_usb_ctx, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %can to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %can, align 4, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool22.not = icmp eq i8 %15, 0
  br i1 %tobool22.not, label %if.end.if.end28_crit_edge, label %if.then23

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then23:                                        ; preds = %if.end
  %state.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %state.i, align 4
  %18 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i.not = icmp eq i32 %18, 0
  br i1 %tobool.i.not, label %if.then23.cleanup_crit_edge, label %if.end25

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end25:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 1
  %19 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %tx_packets, align 4
  %ndx = getelementptr inbounds %struct.mcba_usb_ctx, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %ndx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ndx, align 4
  %call26 = tail call i32 @can_get_echo_skb(ptr noundef %5, i32 noundef %22, ptr noundef null) #10
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 3
  %23 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %24, %call26
  store i32 %add, ptr %tx_bytes, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.end25, %if.end.if.end28_crit_edge
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %25 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool29.not = icmp eq i32 %26, 0
  br i1 %tobool29.not, label %if.end28.if.end32_crit_edge, label %if.then30

if.end28.if.end32_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %5, ptr noundef nonnull @.str.18, i32 noundef %26) #13
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end28.if.end32_crit_edge
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %free_ctx_cnt.i = getelementptr inbounds %struct.mcba_priv, ptr %28, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %free_ctx_cnt.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %free_ctx_cnt.i, i32 1, i32 3, i32 1) #10
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %free_ctx_cnt.i, ptr %free_ctx_cnt.i, i32 1, ptr elementtype(i32) %free_ctx_cnt.i) #10, !srcloc !91
  %ndx.i = getelementptr inbounds %struct.mcba_usb_ctx, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %ndx.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 20, ptr %ndx.i, align 4
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %netdev.i = getelementptr inbounds %struct.mcba_priv, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %netdev.i, align 4
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 103
  %35 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %36) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then23.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_anchor_urb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_unanchor_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_get_echo_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcba_usb_open(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @open_candev(ptr noundef %netdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %can_speed_check = getelementptr i8, ptr %netdev, i32 3174
  %0 = ptrtoint ptr %can_speed_check to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %can_speed_check, align 2
  %state = getelementptr i8, ptr %netdev, i32 2472
  %1 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %state, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcba_usb_close(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %state = getelementptr i8, ptr %netdev, i32 2472
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4, ptr %state, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %1 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %2, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  %rx_submitted.i = getelementptr i8, ptr %netdev, i32 3056
  tail call void @usb_kill_anchored_urbs(ptr noundef %rx_submitted.i) #10
  %udev.i = getelementptr i8, ptr %netdev, i32 2936
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.09.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %3 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %udev.i, align 4
  %arrayidx.i = getelementptr %struct.mcba_priv, ptr %add.ptr.i, i32 0, i32 12, i32 %i.09.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr %struct.mcba_priv, ptr %add.ptr.i, i32 0, i32 13, i32 %i.09.i
  %7 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx1.i, align 4
  tail call void @usb_free_coherent(ptr noundef %4, i32 noundef 64, ptr noundef %6, i32 noundef %8) #10
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20
  br i1 %exitcond.not.i, label %mcba_urb_unlink.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

mcba_urb_unlink.exit:                             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %tx_submitted.i = getelementptr i8, ptr %netdev, i32 2944
  tail call void @usb_kill_anchored_urbs(ptr noundef %tx_submitted.i) #10
  tail call void @close_candev(ptr noundef %netdev) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcba_usb_start_xmit(ptr noundef %skb, ptr noundef %netdev) #2 align 64 {
entry:
  %usb_msg = alloca %struct.mcba_usb_msg_can, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %netdev1 = getelementptr i8, ptr %netdev, i32 2940
  %2 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev1, align 4
  call void @llvm.lifetime.start.p0(i64 19, ptr nonnull %usb_msg) #10
  %4 = call ptr @memcpy(ptr %usb_msg, ptr @__const.mcba_usb_start_xmit.usb_msg, i32 19)
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %5 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %protocol.i, align 8
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.31)
  switch i16 %6, label %entry.can_dropped_invalid_skb.exit_crit_edge [
    i16 12, label %if.then.i
    i16 13, label %if.then14.i
  ]

entry.can_dropped_invalid_skb.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %can_dropped_invalid_skb.exit

if.then.i:                                        ; preds = %entry
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %9)
  %cmp2.not.i = icmp eq i32 %9, 16
  br i1 %cmp2.not.i, label %lor.rhs.i, label %if.then.i.can_dropped_invalid_skb.exit_crit_edge, !prof !88

if.then.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %can_dropped_invalid_skb.exit

lor.rhs.i:                                        ; preds = %if.then.i
  %len4.i = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %len4.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %len4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %11)
  %cmp6.i = icmp ugt i8 %11, 8
  br i1 %cmp6.i, label %lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs.i.if.end34.i_crit_edge, !prof !89

lor.rhs.i.if.end34.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i

lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %can_dropped_invalid_skb.exit

if.then14.i:                                      ; preds = %entry
  %len15.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %12 = ptrtoint ptr %len15.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %13)
  %cmp16.not.i = icmp eq i32 %13, 72
  br i1 %cmp16.not.i, label %lor.rhs18.i, label %if.then14.i.can_dropped_invalid_skb.exit_crit_edge, !prof !88

if.then14.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %can_dropped_invalid_skb.exit

lor.rhs18.i:                                      ; preds = %if.then14.i
  %len19.i = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %len19.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %len19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %15)
  %cmp21.i = icmp ugt i8 %15, 64
  br i1 %cmp21.i, label %lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs18.i.if.end34.i_crit_edge, !prof !89

lor.rhs18.i.if.end34.i_crit_edge:                 ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i

lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %can_dropped_invalid_skb.exit

if.end34.i:                                       ; preds = %lor.rhs18.i.if.end34.i_crit_edge, %lor.rhs.i.if.end34.i_crit_edge
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %16 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp ult i32 %sub.ptr.sub.i.i.i, 16
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end37.i.i

land.rhs.i.i:                                     ; preds = %if.end34.i
  %.b70.i.i = load i1, ptr @can_skb_headroom_valid.__already_done, align 1
  br i1 %.b70.i.i, label %land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge, label %if.then.i.i, !prof !88

land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %can_dropped_invalid_skb.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @can_skb_headroom_valid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 104, i32 noundef 9, ptr noundef null) #10
  br label %can_dropped_invalid_skb.exit

if.end37.i.i:                                     ; preds = %if.end34.i
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %18 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %19 = and i16 %bf.load.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp38.i.i = icmp eq i16 %19, 0
  br i1 %cmp38.i.i, label %if.then40.i.i, label %if.end37.i.i.if.end_crit_edge

if.end37.i.i.if.end_crit_edge:                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then40.i.i:                                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %ifindex.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 17
  %20 = ptrtoint ptr %ifindex.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ifindex.i.i, align 4
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %17, align 8
  %23 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %head.i.i.i, align 8
  %skbcnt.i.i = getelementptr inbounds %struct.can_skb_priv, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %skbcnt.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %skbcnt.i.i, align 4
  %26 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load45.i.i = load i16, ptr %ip_summed.i.i, align 8
  %bf.clear46.i.i = and i16 %bf.load45.i.i, -1537
  %bf.set.i.i = or i16 %bf.clear46.i.i, 512
  store i16 %bf.set.i.i, ptr %ip_summed.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 14
  %27 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %28, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool47.not.i.i = icmp eq i32 %and.i.i, 0
  %bf.clear54.i.i = and i16 %bf.set.i.i, 7167
  %bf.set51.i.i = or i16 %bf.clear54.i.i, -24576
  %storemerge.i.i = select i1 %tobool47.not.i.i, i16 %bf.clear54.i.i, i16 %bf.set51.i.i
  %29 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %storemerge.i.i, ptr %ip_summed.i.i, align 8
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %32 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i76.i.i = ptrtoint ptr %31 to i32
  %sub.ptr.rhs.cast.i77.i.i = ptrtoint ptr %33 to i32
  %sub.ptr.sub.i78.i.i = sub i32 %sub.ptr.lhs.cast.i76.i.i, %sub.ptr.rhs.cast.i77.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i78.i.i to i16
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %34 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv.i.i.i, ptr %mac_header.i.i.i, align 2
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %35 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i.i.i, ptr %network_header.i.i.i, align 4
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %36 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i.i.i, ptr %transport_header.i.i.i, align 2
  br label %if.end

can_dropped_invalid_skb.exit:                     ; preds = %if.then.i.i, %land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge, %lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge, %if.then14.i.can_dropped_invalid_skb.exit_crit_edge, %lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge, %if.then.i.can_dropped_invalid_skb.exit_crit_edge, %entry.can_dropped_invalid_skb.exit_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.then40.i.i, %if.end37.i.i.if.end_crit_edge
  %call4 = tail call fastcc ptr @mcba_usb_get_free_ctx(ptr noundef %add.ptr.i, ptr noundef %1)
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %tobool7.not = icmp sgt i32 %38, -1
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %and10 = lshr i32 %38, 13
  %39 = and i32 %and10, 65504
  %and13 = lshr i32 %38, 16
  %shr14 = and i32 %and13, 3
  %conv11 = or i32 %39, %shr14
  %40 = trunc i32 %conv11 to i16
  %conv17 = or i16 %40, 8
  %conv21 = trunc i32 %38 to i16
  br label %if.end27

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %.tr = trunc i32 %38 to i16
  %conv24 = shl i16 %.tr, 5
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then8
  %conv17.sink = phi i16 [ %conv24, %if.else ], [ %conv17, %if.then8 ]
  %conv21.sink = phi i16 [ 0, %if.else ], [ %conv21, %if.then8 ]
  %41 = getelementptr inbounds %struct.mcba_usb_msg_can, ptr %usb_msg, i32 0, i32 2
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 2)
  store i16 %conv17.sink, ptr %41, align 1
  %43 = getelementptr inbounds %struct.mcba_usb_msg_can, ptr %usb_msg, i32 0, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 %conv21.sink, ptr %43, align 1
  %45 = getelementptr inbounds %struct.can_frame, ptr %1, i32 0, i32 1
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %45, align 4
  %dlc = getelementptr inbounds %struct.mcba_usb_msg_can, ptr %usb_msg, i32 0, i32 3
  %48 = ptrtoint ptr %dlc to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %dlc, align 1
  %data28 = getelementptr inbounds %struct.mcba_usb_msg_can, ptr %usb_msg, i32 0, i32 4
  %data29 = getelementptr inbounds %struct.can_frame, ptr %1, i32 0, i32 5
  %conv32 = zext i8 %47 to i32
  %49 = call ptr @memcpy(ptr %data28, ptr %data29, i32 %conv32)
  %and34 = and i32 %38, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end27.if.end41_crit_edge, label %if.then36

if.end27.if.end41_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then36:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %50 = or i8 %47, 64
  %51 = ptrtoint ptr %dlc to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %dlc, align 1
  br label %if.end41

if.end41:                                         ; preds = %if.then36, %if.end27.if.end41_crit_edge
  %52 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %netdev1, align 4
  %ndx = getelementptr inbounds %struct.mcba_usb_ctx, ptr %call4, i32 0, i32 1
  %54 = ptrtoint ptr %ndx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ndx, align 4
  %call43 = tail call i32 @can_put_echo_skb(ptr noundef %skb, ptr noundef %53, i32 noundef %55, i32 noundef 0) #10
  %call44 = call fastcc i32 @mcba_usb_xmit(ptr noundef %add.ptr.i, ptr noundef nonnull %usb_msg, ptr noundef nonnull %call4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end41.cleanup_crit_edge, label %xmit_failed

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

xmit_failed:                                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %netdev1, align 4
  %58 = ptrtoint ptr %ndx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ndx, align 4
  tail call void @can_free_echo_skb(ptr noundef %57, i32 noundef %59, ptr noundef null) #10
  %60 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %call4, align 4
  %free_ctx_cnt.i = getelementptr inbounds %struct.mcba_priv, ptr %61, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %free_ctx_cnt.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %free_ctx_cnt.i, i32 1, i32 3, i32 1) #10
  %62 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %free_ctx_cnt.i, ptr %free_ctx_cnt.i, i32 1, ptr elementtype(i32) %free_ctx_cnt.i) #10, !srcloc !91
  %63 = ptrtoint ptr %ndx to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 20, ptr %ndx, align 4
  %64 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call4, align 4
  %netdev.i = getelementptr inbounds %struct.mcba_priv, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %netdev.i, align 4
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %67, i32 0, i32 103
  %68 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %69) #10
  tail call void @consume_skb(ptr noundef %skb) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %xmit_failed, %can_dropped_invalid_skb.exit
  %.sink = phi ptr [ %3, %xmit_failed ], [ %netdev, %can_dropped_invalid_skb.exit ]
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %.sink, i32 0, i32 36, i32 7
  %70 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tx_dropped, align 4
  %inc.i = add i32 %71, 1
  store i32 %inc.i, ptr %tx_dropped, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end41.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 16, %if.end.cleanup_crit_edge ], [ 0, %if.end41.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 19, ptr nonnull %usb_msg) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @open_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @close_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_anchored_urbs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_put_echo_skb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_free_echo_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcba_usb_read_bulk_callback(ptr noundef %urb) #2 align 64 {
entry:
  %cf.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %netdev1 = getelementptr inbounds %struct.mcba_priv, ptr %1, i32 0, i32 4
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup19

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %8, label %sw.default [
    i32 0, label %while.cond.preheader
    i32 -2, label %if.end.cleanup19_crit_edge
    i32 -32, label %if.end.cleanup19_crit_edge51
    i32 -71, label %if.end.cleanup19_crit_edge52
    i32 -108, label %if.end.cleanup19_crit_edge53
  ]

if.end.cleanup19_crit_edge53:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup19

if.end.cleanup19_crit_edge52:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup19

if.end.cleanup19_crit_edge51:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup19

if.end.cleanup19_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup19

while.cond.preheader:                             ; preds = %if.end
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %10 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp49.not = icmp eq i32 %11, 0
  br i1 %cmp49.not, label %while.cond.preheader.resubmit_urb_crit_edge, label %while.body.lr.ph

while.cond.preheader.resubmit_urb_crit_edge:      ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %resubmit_urb

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %usb_ka_first_pass.i.i = getelementptr inbounds %struct.mcba_priv, ptr %1, i32 0, i32 8
  %12 = getelementptr inbounds %struct.can_priv, ptr %1, i32 0, i32 16
  %can_ka_first_pass.i.i = getelementptr inbounds %struct.mcba_priv, ptr %1, i32 0, i32 9
  %can_speed_check.i.i = getelementptr inbounds %struct.mcba_priv, ptr %1, i32 0, i32 10
  %bittiming.i.i = getelementptr inbounds %struct.can_priv, ptr %1, i32 0, i32 4
  %bec.i.i = getelementptr inbounds %struct.mcba_priv, ptr %1, i32 0, i32 7
  %rxerr.i.i = getelementptr inbounds %struct.mcba_priv, ptr %1, i32 0, i32 7, i32 1
  %state41.i.i = getelementptr inbounds %struct.can_priv, ptr %1, i32 0, i32 21
  br label %while.body

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.23, i32 noundef %8) #13
  br label %resubmit_urb

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %13 = phi i32 [ %11, %while.body.lr.ph ], [ %105, %cleanup.while.body_crit_edge ]
  %pos.050 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  %add = add i32 %pos.050, 19
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %13)
  %cmp4 = icmp ugt i32 %add, %13
  br i1 %cmp4, label %cleanup.thread, label %if.end7

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev1, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.24) #13
  br label %resubmit_urb

if.end7:                                          ; preds = %while.body
  %16 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %transfer_buffer, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 %pos.050
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %add.ptr, align 1
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %19, label %sw.default.i [
    i8 -11, label %sw.bb.i
    i8 -9, label %sw.bb1.i
    i8 -29, label %sw.bb2.i
    i8 -1, label %if.end7.cleanup_crit_edge
    i8 -30, label %if.end7.cleanup_crit_edge54
  ]

if.end7.cleanup_crit_edge54:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end7
  %21 = ptrtoint ptr %can_ka_first_pass.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %can_ka_first_pass.i.i, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.if.end.i.i_crit_edge, label %if.then.i.i, !prof !88

sw.bb.i.if.end.i.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %netdev1, align 4
  %soft_ver_major.i.i = getelementptr inbounds %struct.mcba_usb_msg_ka_can, ptr %add.ptr, i32 0, i32 8
  %25 = ptrtoint ptr %soft_ver_major.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %soft_ver_major.i.i, align 1
  %conv.i.i = zext i8 %26 to i32
  %soft_ver_minor.i.i = getelementptr inbounds %struct.mcba_usb_msg_ka_can, ptr %add.ptr, i32 0, i32 9
  %27 = ptrtoint ptr %soft_ver_minor.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %soft_ver_minor.i.i, align 1
  %conv3.i.i = zext i8 %28 to i32
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %24, ptr noundef nonnull @.str.27, i32 noundef %conv.i.i, i32 noundef %conv3.i.i) #13
  %29 = ptrtoint ptr %can_ka_first_pass.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %can_ka_first_pass.i.i, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %sw.bb.i.if.end.i.i_crit_edge
  %30 = ptrtoint ptr %can_speed_check.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %can_speed_check.i.i, align 2, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool5.not.i.i = icmp eq i8 %31, 0
  br i1 %tobool5.not.i.i, label %if.end.i.i.if.end22.i.i_crit_edge, label %if.then12.i.i, !prof !88

if.end.i.i.if.end22.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i.i

if.then12.i.i:                                    ; preds = %if.end.i.i
  %can_bitrate.i.i.i = getelementptr inbounds %struct.mcba_usb_msg_ka_can, ptr %add.ptr, i32 0, i32 5
  %32 = ptrtoint ptr %can_bitrate.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %can_bitrate.i.i.i, align 1
  %conv.i.i.i = zext i16 %33 to i32
  %34 = zext i16 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.34)
  switch i16 %33, label %if.else.i.i.i [
    i16 33, label %if.then12.i.i.if.then.i.i.i_crit_edge
    i16 83, label %if.then12.i.i.if.then.i.i.i_crit_edge55
  ]

if.then12.i.i.if.then.i.i.i_crit_edge55:          ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i

if.then12.i.i.if.then.i.i.i_crit_edge:            ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then12.i.i.if.then.i.i.i_crit_edge, %if.then12.i.i.if.then.i.i.i_crit_edge55
  %mul.i.i.i = mul nuw nsw i32 %conv.i.i.i, 1000
  %add.i.i.i = add nuw nsw i32 %mul.i.i.i, 333
  br label %convert_can2host_bitrate.exit.i.i

if.else.i.i.i:                                    ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %mul4.i.i.i = mul nuw nsw i32 %conv.i.i.i, 1000
  br label %convert_can2host_bitrate.exit.i.i

convert_can2host_bitrate.exit.i.i:                ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ %mul4.i.i.i, %if.else.i.i.i ]
  %35 = ptrtoint ptr %can_speed_check.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %can_speed_check.i.i, align 2
  %36 = ptrtoint ptr %bittiming.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bittiming.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i, i32 %37)
  %cmp.not.i.i = icmp eq i32 %retval.0.i.i.i, %37
  br i1 %cmp.not.i.i, label %convert_can2host_bitrate.exit.i.i.if.end22.i.i_crit_edge, label %if.then16.i.i

convert_can2host_bitrate.exit.i.i.if.end22.i.i_crit_edge: ; preds = %convert_can2host_bitrate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i.i

if.then16.i.i:                                    ; preds = %convert_can2host_bitrate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %netdev1, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %39, ptr noundef nonnull @.str.28, i32 noundef %retval.0.i.i.i, i32 noundef %37) #13
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.then16.i.i, %convert_can2host_bitrate.exit.i.i.if.end22.i.i_crit_edge, %if.end.i.i.if.end22.i.i_crit_edge
  %tx_err_cnt.i.i = getelementptr inbounds %struct.mcba_usb_msg_ka_can, ptr %add.ptr, i32 0, i32 1
  %40 = ptrtoint ptr %tx_err_cnt.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %tx_err_cnt.i.i, align 1
  %conv23.i.i = zext i8 %41 to i16
  %42 = ptrtoint ptr %bec.i.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv23.i.i, ptr %bec.i.i, align 4
  %rx_err_cnt.i.i = getelementptr inbounds %struct.mcba_usb_msg_ka_can, ptr %add.ptr, i32 0, i32 2
  %43 = ptrtoint ptr %rx_err_cnt.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %rx_err_cnt.i.i, align 1
  %conv24.i.i = zext i8 %44 to i16
  %45 = ptrtoint ptr %rxerr.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv24.i.i, ptr %rxerr.i.i, align 2
  %tx_bus_off.i.i = getelementptr inbounds %struct.mcba_usb_msg_ka_can, ptr %add.ptr, i32 0, i32 4
  %46 = ptrtoint ptr %tx_bus_off.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %tx_bus_off.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool26.not.i.i = icmp eq i8 %47, 0
  br i1 %tobool26.not.i.i, label %if.else.i.i, label %if.end22.i.i.if.end59.sink.split.i.i_crit_edge

if.end22.i.i.if.end59.sink.split.i.i_crit_edge:   ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59.sink.split.i.i

if.else.i.i:                                      ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp32.i.i = icmp slt i8 %41, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp37.i.i = icmp slt i8 %44, 0
  %or.cond.i.i = select i1 %cmp32.i.i, i1 true, i1 %cmp37.i.i
  br i1 %or.cond.i.i, label %if.else.i.i.if.end59.sink.split.i.i_crit_edge, label %if.else42.i.i

if.else.i.i.if.end59.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59.sink.split.i.i

if.else42.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %41)
  %cmp46.i.i = icmp ugt i8 %41, 95
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %44)
  %cmp52.i.i = icmp ugt i8 %44, 95
  %or.cond82.i.i = select i1 %cmp46.i.i, i1 true, i1 %cmp52.i.i
  br i1 %or.cond82.i.i, label %if.else42.i.i.if.end59.sink.split.i.i_crit_edge, label %if.else42.i.i.cleanup_crit_edge

if.else42.i.i.cleanup_crit_edge:                  ; preds = %if.else42.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else42.i.i.if.end59.sink.split.i.i_crit_edge:  ; preds = %if.else42.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59.sink.split.i.i

if.end59.sink.split.i.i:                          ; preds = %if.else42.i.i.if.end59.sink.split.i.i_crit_edge, %if.else.i.i.if.end59.sink.split.i.i_crit_edge, %if.end22.i.i.if.end59.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 3, %if.end22.i.i.if.end59.sink.split.i.i_crit_edge ], [ 2, %if.else.i.i.if.end59.sink.split.i.i_crit_edge ], [ 1, %if.else42.i.i.if.end59.sink.split.i.i_crit_edge ]
  %48 = ptrtoint ptr %state41.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %.sink.i.i, ptr %state41.i.i, align 4
  br label %cleanup

sw.bb1.i:                                         ; preds = %if.end7
  %49 = ptrtoint ptr %usb_ka_first_pass.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %usb_ka_first_pass.i.i, align 4, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i12.i = icmp eq i8 %50, 0
  br i1 %tobool.not.i12.i, label %sw.bb1.i.mcba_usb_process_ka_usb.exit.i_crit_edge, label %if.then.i18.i, !prof !88

sw.bb1.i.mcba_usb_process_ka_usb.exit.i_crit_edge: ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mcba_usb_process_ka_usb.exit.i

if.then.i18.i:                                    ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %netdev1, align 4
  %soft_ver_major.i14.i = getelementptr inbounds %struct.mcba_usb_msg_ka_usb, ptr %add.ptr, i32 0, i32 2
  %53 = ptrtoint ptr %soft_ver_major.i14.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %soft_ver_major.i14.i, align 1
  %conv.i15.i = zext i8 %54 to i32
  %soft_ver_minor.i16.i = getelementptr inbounds %struct.mcba_usb_msg_ka_usb, ptr %add.ptr, i32 0, i32 3
  %55 = ptrtoint ptr %soft_ver_minor.i16.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %soft_ver_minor.i16.i, align 1
  %conv3.i17.i = zext i8 %56 to i32
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %52, ptr noundef nonnull @.str.29, i32 noundef %conv.i15.i, i32 noundef %conv3.i17.i) #13
  %57 = ptrtoint ptr %usb_ka_first_pass.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %usb_ka_first_pass.i.i, align 4
  br label %mcba_usb_process_ka_usb.exit.i

mcba_usb_process_ka_usb.exit.i:                   ; preds = %if.then.i18.i, %sw.bb1.i.mcba_usb_process_ka_usb.exit.i_crit_edge
  %termination_state.i.i = getelementptr inbounds %struct.mcba_usb_msg_ka_usb, ptr %add.ptr, i32 0, i32 1
  %58 = ptrtoint ptr %termination_state.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %termination_state.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool5.not.i19.i = icmp eq i8 %59, 0
  %spec.select.i.i = select i1 %tobool5.not.i19.i, i16 0, i16 120
  %60 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %spec.select.i.i, ptr %12, align 4
  br label %cleanup

sw.bb2.i:                                         ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i.i) #10
  %61 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i.i, align 4, !annotation !86
  %62 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %netdev1, align 4
  %stats1.i.i = getelementptr inbounds %struct.net_device, ptr %63, i32 0, i32 36
  %call.i.i = call ptr @alloc_can_skb(ptr noundef %63, ptr noundef nonnull %cf.i.i) #10
  %tobool.not.i22.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i22.i, label %sw.bb2.i.mcba_usb_process_can.exit.i_crit_edge, label %if.end.i25.i

sw.bb2.i.mcba_usb_process_can.exit.i_crit_edge:   ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mcba_usb_process_can.exit.i

if.end.i25.i:                                     ; preds = %sw.bb2.i
  %sid3.i.i = getelementptr inbounds %struct.mcba_usb_msg_can, ptr %add.ptr, i32 0, i32 2
  %64 = ptrtoint ptr %sid3.i.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 2)
  %65 = load i16, ptr %sid3.i.i, align 1
  %conv.i23.i = zext i16 %65 to i32
  %and.i.i = and i32 %conv.i23.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i24.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool5.not.i24.i, label %if.else.i26.i, label %if.then6.i.i

if.then6.i.i:                                     ; preds = %if.end.i25.i
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cf.i.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -2147483648, ptr %67, align 8
  %and8.i.i = shl nuw nsw i32 %conv.i23.i, 13
  %shl.i.i = and i32 %and8.i.i, 536608768
  %69 = load ptr, ptr %cf.i.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %69, align 8
  %or.i.i = or i32 %71, %shl.i.i
  store i32 %or.i.i, ptr %69, align 8
  %and11.i.i = shl nuw i32 %conv.i23.i, 16
  %shl12.i.i = and i32 %and11.i.i, 196608
  %72 = load ptr, ptr %cf.i.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 8
  %or14.i.i = or i32 %74, %shl12.i.i
  store i32 %or14.i.i, ptr %72, align 8
  %eid.i.i = getelementptr inbounds %struct.mcba_usb_msg_can, ptr %add.ptr, i32 0, i32 1
  %75 = ptrtoint ptr %eid.i.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 2)
  %76 = load i16, ptr %eid.i.i, align 1
  %conv16.i.i = zext i16 %76 to i32
  %77 = load ptr, ptr %cf.i.i, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 8
  %or18.i.i = or i32 %79, %conv16.i.i
  store i32 %or18.i.i, ptr %77, align 8
  br label %if.end22.i27.i

if.else.i26.i:                                    ; preds = %if.end.i25.i
  call void @__sanitizer_cov_trace_pc() #12
  %80 = lshr i32 %conv.i23.i, 5
  %81 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cf.i.i, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %80, ptr %82, align 8
  br label %if.end22.i27.i

if.end22.i27.i:                                   ; preds = %if.else.i26.i, %if.then6.i.i
  %dlc.i.i = getelementptr inbounds %struct.mcba_usb_msg_can, ptr %add.ptr, i32 0, i32 3
  %84 = ptrtoint ptr %dlc.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %dlc.i.i, align 1
  %86 = and i8 %85, 15
  %87 = call i8 @llvm.umin.i8(i8 %86, i8 8) #10
  %88 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cf.i.i, align 4
  %90 = getelementptr inbounds %struct.can_frame, ptr %89, i32 0, i32 1
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %87, ptr %90, align 4
  %92 = ptrtoint ptr %dlc.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %dlc.i.i, align 1
  %94 = and i8 %93, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool35.not.i.i = icmp eq i8 %94, 0
  br i1 %tobool35.not.i.i, label %if.else39.i.i, label %if.then36.i.i

if.then36.i.i:                                    ; preds = %if.end22.i27.i
  call void @__sanitizer_cov_trace_pc() #12
  %95 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %89, align 8
  %or38.i.i = or i32 %96, 1073741824
  store i32 %or38.i.i, ptr %89, align 8
  br label %if.end44.i.i

if.else39.i.i:                                    ; preds = %if.end22.i27.i
  call void @__sanitizer_cov_trace_pc() #12
  %data.i.i = getelementptr inbounds %struct.can_frame, ptr %89, i32 0, i32 5
  %data40.i.i = getelementptr inbounds %struct.mcba_usb_msg_can, ptr %add.ptr, i32 0, i32 4
  %conv42.i.i = zext i8 %87 to i32
  %97 = call ptr @memcpy(ptr %data.i.i, ptr %data40.i.i, i32 %conv42.i.i)
  %rx_bytes.i.i = getelementptr inbounds %struct.net_device, ptr %63, i32 0, i32 36, i32 2
  %98 = ptrtoint ptr %rx_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %rx_bytes.i.i, align 4
  %add.i.i = add i32 %99, %conv42.i.i
  store i32 %add.i.i, ptr %rx_bytes.i.i, align 4
  br label %if.end44.i.i

if.end44.i.i:                                     ; preds = %if.else39.i.i, %if.then36.i.i
  %100 = ptrtoint ptr %stats1.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %stats1.i.i, align 4
  %inc.i.i = add i32 %101, 1
  store i32 %inc.i.i, ptr %stats1.i.i, align 4
  %call46.i.i = call i32 @netif_rx(ptr noundef nonnull %call.i.i) #10
  br label %mcba_usb_process_can.exit.i

mcba_usb_process_can.exit.i:                      ; preds = %if.end44.i.i, %sw.bb2.i.mcba_usb_process_can.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i.i) #10
  br label %cleanup

sw.default.i:                                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i8 %19 to i32
  %102 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %netdev1, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %103, ptr noundef nonnull @.str.26, i32 noundef %conv.i) #13
  br label %cleanup

cleanup:                                          ; preds = %sw.default.i, %mcba_usb_process_can.exit.i, %mcba_usb_process_ka_usb.exit.i, %if.end59.sink.split.i.i, %if.else42.i.i.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end7.cleanup_crit_edge54
  %104 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %actual_length, align 4
  %cmp = icmp ult i32 %add, %105
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.resubmit_urb_crit_edge

cleanup.resubmit_urb_crit_edge:                   ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %resubmit_urb

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

resubmit_urb:                                     ; preds = %cleanup.resubmit_urb_crit_edge, %cleanup.thread, %sw.default, %while.cond.preheader.resubmit_urb_crit_edge
  %udev = getelementptr inbounds %struct.mcba_priv, ptr %1, i32 0, i32 3
  %106 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %udev, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %107, align 8
  %shl.i = shl i32 %109, 8
  %or11 = or i32 %shl.i, -1073708928
  %dev1.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %110 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %107, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %111 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %or11, ptr %pipe2.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %112 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 64, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 28
  %113 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @mcba_usb_read_bulk_callback, ptr %complete.i, align 4
  %114 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %1, ptr %context, align 4
  %call13 = call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #10
  %115 = zext i32 %call13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %call13, label %if.then16 [
    i32 -19, label %if.then15
    i32 0, label %resubmit_urb.cleanup19_crit_edge
  ]

resubmit_urb.cleanup19_crit_edge:                 ; preds = %resubmit_urb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup19

if.then15:                                        ; preds = %resubmit_urb
  call void @__sanitizer_cov_trace_pc() #12
  call void @netif_device_detach(ptr noundef %3) #10
  br label %cleanup19

if.then16:                                        ; preds = %resubmit_urb
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.25, i32 noundef %call13) #13
  br label %cleanup19

cleanup19:                                        ; preds = %if.then16, %if.then15, %resubmit_urb.cleanup19_crit_edge, %if.end.cleanup19_crit_edge, %if.end.cleanup19_crit_edge51, %if.end.cleanup19_crit_edge52, %if.end.cleanup19_crit_edge53, %entry.cleanup19_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !25, !27, !28, !29, !30, !32, !33, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @__initcall__kmod_mcba_usb__466_902_mcba_usb_driver_init6, !1, !"__initcall__kmod_mcba_usb__466_902_mcba_usb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/can/usb/mcba_usb.c", i32 902, i32 1}
!2 = !{ptr @__exitcall_mcba_usb_driver_exit, !1, !"__exitcall_mcba_usb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author467, !4, !"__UNIQUE_ID_author467", i1 false, i1 false}
!4 = !{!"../drivers/net/can/usb/mcba_usb.c", i32 904, i32 1}
!5 = !{ptr @__UNIQUE_ID_description468, !6, !"__UNIQUE_ID_description468", i1 false, i1 false}
!6 = !{!"../drivers/net/can/usb/mcba_usb.c", i32 905, i32 1}
!7 = !{ptr @__UNIQUE_ID_file469, !8, !"__UNIQUE_ID_file469", i1 false, i1 false}
!8 = !{!"../drivers/net/can/usb/mcba_usb.c", i32 906, i32 1}
!9 = !{ptr @__UNIQUE_ID_license470, !8, !"__UNIQUE_ID_license470", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mcba_usb_driver, !12, !"mcba_usb_driver", i1 false, i1 false}
!12 = !{!"../drivers/net/can/usb/mcba_usb.c", i32 895, i32 26}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/can/usb/mcba_usb.c", i32 813, i32 3}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @mcba_usb_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @mcba_usb_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/can/usb/mcba_usb.c", i32 850, i32 22}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/can/usb/mcba_usb.c", i32 863, i32 23}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/can/usb/mcba_usb.c", i32 868, i32 2}
!27 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @mcba_usb_probe._entry.8, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @mcba_usb_probe._entry_ptr.11, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @init_usb_anchor.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../include/linux/usb.h", i32 1367, i32 2}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @init_usb_anchor.__key.13, !34, !"__key", i1 false, i1 false}
!34 = !{!"../include/linux/usb.h", i32 1368, i32 2}
!35 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @mcba_termination, !37, !"mcba_termination", i1 false, i1 false}
!37 = !{!"../drivers/net/can/usb/mcba_usb.c", i32 155, i32 18}
!38 = !{ptr @mcba_bitrate, !39, !"mcba_bitrate", i1 false, i1 false}
!39 = !{!"../drivers/net/can/usb/mcba_usb.c", i32 158, i32 18}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/can/usb/mcba_usb.c", i32 383, i32 7}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/can/usb/mcba_usb.c", i32 391, i32 28}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/can/usb/mcba_usb.c", i32 298, i32 29}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/can/usb/mcba_usb.c", i32 242, i32 23}
!48 = !{ptr @mcba_netdev_ops, !49, !"mcba_netdev_ops", i1 false, i1 false}
!49 = !{!"../drivers/net/can/usb/mcba_usb.c", i32 766, i32 36}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../include/linux/can/skb.h", i32 104, i32 6}
!52 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/can/usb/mcba_usb.c", i32 647, i32 23}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/can/usb/mcba_usb.c", i32 680, i32 23}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/can/usb/mcba_usb.c", i32 686, i32 23}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/can/usb/mcba_usb.c", i32 589, i32 23}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/can/usb/mcba_usb.c", i32 598, i32 29}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/can/usb/mcba_usb.c", i32 620, i32 22}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/can/usb/mcba_usb.c", i32 556, i32 29}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/can/usb/mcba_usb.c", i32 494, i32 29}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/can/usb/mcba_usb.c", i32 508, i32 8}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/can/usb/mcba_usb.c", i32 468, i32 29}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/can/usb/mcba_usb.c", i32 888, i32 28}
!75 = !{ptr @mcba_usb_table, !76, !"mcba_usb_table", i1 false, i1 false}
!76 = !{!"../drivers/net/can/usb/mcba_usb.c", i32 148, i32 35}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{!"auto-init"}
!87 = !{i64 2148320277, i64 2148320303, i64 2148320332, i64 2148320366, i64 2148320397, i64 2148320420}
!88 = !{!"branch_weights", i32 2000, i32 1}
!89 = !{!"branch_weights", i32 1, i32 2000}
!90 = !{i8 0, i8 2}
!91 = !{i64 2148317812, i64 2148317838, i64 2148317867, i64 2148317901, i64 2148317932, i64 2148317955}
